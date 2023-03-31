`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module sd_itf(
	input	wire			valid_sd,
	input	wire	[5:0]	twinkle,
	input	wire	[5:0]	dp,

	input	wire	[3:0]	num6,
	input	wire	[3:0]	num5,
	input	wire	[3:0]	num4,
	input	wire	[3:0]	num3,
	input	wire	[3:0]	num2,
	input	wire	[3:0]	num1,

	output	wire			stcp,
	output	wire			shcp,
	output	wire			ds,
	output	wire			oe_n,

	input	wire			sysclk,
	input	wire			rst_n
);

	assign	oe_n	=	1'b0;

	wire	[5:0]	vld;
	wire	[5:0]	sel;
	wire			tw;
	wire	[5:0]	sel_sd;
	wire			point;
	wire			upgrade;
	wire			move;
	wire			keep;

	ctrl_sd_itf inst_ctrl_sd_itf(
		.valid_sd			(valid_sd),
		.twinkle			({twinkle[0],twinkle[1],twinkle[2],twinkle[3],twinkle[4],twinkle[5]}),

		.stcp				(stcp),
		.shcp				(shcp),

		.vld				(vld),
		.point				(point),
		.sel				(sel),
		.tw					(tw),
		.sel_sd				(sel_sd),
		.dp					({dp[0],dp[1],dp[2],dp[3],dp[4],dp[5]}),
		.upgrade			(upgrade),
		.move				(move),
		.keep				(keep),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

	datapath_sd_itf inst_datapath_sd_itf(
		.num6				(num1),
		.num5				(num2),
		.num4				(num3),
		.num3				(num4),
		.num2				(num5),
		.num1				(num6),
	
		.vld				(vld),
		.sel				(sel),
		.tw					(tw),
		.sel_sd				(sel_sd),
		.dp					(point),
		.upgrade			(upgrade),
		.move				(move),
		.keep				(keep),
		
		.ds					(ds),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);
endmodule
