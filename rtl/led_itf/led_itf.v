`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module led_itf(
	//控制
	input	wire	[9:0]	twinkle_fre,
	input	wire	[9:0]	twinkle_led,
	input	wire	[9:0]	valid_led,

	//数据 只用到 l0
	input	wire			l9,
	input	wire			l8,
	input	wire			l7,
	input	wire			l6,
	input	wire			l5,
	input	wire			l4,
	input	wire			l3,
	input	wire			l2,
	input	wire			l1,
	input	wire			l0,

	//数据 输出低电平有效 
	output	wire			led9,
	output	wire			led8,
	output	wire			led7,
	output	wire			led6,
	output	wire			led5,
	output	wire			led4,
	output	wire			led3,
	output	wire			led2,
	output	wire			led1,
	output	wire			led0,

	//时钟
	input	wire			sysclk,//时钟
	input	wire			rst_n //复位
);

	wire	[9:0]	lin;
	wire	[9:0]	lout;

	assign	lin		=	{l9, l8, l7, l6, l5, l4, l3, l2, l1, l0};

	reg	[28:0]	x;

	// 所用功能的实现都在 always内 和 assign内；

	always @ (*) begin
		case (twinkle_fre)
			10'b00000_00001: //0.2s
				x = 10_000_000; //x = T * clock_fre
			10'b00000_00010: //0.5s
				x = 25_000_000;
			10'b00000_00100: //1.0s
				x = 50_000_000;
			10'b00000_01000: //1.5s
				x = 75_000_000;
			10'b00000_10000: //2.0s
				x = 100_000_000;
			10'b00001_00000: //2.5s
				x = 125_000_000;
			10'b00010_00000: //3.0s
				x = 150_000_000;
			10'b00100_00000: //4.0s
				x = 200_000_000;
			10'b01000_00000: //5.0s
				x = 250_000_000;
			10'b10000_00000: //6.0s
				x = 300_000_000;
			default: //1.0s
				x = 50_000_000;
		endcase
	end

	reg		[28:0]	cnt;
	wire			cnt_vld;
	wire			cnt_end;

	//
	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt <= 0;
		end
		else if (cnt_end) begin
			cnt <= 0;
		end
		else if (cnt_vld) begin
			cnt <= cnt + 1'b1;
		end
	end

	assign	cnt_vld	=	1'b1;
	assign	cnt_end =	(cnt == x-1);

	wire			twinkle;

	assign	twinkle = (cnt >= 0 & cnt < x/2) ? 1'b1 : 1'b0;

	genvar i;
	generate
		for (i=9; i>=0; i=i-1) begin : label
			tw inst_tw(
				.lin				(lin[i]),
				.valid_led			(valid_led[i]),
				.twinkle_led		(twinkle_led[i]),
				.twinkle			(twinkle),

				.lout				(lout[i]),

				.sysclk				(sysclk),
				.rst_n				(rst_n)
			);
		end
	endgenerate

	assign	led9 = lout[9];
	assign	led8 = lout[8];
	assign	led7 = lout[7];
	assign	led6 = lout[6];
	assign	led5 = lout[5];
	assign	led4 = lout[4];
	assign	led3 = lout[3];
	assign	led2 = lout[2];
	assign	led1 = lout[1];
	assign	led0 = lout[0];
endmodule
