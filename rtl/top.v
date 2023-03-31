`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module top(
	input	wire			key1,
	input	wire			key2,

	output	wire			ds,
	output	wire			oe_n,
	output	wire			stcp,
	output	wire			shcp,
	
	output	wire			led0,
	output	wire			led1,

	output	wire			beep,

	input	wire			sysclk,
	input	wire			rst_n
);

	assign led1 = key1 & key2;
	
	wire		long_pression1;
	wire		long_pression0;
	wire		short_pression1;
	wire		short_pression0;

	pb_itf inst1_pb_itf(
		.key					(key1),

		.short_pression			(short_pression1),
		.long_pression			(long_pression1),

		.sysclk					(sysclk),
		.rst_n					(rst_n)
	);

	pb_itf inst2_pb_itf(
		.key					(key2),

		.short_pression			(short_pression0),
		.long_pression			(long_pression0),

		.sysclk					(sysclk),
		.rst_n					(rst_n)
	);

	wire		[5:0]	twinkle;
	wire				valid_sd;
	wire		[5:0]	dp;

	wire		[9:0]	twinkle_fre;
	wire		[9:0]	twinkle_led;
	wire		[9:0]	valid_led;

	wire		[3:0]	reg_num6;
	wire		[3:0]	reg_num5;
	wire		[3:0]	reg_num4;
	wire		[3:0]	reg_num3;
	wire		[3:0]	reg_num2;
	wire		[3:0]	reg_num1;

	wire				l0;

	wire		[9:0]			volume;
	wire		[`MSC_N-1:0]	start;

	clock inst_clock(
		.long_pression1			(long_pression1),
		.short_pression1		(short_pression1),
		.long_pression0			(long_pression0),
		.short_pression0		(short_pression0),
	
		.twinkle				(twinkle),
		.valid_sd				(valid_sd),
		.dp						(dp),
	
		.twinkle_fre			(twinkle_fre),
		.twinkle_led			(twinkle_led),
		.valid_led				(valid_led),
	
		.reg_num6				(reg_num6),
		.reg_num5				(reg_num5),
		.reg_num4				(reg_num4),
		.reg_num3				(reg_num3),
		.reg_num2				(reg_num2),
		.reg_num1				(reg_num1),
	
		.l9						(),
		.l8						(),
		.l7						(),
		.l6						(),
		.l5						(),
		.l4						(),
		.l3						(),
		.l2						(),
		.l1						(),
		.l0						(l0),

		.volume					(volume),
		.start					(start),
	
		.sysclk					(sysclk),
		.rst_n					(rst_n)
	);

	sd_itf inst_sd_itf(
		.valid_sd				(valid_sd),
		.twinkle				(twinkle),
		.dp						(dp),
	
		.num6					(reg_num6),
		.num5					(reg_num5),
		.num4					(reg_num4),
		.num3					(reg_num3),
		.num2					(reg_num2),
		.num1					(reg_num1),
	
		.stcp					(stcp),
		.shcp					(shcp),
		.ds						(ds),
		.oe_n					(oe_n),
	
		.sysclk					(sysclk),
		.rst_n					(rst_n)
	);

	player_itf inst_player_itf(
		.start					(start),
		.volume					(volume),
	
		.beep					(beep),
		
		.sysclk					(sysclk),
		.rst_n					(rst_n)
	);

	led_itf inst_led_itf(
		.twinkle_fre			(twinkle_fre),
		.twinkle_led			(twinkle_led),
		.valid_led				(valid_led),
	
		.l9						(),
		.l8						(),
		.l7						(),
		.l6						(),
		.l5						(),
		.l4						(),
		.l3						(),
		.l2						(),
		.l1						(),
		.l0						(l0),
	
		.led9					(),
		.led8					(),
		.led7					(),
		.led6					(),
		.led5					(),
		.led4					(),
		.led3					(),
		.led2					(),
		.led1					(),
		.led0					(led0),
	
		.sysclk					(sysclk),//时钟
		.rst_n					(rst_n) //复位
	);

endmodule
