`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module decoder4_7(
	input	wire	[3:0]	numn,

	input	wire			vld,
	
	output	reg		[6:0]	datan,

	input	wire			sysclk,
	input	wire			rst_n
);
	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			datan <= 7'b111_1111;
		end
		else if (vld) begin
			case (numn)
				4'd15	:	datan <= 7'b000_1110;
				4'd14	:	datan <= 7'b000_0110;
				4'd13	:	datan <= 7'b010_0001;
				4'd12	:	datan <= 7'b100_0110;
				4'd11	:	datan <= 7'b000_0011;
				4'd10	:	datan <= 7'b000_1000;
				4'd9	:	datan <= 7'b001_0000;
				4'd8	:	datan <= 7'b000_0000;
				4'd7	:	datan <= 7'b111_1000;
				4'd6	:	datan <= 7'b000_0010;
				4'd5	:	datan <= 7'b001_0010;
				4'd4	:	datan <= 7'b001_1001;
				4'd3	:	datan <= 7'b011_0000;
				4'd2	:	datan <= 7'b010_0100;
				4'd1	:	datan <= 7'b111_1001;
				4'd0	:	datan <= 7'b100_0000;
				default	:	datan <= 7'b111_1111;
			endcase
		end
	end
endmodule
