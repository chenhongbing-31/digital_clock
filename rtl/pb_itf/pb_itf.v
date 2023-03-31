`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module pb_itf(
	input	wire			key,

	output	wire			short_pression,
	output	wire			long_pression,

	input	wire			sysclk,
	input	wire			rst_n
);

	wire				key_mooth;

	mooth inst_mooth(
		.key				(key),

		.key_mooth			(key_mooth),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

	sp_lp inst_sp_lp(
		.key_mooth			(key_mooth),

		.short_pression		(short_pression),
		.long_pression		(long_pression),

		.sysclk				(sysclk),
		.rst_n				(rst_n)
	);

endmodule
