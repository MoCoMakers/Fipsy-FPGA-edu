/* FreqDiv20Bit.v 

   This module implements a 20-bit counter with only the most significant bit provided as
   an output.  In effect, this is a frequency divider for which the output toggles at a 
   rate equal to the clock frequency divided by 2^20.  The clock is an input and is 
   applied to the sequential logic clock.  Technically, the output is not a clock within
   the FPGA, but a logic signal, although it will toggle like a clock.  There is a reset 
   input that will set the count to zero on each clock edge for which it is set (logic high).  
   This reset will clear the output to logic low, and the count and output will remain 
   that way as long as reset is active.  The reset input can therefore be used to stop the 
   output signal from toggling at an unpredictable point in the cycle.  More complex logic 
   could be developed to provide a more predictable control.

*/

//-----------------------------------------------------------------------------------------------
// Module header with identification of connected signals
//-----------------------------------------------------------------------------------------------

module FreqDiv20Bit(CLOCK, RESET, MSB);

input CLOCK;
input RESET;
output MSB;

//-----------------------------------------------------------------------------------------------
// Signal definitions, registers, variables 
//-----------------------------------------------------------------------------------------------

// Signal types for I/O 
wire CLOCK;
wire RESET;
wire MSB;

// Internal count bits 
reg [19:0] count;

//-----------------------------------------------------------------------------------------------
// Module logic definition 
//-----------------------------------------------------------------------------------------------

// 20-Bit counter with synchronous reset
// With reset not in the sensitivity list, the reset is synchronous (on next clock edge)
// If reset were in the sensitivity list, the reset would be asynchronous, which might  
// not be supported by the tool or the underlying hardware of the chip or both
// Without specifying bits and bit sizes of constants and variables, all defined bits are used.  
// The tool logic synthesizer will warn that constants are 32-bit by default and it has
// to work out the impact for you.  Yet writing it like this makes the code easier to 
// understand in this simple example.
always @(posedge CLOCK)
 begin 
  if(RESET) 
   count <= 0;
  else 
   count <= count + 1;
 end 
 
// Connect the output 
assign MSB = count[19];

//-----------------------------------------------------------------------------------------------
// End of module  	
//-----------------------------------------------------------------------------------------------

endmodule




