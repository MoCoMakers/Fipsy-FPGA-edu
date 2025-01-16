/* Fipsy_Top.v 

   This is the top level source file for the Fipsy FPGA module.  The baseline code is built on the 
   version 1712 hardware, and will generally be modified to add application specific functionality.

   This top level source file is intended only to identify the pin connections and collect application 
   logic modules.  To add logic to the part, a unique verilog file would generally be written.  
   These unique files would be referenced here and in the FPGA project.  

   Note that success will generally depend on a fairly complete understanding of the FPGA, including 
   various details of how to use the I/O structures and how they should be used in the application.  
   This baseline source and the surrounding project is intended to provide a working example only.
      
   IMPORTANT: It is assumed that the slave SPI port will be used to configure the FPGA, so the device 
   must be programmed such that this port remains enabled and those pins are not used by the logic design.  
   The system must also not connect these pins other than in accordance with the proper use of the slave 
   SPI port.  For example, the slave select pin must be tied inactive (high) other than when accessing 
   the port. These factors are part of the FPGA project but not a part of this code.     
*/

/* APPLICATION SPECIFIC DESCRIPTION   

This version is the baseline, implementing only code to blink the on-board LED.

*/

//-----------------------------------------------------------------------------------------------
// Module header with generic identification of I/O
//-----------------------------------------------------------------------------------------------

/* This top level header refers to pins of the Fipsy module.  The routing of the pins
   to the physical chip are covered in the project constraints, so they need not be considered
   directly when writing code here.  FPGA pins not routed to module pins or reserved for purposes
   such as the slave SPI port are not identified here.  The exception is the routing of the
   LED on the module, which is defined here.
   
   Note that various pin routing choices are made to reduce the number of potential conflicts
   with external logic.  However, some dual function pins are still available for specific use.
   The project constraints are set to keep the slave SPI port active for reconfiguration and/or
   application use.  However, all other I/O is assumed to be general purpose.  Drive strengths 
   and other such details in the project constraints are generally set for the typical logic 
   use of these pins.  Advanced users may revisit these points.  
*/

module Fipsy_Top(
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

//-----------------------------------------------------------------------------------------------
// Hardware resources on chip
//-----------------------------------------------------------------------------------------------
               
// Connectivity to hard wired resources on the chip is identified here and can be connected
// to application specific code to follow.  These signals are like pins of the chip, except
// that instead of connecting external circuits they connect circuits provided on the chip.
// If those circuits are not needed, just don't use these wires and the tool will not 
// connect them.  
//
// There are a number of hard wired resources of this type, but they are not all identified here.
// These will be added to the baseline as they are needed for examples, while the collection 
// that is here provides some guidance.  This information comes from documentation for 
// Lattice libraries.

// Instantiate a connection to the internal oscillator
wire INTERNAL_OSC;              
// In general the oscillator will be running, and should be kept running in case it is needed
// in logic or for aspects of configuration.  The frequency can be set in the tool or at
// this level with a parameter.  
// IMPORTANT - This oscillator has very poor accuracy - do not depend on it for critical timing.  
defparam OSCH_inst.NOM_FREQ = "2.08";   // Must be one of the allowed frequencies (2.08MHz default)
OSCH OSCH_inst( .STDBY(1'b0),           // Enable input, 0=Enabled, 1=Disabled (also disabled if Bandgap=OFF)
                .OSC(INTERNAL_OSC),     // Set the oscillator output to appear on the wire defined above 
                .SEDSTDBY()             // This output is not required for normal use
              ); 

//-----------------------------------------------------------------------------------------------
// Application specific signal definitions, registers, variables  
//-----------------------------------------------------------------------------------------------

// NOTE ON APPLICATION SPECIFIC SIGNAL NAMES - 
// It is not recommended to edit the above code with application specific names.   
// The pins may be "#defined" to application specific names.  But as a word of caution,
// use of the verilog syntax of `define and associated use of `<defined name> is not easy. 
// Instead, the intention is that these signals be passed to application specific verilog
// files where application specific signal names can be used, and this module 
// would be used to pass pins to those functions as shown in the baseline example.

// The purpose of this section is to define internal signals, which may be used 
// as required by aspects of local logic to connect application modules and pins.
// This is roughly analogous to variables used in function calls to pass data 
// between such functions.  In hardware, variables are connections or groups of
// connections with various characteristics.

// BASELINE EXAMPLE 
// Create wires to connect the counter (see example application)
wire Out2Hz;

//-----------------------------------------------------------------------------------------------
// Application specific logic
//-----------------------------------------------------------------------------------------------

/* Default assignments -
   If pins are not used, it may be a good idea to drive them to a known state. Many FPGA tools
   will use pin-connected logic if it thinks the pin is not in use, so it may cause trouble 
   if in fact the pin is somehow connected.  The specifics of this tool and this chip at this
   revision level are not specifically known as of this writing, but not doing this is likely 
   to generate warnings and it is still good practice to have all I/O defined in source code.
   So, consider using the following default assignments, commenting these lines as pins are used. 
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
 
/* The following space is used to instantiate (think 'call') other verilog modules with 
   application specific code.  The "arguments" to those calls are the signal inputs and outputs.  
   As these modules are written, add them to the project and instantiate them here, in the top 
   level module of the project.
*/

/* BASELINE EXAMPLE 
   Use a 20-bit counter to divide the 2.08 MHz internal clock by 2^20 to get an output of
   about 2 Hz.  Use this output to drive the LED.  Locally connect the oscillator and
   the 2 Hz output to pins so they can be viewed on an oscilloscope.  Hold the counter 
   in reset when a chosen pin is high (pull down should be active so this will not be true
   when the pin is left open).  Drive the LED with the output of the counter inverted so
   that when reset is true the LED will be off.
   
   Note that a 20-bit counter is actually a good size hunk of logic and will take a 
   recognizable portion of this little chip.  But it is therefore also a good place to 
   start examining how the tools work, the impact of timing, I/O selections, etc.  
*/ 

// Instantiate the counter/divider
FreqDiv20Bit FreqDiv20Bit_inst( 
                               .CLOCK(INTERNAL_OSC),    // Drive with internal oscillator
                               .RESET(PIN10),           // Reset when chosen reset pin is high 
                               .MSB(Out2Hz)             // We expect 2 Hz out with 2MHz in
                              );

// Route the output signal to a pin and the LED
// The LED lights when the signal driving it is low, so inverting the signal will make it light
// when the signal is high                              
assign LEDn = !Out2Hz; 
// View the signal on a chosen pin
assign PIN20 = Out2Hz;
// Also put the oscillator signal itself on a pin
assign PIN11 = Out2Hz;

//-----------------------------------------------------------------------------------------------
// End of module  	
//-----------------------------------------------------------------------------------------------

endmodule




