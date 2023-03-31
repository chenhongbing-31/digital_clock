module dreg(
	input	wire			clk,
	input	wire			rst_n,

	input	wire			datain,
	output	reg				dataout
);

	always @ (posedge clk or negedge rst_n) begin
		if (rst_n) begin
			dataout <= 1'b0;
		end
		else begin
			dataout <= datain;
		end
	end

endmodule
