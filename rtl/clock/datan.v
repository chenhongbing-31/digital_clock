`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module datan(
	input	wire			keep,
	input	wire			add,
	input	wire			sub,
	input	wire	[4:0]	reset,
	input	wire			clear,
	
	output	reg		[3:0]	numn,

	input	wire			sysclk,
	input	wire			rst_n
);
	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			numn <= 0;
		end
		else if (clear) begin
			numn <= 0;
		end
		else if (add) begin
			numn <= numn + 1;
		end
		else if (sub) begin
			numn <= numn - 1;
		end
		else if (reset != 5'b00001)
			case (reset)
				5'b00010:
					numn <= 9;
				5'b00100:
					numn <= 5;
				5'b01000:
					numn <= 3;
				5'b10000:
					numn <= 2;
				default:
					numn <= numn;
			endcase
		else if (keep) begin
			numn <= numn;
		end 
	end
endmodule

