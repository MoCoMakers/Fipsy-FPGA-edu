#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

#pragma hdrstop
#include "MachXO2.h"

#include <SPI.h>


#include <stdarg.h>
/* Custom printf wrapper */
void pwrapper(char *fmt, ... ){
        char buf[128]; // resulting string limited to 128 chars
        va_list args;
        va_start (args, fmt );
        vsnprintf(buf, 128, fmt, args);
        va_end (args);
        Serial.print(buf);
}

/* Convenient types */
typedef unsigned char byte;
typedef unsigned short WORD;
typedef unsigned long uint32_t;

/* Windows function conversions */
#define Sleep(t)  usleep(t*1000)

/* Subroutine declarations */
uint32_t Fipsy_Open(void);
uint32_t Fipsy_Close(void);
uint32_t Fipsy_ReadDeviceID(byte *DeviceID);
uint32_t Fipsy_ReadUniqueID(byte *UniqueID);
uint32_t Fipsy_EraseAll(void);
uint32_t Fipsy_LoadConfiguration(void);
uint32_t Fipsy_WriteFeatures(byte *FeatureRow, byte *Feabits);
uint32_t Fipsy_WriteConfiguration();
char JEDEC_SeekNextNonWhitespace(void);
char JEDEC_SeekNextKeyChar(void);
byte JEDEC_ReadFusebyte(byte *Fusebyte);
 
/* General purpose subroutine declarations */
void SPI_Transaction(int Count); 
int ErrorMessage(char *ErrorDescription, char *ErrorType);
// Predefined error messages
#define ErrorFileNotFound()         ErrorMessage("Unable to open the specified file", "File Error")
#define ErrorFileFormat()           ErrorMessage("File format is not valid for JEDEC", "File Error")
#define ErrorBadSetting()           ErrorMessage("JEDEC file has SPI slave port disabled - programming aborted", "File Error")
#define ErrorBadValue()             ErrorMessage("Specified value is out of range", "Parameter Error")
#define ErrorBadLength()            ErrorMessage("Requested length is not valid", "Parameter Error")
#define ErrorBadAddress()           ErrorMessage("Bad offset or length given", "Parameter Error")
#define ErrorNullPointer()          ErrorMessage("Data pointer provided is NULL", "Parameter Error")
#define ErrorNotErased()            ErrorMessage("The FPGA must be erased to program", "Operation Order Error")
#define ErrorNotOpen()              ErrorMessage("The SPI connection has not been initialized", "Operation Order Error")
#define ErrorTimeout()              ErrorMessage("Timed out waiting for FPGA busy", "Timeout Error")
#define ErrorBadUsage()             ErrorMessage("fipsyloader <jedec file name>", "Usage")
#define ErrorHardware()             ErrorMessage("Could not open SPI port", "Hardware Error")

/* Local data definitions */

// General purpose message buffer
char UserMsg[1000];

// SPI port stream identifier or handle
int SPIPort = 0;

// General purpose buffer used to transact data on SPI
// This is bigger than most routines need, but reduces repeated declarations
// and is bigger than the actual SPI transaction can be, meaning there is 
// always enough room
byte SPIBuf[100];

// Count of bytes in the SPI buffer
// This is filled based on the count to send in a transaction
// On return from a transaction, this will specify the number of bytes returned
// bytes returned is the entire SPI transaction, not just the data, so the value
// should not change unless something went wrong.
byte MachXO2_Count = -1;
 
