`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"
//`include "C:\Users\chb\Desktop\digital_clock\rtl\para.v" //* 这个路径格式在 modelsim 在无法识别，并且注意要采用绝对路径

`timescale 1ns/1ps

module tb_top();
	reg				key1;
	reg				key2;

	wire			ds;
	wire			oe_n;
	wire			stcp;
	wire			shcp;

	wire			led0;

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
		key1 = 1'b1;
		key2 = 1'b1;

		# (20 * 0.001) ;/////

		# (20 * 5);
		key1 = 1'b0;
		# (20 * 2);
		key1 = 1'b1;
		# (20 * 12);
		key1 = 1'b0;
		# (20 * 8);
		key1 = 1'b1;
		# (20 * 5);
		key1 = 1'b0;

		# (`LONG_PRESSION * 20 + 20 * 50);
		key1 = 1'b1;
		# (20 * 5);
		key1 = 1'b0;
		# (20 * 2);
		key1 = 1'b1;
		# (20 * 12);
		key1 = 1'b0;
		# (20 * 8);
		key1 = 1'b1;
//////////////////////////////
		# (20 * 1000);
		key1 = 1'b0;
		# (20 * 3);
		key1 = 1'b1;
		# (20 * 5);
		key1 = 1'b0;
		# (20 * 2);
		key1 = 1'b1;
		# (20 * 12);
		key1 = 1'b0;

		# (`SHORT_PRESSION * 20 + 20 * 200);
		key1 = 1'b1;
		# (20 * 3);
		key1 = 1'b0;
		# (20 * 2);
		key1 = 1'b1;
		# (20 * 5);
		key1 = 1'b0;
		# (20 * 2);
		key1 = 1'b1;
		# (20 * 12);
		key1 = 1'b0;
		# (20 * 8);
		key1 = 1'b1;
	end

	top inst_top(
		.key1					(key1),
		.key2					(key2),
	
		.ds						(ds),
		.oe_n					(oe_n),
		.stcp					(stcp),
		.shcp					(shcp),

		.led0					(led0),
	
		.sysclk					(sysclk),
		.rst_n					(rst_n)
	);
endmodule
