`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module ctrl_clock (
	input	wire			long_pression1,
	input	wire			short_pression1,
	input	wire			long_pression0,
	input	wire			short_pression0,

	output	reg		[5:0]	twinkle,
	output	reg		[5:0]	valid_sd,
	output	wire	[5:0]	dp,


	output	wire	[9:0]	twinkle_fre,
	output	wire	[9:0]	twinkle_led,
	output	wire	[9:0]	valid_led,

	output	wire	[3:0]	alarm_keep,
	output	reg		[3:0]	alarm_add,
	output	reg		[3:0]	alarm_sub,
	output	reg		[3:0]	alarm_clear,
	output	reg		[19:0]	alarm_reset,

	output	wire	[5:0]	keep,
	output	reg		[5:0]	add,
	output	reg		[5:0]	sub,
	output	reg		[5:0]	clear,
	output	reg		[29:0]	reset,

	output	reg				stop,

	input	wire	[3:0]	num6,
	input	wire	[3:0]	num5,
	input	wire	[3:0]	num4,
	input	wire	[3:0]	num3,
	input	wire	[3:0]	num2,
	input	wire	[3:0]	num1,

	input	wire	[3:0]	alarm_num6,
	input	wire	[3:0]	alarm_num5,
	input	wire	[3:0]	alarm_num4,
	input	wire	[3:0]	alarm_num3,
	
	output	wire			tm_sac,

	output	wire			beep_on,
	
	input	wire			sysclk,
	input	wire			rst_n
);
	function contain(
		input	[8:0]			state1,
		input	[2:0]			state2
	);
	begin
		contain = (state1[8:6] == state2);
	end
	endfunction

	
	parameter TIMING 			=	9'b001_000000;
	parameter SET_TIME			=	3'b010;
	parameter SET_ALARN_TIMING	=	3'b100;

	parameter ST6				=	9'b010_100000;
	parameter ST5				=	9'b010_010000;
	parameter ST4				=	9'b010_001000;
	parameter ST3				=	9'b010_000100;
	parameter ST2				=	9'b010_000010;
	parameter ST1				=	9'b010_000001;

	parameter SAC6				=	9'b100_100000;
	parameter SAC5				=	9'b100_010000;
	parameter SAC4				=	9'b100_001000;
	parameter SAC3				=	9'b100_000100;

	reg		[8:0]	state;
	reg		[8:0]	next_state;

	wire			TIMING_to_ST6;
	wire			ST6_to_ST5;
	wire			ST5_to_ST4;
	wire			ST4_to_ST3;
	wire			ST3_to_ST2;
	wire			ST2_to_ST1;
	wire			ST1_to_TIMING;

	wire			TIMING_to_SAC6;
	wire			SAC6_to_SAC5;
	wire			SAC5_to_SAC4;
	wire			SAC4_to_SAC3;
	wire			SAC3_to_TIMING;

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			state <= TIMING;
		end
		else begin
			state <= next_state;
		end
	end

	always @ (*) begin
		case (state) 
			TIMING:
				if (TIMING_to_ST6) begin
					next_state = ST6;
				end
				else if (TIMING_to_SAC6) begin
					next_state = SAC6;
				end
				else begin
					next_state = TIMING;
				end
			ST6:
				if (ST6_to_ST5) begin
					next_state = ST5;
				end
				else begin
					next_state = ST6;
				end
			ST5:
				if (ST5_to_ST4) begin
					next_state = ST4;
				end
				else begin
					next_state = ST5;
				end
			ST4:
				if (ST4_to_ST3) begin
					next_state = ST3;
				end
				else begin
					next_state = ST4;
				end
			ST3:
				if (ST3_to_ST2) begin
					next_state = ST2;
				end
				else begin
					next_state = ST3;
				end
			ST2:
				if (ST2_to_ST1) begin
					next_state = ST1;
				end
				else begin
					next_state = ST2;
				end
			ST1:
				if (ST1_to_TIMING) begin
					next_state = TIMING;
				end
				else begin
					next_state = ST1;
				end
			SAC6:
				if (SAC6_to_SAC5) begin
					next_state = SAC5;
				end
				else begin
					next_state = SAC6;
				end
			SAC5:
				if (SAC5_to_SAC4) begin
					next_state = SAC4;
				end
				else begin
					next_state = SAC5;
				end
			SAC4:
				if (SAC4_to_SAC3) begin
					next_state = SAC3;
				end
				else begin
					next_state = SAC4;
				end
			SAC3:
				if (SAC3_to_TIMING) begin
					next_state = TIMING;
				end
				else begin
					next_state = SAC3;
				end
			default:next_state = TIMING;
		endcase
	end

	assign	TIMING_to_ST6	=	long_pression1 & (state == TIMING);
	assign	ST6_to_ST5		=	long_pression1 & (state == ST6);
	assign	ST5_to_ST4		=	long_pression1 & (state == ST5);
	assign	ST4_to_ST3		=	long_pression1 & (state == ST4);
	assign	ST3_to_ST2		=	long_pression1 & (state == ST3);
	assign	ST2_to_ST1		=	long_pression1 & (state == ST2);
	assign	ST1_to_TIMING	=	long_pression1 & (state == ST1);

	assign	TIMING_to_SAC6	=	long_pression0 & (state == TIMING);
	assign	SAC6_to_SAC5	=	long_pression1 & (state == SAC6);
	assign	SAC5_to_SAC4	=	long_pression1 & (state == SAC5);
	assign	SAC4_to_SAC3	=	long_pression1 & (state == SAC4);
	assign	SAC3_to_TIMING	=	long_pression1 & (state == SAC3);

	reg		[25:0]	cnt_seconds;
	wire			cnt_seconds_vld;
	wire			cnt_seconds_end;

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt_seconds <= 0;
		end
		else if (cnt_seconds_end) begin
			cnt_seconds <= 0;
		end
		else if (cnt_seconds_vld) begin
			cnt_seconds <= cnt_seconds + 1'b1;
		end
	end

	assign	cnt_seconds_vld	=	1'b1;
	assign	cnt_seconds_end	=	(cnt_seconds == `SECONDS - 1); //测试的时候改成 50

