module counter26(
	input	wire			clk,
	input	wire			rst_n,

	input	wire			cnt_add,
	input	wire			cnt_end,
	output	wire			carryout,

	output	wire	[25:0]	cnt
);
	wire 			carryout_a;
	reg				carryout_a_reg;

	counter12 u1_counter12(
		//ports
		.clk      		( clk      			),
		.rst_n    		( rst_n    			),
		.cnt_add  		( cnt_add  			),
		.cnt_end  		( cnt_end  			),
		.carryout 		( carryout_a 		),
		.cnt      		( cnt[11:0]			)
	);

	dreg u1_dreg(
		//ports
		.clk     		( clk     			),
		.rst_n   		( rst_n   			),
		.datain  		( carryout_a  		),
		.dataout 		( carryout_a_reg	)
	);

	wire 			carryout_b;
	reg				carryout_b_reg;

	counter12 u2_counter12(
		//ports
		.clk      		( clk      			),
		.rst_n    		( rst_n    			),
		.cnt_add  		( carryout_a_reg  	),
		.cnt_end  		( cnt_end  			),
		.carryout 		( carryout_b 		),
		.cnt      		( cnt[23:12]		)
	);

	dreg u2_dreg(
		.clk			( clk				),
		.rst_n			( rst_n				),
		.datain			( carryout_b		),
		.dataout		( carryout_b_reg	)
	);

	counter2 u_counter2(
		//ports
		.clk      		( clk      			),
		.rst_n    		( rst_n    			),
		.cnt_add  		( carryout_b_reg	),
		.cnt_end  		( cnt_end  			),
		.carryout 		( 					),
		.cnt      		( cnt[25:24]		)
	);


endmodule
