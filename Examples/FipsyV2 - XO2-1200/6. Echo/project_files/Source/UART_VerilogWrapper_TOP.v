// --------------------------------------------------------------------            
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<            
// --------------------------------------------------------------------            
// Copyright (c) 2001 - 2008 by Lattice Semiconductor Corporation                  
// --------------------------------------------------------------------            
//                                                                                 
// Permission:                                                                     
//                                                                                 
// Lattice Semiconductor grants permission to use this code for use                
// in synthesis for any Lattice programmable logic product. Other                  
// use of this code, including the selling or duplication of any                   
// portion is strictly prohibited.                                                 
//                                                                                 
// Disclaimer:                                                                     
//                                                                                 
// This VHDL or Verilog source code is intended as a design reference              
// which illustrates how these types of functions can be implemented.              
// It is the user's responsibility to verify their design for                      
// consistency and functionality through the use of formal                         
// verification methods. Lattice Semiconductor provides no warranty                
// regarding the use or functionality of this code.                                
//                                                                                 
// --------------------------------------------------------------------            
//                                                                                 
// Lattice Semiconductor Corporation                                               
// 5555 NE Moore Court                                                             
// Hillsboro, OR 97214                                                             
// U.S.A                                                                           
//                                                                                 
// TEL: 1-800-Lattice (USA and Canada)                                             
// 503-268-8001 (other locations)                                                  
//                                                                                 
// web: http://www.latticesemi.com/                                                
// email: techsupport@latticesemi.com                                              
//                                                                                 
// --------------------------------------------------------------------            
// Code Revision History :                                                         
// --------------------------------------------------------------------            
// Ver: :| Author       :|Mod. Date   :|Changes Made:                              
// V1.0 :|  D.W. & J.H. :| 06/01/01   :| First Release                             
// V1.1 :| J.H.         :| 06/19/01   :| Support ispMACH 5000VG                    
// V1.2 :| S.R.         :| 18/12/08   :| Support MACHXO                            
//                                                                                 
// --------------------------------------------------------------------            
                                                                                   

module UART_VerilogWrapper_TOP
            (
       // Global reset and clock
       MR      ,
       MCLK    ,
      
       // Processor interface
        A     ,
        DIN   ,
        DOUT  ,
        ADSn  ,
        CS    ,
        RDn   ,
        WRn   ,
        DDIS  ,
        INTR  ,     
      
       // Receiver interface
       SIN     ,
       RxRDYn  ,
       
      // Transmitter interface          
      SOUT     ,                         
      TxRDYn  ,
      
      // Modem interface       
       DCDn    ,
       CTSn    ,
       DSRn    ,
       RIn     ,
       DTRn    ,
       RTSn          
       );

 input                MR  ;
 input                MCLK    ;
 input [2:0]          A; 
 input [7:0]         DIN; 
 input                CS ;
 input                SIN ;                      
 input                ADSn ;
 input                WRn;
 input                RDn ;  
 input                DCDn;
 input                CTSn;
 input                DSRn;
 input                RIn;       
 output[7:0]         DOUT;
 output               INTR;                      
 output               RxRDYn;
 output               SOUT;
 output               TxRDYn;    
 output               DTRn;
 output               RTSn;
 output               DDIS;
                      
     uart_top inst1 (        
            .MR          (MR    ), 
            .MCLK        (MCLK  ), 
            .A           (A     ), 
            .DIN         (DIN   ), 
            .DOUT        (DOUT  ), 
            .ADSn        (ADSn  ), 
            .CS          (CS    ), 
            .RDn         (RDn   ), 
            .WRn         (WRn   ), 
            .DDIS        (DDIS  ), 
            .INTR        (INTR  ), 
            .SIN         (SIN   ), 
            .RxRDYn      (RxRDYn), 
            .SOUT        (SOUT  ), 
            .TxRDYn      (TxRDYn), 
            .DCDn        (DCDn  ), 
            .CTSn        (CTSn  ), 
            .DSRn        (DSRn  ), 
            .RIn         (RIn   ), 
            .DTRn        (DTRn  ), 
            .RTSn        (RTSn  )
     );
  
endmodule