// ----------------------------------------------------------
// * 以上是控制模块的整体架构，即，状态机 -- 计数器
// ----------------------------------------------------------

	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 != 9) begin
				add[0] <= 1;
			end
			else begin
				add[0] <= 0;
			end
		end
		else if (state == ST1) begin
			if (num1 != 9 & short_pression1) begin
				add[0] <= 1;
			end
			else begin
				add[0] <= 0;
			end
		end
		else begin
			add[0] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9) begin
				clear[0] <= 1;
			end
			else begin
				clear[0] <= 0;
			end
		end
		else if (state == ST1) begin
			if (num1 == 9 & short_pression1) begin
				clear[0] <= 1;
			end
			else begin
				clear[0] <= 0;
			end
		end
		else begin
			clear[0] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST1) begin
			if (num1 != 0 & short_pression0) begin
				sub[0] <= 1;
			end
			else begin
				sub[0] <= 0;
			end
		end
		else begin
			sub[0] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST1) begin
			if (num1 == 0 & short_pression0) begin
				reset[4:0] <= 5'b00010;
			end
			else begin
				reset[4:0] <= 5'b00001;
			end
		end
		else begin
			reset[4:0] <= 5'b00001;
		end
	end

	assign keep[0] = ~(add[0] | sub[0] | clear[0] | (|reset[4:1]));

//--------------------------------------------------------------------------

	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9 & num2 != 5) begin
				add[1] <= 1;
			end
			else begin
				add[1] <= 0;
			end
		end
		else if (state == ST2) begin
			if (num2 != 5 & short_pression1) begin
				add[1] <= 1;
			end
			else begin
				add[1] <= 0;
			end
		end
		else begin
			add[1] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9 & num2 == 5) begin
				clear[1] <= 1;
			end
			else begin
				clear[1] <= 0;
			end
		end
		else if (state == ST2) begin
			if (num2 == 5 & short_pression1) begin
				clear[1] <= 1;
			end
			else begin
				clear[1] <= 0;
			end
		end
		else begin
			clear[1] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST2) begin
			if (num2 != 0 & short_pression0) begin
				sub[1] <= 1;
			end
			else begin
				sub[1] <= 0;
			end
		end
		else begin
			sub[1] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST2) begin
			if (num2 == 0 & short_pression0) begin
				reset[9:5] <= 5'b00100;
			end
			else begin
				reset[9:5] <= 5'b00001;
			end
		end
		else begin
			reset[9:5] <= 5'b00001;
		end
	end

	assign keep[1] = ~(add[1] | sub[1] | clear[1] | (|reset[9:6]));

