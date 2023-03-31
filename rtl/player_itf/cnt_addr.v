`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module cnt_addr(
	input	wire	[9:0]			volume_in,
	input	wire	[`MSC_N-1:0]	start,

	output	wire	[9:0]			volume_out,
	output	wire					tran_vld,
	output	wire					tran_end,

	output	wire	[9:0]			addr,
	output	wire					rom_clock,
	input	wire	[5:0]			q,

	input	wire					sysclk,
	input	wire					rst_n
);
	
	wire	[`MSC_N-1:0]	sel;
	wire					add;

	ctrl_cnt_addr inst_ctrl_cnt_addr(
		.volume_in					(volume_in),
		.start						(start),
		.q							(q),

		.add						(add),
		.volume_out					(volume_out),
		.tran_vld					(tran_vld),
		.tran_end					(tran_end),
		.rom_clock					(rom_clock),

		.sel						(sel),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	dp_cnt_addr inst_dp_cnt_addr(
		.sel						(sel),
		.add						(add),

		.addr						(addr),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

endmodule
