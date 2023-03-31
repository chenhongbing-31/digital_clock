`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module clock(
	input	wire			long_pression1,
	input	wire			short_pression1,
	input	wire			long_pression0,
	input	wire			short_pression0,

	output	wire	[5:0]	twinkle,
	output	wire			valid_sd,
	output	wire	[5:0]	dp,

	output	wire	[9:0]	twinkle_fre,
	output	wire	[9:0]	twinkle_led,
	output	wire	[9:0]	valid_led,

	output	wire	[3:0]	reg_num6,
	output	wire	[3:0]	reg_num5,
	output	wire	[3:0]	reg_num4,
	output	wire	[3:0]	reg_num3,
	output	wire	[3:0]	reg_num2,
	output	wire	[3:0]	reg_num1,

	output	wire			l9,
	output	wire			l8,
	output	wire			l7,
	output	wire			l6,
	output	wire			l5,
	output	wire			l4,
	output	wire			l3,
	output	wire			l2,
	output	wire			l1,
	output	wire			l0,

	output	wire	[9:0]			volume,
	output	wire	[`MSC_N-1:0]	start,

	input	wire			sysclk,
	input	wire			rst_n
);

	wire	[3:0]	alarm_keep;
	wire	[3:0]	alarm_add;
	wire	[3:0]	alarm_sub;
	wire	[19:0]	alarm_reset;
	wire	[3:0]	alarm_clear;

	wire	[5:0]	keep;
	wire	[5:0]	add;
	wire	[5:0]	sub;
	wire	[29:0]	reset;
	wire	[5:0]	clear;

	wire	[3:0]	num6;
	wire	[3:0]	num5;
	wire	[3:0]	num4;
	wire	[3:0]	num3;
	wire	[3:0]	num2;
	wire	[3:0]	num1;

	wire	[3:0]	alarm_num6;
	wire	[3:0]	alarm_num5;
	wire	[3:0]	alarm_num4;
	wire	[3:0]	alarm_num3;

	wire			tm_sac;
	wire			beep_on;

	wire			stop;


	ctrl_clock inst_ctrl_clock(
		.long_pression1				(long_pression1),
		.short_pression1			(short_pression1),
		.long_pression0				(long_pression0),
		.short_pression0			(short_pression0),

		.alarm_keep					(alarm_keep),
		.alarm_add					(alarm_add),
		.alarm_sub					(alarm_sub),
		.alarm_reset				(alarm_reset),
		.alarm_clear				(alarm_clear),

		.keep						(keep),
		.add						(add),
		.sub						(sub),
		.reset						(reset),
		.clear						(clear),
		.dp							(dp),

		.stop						(stop),

		.num6						(num6),
		.num5						(num5),
		.num4						(num4),
		.num3						(num3),
		.num2						(num2),
		.num1						(num1),

		.alarm_num6					(alarm_num6),
		.alarm_num5					(alarm_num5),
		.alarm_num4					(alarm_num4),
		.alarm_num3					(alarm_num3),

		.twinkle					(twinkle),
		.valid_sd					(valid_sd),

		.twinkle_fre				(twinkle_fre),
		.twinkle_led				(twinkle_led),
		.valid_led					(valid_led),

		.tm_sac						(tm_sac),

		.beep_on					(beep_on),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	datapath_clock inst_datapath_clcok(
		.alarm_keep					(alarm_keep),
		.alarm_add					(alarm_add),
		.alarm_sub					(alarm_sub),
		.alarm_reset				(alarm_reset),
		.alarm_clear				(alarm_clear),

		.keep						(keep),
		.add						(add),
		.sub						(sub),
		.reset						(reset),
		.clear						(clear),

		.stop						(stop),

		.num6						(num6),
		.num5						(num5),
		.num4						(num4),
		.num3						(num3),
		.num2						(num2),
		.num1						(num1),

		.alarm_num6					(alarm_num6),
		.alarm_num5					(alarm_num5),
		.alarm_num4					(alarm_num4),
		.alarm_num3					(alarm_num3),

		.tm_sac						(tm_sac),

		.beep_on					(beep_on),

		.reg_num6					(reg_num6),
		.reg_num5					(reg_num5),
		.reg_num4					(reg_num4),
		.reg_num3					(reg_num3),
		.reg_num2					(reg_num2),
		.reg_num1					(reg_num1),

		.l9							(l9),
		.l8							(l8),
		.l7							(l7),
		.l6							(l6),
		.l5							(l5),
		.l4							(l4),
		.l3							(l3),
		.l2							(l2),
		.l1							(l1),
		.l0							(l0),

		.volume						(volume),
		.start						(start),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);


endmodule