//----------------------------------------------------------------------

	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9 & num2 == 5 & num3 != 9) begin
				add[2] <= 1;
			end
			else begin
				add[2] <= 0;
			end
		end
		else if (state == ST3) begin
			if (num3 != 9 & short_pression1) begin
				add[2] <= 1;
			end
			else begin
				add[2] <= 0;
			end
		end
		else begin
			add[2] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9) begin
				clear[2] <= 1;
			end
			else begin
				clear[2] <= 0;
			end
		end
		else if (state == ST3) begin
			if (num3 == 9 & short_pression1) begin
				clear[2] <= 1;
			end
			else begin
				clear[2] <= 0;
			end
		end
		else begin
			clear[2] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST3) begin
			if (num3 != 0 & short_pression0) begin
				sub[2] <= 1;
			end
			else begin
				sub[2] <= 0;
			end
		end
		else begin
			sub[2] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST3) begin
			if (num3 == 0 & short_pression0) begin
				reset[14:10] <= 5'b00010;
			end
			else begin
				reset[14:10] <= 5'b00001;
			end
		end
		else begin
			reset[14:10] <= 5'b00001;
		end
	end

	assign keep[2] = ~(add[2] | sub[2] | clear[2] | (|reset[14:11]));

//--------------------------------------------------------------------------

	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9 & num4 != 5) begin
				add[3] <= 1;
			end
			else begin
				add[3] <= 0;
			end
		end
		else if (state == ST4) begin
			if (num4 != 5 & short_pression1) begin
				add[3] <= 1;
			end
			else begin
				add[3] <= 0;
			end
		end
		else begin
			add[3] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9 & num4 == 5) begin
				clear[3] <= 1;
			end
			else begin
				clear[3] <= 0;
			end
		end
		else if (state == ST4) begin
			if (num4 == 5 & short_pression1) begin
				clear[3] <= 1;
			end
			else begin
				clear[3] <= 0;
			end
		end
		else begin
			clear[3] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST4) begin
			if (num4 != 0 & short_pression0) begin
				sub[3] <= 1;
			end
			else begin
				sub[3] <= 0;
			end
		end
		else begin
			sub[3] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST4) begin
			if (num4 == 0 & short_pression0) begin
				reset[19:15] <= 5'b00100;
			end
			else begin
				reset[19:15] <= 5'b00001;
			end
		end
		else begin
			reset[19:15] <= 5'b00001;
		end
	end

	assign keep[3] = ~(add[3] | sub[3] | clear[3] | (|reset[19:16]));

//-----------------------------------------------------------------------

	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if ((cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9 & num4 == 5 & num6 != 2 & num5 != 9) 
				| (cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9 & num4 == 5 & num6 == 2 & num5 != 3)) begin
				add[4] <= 1;
			end
			else begin
				add[4] <= 0;
			end
		end
		else if (state == ST5) begin
			if ((num6 != 2 & num5 != 9 & short_pression1)
				| (num6 == 2 & num5 != 3 & short_pression1)) begin
				add[4] <= 1;
			end
			else begin
				add[4] <= 0;
			end
		end
		else begin
			add[4] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if ((cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9 & num4 == 5 & num6 != 2 & num5 == 9) 
				| (cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9 & num4 == 5 & num6 == 2 & num5 == 3)) begin
				clear[4] <= 1;
			end
			else begin
				clear[4] <= 0;
			end
		end
		else if (state == ST5) begin
			if ((num6 != 2 & num5 == 9 & short_pression1)
				| (num6 == 2 & num5 == 3 & short_pression1)) begin
				clear[4] <= 1;
			end
			else begin
				clear[4] <= 0;
			end
		end
		else begin
			clear[4] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST5) begin
			if ((num6 != 2 & num5 != 0 & short_pression0)
				| (num6 == 2 & num5 != 0 & short_pression0)) begin
				sub[4] <= 1;
			end
			else begin
				sub[4] <= 0;
			end
		end
		else begin
			sub[4] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST5) begin
			if (num6 != 2 & num5 == 0 & short_pression0) begin
				reset[24:20] <= 5'b00010;
			end
			else if (num6 == 2 & num5 == 0 & short_pression0) begin
				reset[24:20] <= 5'b01000;
			end
			else begin
				reset[24:20] <= 5'b00001;
			end
		end
		else begin
			reset[24:20] <= 5'b00001;
		end
	end

	assign keep[4] = ~(add[4] | sub[4] | clear[4] | (|reset[24:21]));

