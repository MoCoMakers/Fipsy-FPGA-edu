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
`define B115200 18
`define B57600  36
`define B38400  54

`define B19200  108
`define B9600   216
`define B4800   433
`define B2400   866
`define B1200   1733
`define B600    3466
`define B300 6933