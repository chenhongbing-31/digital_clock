`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

`timescale 1ns/1ps

module tb_player_itf();

	reg		sysclk;
	reg		rst_n;

	initial begin
		sysclk = 1'b1;
		rst_n = 1'b0;
		# 30;
		rst_n = 1'b1;
	end

	always begin
		# 10;
		sysclk = ~sysclk;
	end

	wire	[9:0]	volume;
	wire	beep;
	reg		[`MSC_N-1:0]	start;

	assign	volume	=	10'b0000_1_0000_0;

	initial begin
		start = `MSC_N'b00000;
		# (20*0.001);
		# (20 * 5);
		start = `MSC_N'b00001;

	end

player_itf inst_player_itf(
	.start						(start),
	.volume						(volume),
	
	.beep						(beep),
	
	.sysclk						(sysclk),
	.rst_n						(rst_n)
);
endmodule
