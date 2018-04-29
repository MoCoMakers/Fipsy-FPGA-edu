/* MachXO2.h                                                       

   This header file helps define the programming interface for the FPGA
   on the MakeFPGA board, as defined by Lattice for the MachXO2 devices.
   This information was copied from Table 22 of the MachXO2 Programming
   and Configuration Usage Guide.  The definitions are intended to improve
   the clarity of code using the interface, but it does not define all 
   aspects of data usage.  Many commands and structures used in few places
   do not benefit as much from header definition, so we add them here where
   the definition improves coding clarity.  The pneumonics used are based 
   on those used by Lattice, but are not exactly the same where additional
   clarity is warranted.
   
*/

/*---------------------------------------------------------------------------*/
/* SPI Command Definitions                                                   */
/*---------------------------------------------------------------------------*/

/* Format note -
   Generally, commands are formated as 
   CMD OP0 OP1 OP2 DD DD DD DD ... DD
   Where Op is usually 3 bytes, might contain information, or if not used are 0x00
   The data may be written, read, or both (in SPI always write, using 0xFF if not used)
   The quantity of data depends on the command.  
   It is not fully specified, but it appears multibyte data is big endian (MSB first)
   Some of this information is conveyed here, but be sure to refer to the Lattice table.   
 */

#define MACHXO2_CMD_READ_DEVICEID           0xE0    /* Data is 4 byte device id code */
#define MACHXO2_CMD_ENABLE_TRANSPARENT  	0x74    /* Enable flash programming in transparent mode - OP0=0x08, see special case for I2C */
#define MACHXO2_CMD_ENABLE_OFFLINE      	0xC6    /* Enable flash programming in offline mode - OP0=0x08, see special case for I2C */
#define MACHXO2_CMD_CHECK_BUSY          	0xF0    /* Busy bit is bit 7 of one data byte, 1=busy */
#define MACHXO2_CMD_READ_STATUS         	0x3C    /* 4 data bytes, bit12=busy, bit13=error */
#define MACHXO2_CMD_ERASE               	0x0E    /* Erase the part - bitwise variation in lower nibble of OP0, see table, all part use 0x0F */
#define MACHXO2_CMD_ERASE_UFM          	    0xCB    /* Erase user flash memory (UFM) section only - note the MakeFPGA part does not have this */
#define MACHXO2_CMD_INIT_ADDRESS        	0x46    /* Set address to beginning of configuration flash */
#define MACHXO2_CMD_WRITE_ADDRESS       	0xB4    /* Set a specific address using data bytes - see table */
#define MACHXO2_CMD_PROG_INCR_NV        	0x70    /* Program a flash page (any flash presnet address) with 16 bytes of data and increment the address, OP2=0x01 */
#define MACHXO2_CMD_INIT_ADDR_UFM       	0x47    /* Set address to beginning of UFM - note the MakeFPGA part does not have this */
#define MACHXO2_CMD_PROG_TAG            	0xC9    /* Program one UFM page with 16 bytes of data, Op3=0x01 */
#define MACHXO2_CMD_PROGRAM_USERCODE    	0xC2    /* Program the user code with 4 bytes of data */
#define MACHXO2_CMD_READ_USERCODE           0xC0    /* Read byte 4 bytes of data from the user code */
#define MACHXO2_CMD_PROG_FEATURE        	0xE4    /* Write 8 bytes of data to the feature row */
#define MACHXO2_CMD_READ_FEATURE        	0xE7    /* Read 8 bytes of data from the feature row */
#define MACHXO2_CMD_PROG_FEABITS        	0xF8    /* Write 2 bytes of data to the feabits */
#define MACHXO2_CMD_READ_FEABITS        	0xFB    /* Read 2 bytes of data from the feabits */
#define MACHXO2_CMD_READ_INCR_NV        	0x73    /* Read flash, using byte count and paramters in the operands - see table */
#define MACHXO2_CMD_READ_UFM            	0xCA    /* Read UFM, using byte count and paramters in the operands - see table */
#define MACHXO2_CMD_PROGRAM_DONE        	0x5E    /* Set the DONE bit, for use where required by hardware */
#define MACHXO2_CMD_PROG_OTP            	0xF9    /* Program the OTP fuses - we don't want to do this, see table */
#define MACHXO2_CMD_READ_OTP            	0xFA    /* Read the OTP fused - we don't need to do this, see table */
#define MACHXO2_CMD_DISABLE             	0x26    /* ONLY 2 OPERANDS, BOTH 0x00 - Let go of the configuration interface - we don't use this - see table */
#define MACHXO2_CMD_NOP                 	0xFF    /* No operation - operands all 0xFF - this is an empty SPI transaction - can be useful to wake up the device */
#define MACHXO2_CMD_REFRESH             	0x79    /* ONLY 2 OPERANDS, BOTH 0x00 - Cause the FPGA to reconfigure from flash, such as after programming */
#define MACHXO2_CMD_PROGRAM_SECURITY    	0xCE    /* Program the security bit to restrict access to flash - we don't use this */
#define MACHXO2_CMD_PROGRAM_SECPLUS     	0xCF    /* Program the security plus bit to restrict access to flash - we don't use this */    
#define MACHXO2_CMD_READ_UIDCODE            0x19    /* Read 8 bytes of data representing a unique code per chip */

/*--------------------------------------------------------------------------*/

/* End of header file */

