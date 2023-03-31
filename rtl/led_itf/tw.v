`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module tw(
	input	wire			lin,
	input	wire			valid_led,
	input	wire			twinkle_led,
	input	wire			twinkle,

	output	reg				lout,

	input	wire			sysclk,
	input	wire			rst_n
);

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			lout <= 1'b1;
		end
		else if (valid_led & lin)
			if (twinkle_led) begin
				lout <= twinkle;
			end
			else begin
				lout <= 1'b0; //不闪烁，就常亮
			end
		else begin
			lout <= 1'b1;
		end
	end
endmodule
