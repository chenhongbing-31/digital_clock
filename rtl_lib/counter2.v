module counter2(
	input	wire			clk,
	input	wire			rst_n,
	
	input	wire			cnt_add,
	input	wire			cnt_end,
	output	wire			carryout,

	output	wire	[1:0]	cnt
);

	reg		[1:0]	cntb;
	wire	[1:0]	cnt_reg;

	always @ (*) begin
		if (rst_n) begin
			cntb = 2'b0;
		end
		else if (cnt_end) begin
			cntb = 2'b0;
		end
		else if (cnt_add) begin
			cntb = cnt_reg + 2'b1;
		end
	end

	genvar i;
	generate for(i = 0 ; i < 2; i = i + 1) begin : U
		dreg u_dreg(
			//ports
			.clk			( clk			),
			.rst_n			( rst_n			),
			.datain			( cntb[i]		),
			.dataout 		( cnt_reg[i] 	)
		);
	end
	endgenerate

	assign	cnt			=	cnt_reg;

	assign	carryout	=	(cnt_reg == 2'b11);

	
endmodule
