`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module datapath_sd_itf(
	input	wire	[3:0]	num6,
	input	wire	[3:0]	num5,
	input	wire	[3:0]	num4,
	input	wire	[3:0]	num3,
	input	wire	[3:0]	num2,
	input	wire	[3:0]	num1,

	input	wire	[5:0]	vld,
	input	wire	[5:0]	sel,
	input	wire			tw,
	input	wire	[5:0]	sel_sd,
	input	wire			dp,
	input	wire			upgrade,
	input	wire			move,
	input	wire			keep,
	
	output	wire			ds,

	input	wire			sysclk,
	input	wire			rst_n
);
	wire	[6:0]	data6;
	wire	[6:0]	data5;
	wire	[6:0]	data4;
	wire	[6:0]	data3;
	wire	[6:0]	data2;
	wire	[6:0]	data1;
		
	reg		[6:0]	data;
	wire	[13:0]	data_comb;
	reg		[13:0]	data_shift;

	decoder4_7 inst6_decoder4_7(
		.numn				(num6),

		.vld				(vld[5]),

		.datan				(data6),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

	decoder4_7 inst5_decoder4_7(
		.numn				(num5),

		.vld				(vld[4]),

		.datan				(data5),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

	decoder4_7 inst4_decoder4_7(
		.numn				(num4),

		.vld				(vld[3]),

		.datan				(data4),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

	decoder4_7 inst3_decoder4_7(
		.numn				(num3),

		.vld				(vld[2]),

		.datan				(data3),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

	decoder4_7 inst2_decoder4_7(
		.numn				(num2),

		.vld				(vld[1]),

		.datan				(data2),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

	decoder4_7 inst1_decoder4_7(
		.numn				(num1),

		.vld				(vld[0]),

		.datan				(data1),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

//------------------------------------------------------------

	always @ (*) begin
		if (tw) begin
			data = 7'b111_1111;
		end
		else begin
			case (sel)
				6'b100_000	:	data = data6;
				6'b010_000	:	data = data5;
				6'b001_000	:	data = data4;
				6'b000_100	:	data = data3;
				6'b000_010	:	data = data2;
				6'b000_001	:	data = data1;
				default		:	data = 7'b111_1111;
			endcase
		end
	end

	assign d_p = ~dp;
	assign data_comb = {sel_sd, d_p, data};

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			data_shift <= 14'b000000_1_111111;
		end
		else if (upgrade) begin
			data_shift <= data_comb;
		end
		else if (move) begin
			data_shift <= {data_shift[12:0],data_shift[13]};
		end
		else if (keep) begin
			data_shift <= data_shift;
		end
	end

	assign ds = data_shift[13];

endmodule
