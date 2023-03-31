`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module sp_lp(
	input	wire			key_mooth,

	output	reg				short_pression,
	output	reg				long_pression,

	input	wire			sysclk,
	input	wire			rst_n
);

	reg		[25:0]			cnt;
	wire					cnt_vld;
	wire					cnt_end;

	reg						key_mooth_r1;

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			key_mooth_r1 <= 1'b0;
		end
		else begin
			key_mooth_r1 <= key_mooth;
		end
	end

//------------------------------------------------------------

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt <= 26'b0;
		end
		else if (cnt_end) begin
			cnt <= 26'b0;
		end
		else if (cnt_vld) begin
			cnt <= cnt + 1'b1;
		end
	end

	assign cnt_vld = key_mooth & (cnt < `LONG_PRESSION - 1);
	assign cnt_end = (~key_mooth & key_mooth_r1);

//-------------------------------------------------------

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			short_pression <= 1'b0;
		end
		else if (short_pression) begin
			short_pression <= 1'b0;
		end
		else if ((cnt>=`SHORT_PRESSION-1) & (cnt<`LONG_PRESSION-1) & cnt_end) begin
			short_pression <= 1'b1;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			long_pression <= 1'b0;
		end
		else if (long_pression) begin
			long_pression <= 1'b0;
		end
		else if ((cnt==`LONG_PRESSION-1) & cnt_end) begin
			long_pression <= 1'b1;
		end
	end
endmodule
