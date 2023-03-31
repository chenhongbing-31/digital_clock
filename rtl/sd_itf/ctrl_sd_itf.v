`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module ctrl_sd_itf(
	input	wire			valid_sd,
	input	wire	[5:0]	twinkle,

	output	wire			stcp,
	output	wire			shcp,
	input	wire	[5:0]	dp,

	output	wire	[5:0]	vld,
	output	wire			point,
	output	wire	[5:0]	sel,
	output	wire			tw,
	output	wire	[5:0]	sel_sd,
	output	wire			upgrade,
	output	wire			move,
	output	wire			keep,

	input	wire			sysclk,
	input	wire			rst_n
);
//-------------------------------------------------------------

	parameter DP6 = 6'b100_000;
	parameter DP5 = 6'b010_000;
	parameter DP4 = 6'b001_000;
	parameter DP3 = 6'b000_100;
	parameter DP2 = 6'b000_010;
	parameter DP1 = 6'b000_001;

	parameter IDLE = 2'b01;
	parameter UPDATA = 2'b10;

	reg		[5:0]	state1;
	reg		[5:0]	next_state1;

	reg		[1:0]	state2;
	reg		[1:0]	next_state2;	

	wire			DP6_to_DP5;
	wire			DP5_to_DP4;
	wire			DP4_to_DP3;
	wire			DP3_to_DP2;
	wire			DP2_to_DP1;
	wire			DP1_to_DP6;

	wire			IDLE_to_UPDATA;
	wire			UPDATA_to_IDLE;

	wire			cnt_595_vld;
	reg		[9:0]	cnt_595;
	wire			cnt_595_end;

	wire			cnt_14_vld;
	reg		[3:0]	cnt_14;
	wire			cnt_14_end;

	wire			cnt_1000_vld;
	reg		[9:0]	cnt_1000;
	wire			cnt_1000_end;
	
	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			state1 <= DP6;
		end
		else begin
			state1 <= next_state1;
		end
	end

	always @ (*) begin
		case (state1)
			DP6:
				if (DP6_to_DP5) begin
					next_state1 = DP5;
				end
				else begin
					next_state1 = state1;
				end
			DP5:
				if (DP5_to_DP4) begin
					next_state1 = DP4;
				end
				else begin
					next_state1 = state1;
				end
			DP4:
				if (DP4_to_DP3) begin
					next_state1 = DP3;
				end
				else begin
					next_state1 = state1;
				end
			DP3:
				if (DP3_to_DP2) begin
					next_state1 = DP2;
				end
				else begin
					next_state1 = state1;
				end
			DP2:
				if (DP2_to_DP1) begin
					next_state1 = DP1;
				end
				else begin
					next_state1 = state1;
				end
			DP1:
				if (DP1_to_DP6) begin
					next_state1 = DP6;
				end
				else begin
					next_state1 = state1;
				end
			default	: next_state1 = DP6;
		endcase
	end

	assign DP6_to_DP5 = cnt_595_end & (cnt_14_end)& (state1 == DP6);
	assign DP5_to_DP4 = cnt_595_end & (cnt_14_end)& (state1 == DP5);
	assign DP4_to_DP3 = cnt_595_end & (cnt_14_end)& (state1 == DP4);
	assign DP3_to_DP2 = cnt_595_end & (cnt_14_end)& (state1 == DP3);
	assign DP2_to_DP1 = cnt_595_end & (cnt_14_end)& (state1 == DP2);
	assign DP1_to_DP6 = cnt_595_end & (cnt_14_end)& (state1 == DP1); 

//------------------------------------------------

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			state2 <= IDLE;
		end
		else begin
			state2 <= next_state2;
		end
	end

	always @ (*) begin
		case (state2)
			IDLE:
				if (IDLE_to_UPDATA) begin
					next_state2 <= UPDATA;
				end
				else begin
					next_state2 <= state2;
				end
			UPDATA:
				if (UPDATA_to_IDLE) begin
					next_state2 <= IDLE;
				end
				else begin
					next_state2 <= state2;
				end
			default:
				next_state2 <= IDLE;
		endcase
	end

	assign IDLE_to_UPDATA = valid_sd & (state2 == IDLE);
	assign UPDATA_to_IDLE = (state2 == UPDATA);

//-------------------------------------------------------

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt_595 <= 0;
		end
		else if (cnt_595_end) begin
			cnt_595 <= 0;
		end
		else if (cnt_595_vld) begin
			cnt_595 <= cnt_595 + 1;
		end
	end

	assign cnt_595_vld = 1'b1;
	assign cnt_595_end = (cnt_595 == 595 - 1);

//-------------------------------------------------------

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt_14 <= 0;
		end
		else if (cnt_14_end) begin
			cnt_14 <= 0;
		end
		else if (cnt_14_vld)begin
			cnt_14 <= cnt_14 + 1;
		end
	end

	assign cnt_14_vld = cnt_595_end;
	assign cnt_14_end = (cnt_14_vld) & (cnt_14 == 14 - 1);

//-------------------------------------------------------

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt_1000 <= 0;
		end
		else if (cnt_1000_end) begin
			cnt_1000 <= 0;
		end
		else if (cnt_1000_vld)begin
			cnt_1000 <= cnt_1000 + 1;
		end
	end

	assign cnt_1000_vld = DP1_to_DP6;
	assign cnt_1000_end = (cnt_1000_vld) & (cnt_14 == 14 - 1) & (cnt_1000 == 1000-1);

//----------------------------------------------------------
// 以上是控制模块的整体架构，即，状态机 -- 计数器
//----------------------------------------------------------

	assign vld = (state2 == UPDATA) ? 6'b111111 : 6'b0;

//----------------------------------------------------------

	assign sel = state1;
	assign sel_sd = sel;
	assign tw = ((cnt_1000 >= 500) & (cnt_1000 < 1000))
				& (|(state1 & twinkle));

//-----------------------------------------------------------

	assign upgrade = (cnt_595 == 1-1) & (cnt_14 ==1-1);
	assign move = (cnt_595 == 1-1) & ( cnt_14 !=1-1);
	assign keep = ~ (upgrade | move);

//-----------------------------------------------------------

	assign shcp = ((cnt_595 >= 298-1) & (cnt_595 < 596-1))
					| (cnt_595 == 0);
	assign stcp = (cnt_14 == 14-1) & (cnt_595 >= 491-1) & (cnt_595 < 596-1);

//----------------------------------------------------------

	reg		[5:0]	reg_dp;

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			reg_dp <= 6'b000_000;
		end
		else if (vld) begin
			reg_dp <= dp;
		end
	end

	assign point = |(reg_dp & state1) & (~tw);

//-------------------------------------------------------
endmodule

