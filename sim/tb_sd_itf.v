`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

`timescale 1ns/1ns

module tb_sd_itf();
	reg				valid_sd;
	reg		[5:0]	twinkle;
	reg		[5:0]	dp;
	reg		[3:0]	num6;
	reg		[3:0]	num5;
	reg		[3:0]	num4;
	reg		[3:0]	num3;
	reg		[3:0]	num2;
	reg		[3:0]	num1;

	wire			stcp;
	wire			shcp;
	wire			ds;

	reg				sysclk;
	reg				rst_n;

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

	initial begin
		valid_sd = 1'b0;
		twinkle = 5'b0;
		dp = 6'b0;
		num6 = 4'b0;
		num5 = 4'b0;
		num4 = 4'b0;
		num3 = 4'b0;
		num2 = 4'b0;
		num1 = 4'b0;
		# 40;
		valid_sd = 1'b1;
		dp = 6'b100_010;
		num6 = 3;
		num5 = 1;
		num4 = 1;
		num3 = 1;
		num2 = 9;
		num1 = 0;
		# 20;
		valid_sd = 1'b0;
	end

	sd_itf inst_sd_itf(
		.valid_sd		(valid_sd),
		.twinkle		(twinkle),
		.dp				(dp),

		.num6			(num6),
		.num5			(num5),
		.num4			(num4),
		.num3			(num3),
		.num2			(num2),
		.num1			(num1),

		.stcp			(stcp),
		.shcp			(shcp),
		.ds				(ds),

		.sysclk			(sysclk),
		.rst_n			(rst_n)
	);
endmodule
