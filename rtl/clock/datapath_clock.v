`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module datapath_clock(
	input	wire	[3:0]	alarm_keep,
	input	wire	[3:0]	alarm_add,
	input	wire	[3:0]	alarm_sub,
	input	wire	[19:0]	alarm_reset,
	input	wire	[3:0]	alarm_clear,

	input	wire	[5:0]	keep,
	input	wire	[5:0]	add,
	input	wire	[5:0]	sub,
	input	wire	[29:0]	reset,
	input	wire	[5:0]	clear,

	input	wire			stop,

	output	wire	[3:0]	num6,
	output	wire	[3:0]	num5,
	output	wire	[3:0]	num4,
	output	wire	[3:0]	num3,
	output	wire	[3:0]	num2,
	output	wire	[3:0]	num1,

	output	wire	[3:0]	alarm_num6,
	output	wire	[3:0]	alarm_num5,
	output	wire	[3:0]	alarm_num4,
	output	wire	[3:0]	alarm_num3,

	input	wire			tm_sac,

	input	wire			beep_on,

	output	reg		[3:0]	reg_num6,
	output	reg		[3:0]	reg_num5,
	output	reg		[3:0]	reg_num4,
	output	reg		[3:0]	reg_num3,
	output	reg		[3:0]	reg_num2,
	output	reg		[3:0]	reg_num1,

	output	reg				l9,
	output	reg				l8,
	output	reg				l7,
	output	reg				l6,
	output	reg				l5,
	output	reg				l4,
	output	reg				l3,
	output	reg				l2,
	output	reg				l1,
	output	reg				l0,

	output	wire	[9:0]			volume,
	output	reg	[`MSC_N-1:0]	start,

	input	wire			sysclk,
	input	wire			rst_n
);

	alarm inst6_alarm(
		.alarm_keep					(alarm_keep[3]),
		.alarm_add					(alarm_add[3]),
		.alarm_sub					(alarm_sub[3]),
		.alarm_reset				(alarm_reset[19:15]),
		.alarm_clear				(alarm_clear[3]),

		.alarm_numn					(alarm_num6),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	alarm inst5_alarm(
		.alarm_keep					(alarm_keep[2]),
		.alarm_add					(alarm_add[2]),
		.alarm_sub					(alarm_sub[2]),
		.alarm_reset				(alarm_reset[14:10]),
		.alarm_clear				(alarm_clear[2]),

		.alarm_numn					(alarm_num5),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	alarm inst4_alarm(
		.alarm_keep					(alarm_keep[1]),
		.alarm_add					(alarm_add[1]),
		.alarm_sub					(alarm_sub[1]),
		.alarm_reset				(alarm_reset[9:5]),
		.alarm_clear				(alarm_clear[1]),

		.alarm_numn					(alarm_num4),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	alarm inst3_alarm(
		.alarm_keep					(alarm_keep[0]),
		.alarm_add					(alarm_add[0]),
		.alarm_sub					(alarm_sub[0]),
		.alarm_reset				(alarm_reset[4:0]),
		.alarm_clear				(alarm_clear[0]),

		.alarm_numn					(alarm_num3),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	datan inst6_data(
		.keep						(keep[5]),
		.add						(add[5]),
		.sub						(sub[5]),
		.reset						(reset[29:25]),
		.clear						(clear[5]),

		.numn						(num6),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	datan inst5_data(
		.keep						(keep[4]),
		.add						(add[4]),
		.sub						(sub[4]),
		.reset						(reset[24:20]),
		.clear						(clear[4]),

		.numn						(num5),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);
	
	datan inst4_data(
		.keep						(keep[3]),
		.add						(add[3]),
		.sub						(sub[3]),
		.reset						(reset[19:15]),
		.clear						(clear[3]),

		.numn						(num4),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	datan inst3_data(
		.keep						(keep[2]),
		.add						(add[2]),
		.sub						(sub[2]),
		.reset						(reset[14:10]),
		.clear						(clear[2]),

		.numn						(num3),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	datan inst2_data(
		.keep						(keep[1]),
		.add						(add[1]),
		.sub						(sub[1]),
		.reset						(reset[9:5]),
		.clear						(clear[1]),

		.numn						(num2),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	datan inst1_data(
		.keep						(keep[0]),
		.add						(add[0]),
		.sub						(sub[0]),
		.reset						(reset[4:0]),
		.clear						(clear[0]),

		.numn						(num1),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

//-----------------------------------------------------

	wire			eq6;
	wire			eq5;
	wire			eq4;
	wire			eq3;
	wire			eq2;
	wire			eq1;

	equal inst6(
		.numn						(num6),
		.alarm_numn					(alarm_num6),

		.eqn						(eq6)
	);

	equal inst5(
		.numn						(num5),
		.alarm_numn					(alarm_num5),

		.eqn						(eq5)
	);

	equal inst4(
		.numn						(num4),
		.alarm_numn					(alarm_num4),

		.eqn						(eq4)
	);

	equal inst3(
		.numn						(num3),
		.alarm_numn					(alarm_num3),

		.eqn						(eq3)
	);

	equal inst2(
		.numn						(num2),
		.alarm_numn					(4'b0),

		.eqn						(eq2)
	);

	equal inst1(
		.numn						(num1),
		.alarm_numn					(4'b0),

		.eqn						(eq1)
	);

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			l0 <= 1'b0;
		end
		else if (eq6 & eq5 & eq4 & eq3 & eq2 & eq1) begin
			l0 <= 1'b1;
		end
		else if (stop)begin
			l0 <= 1'b0;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			reg_num6 <= 4'b0;
		end
		else if (tm_sac) begin
			reg_num6 <= num6;
		end
		else begin
			reg_num6 <= alarm_num6;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			reg_num5 <= 4'b0;
		end
		else if (tm_sac) begin
			reg_num5 <= num5;
		end
		else begin
			reg_num5 <= alarm_num5;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			reg_num4 <= 4'b0;
		end
		else if (tm_sac) begin
			reg_num4 <= num4;
		end
		else begin
			reg_num4 <= alarm_num4;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			reg_num3 <= 4'b0;
		end
		else if (tm_sac) begin
			reg_num3 <= num3;
		end
		else begin
			reg_num3 <= alarm_num3;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			reg_num2 <= 4'b0;
		end
		else if (tm_sac) begin
			reg_num2 <= num2;
		end
		else begin
			reg_num2 <= 0;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			reg_num1 <= 4'b0;
		end
		else if (tm_sac) begin
			reg_num1 <= num1;
		end
		else begin
			reg_num1 <= 0;
		end
	end

	assign	volume	=	10'b0000_1_0000_0;

	always @ (*) begin
		if (l0 & beep_on) begin
			start = `MSC_N'b00001;
		end
		else begin
			start = `MSC_N'b0;
		end
	end
endmodule
