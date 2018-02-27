/* Blinky_Rate_Divider.v 
*/

module MakeFPGA_Top(
  PIN7, PIN8, PIN9, PIN10, 
  PIN11, PIN12, PIN13, PIN14, PIN17, PIN18, PIN19, PIN20,
  LEDn
 );

// Define all of the above pins as available for general I/O
inout PIN7, PIN8, PIN9, PIN10, PIN11, PIN12, PIN13, PIN14, PIN17, PIN18, PIN19, PIN20;
// Except the LED, which is only an output, for which driving low lights the LED
output LEDn;

// At this level, all named signals are wires
wire PIN7, PIN8, PIN9, PIN10, PIN11, PIN12, PIN13, PIN14, PIN17, PIN18, PIN19, PIN20, LEDn;

// Instantiate a connection to the internal oscillator
wire INTERNAL_OSC;              

// IMPORTANT - This oscillator has very poor accuracy - do not depend on it for critical timing.  
defparam OSCH_inst.NOM_FREQ = "2.08";   // Must be one of the allowed frequencies (2.08MHz default)
OSCH OSCH_inst( .STDBY(1'b0),           // Enable input, 0=Enabled, 1=Disabled (also disabled if Bandgap=OFF)
                .OSC(INTERNAL_OSC),     // Set the oscillator output to appear on the wire defined above 
                .SEDSTDBY()             // This output is not required for normal use
              ); 

// BASELINE EXAMPLE 
// Create wires to connect the counter (see example application)
wire Out2Hz;

/* Default assignments -
   If pins are not used, it may be a good idea to drive them to a known state. 
*/
assign PIN7 = 0;
assign PIN8 = 0;
assign PIN9 = 0;
//assign PIN10 = 0;
//assign PIN11 = 0;
assign PIN12 = 0;
assign PIN13 = 0;
assign PIN14 = 0;
assign PIN17 = 0;
assign PIN18 = 0;
assign PIN19 = 0;
//assign PIN20 = 0; 
//assign LEDn = 0;


// Instantiate the counter/divider
FreqDiv20Bit FreqDiv20Bit_inst( 
                               .CLOCK(INTERNAL_OSC),    // Drive with internal oscillator
                               .RESET(PIN10),           // Reset when chosen reset pin is high 
                               .MSB(Out2Hz)             // We expect 2 Hz out with 2MHz in
                              );


// View the signal on a chosen pin
assign PIN20 = Out2Hz;
// Also put the oscillator signal itself on a pin
assign PIN11 = INTERNAL_OSC;

reg flop1;
reg flop2;
//assign flop1 = Out2Hz;

initial
	begin
		flop2=0;
		flop1=1;
	end

always @ (posedge Out2Hz)
begin
	flop1 <= flop2;
	flop2 <= flop1;
end

assign LEDn=flop2;

endmodule