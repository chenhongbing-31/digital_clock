`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module player_itf(
	input	wire	[`MSC_N-1:0]	start,
	input	wire	[9:0]			volume,

	output	wire					beep,
	
	input	wire					sysclk,
	input	wire					rst_n
);

	wire	[9:0]	volume_out;
	wire			tran_end;
	wire			tran_vld;
	
	wire	[9:0]	addr;
	wire			rom_clock;
	wire	[5:0]	q;


	cnt_addr inst_cnt_addr(
		.volume_in					(volume),
		.start						(start),

		.volume_out					(volume_out),
		.tran_vld					(tran_vld),
		.tran_end					(tran_end),

		.addr						(addr),
		.rom_clock					(rom_clock),
		.q							(q),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

	rom6x256 inst_rom6x256(
		.address					(addr),
		.clock						(rom_clock),
		.q							(q)
	);

	translater inst_translater(
		.volume						(volume_out),
		.tran_vld					(tran_vld),
		.tran_end					(tran_end),
		.din						(q),

		.beep						(beep),

		.sysclk						(sysclk),
		.rst_n						(rst_n)
	);

endmodule
