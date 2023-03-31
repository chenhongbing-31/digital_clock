`include "C:/Users/chb/Desktop/digital_clock/rtl/para.v"

module header();
  function contain(
      input	[8:0]			state1,
      input	[8:0]			state2
    );
    begin
      contain = (state1[8:6] == state2);
    end
  endfunction
endmodule
