`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module ctrl_cnt_addr(
	input	wire	[9:0]			volume_in,
	input	wire	[`MSC_N-1:0]	start,
	input	wire	[5:0]			q,

	output	wire	[9:0]			volume_out,
	output	wire					tran_vld,
	output	wire					tran_end,
	output	wire					rom_clock,

	output	reg		[`MSC_N-1:0]	sel,
	output	wire					add,

	input	wire					sysclk,
	input	wire					rst_n
);
	parameter	IDLE	=	3'b001;
	parameter	SEND_AD	=	3'b010;
	parameter	INST	=	3'b100;

	reg		[2:0]			state;
	reg		[2:0]			next_state;

	reg		[`MSC_N-1:0]	start_r1;

	wire					ends;
	wire					begins;

	wire					idle_to_inst;
	wire					inst_to_send_ad;
	wire					inst_to_idle;
	wire					send_ad_to_inst;
	wire					send_ad_to_idle;

	reg		[24:0]		cnt;
	wire				cnt_vld;
	wire				cnt_end;

	reg		[11:0]		q_cb;

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			start_r1 <= `MSC_N'b0;
		end
		else begin
			start_r1 <= start;
		end
	end

	assign	begins	=	(start_r1 != start) & (start != 0);
	assign	ends	=	(start_r1 != start) & (start == 0);

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			state <= IDLE;
		end
		else begin
			state <= next_state;
		end
	end

	always @ (*) begin
		case (state)
			IDLE:
				if (idle_to_inst) begin
					next_state = INST;
				end
				else begin
					next_state = state;
				end
			INST:
				if (inst_to_send_ad) begin
					next_state = SEND_AD;
				end
				else if (inst_to_idle) begin
					next_state = IDLE;
				end
				else begin
					next_state = state;
				end
			SEND_AD:
				if (send_ad_to_inst) begin
					next_state = INST;
				end
				else if (send_ad_to_idle) begin
					next_state = IDLE;
				end
				else begin
					next_state = state;
				end
			default:
				next_state = IDLE;
		endcase
	end

	assign	idle_to_inst	=	(state == IDLE) & (begins);
	assign	inst_to_send_ad	=	(state == INST) & (cnt_end);
	assign	inst_to_idle	=	(state == INST) & (ends);
	assign	send_ad_to_inst	=	(state == SEND_AD) & (begins | q == 6'b111000);
	assign	send_ad_to_idle	=	(state == SEND_AD) & (ends);
	
	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt <= 25'b0;
		end
		else if (cnt_end) begin
			cnt <= 25'b0;
		end
		else if (cnt_vld) begin
			cnt <= cnt + 1'b1;
		end
	end

	assign	cnt_vld	=	state != IDLE;
	assign	cnt_end	=	cnt_vld & (state == INST & cnt == 5) | ((state == SEND_AD) & (cnt >= (60*50_000_000/(4*q_cb)) - 1)) | ends;

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			q_cb <= 12'b0;
		end
		else if (state == INST & cnt == 2) begin
			q_cb <= {6'b000000,q};
		end
		else if (state == INST &  cnt == 4) begin
			q_cb <= {q_cb[5:0],q};
		end
		else if (ends) begin
			q_cb <= 12'b0;
		end
	end

//------------------------------------------------------------------

	assign	tran_vld	=	(state == SEND_AD & cnt_end) & ~ends;
	assign	tran_end	=	ends;

//-------------------------------------------------------------------

	assign	rom_clock		=	(state == INST & (cnt == 2 | cnt == 4)) 
							| (state == SEND_AD & cnt_end);

//-------------------------------------------------------------------

	assign	add			=	(state == INST & cnt == 2)
							| (state == SEND_AD & cnt >= 60*50_000_000/(4*q_cb) - 3 & cnt < 60*50_000_000/(4*q_cb) - 2);

	always @ (*) begin
		if (ends) begin
			sel = `MSC_N'b1;
		end
		else if (state == INST & cnt == 0) begin
			sel = start;
		end
		else begin
			sel = `MSC_N'b0;
		end
	end

	assign volume_out = volume_in;
endmodule