//---------------------------------------------------------------------------

	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9 & num4 == 5 & num5 == 9 & num6 != 2) begin
				add[5] <= 1;
			end
			else begin
				add[5] <= 0;
			end
		end
		else if (state == ST6) begin
			if (num6 != 2 & short_pression1) begin
				add[5] <= 1;
			end
			else begin
				add[5] <= 0;
			end
		end
		else begin
			add[5] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == TIMING | contain(state,SET_ALARN_TIMING)) begin
			if (cnt_seconds_end & num1 == 9 & num2 == 5 & num3 == 9 & num4 == 5 & num5 == 3 & num6 == 2) begin
				clear[5] <= 1;
			end
			else begin
				clear[5] <= 0;
			end
		end
		else if (state == ST6) begin
			if (num6 == 2 & short_pression1) begin
				clear[5] <= 1;
			end
			else begin
				clear[5] <= 0;
			end
		end
		else begin
			clear[5] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST6) begin
			if (num6 != 0 & short_pression0) begin
				sub[5] <= 1;
			end
			else begin
				sub[5] <= 0;
			end
		end
		else begin
			sub[5] <= 0;
		end
	end

	always @ (*) begin
		if (state == ST6) begin
			if (num6 == 0 & short_pression0) begin
				reset[29:25] <= 5'b10000;
			end
			else begin
				reset[29:25] <= 5'b00001;
			end
		end
		else begin
			reset[29:25] <= 5'b00001;
		end
	end

	assign keep[5] = ~(add[5] | sub[5] | clear[5] | (|reset[29:26]));

//-------------------------------------------------------------------------
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------

	always @ (*) begin
		if (state == SAC3) begin
			if (alarm_num3 != 9 & short_pression1) begin
				alarm_add[0] <= 1;
			end
			else begin
				alarm_add[0] <= 0;
			end
		end
		else begin
			alarm_add[0] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == SAC3) begin
			if (alarm_num3 == 9 & short_pression1) begin
				alarm_clear[0] <= 1;
			end
			else begin
				alarm_clear[0] <= 0;
			end
		end
		else begin
			alarm_clear[0] <= 0;
		end
	end

	always @ (*) begin
		if (state == SAC3) begin
			if (alarm_num3 != 0 & short_pression0) begin
				alarm_sub[0] <= 1;
			end
			else begin
				alarm_sub[0] <= 0;
			end
		end
		else begin
			alarm_sub[0] <= 0;
		end
	end

	always @ (*) begin
		if (state == SAC3) begin
			if (alarm_num3 == 0 & short_pression0) begin
				alarm_reset[4:0] <= 5'b00010;
			end
			else begin
				alarm_reset[4:0] <= 5'b00001;
			end
		end
		else begin
			alarm_reset[4:0] <= 5'b00001;
		end
	end

	assign alarm_keep[0] = ~(alarm_add[0] | alarm_sub[0] | alarm_clear[0] | (|alarm_reset[4:1]));

