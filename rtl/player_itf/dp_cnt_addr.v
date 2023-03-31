`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module dp_cnt_addr(
	input	wire			sel,
	input	wire			add,

	output	reg	[9:0]		addr,

	input	wire			sysclk,
	input	wire			rst_n
);

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			addr <= 10'b0;
		end
		else if (add) begin
			addr <= addr + 1'b1;
		end
		else begin
			case (sel)
				`MSC_N'b00000: addr <= addr;
				`MSC_N'b00001: addr <= 0;
				`MSC_N'b00010: addr <= 250;
				`MSC_N'b00100: addr <= 410;
				`MSC_N'b01000: addr <= 615;
				`MSC_N'b10000: addr <= 820;
			endcase
		end
	end

endmodule
