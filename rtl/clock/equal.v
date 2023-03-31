`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module equal(
	input	wire	[3:0]		numn,
	input	wire	[3:0]		alarm_numn,

	output	wire	[3:0]		eqn
);
	assign eqn = (numn == alarm_numn);
endmodule


