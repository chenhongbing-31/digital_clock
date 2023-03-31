`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

`timescale 1ns/1ps

module tb_clock();
	reg				long_pression1;
	reg				short_pression1;
	reg				long_pression0;
	reg				short_pression0;

	wire	[5:0]	twinkle;
	wire			valid_sd;

	wire	[9:0]	twinkle_fre;
	wire	[9:0]	twinkle_led;
	wire	[9:0]	valid_led;

	wire	[3:0]	reg_num6;
	wire	[3:0]	reg_num5;
	wire	[3:0]	reg_num4;
	wire	[3:0]	reg_num3;
	wire	[3:0]	reg_num2;
	wire	[3:0]	reg_num1;

	wire			l0;

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
		long_pression1 = 1'b0;
		long_pression0 = 1'b0;
		short_pression1 = 1'b0;
		short_pression0 = 1'b0;
	end
	

	initial begin
		# (20 * 0.001) ; //*
		# (3600 * 1 * 20 * 50);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (4 * 20);
		short_pression1 = 1'b1;
		# (1 * 20);
		short_pression1 = 1'b0;

		# (3 * 20);
		short_pression1 = 1'b1;
		# (1 * 20);
		short_pression1 = 1'b0;

		# (3 * 20);
		short_pression0 = 1'b1;
		# (1 * 20);
		short_pression0 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (90 * 20);
		long_pression0 = 1'b1;
		# (1 * 20);
		long_pression0 = 1'b0;

		# (4 * 20);
		short_pression1 = 1'b1;
		# (1 * 20);
		short_pression1 = 1'b0;

		# (3 * 20);
		short_pression1 = 1'b1;
		# (1 * 20);
		short_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

		# (10 * 20);
		long_pression1 = 1'b1;
		# (1 * 20);
		long_pression1 = 1'b0;

	end

	clock inst_clock(
		.long_pression1				(long_pression1),
		.short_pression1			(short_pression1),
		.long_pression0				(long_pression0),
		.short_pression0			(short_pression0),
	
		.twinkle					(twinkle),
		.valid_sd					(valid_sd),
	
		.twinkle_fre				(twinkle_fre),
		.twinkle_led				(twinkle_led),
		.valid_led					(valid_led),
	
		.reg_num6					(reg_num6),
		.reg_num5					(reg_num5),
		.reg_num4					(reg_num4),
		.reg_num3					(reg_num3),
		.reg_num2					(reg_num2),
		.reg_num1					(reg_num1),
	
		.l9							(),
		.l8							(),
		.l7							(),
		.l6							(),
		.l5							(),
		.l4							(),
		.l3							(),
		.l2							(),
		.l1							(),
		.l0							(l0),
	
		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	//1000000000 ns
endmodule