//--------------------------------------------------------------------------

	always @ (*) begin
		if (state == SAC4) begin
			if (alarm_num4 != 5 & short_pression1) begin
				alarm_add[1] <= 1;
			end
			else begin
				alarm_add[1] <= 0;
			end
		end
		else begin
			alarm_add[1] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == SAC4) begin
			if (alarm_num4 == 5 & short_pression1) begin
				alarm_clear[1] <= 1;
			end
			else begin
				alarm_clear[1] <= 0;
			end
		end
		else begin
			alarm_clear[1] <= 0;
		end
	end

	always @ (*) begin
		if (state == SAC4) begin
			if (alarm_num4 != 0 & short_pression0) begin
				alarm_sub[1] <= 1;
			end
			else begin
				alarm_sub[1] <= 0;
			end
		end
		else begin
			alarm_sub[1] <= 0;
		end
	end

	always @ (*) begin
		if (state == SAC4) begin
			if (alarm_num4 == 0 & short_pression0) begin
				alarm_reset[9:5] <= 5'b00100;
			end
			else begin
				alarm_reset[9:5] <= 5'b00001;
			end
		end
		else begin
			alarm_reset[9:5] <= 5'b00001;
		end
	end

	assign alarm_keep[1] = ~(alarm_add[1] | alarm_sub[1] | alarm_clear[1] | (|alarm_reset[9:6]));

//-----------------------------------------------------------------------

	always @ (*) begin
		if (state == SAC5) begin
			if ((alarm_num6 != 2 & alarm_num5 != 9 & short_pression1)
				| (alarm_num6 == 2 & alarm_num5 != 3 & short_pression1)) begin
				alarm_add[2] <= 1;
			end
			else begin
				alarm_add[2] <= 0;
			end
		end
		else begin
			alarm_add[2] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == SAC5) begin
			if ((alarm_num6 != 2 & alarm_num5 == 9 & short_pression1)
				| (alarm_num6 == 2 & alarm_num5 == 3 & short_pression1)) begin
				alarm_clear[2] <= 1;
			end
			else begin
				alarm_clear[2] <= 0;
			end
		end
		else begin
			alarm_clear[2] <= 0;
		end
	end

	always @ (*) begin
		if (state == SAC5) begin
			if ((alarm_num6 != 2 & alarm_num5 != 0 & short_pression0)
				| (alarm_num6 == 2 & alarm_num5 != 0 & short_pression0)) begin
				alarm_sub[2] <= 1;
			end
			else begin
				alarm_sub[2] <= 0;
			end
		end
		else begin
			alarm_sub[2] <= 0;
		end
	end

	always @ (*) begin
		if (state == SAC5) begin
			if (alarm_num6 != 2 & alarm_num5 == 0 & short_pression0) begin
				alarm_reset[14:10] <= 5'b00010;
			end
			else if (alarm_num6 == 2 & alarm_num5 == 0 & short_pression0) begin
				alarm_reset[14:10] <= 5'b01000;
			end
			else begin
				alarm_reset[14:10] <= 5'b00001;
			end
		end
		else begin
			alarm_reset[14:10] <= 5'b00001;
		end
	end

	assign alarm_keep[2] = ~(alarm_add[2] | alarm_sub[2] | alarm_clear[2] | (|alarm_reset[14:11]));

//---------------------------------------------------------------------------

	always @ (*) begin
		if (state == SAC6) begin
			if (alarm_num6 != 2 & short_pression1) begin
				alarm_add[3] <= 1;
			end
			else begin
				alarm_add[3] <= 0;
			end
		end
		else begin
			alarm_add[3] <= 0;
		end
	end
	
	always @ (*) begin
		if (state == SAC6) begin
			if (alarm_num6 == 2 & short_pression1) begin
				alarm_clear[3] <= 1;
			end
			else begin
				alarm_clear[3] <= 0;
			end
		end
		else begin
			alarm_clear[3] <= 0;
		end
	end

	always @ (*) begin
		if (state == SAC6) begin
			if (alarm_num6 != 0 & short_pression0) begin
				alarm_sub[3] <= 1;
			end
			else begin
				alarm_sub[3] <= 0;
			end
		end
		else begin
			alarm_sub[3] <= 0;
		end
	end

	always @ (*) begin
		if (state == SAC6) begin
			if (alarm_num6 == 0 & short_pression0) begin
				alarm_reset[19:15] <= 5'b10000;
			end
			else begin
				alarm_reset[19:15] <= 5'b00001;
			end
		end
		else begin
			alarm_reset[19:15] <= 5'b00001;
		end
	end

	assign alarm_keep[3] = ~(alarm_add[3] | alarm_sub[3] | alarm_clear[3] | (|alarm_reset[19:16]));

