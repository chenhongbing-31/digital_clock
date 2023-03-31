`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module translater(
	input	wire	[9:0]	volume,
	input	wire			tran_vld,
	input	wire			tran_end,
	input	wire	[5:0]	din,

	output	reg				beep,

	input	wire			sysclk,
	input	wire			rst_n
);

	reg		[17:0]	cnt;
	reg				cnt_vld;
	wire			cnt_end;

	reg		[17:0]	cnt_end_num;

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt_end_num <= 18'b0;
		end
		else begin
			case (din)
				6'b001_000: cnt_end_num <= 0;
				
				6'b001_001: cnt_end_num <= 190840;
				6'b001_010: cnt_end_num <= 170068;
				6'b001_011: cnt_end_num <= 151515;
				6'b001_100: cnt_end_num <= 143266;
				6'b001_101: cnt_end_num <= 127551;
				6'b001_110: cnt_end_num <= 113636;
				6'b001_111: cnt_end_num <= 101215;

				6'b010_001: cnt_end_num <= 95602;
				6'b010_010: cnt_end_num <= 85179;
				6'b010_011: cnt_end_num <= 75873;
				6'b010_100: cnt_end_num <= 71633;
				6'b010_101: cnt_end_num <= 63776;
				6'b010_110: cnt_end_num <= 56818;
				6'b010_111: cnt_end_num <= 50607;

				6'b100_001: cnt_end_num <= 47801;
				6'b100_010: cnt_end_num <= 42553;
				6'b100_011: cnt_end_num <= 37936;
				6'b100_100: cnt_end_num <= 35791;
				6'b100_101: cnt_end_num <= 31888;
				6'b100_110: cnt_end_num <= 28409;
				6'b100_111: cnt_end_num <= 25419;

				default: cnt_end_num <= 0;
			endcase
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt <= 18'b0;
		end
		else if (cnt_end) begin
			cnt <= 18'b0;
		end
		else if (cnt_vld) begin
			cnt <= cnt + 1'b1;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt_vld <= 1'b0;
		end
		else if (tran_end) begin
			cnt_vld <= 1'b0;
		end
		else if (tran_vld) begin
			cnt_vld <= 1'b1;
		end
	end

	assign cnt_end = tran_vld | (cnt == cnt_end_num - 1) | tran_end;

//----------------------------------------------------------------

	always @ (*) begin
		if (~cnt_vld) begin
			beep = 1'b0;
		end
		else if (cnt_end_num == 0) begin
			beep = 1'b0;
		end
		else begin
			case (volume)
				10'b0000_0_0000_1:
					beep = 0;
				10'b0000_0_0001_0:
					if (cnt <= cnt_end_num*9/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				10'b0000_0_0010_0:
					if (cnt <= cnt_end_num*8/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				10'b0000_0_0100_0:
					if (cnt <= cnt_end_num*7/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				10'b0000_0_1000_0:
					if (cnt <= cnt_end_num*6/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				10'b0000_1_0000_0:
					if (cnt <= cnt_end_num*5/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				10'b0001_0_0000_0:
					if (cnt <= cnt_end_num*4/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				10'b0010_0_0000_0:
					if (cnt <= cnt_end_num*3/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				10'b0100_0_0000_0:
					if (cnt <= cnt_end_num*2/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				10'b0100_0_0000_0:
					if (cnt <= cnt_end_num*1/10) begin
						beep = 0;
					end
					else begin
						beep = 1;
					end
				default:
					beep = 0;
			endcase
		end
	end
endmodule
