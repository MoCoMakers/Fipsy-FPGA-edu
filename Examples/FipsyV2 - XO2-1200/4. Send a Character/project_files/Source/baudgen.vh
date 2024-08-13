//-----------------------------------------------------------------------------
//-- Constants for the serial asinchronous communication modules
//------------------------------------------------------------------------------
//-- (C) BQ. December 2015. Written by Juan Gonzalez (Obijuan)
//------------------------------------------------------------------------------
// These constans have been calculated for the ICESTICK board which have
// a 12MHz clock
//
//-- The calculation for the icestick board is:
//-- Divisor = 12000000 / BAUDRATE  (and the result is rounded to an integer number)
//--------------------------------------------------------------------------------
//-- The python3 script: baudgen.py contains the function for generating this table
//-----------------------------------------------------------------------------------

//-- Constants for obtaining standard BAURATES:
`define B115200 104
`define B57600  209
`define B38400  314

`define B19200  629
`define B9600   1259
`define B4800   2518
`define B2400   5037
`define B1200   10075
`define B600    20150
`define B300 40300