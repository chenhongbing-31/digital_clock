`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module mooth(
	input	wire			key,

	output	wire			key_mooth,

	input	wire			sysclk,
	input	wire			rst_n
);

	reg		[18:0]		key_reg;

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			key_reg <= 19'h7ffff;
		end
		else begin
			key_reg <= {key_reg[17:0], key};
		end
	end

	assign key_mooth = &(~(key_reg));
endmodule