// -----------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------

	assign tm_sac = (state == TIMING) | (contain(state,SET_TIME));

//-----------------------------------------------------------------------------------------------------

	assign valid_led = (state == TIMING) ? ({10{1'b1}}) : ({10{1'b0}});
	assign twinkle_fre = 9'b000_000_001;
	assign twinkle_led = {{9{1'b0}},1'b1};

//------------------------------------------------------------------------------------------------------

	reg		long_pression1_r1;
	reg		long_pression0_r1;
	reg		short_pression1_r1;
	reg		short_pression0_r1;
	reg		cnt_seconds_end_r1;

	reg		long_pression1_r2;
	reg		long_pression0_r2;
	reg		short_pression1_r2;
	reg		short_pression0_r2;
	reg		cnt_seconds_end_r2;

//------------------------------------------------------------

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			long_pression1_r1 <= 0;
		end
		else begin
			long_pression1_r1 <= long_pression1;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			long_pression0_r1 <= 0;
		end
		else begin
			long_pression0_r1 <= long_pression0;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			short_pression1_r1 <= 0;
		end
		else begin
			short_pression1_r1 <= short_pression1;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			short_pression0_r1 <= 0;
		end
		else begin
			short_pression0_r1 <= short_pression0;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt_seconds_end_r1 <= 0;
		end
		else begin
			cnt_seconds_end_r1<= cnt_seconds_end;
		end
	end

//------------------------------------------------------------

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			long_pression1_r2 <= 0;
		end
		else begin
			long_pression1_r2 <= long_pression1_r1;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			long_pression0_r2 <= 0;
		end
		else begin
			long_pression0_r2 <= long_pression0_r1;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			short_pression1_r2 <= 0;
		end
		else begin
			short_pression1_r2 <= short_pression1_r1;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			short_pression0_r2 <= 0;
		end
		else begin
			short_pression0_r2 <= short_pression0_r1;
		end
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			cnt_seconds_end_r2 <= 0;
		end
		else begin
			cnt_seconds_end_r2<= cnt_seconds_end_r1;
		end
	end

//---------------------------------------------------------------------

	always @ (*) begin
		if (state == TIMING) begin
			if (cnt_seconds_end_r2) begin
				valid_sd = 6'b111111;
			end
			else begin
				valid_sd = 6'b000000;
			end
		end
		else if (contain(state,SET_TIME)| contain(state,SET_ALARN_TIMING)) begin
			if (long_pression0_r2 | long_pression1_r2) begin
				valid_sd = 6'b111111;
			end
			else if (short_pression0_r2 | short_pression1_r2) begin
				valid_sd = 6'b111111;
			end
			else begin
				valid_sd = 6'b000000;
			end
		end
		else begin
			valid_sd = 6'b000000;
		end
	end

	always @ (*) begin
		case (state)
			ST1:
				twinkle = 6'b000_001;
			ST2:
				twinkle = 6'b000_010;
			ST3:
				twinkle = 6'b000_100;
			ST4:
				twinkle = 6'b001_000;
			ST5:
				twinkle = 6'b010_000;
			ST6:
				twinkle = 6'b100_000;
			SAC3:
				twinkle = 6'b000_100;
			SAC4:
				twinkle = 6'b001_000;
			SAC5:
				twinkle = 6'b010_000;
			SAC6:
				twinkle = 6'b100_000;
			default:
				twinkle = 6'b000_000;
		endcase
	end

	always @ (posedge sysclk or negedge rst_n) begin
		if (~rst_n) begin
			stop <= 1'b0;
		end
		else if (short_pression1 | long_pression1 | short_pression0 | long_pression0) begin
			stop <= 1'b1;
		end
		else begin
			stop <= 1'b0;
		end
	end

	assign beep_on = (state == TIMING);

	assign dp = 6'b010100;
endmodule