// Macro to set the most frequently used dummy values for the SPI buffer
byte SPIBUF_DEFAULT[20] = { 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
#define SPIBUFINIT                  { MachXO2_Count = 0; memcpy(SPIBuf, SPIBUF_DEFAULT, 20); }

// Defines for key elements of SPI transactions
#define MachXO2_Command             SPIBuf[0]
#define pMachXO2_Operand            (&SPIBuf[1])
#define pMachXO2_Data               (&SPIBuf[4])


// Flag indicating hardware has been opened and the port is ready
#define HWIsOpen                    (SPIPort > 0)

// Flag indicating that a caller has erased the FPGA
byte FPGAIsErased = 0;

// File stream pointer for JEDEC file 
// See comments with the parsing support functions
FILE *JFile = NULL;

// Predefined advanced error message macro including closing the file on a format error
#define EXIT_FILEFORMATERROR    { fclose(JFile); return(ErrorFileFormat()); }
#define EXIT_FILEBADSETTINGERROR  { fclose(JFile); return(ErrorBadSetting()); }



String incoming;

//Define a pin used for slave select signaling
#define SS          10 //ss

#define DATAOUT     11   //mosi
#define DATAIN      12   //miso
#define SPICLOCK    13   //sck


void setup() {
  Serial.begin(115200); // use the same baud-rate as the python side

  //Set up SPI with Fipsy
  //digitalWrite(SS, HIGH);   
  //pinMode(SS, OUTPUT);

  pinMode(DATAOUT, OUTPUT);
 pinMode(DATAIN, INPUT);
 pinMode(SPICLOCK,OUTPUT);
 pinMode(SS,OUTPUT);
 delay(100);

 
  SPI.begin ();
  //SPI.setBitOrder(MSBFIRST);
  
}

void loop() {
 // send data only when you receive data:
        if (Serial.available() > 0) {
                // read the incoming byte:
                incoming = Serial.readStringUntil('\n');

                // say what you got:
                Serial.print("I received: ");
                Serial.println(incoming);

                delay(1000);
                

                if (incoming=="do_check_id"){
                  delay(100);
                   byte id[10];

                    // Configure SPI connection to module
                    if(!Fipsy_Open()){
                        Serial.println("Error: Could not open SPI port");
                        delay(1000);
                      }
                    /*Serial.println("Serial Open Return");
                    delay(1000);
                    */
                
                    // Read and print the ids
                    if(!Fipsy_ReadDeviceID(id)) { 
                        //Fipsy_Close(); 
                        Serial.println("In a close state");
                        delay(1000);
                        return -1; 
                        }
                     //Serial.printf("Device ID = %02X %02X %02X %02X\n\r", id[0], id[1], id[2], id[3]);

                     Serial.println("Before inital pwrapper");
                     delay(1000);
                     
                     pwrapper("Device ID = %02X %02X %02X %02X\r\n", id[0], id[1], id[2], id[3]);
                     //Serial.println("Device ID ="+id[0]+" "+id[1]+" "+id[2]+" "+id[3]);
                     delay(400);
                  
                  //Serial.println("101012");
                } else if (incoming=="do_erase_device"){
                  Serial.println("Starting device erase process");
                     delay(1000);
                  if(!Fipsy_EraseAll()) { 
                        Serial.println("Error: Unable to erase device");
                        delay(1000);
                        return -1; 
                        }
                } else if (incoming=="do_program_device"){
                  Serial.println("Starting device programming process");
                     delay(1000);
                  if(!Fipsy_EraseAll()) { 
                        Serial.println("Error: Unable to erase device, and proceed with programming");
                        delay(1000);
                        return -1; 
                        }
                  //If device is erased, proceed with programming:
                   if(!Fipsy_WriteConfiguration()){ 
                    
                     Serial.println("Error: Unable to program device");
                        delay(1000);
                        return -1;
                    
                    }
                        
                }

                

                incoming="";
        }

 
   
   /*
   
    // FPGA programming - these print error messages if they fail
    // Try to erase the device 
    if(!Fipsy_EraseAll()) { Fipsy_Close(); return(-1); };
    // Program FPGA 
    if(!Fipsy_WriteConfiguration(argv[1])){ 
      Fipsy_Close(); 
      return(-1); };
   */

}

// Macro to complete an SPI transaction of the specified count with the global buffer
// The global buffer count is set with the parameter, saving coding steps 
//#define MachXO2_SPITrans(c)         { MachXO2_Count = c; SPI_Transaction(MachXO2_Count); }   

void MachXO2_SPITrans(int c){

  MachXO2_Count = c; 
  /*Serial.println("Before SPI_Transaction");
  delay(1000);
  */
  /*
  for (int i = 0; i < 20; i++) {
     Serial.print( SPIBuf[i], HEX);  
     Serial.print(' ');     
    }
    Serial.println("\n");
  */
 
  SPI_Transaction(MachXO2_Count);
  /*Serial.println("After SPI_Transaction");
  delay(1000);
  */
  
  /*
  for (int i = 0; i < 20; i++) {
     Serial.print( SPIBuf[i], HEX);      
     Serial.print(' ');
    }
    Serial.println("\n");
   */
 
  
}

uint32_t Fipsy_Open(void)
 { 

  /*Serial.println("At Top of Fipsy Open");
  delay(1000);
  */
  int ret;
  byte mode = 0;
  byte bits = 8;
  uint32_t speed = 400000;

  // Open the port
  //This is done is the setup() function in Arduino

  // Set configurations for this port
  //This is done on a transaction basis

  // Send a NOP to wakeup the device
  SPIBUFINIT;                  
  MachXO2_Command = MACHXO2_CMD_NOP;
  pMachXO2_Operand[0] = 0xFF;         
  pMachXO2_Operand[1] = 0xFF;         
  pMachXO2_Operand[2] = 0xFF;    
  MachXO2_SPITrans(4);

  /*Serial.println("Above Fipsy Open Return");
  delay(1000);
  */
  
  // Return success
  return 1;
 }

 /* SPI_TRANSACTION completes the data transfer to and/or from the device 
   per the methods required by this system.  This uses the global defined
   SPI port handle, which is assumed to be open if this call is reached 
   from a routine in this code.  It is also assumed that the arguments are
   valid based on the controlled nature of calls to this routine.
*/

void SPI_Transaction(int Count)   
 {
  byte consummedData[100];

  byte inbyte = 0;
  byte outputValues[Count];

  //strData=(char*) Data;
 
  /*Serial.println("Top of SPI Transaction, before transfer ");
  delay(1000);
  */
   SPISettings mySPISettings(400000, MSBFIRST, SPI_MODE0); 
   //SPISettings mySPISettings(14000000, MSBFIRST, SPI_MODE0); 

   

  memcpy(consummedData, SPIBuf, Count);  //Make a copy of the variable otherwise SPIBuf gets altered
  //DISABLE THIS COMMENT
  /*
  for (int i = 0; i < 20; i++) {
     Serial.print( SPIBuf[i], HEX);
     Serial.print(' ');      
    }
    */
   digitalWrite(SS,LOW);
   
   SPI.beginTransaction(mySPISettings);
   for(int j=0; j<Count; j++){
    byte tempbyte = consummedData[j]; 
    inbyte=SPI.transfer(tempbyte); //send byte and capture returned byte  
    outputValues[j]=inbyte;
   }

   digitalWrite(SS,HIGH);
   //SPI.transfer(consummedData, Count);
   //DISABLE THIS DELAY
   //delay(1000);
   SPI.endTransaction();

   /*
   Serial.println("After transfer ");
    delay(1000);
    */
  for (int q=0; q<Count; q++){
    SPIBuf[q]=outputValues[q];
  }
    
  /*
  //Disable this display and println

   for (int i = 0; i < 20; i++) {
     Serial.print( SPIBuf[i], HEX);
     Serial.print(' ');      
    }
    Serial.println("\n");   
   Serial.println("END of SPI Transaction");
  delay(400);
  */

  //Serial.println("Still at END");
 // delay(1000);
  

   return;
 }

 /* FIPSY_READDEVICEID retrieves the device identification number from the
   FPGA connected to the SPI port.  This number can be used to verify that
   the SPI is working and we are talking to the right device.  To improve
   future flexibility, this routine does not decide if this is actually
   the right device, but just returns the four bytes it got.
*/

uint32_t Fipsy_ReadDeviceID(byte *DeviceID)
 { 
  /*
  Serial.println("Beginning Device ID Read");
  delay(300);
  */
  // All exported library functions get this check of hardware and arguments    
  //if(!HWIsOpen) return(ErrorNotOpen());
  if(DeviceID == NULL){
      Serial.println("Error: Data pointer provided is NULL");
      delay(100);
      return -1;
    }
    
  // Construct the command  
  SPIBUFINIT;
  MachXO2_Command = MACHXO2_CMD_READ_DEVICEID;
  /*
  Serial.println("Before transaction in Read");
  delay(1000);
  */

  MachXO2_SPITrans(8);
  //SPI_Transaction(8);
  
  // Get the data 
  memcpy(DeviceID, pMachXO2_Data, 4);

  Serial.println("Bottom of ReadDeviceID");
  delay(1000);
      
  // Return success
  return 1;
 }


 /* FIPSY_CLOSE closes the SPI port connection.

*/

uint32_t Fipsy_Close(void)
 {  
  // Close the port
  SPI.end();  
  SPIPort = -1;
 
  // Return success
  return 1;
 }


 /*--------------------------------------------------------------------------*/

/* FIPSY_ERASEALL clears the configuration from all portions of the FPGA.  
   By this choice, the FPGA will return to its erased state function here.
   
   For this library, this is the first step to programming.  This is the
   function that enters the programming mode, so it must be completed 
   before the programming operation.  A global flag is set here to be sure
   that happens.  This removes the need to blank check elsewhere.
   
   It is possible that in the future we will want to erase just part of 
   the FPGA configuration or do some other more elaborate things, but this
   is not contemplated here other than in the name of this function.
*/   

uint32_t Fipsy_EraseAll(void)
 {
  byte busy = 0x80;
  uint32_t timeout = 0;

  // All exported library functions get this check of hardware and arguments    
  //if(!HWIsOpen) return(ErrorNotOpen());
 
  // Since we are now messing with the FPGA, indicate its status is not erased
  FPGAIsErased = 0;
 
  // Send command to enter programming mode
  // We use only offline mode
  SPIBUFINIT;
  MachXO2_Command = MACHXO2_CMD_ENABLE_OFFLINE;
  pMachXO2_Operand[0] = 0x08;         
  MachXO2_SPITrans(4);
  
  // Apparently this mode change takes a brief moment, ok to just wait it out here
  delay(1);
  
  // Send command to erase everything
  SPIBUFINIT;
  MachXO2_Command = MACHXO2_CMD_ERASE;
  pMachXO2_Operand[0] = 0x0F;         
  MachXO2_SPITrans(4);
  
  // Look at busy status every so often until it is clear or until too much time goes by
  // The busy bit is in the MSB, but still means we can test nonzero
  do
   { 
    // Do a wait between polls of the busy bit
    delay(100);
    timeout += 100;
    if(timeout > 5000) {
      Serial.println("Timed out waiting for FPGA busy");
      delay(100);
      return -1;
      }

    // Go read the busy bit
    SPIBUFINIT;
    MachXO2_Command = MACHXO2_CMD_CHECK_BUSY;
    MachXO2_SPITrans(5); 
    busy = pMachXO2_Data[0]; 
   }   
  while(busy);

  // Set flag indicating we has successfully erased the FPGA
  FPGAIsErased = 1;

  Serial.println("Device was successfully ereased");
  delay(100);
  
  // Return success
  return(1);
 }


 /*--------------------------------------------------------------------------*/

/* FIPSY_WRITECONFIGURATION writes a JEDEC file to the configuration 
   flash and the feature switches.  This does not erase the chip or load 
   the configuration.  The chip must be erased before entry using the above 
   routine, and therefore will also be in programming mode. 

   This routine virtually passes a file located on a host opperating system.
   The file is a JEDEC file and is structured as required for the target chip.
   There is very little explicit error checking, although there is some 
   error checking looking for specific features.  There is
   still no checking of checksums and other such features, mostly to keep this
   code as simple as possible. We also do make some effort to make this as 
   ANSI-C portable as possible.
   
   Importantly, a JEDEC file has the '*' character as the field delimiter, 
   so white space should not be used in code as a delimiter (CR, LF, etc), 
   even if most files we are working with are structured in a way that seems
   to suggest that might work, and even might work in a specific version.  
   We want to parse this strictly according to JEDEC, though we use the 
   presentation of this information from the Lattice manual.  We do assume
   that the JEDEC file is not encrypted, we ignore any security fuse
   or OTP fuse settings, and we do not program the user code.  Finally, 
   we assume the default fuse state is the erased state and do not program
   unspecified fuses to that nor use it to validate the checksum.   

   This version now fully parses the JEDEC file to be sure the SPI slave port
   is not going to be disabled before allowing the programming to begin.
   We could look at header matter to determine the same thing in various ways,
   but there is no guarantee that the header matter won't change in other
   versions of diamond.  So we look at the feature row directly.  That does
   mean we could still be spoofed, but only by user intent.
*/

uint32_t Fipsy_WriteConfiguration()
 {
  byte featurerow[10];
  byte feabits[4];
  int i, addr_digits, keyq;

  byte key;
  byte status;

  // All exported library functions get this check of hardware and arguments    
  // MessageBox(NULL, "Fipsy_WriteConfiguration", "", MB_TASKMODAL);
  //if(!HWIsOpen) return(ErrorNotOpen());
  //if(JEDECFileName == NULL) return(ErrorNullPointer());
  //if(JEDECFileName[0] == 0) return(ErrorNullPointer());
  
  // If the FPGA has not been erased, indicate bad order and quit
  if(!FPGAIsErased){
    Serial.println("Error: The FPGA must be erased to program");
      delay(100);
      return -1;
    }                        

  // If we are even about to configure the part, let's clear this flag here and 
  // so indicate that we tried to program the part and should erase it again before
  // trying to program the part again.  
  FPGAIsErased = 0;

  bool isDone=false;
  Serial.println("check_JEDEC_file");
  delay(100);
  
  String inString;
  do{

  if (Serial.available() > 0) {
                // read the incoming byte:
                inString = Serial.readStringUntil('\n');

                if (inString=="success_reading_file"){
                  Serial.println("end_connection");
                  delay(1000);
                  return;
                }
                else if (inString=="failed_JEDEC_format"){
                  isDone=true;
                  Serial.println("end_connection");
                  delay(1000);
                  return -1;
                }
                else if (inString=="show_success"){
                  isDone=true;
                  Serial.println("end_connection");
                  delay(1000);
                  return 1;
                }
                else if(inString=="clear_the_address"){

                  // The address is good and is zero, so clear the address in the device
                  SPIBUFINIT;
                  MachXO2_Command = MACHXO2_CMD_INIT_ADDRESS;
                  MachXO2_SPITrans(4);
                  Serial.println("address_cleared");
                }
                else if(inString=="setup_increment_command"){
                  // Setup the write and increment command
                  // These declartations are insufficient, so done again in "do_chunk"
                  SPIBUFINIT;
                  MachXO2_Command = MACHXO2_CMD_PROG_INCR_NV;
                  pMachXO2_Operand[2] = 0x01; 
                  Serial.println("increment_declared");
                }
                else if(inString=="do_chunk"){
                  int byte_count=0;
                  Serial.println("do_chunk_recieved");
                  //delay(100);

                  SPIBUFINIT;
                  MachXO2_Command = MACHXO2_CMD_PROG_INCR_NV;
                  pMachXO2_Operand[2] = 0x01; 
                  
                  while (byte_count<16){
                    if (Serial.available() > 0){
                       char currentByte=Serial.read();
                       pMachXO2_Data[byte_count]=currentByte;
                       byte_count++;
                       //Serial.print("byte_count: ");
                       //Serial.println(byte_count);
                       //Serial.print("byte value: ");
                       //Serial.println(currentByte);
                    }
                  }

                  // We can now send the command
                  MachXO2_SPITrans(20);

                  Serial.println("next_chunk");
                  //delay(1000);
                }
                else if(inString=="send_feature_bits"){
                  Serial.println("received_send_feature_bits");
                  int byte_count=0;
                  byte featurebytes[8];
                  while (byte_count<8){
                    if (Serial.available() > 0){
                       char currentByte=Serial.read();
                       featurebytes[byte_count]=currentByte;
                       byte_count++;
                    }
                  }

                  SPIBUFINIT;
                  MachXO2_Command = MACHXO2_CMD_PROG_FEATURE;
                  memcpy(pMachXO2_Data, featurebytes, 8);
                  MachXO2_SPITrans(12); 
                 
                  // Wait more than the time suggested as required to complete
                  delay(2000);

                  Serial.println("grabbed_featurerow");
                  
                }
                else if(inString=="send_feabits"){
                  Serial.println("received_send_feabits");
                  int byte_count=0;
                  byte feabits[2];
                  while (byte_count<2){
                    if (Serial.available() > 0){
                       char currentByte=Serial.read();
                       feabits[byte_count]=currentByte;
                       byte_count++;
                    }
                  }
                  
                  // Command to write feabits
                  SPIBUFINIT;
                  MachXO2_Command = MACHXO2_CMD_PROG_FEABITS;
                  memcpy(pMachXO2_Data, feabits, 2);
                  // Prevent the SPI from being disabled - not sufficient to prevent a bricked device
                  pMachXO2_Data[1] &= 0xBF;
                  // Send the command
                  MachXO2_SPITrans(6); 
                
                  // Wait more than the time suggested as required to complete
                  delay(2000);
                  
                }
                else if(inString=="do_program_done"){
                  SPIBUFINIT;
                  MachXO2_Command = MACHXO2_CMD_PROGRAM_DONE;
                  MachXO2_SPITrans(4);
                  delay(1000);
                  Serial.println("do_program_done_complete");
                }
                else if(inString=="do_load_configuration"){
                  SPIBUFINIT;
                  MachXO2_Command = MACHXO2_CMD_REFRESH;
                  MachXO2_SPITrans(3);
                    
                  // Wait for what is suppose to be a very fast configuration
                 delay(100);
                  Serial.println("do_load_configuration_complete");
                }
                else{
                  isDone=true;
                  Serial.println("end_connection");
                  delay(1000);
                  Serial.print("Exiting with inString of: ");
                  Serial.println(inString);
                  return -1;
                }
    }
  }while(!isDone);


  // Attempt to open the JEDEC file
  // A JEDEC file is a text file - we will only need to read text, and the end of line can be useful to us
  //JFile = fopen(JEDECFileName, "r");
  //if(JFile == NULL) return(ErrorFileNotFound());

  // Read the file characters until we find the starting STX (CTRL-B, 0x02)

  
  
  Serial.println("Beginning first character get sequence");
      delay(100); 
  
  int count=0;
  do { 
    key = fgetcharacter();
    count++;
  
  } while ((key != 0x02) && (key != EOF) && (count<1000000));

  
  
  if(key == EOF){
    Serial.println("File format is not valid for JEDEC");
    //EXIT_FILEFORMATERROR;
    delay(1000);
    return -1;
  }

  // Look for key characters until we find Q and the qualifier 'F' for fuse count
  // We assume this will come before the fuse table as it is needed to read the address
  do 
   { 
    // Look for Q
    do { 
        if((key = JEDEC_SeekNextKeyChar()) == 0){
          Serial.println("File format is not valid for JEDEC");
          //EXIT_FILEFORMATERROR;
          delay(1000);
          return -1;

        }
     } while(key != 'Q');
    // Get qualifier
    keyq = fgetcharacter();
    if(keyq == EOF) {
           Serial.println("Reached end of document during item character scan");
           delay(1000);
           return;
      }


      //pwrapper("%02X",key);
        //Serial.println(key);
        //delay(100);
      
   }
  while (keyq != 'F');  
 
  // We really don't care about the fuse count, unless we want to use it to help verify this is the right device
  // But we need to know how may characters it has so we can read addresses in the fuse table
  // Go get that count of characters
  addr_digits = 0;
  do
   {
    key = fgetcharacter();
    if(key == EOF){
          //EXIT_FILEFORMATERROR;
          Serial.println("File format is not valid for JEDEC");     
          delay(1000);
          return -1;
        }
    if(key != '*') addr_digits += 1;   
   }
  while(key != '*');
  
  //Serial.print("Looking at addr_digits of: ");
  //Serial.println(addr_digits);
  

  // We just read a delimiter, so we are at the start of the next field
  // Look for the key character - this step is probably overkill here, but for completeness
  if((key = JEDEC_SeekNextNonWhitespace()) == 0){
          //EXIT_FILEFORMATERROR;
          Serial.println("File format is not valid for JEDEC");     
          delay(1000);
          return -1;
        }
  
  // Look for the key character 'E' for the feature row 
  // Doing this early allows us to make sure the features do not include a disabled SPI port
  // We will do it again later to program these bits
  while(key != 'E') {
                if((key = JEDEC_SeekNextKeyChar()) == 0){
                      //EXIT_FILEFORMATERROR;
                      Serial.println("File format is not valid for JEDEC");     
                      delay(1000);
                      return -1;
                    } 
        };

  Serial.println("Reached End");
  Serial.println("end_file_connection");
  delay(1000);
  return -1;

  
  // We are now at the feature row bits, pointed at the fuse data
  // Read the data into the local arrays 
  for(i=0;i<8;i++) if(JEDEC_ReadFuseByte(&featurerow[i]) != 1) EXIT_FILEFORMATERROR; 
  for(i=0;i<2;i++) if(JEDEC_ReadFuseByte(&feabits[i]) != 1) EXIT_FILEFORMATERROR;
  // If the SPI port is disabled, warn the user and exit
  if(feabits[1] & 0x40) EXIT_FILEBADSETTINGERROR;
  // Restart the file to the beginning
  rewind(JFile); 
  // Read the file characters until we find the starting STX (CTRL-B, 0x02)
  do { key = fgetcharacter(); } while ((key != 0x02) && (key != EOF));
  if(key == EOF) EXIT_FILEFORMATERROR;

  // Next look for the fuse table specifically
  while(key != 'L') { if((key = JEDEC_SeekNextKeyChar()) == 0) EXIT_FILEFORMATERROR; };
  
  // We are now at the fuse table and pointing to the starting address.
  // This address contains the same number of digits as the fuse count as previously found.
  // The documentation says it is followed by white space, but does not really guarantee what kind 
  // of white space, so we must read off the address characters one at a time.  
  // We do assume from the documentation that the first L key character found will contain the address zero,  
  // and fuse data will start from the beginning of flash.  It is more work to translate and use the address,  
  // so we don't want to bother if that is not the way it is suppose to be.  However, we can verify this address  
  // is zero as expected and flag an error if it is something else.  
  
  // Read the address and check that it is all zero
  // Note that any EOF would also drop out here
  for(i=0;i<addr_digits;i++) 
   if(fgetcharacter() != '0') EXIT_FILEFORMATERROR;

  // The address is good and is zero, so clear the address in the device
  SPIBUFINIT;
  MachXO2_Command = MACHXO2_CMD_INIT_ADDRESS;
  MachXO2_SPITrans(4); 
 
  // We are now pointed at the fuse data (link table, whatever you want to call it)  
  // Proceed to write flash locations per page until the delimiter is reached.  
  // The table should have an even set of pages in it, so if we get the delimiter or any other failure 
  // in the middle of a page, that is a format error.  Unfortunately, exiting here will have the chip 
  // in a bizarre state of partially programmed, but that should be an exceptional case. 
  do 
   {
    // Setup the write and increment command
    SPIBUFINIT;
    MachXO2_Command = MACHXO2_CMD_PROG_INCR_NV;
    pMachXO2_Operand[2] = 0x01; 
    // Get the first byte and check that we are not at the delimiter
    status = JEDEC_ReadFuseByte(pMachXO2_Data);   
    if(status == 0) EXIT_FILEFORMATERROR;
    // If we did not get the delimiter, this should be a valid row 
    if(status != '*')
     {
      // Attempt to collect the rest of the page
      for(i=1;i<16;i++) 
       {
        status = JEDEC_ReadFuseByte(&pMachXO2_Data[i]);    
        if(status != 1) EXIT_FILEFORMATERROR;
       };   
      // We can now send the command
      MachXO2_SPITrans(20); 
     };
    // The page is suppose to program in 200us, which is generally faster than we can send another command,
    // but for completeness and for the benefit of porting this code, we setup a wait here.
    // With a small chip this is not much of a burden, while other systems with a faster connection
    // and a larger chip my want to check busy instead.  
    delay(400);
    // We are done when the status here is the delimiter, otherwise go get the next row
   }
  while(status != '*');
 
  // Note that for our chip the JEDEC file seems to contain two blocks of data without easily located explanation. 
  // The first is the configuration for the present design, and the second seems to be the remainder of the 
  // configuration memory, as the address for the second block changes for each design.  There is no user flash 
  // memory in this chip.  This remainder is always in a benign state, with another end flag of sorts at the
  // end (all 1's), which is never reached.  Considering all this, we ignore this second block of data.
   
  // Go find the key for our next thing of interest, the feature row fuses
  // We just read a delimiter, so we are at the start of the next field
  if((key = JEDEC_SeekNextNonWhitespace()) == 0) EXIT_FILEFORMATERROR;
  // Look for the key character
  while(key != 'E') { if((key = JEDEC_SeekNextKeyChar()) == 0) EXIT_FILEFORMATERROR; };
  
  // We are now at the feature row bits, pointed at the fuse data
  // Read the data into the local arrays 
  for(i=0;i<8;i++) if(JEDEC_ReadFuseByte(&featurerow[i]) != 1) EXIT_FILEFORMATERROR; 
  for(i=0;i<2;i++) if(JEDEC_ReadFuseByte(&feabits[i]) != 1) EXIT_FILEFORMATERROR;
  // Call our routine to program these values
  // Note that this routine may alter some bits (see comments with routine)
  Fipsy_WriteFeatures(featurerow, feabits);

  // Program the DONE bit (internal)
  // This effectively tells the SDM (self download mode) that it is allowed to run
  // and allows the device to enter user mode when loading is complete (ie done)
  SPIBUFINIT;
  MachXO2_Command = MACHXO2_CMD_PROGRAM_DONE;
  MachXO2_SPITrans(4);
  delay(1);

  // Security and OTP bits would be programmed here, but we do not support them
  // They seem to operate similar to DONE, enabling or disabling certain features
  // DONE is all we need - enables user mode
  // Advanced user may also user an external 'DONE' pin to control entry into user mode,
  // but that will require additional study of feature settings and coding

  // Now that everything is programmed, reload the configuration from flash
  Fipsy_LoadConfiguration();

  // Close file
  fclose(JFile); 

  // If we got here, all went ok, return success
  return(1);
 }

/*--------------------------------------------------------------------------*/
/* JEDEC File Parsing Support Subroutines                                   */
/*--------------------------------------------------------------------------*/

/* The following private functions all operate on a JEDEC file using a 
   file stream pointer for an open text file established globally by 
   the caller.  Coding this way removes the need to pass the file pointer 
   to each function and among them.  Because these are private functions 
   and used in a manner controlled in this module, we do not do additional 
   checking of the pointers and other variables in use. 
 */

/*--------------------------------------------------------------------------*/

/* JEDEC_SEEKNEXTNONWHITESPACE parses the file until it finds a character 
   that is not white space as defined for a JEDEC file.  That character is 
   returned if found.  If there is an error, a 0 is returned.
   
   Note that the delimiter ('*') is also white space in this context.  This is
   like a line terminator in a sense, so if we have not already read it, we 
   don't want to now read it and return it.  This could happen if it is 
   the first character in a file, or if a field ended with "**" or more.
   These technically null fields should be ignored in this search.
   
   So define white space as ' ', CR, LF, NULL, and '*' at least.  But in
   reality we equally ignore any character less than space, which includes
   most control characters, including the JEDEC file start and end STX/EOT.
*/

char JEDEC_SeekNextNonWhitespace(void)
 {
  int ic;

  // Read until we find something other than white space
  do
   {
    ic = fgetcharacter();
    if(ic == EOF) return(0);     
   }
  while((ic <= ' ') || (ic == '*'));
  
  // Return what we found
  return(ic);
 }

/*--------------------------------------------------------------------------*/

/* JEDEC_SEEKNEXTKEYCHAR reads the specified file stream until the next key 
   character has been read. The key character (ie key word) is the first 
   character of a field (ie after the previous field's delimiter) after any 
   white space.  Thus, in order to do this search, this function will also 
   search for the start of the next field.  If we know we are at the start 
   of a field already, then we should not use this routine but instead just 
   look for the character.  This routine will find the next key character.
   
   The key character found is returned by value.  If the end of the file 
   is reached, or some other error occurs, a 0 is returned.
*/

char JEDEC_SeekNextKeyChar(void)
 {
  int ic;
  char key;
  
  // Look for end of field, point to start of next field
  do
   {
    ic = fgetcharacter();
    if(ic == EOF) return(0);     
   }
  while (ic != '*');
  
  // Pull white space until an actual character is reached
  // This will be our key character
  key = JEDEC_SeekNextNonWhitespace();
 
  // Return the value that got us here
  return(key);  
 }
 
/*--------------------------------------------------------------------------*/
  
/* JEDEC_READFUSEbyte reads from the specified file stream until it has 
   collected eight binary characters and converts those characters to a byte
   to return by reference.  The value returned is 1 if this happened correctly,
   0 if an error was encountered, and '*' if the field has ended ('*' found).
   Generally, unless something is wrong with the file, the full byte will be
   collected or '*' will be returned.  Other white space is automatically removed.
   A return value of 0 can be interpreted as a format error.  A return value 
   of '*' means the caller should assume the file pointer now points to the 
   start of the next field.
   
   Note that anything other than 1,0,* characters can be considered white space.
   If a character is out of place or replaced, and it disrupts the count of 1s
   and 0s, then an error will eventually be found.  If the bad character is there
   without affecting the result, then it has no impact this way.  In a perfect
   file, the characters so removed are truly white space. 
*/

byte JEDEC_ReadFuseByte(byte *FuseByte)
 {
  char bstr[10];
  int ic;
  byte cnt = 0;
  
  // Default byte value
  *FuseByte = 0;
  
  // Read characters  
  do
   {
    // Get a character
    ic = fgetcharacter();
    if(ic == EOF) return(0);
    // Record valid characters
    if(ic == '0') bstr[cnt++] = '0';
    if(ic == '1') bstr[cnt++] = '1';    
    // If delimiter found, return it
    if(ic == '*') return('*');   
   }
  while(cnt < 8);
  
  // Convert the characters to binary
  // We could make this a loop, but it would just take more variables and time
  // This also allows us to easily adjust the bit order if it ever needs to be different
  if(bstr[0] == '1') *FuseByte += 128;
  if(bstr[1] == '1') *FuseByte += 64;
  if(bstr[2] == '1') *FuseByte += 32;
  if(bstr[3] == '1') *FuseByte += 16;
  if(bstr[4] == '1') *FuseByte += 8;
  if(bstr[5] == '1') *FuseByte += 4;
  if(bstr[6] == '1') *FuseByte += 2;
  if(bstr[7] == '1') *FuseByte += 1;
    
  // Return normal success
  return(1);
 }

byte fgetcharacter(void){
  bool hasChar=false;
  char sent_char;
  byte incomingByte;

  //throw out any buffered data
  if (Serial.available() > 0){
    Serial.read();
  }
  
  Serial.println("getc");
  //slower computers may need to increase this delay number
  //delay(5);
  do{
    if (Serial.available() > 0) {
        //incoming = Serial.readStringUntil('\n');
        incomingByte = Serial.read();
        //sent_char = incoming.charAt(0);
        
        hasChar=true;
     }
  } while (!hasChar);

  return incomingByte;
 }

