`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module alarm(
	input	wire			alarm_keep,
	input	wire			alarm_add,
	input	wire			alarm_sub,
	input	wire	[4:0]	alarm_reset,
	input	wire			alarm_clear,
	
	output	reg		[3:0]	alarm_numn,

	input	wire			sysclk,
	input	wire			rst_n
);
	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			alarm_numn <= 0;
		end
		else if (alarm_clear) begin
			alarm_numn <= 0;
		end
		else if (alarm_add) begin
			alarm_numn <= alarm_numn + 1'b1;
		end
		else if (alarm_sub) begin
			alarm_numn <= alarm_numn - 1'b1;
		end
		else if (alarm_reset != 5'b00001)
			case (alarm_reset)
			5'b00010:
				alarm_numn <= 9;
			5'b00100:
				alarm_numn <= 5;
			5'b01000:
				alarm_numn <= 3;
			5'b10000:
				alarm_numn <= 2;
			default:
				alarm_numn <= alarm_numn;
			endcase
		else if (alarm_keep) begin
			alarm_numn <= alarm_numn;
		end 
	end
endmodule
