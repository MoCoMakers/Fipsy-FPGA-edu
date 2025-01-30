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
  PIN7, PIN8, PIN9, PIN10, PIN11, 
  PIN20, PIN19, PIN18, PIN17,PIN14,
  LEDn
 );
 
input PIN7, PIN8, PIN9, PIN10;
output PIN20, PIN19, PIN18, PIN17, PIN14, LEDn, PIN11;

// At this level, all named signals are wires
wire PIN7, PIN8, PIN9, PIN19, PIN20, PIN19, PIN18, PIN17, PIN14, LEDn;


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
defparam OSCH_inst.NOM_FREQ = "133";   // Must be one of the allowed frequencies (2.08MHz default)
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
//assign PIN7 = 0;
//assign PIN8 = 0;
//assign PIN9 = 0;
//assign PIN10 = 0;
//assign PIN14 = 0;
//assign PIN17 = 0;
//assign PIN18 = 0;
//assign PIN19 = 0;
//assign PIN20 = 0; 
//assign LEDn = 0;
 
/* The following space is used to instantiate (think 'call') other verilog modules with 
   application specific code.  The "arguments" to those calls are the signal inputs and outputs.  
   As these modules are written, add them to the project and instantiate them here, in the top 
   level module of the project.
*/

wire clk;

pll Clk_25MHz_inst (.CLKI(INTERNAL_OSC), .CLKOP(clk));
//ClockDivider Clk_25MHz_inst (
//	.INTERNAL_OSC(INTERNAL_OSC),
//	.clk_out_25mhz(clk)
//);

assign PIN11 = clk;

/*
VGA Port Pins:
1 - Red
2 - Green
3 - Blue
4 - Other (ID2, RES, N/C)
5,6,7,8 - GND
9 - Other (KEY, N/C)
10 - GND
11 - Other (ID0, RES, N/C)
12 - Other (ID1, SDA, N/C)
13 - Hsync
14 - Vsync
15 - Other (ID3, SCL, N/C)

Fipsy V2 - Pin Plan:
Pins 1-6 reserved for programming

PIN7 - input Player 1 #1 (i_Switch_1)
PIN8 - input Player 1 #2 (i_Switch_2)
PIN9 - input Player 2 #1 (i_Switch_3)
PIN10 -input Player 2 #2 (i_Switch_4)

Note that 1K Ohm Resistors are used as pull-down resistors on ground, to make the button
toggle effectively between high and low voltage.

PIN20 - o_VGA_HSync (VGA: 13)
PIN19 - o_VGA_VSync (VGA: 14)
PIN18 - o_VGA_Red_0 (VGA: 1)
PIN17 - o_VGA_Grn_0 (VGA: 2)
PIN16 - GND
PIN15 - +3.3V - Unused
PIN14 - o_VGA_Blu_0 (VGA: 3)

Clock for VGA should be 25.175 MHz standard, but we use 25MHz clock (1% error seems to be OK)
*/

/* These are Not Connected (N/C) */
wire Red1;
wire Red2;
wire Grn1;
wire Grn2;
wire Blu1;
wire Blu2;

VGA vga_inst(
.i_Clk(clk),
.i_Switch_1(PIN7),
.i_Switch_2(PIN8),
.i_Switch_3(PIN9),
.i_Switch_4(PIN10),
.o_VGA_HSync(PIN20),
.o_VGA_VSync(PIN19),
.o_VGA_Red_0(PIN18),
.o_VGA_Red_1(Red1),
.o_VGA_Red_2(Red2),
.o_VGA_Grn_0(PIN17),
.o_VGA_Grn_1(Grn1),
.o_VGA_Grn_2(Grn2),
.o_VGA_Blu_0(PIN14),
.o_VGA_Blu_1(Blu1),
.o_VGA_Blu_2(Blu2),
.LED_1(LEDn)
);


//-----------------------------------------------------------------------------------------------
// End of module  	
//-----------------------------------------------------------------------------------------------

endmodule




