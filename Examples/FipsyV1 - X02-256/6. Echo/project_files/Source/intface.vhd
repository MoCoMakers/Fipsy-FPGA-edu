-- --------------------------------------------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
-- --------------------------------------------------------------------
-- Copyright (c) 2001 - 2008 by Lattice Semiconductor Corporation
-- --------------------------------------------------------------------
--
-- Permission:
--
-- Lattice Semiconductor grants permission to use this code for use
-- in synthesis for any Lattice programmable logic product. Other
-- use of this code, including the selling or duplication of any
-- portion is strictly prohibited.
--
-- Disclaimer:
--
-- This VHDL or Verilog source code is intended as a design reference
-- which illustrates how these types of functions can be implemented.
-- It is the user's responsibility to verify their design for
-- consistency and functionality through the use of formal
-- verification methods. Lattice Semiconductor provides no warranty
-- regarding the use or functionality of this code.
--
-- --------------------------------------------------------------------
--
-- Lattice Semiconductor Corporation
-- 5555 NE Moore Court
-- Hillsboro, OR 97214
-- U.S.A
--
-- TEL: 1-800-Lattice (USA and Canada)
-- 503-268-8001 (other locations)
--
-- web: http://www.latticesemi.com/
-- email: techsupport@latticesemi.com
--
-- --------------------------------------------------------------------
-- Code Revision History :
-- --------------------------------------------------------------------
-- Ver: :| Author       :|Mod. Date   :|Changes Made:
-- V1.0 :|  D.W. & J.H. :| 06/01/01   :| First Release 
-- V1.1 :| J.H.         :| 06/19/01   :| Support ispMACH 5000VG
-- V1.2 :| S.R.         :| 18/12/08   :| Support MACHXO
--
-- --------------------------------------------------------------------
--
--
------------------------------------------------------------------------------
--   GENERAL REGISTER:                                                      --
--------------------------                                                  --
--   =================================================================      --
--  |  ADDRESS A[2:0]   |            REGISTER             | IMPLEMENT |     --
--   =================================================================      --
--  | $000 (READ)       | RBR (RECEIVER BUFFER REGISTER)  |  Y        |     --
--   -----------------------------------------------------------------      --
--  | $000 (WRITE)      | THR (TRANSMIT HOLD REGISTER)    |  Y        |     --
--   =================================================================      --
--  | $001 (WRITE)      | IER (INTERRUPT ENABLE REGISTER) |  Y        |     --
--   =================================================================      --
--  | $010 (READ)       | IIR (INTERRUPT ID REGISTER)     |  Y        |     --
--   =================================================================      --
--  | $011 (WRITE)      | LCR (LINE CONTROL REGISTER)     |  Y        |     --
--   =================================================================      --
--  | $100 (WRITE)      | MCR (MODEM CONTROL REGISTER)    |  Y        |     --
--   =================================================================      --
--  | $101 (READ)       | LSR (LINE STATUS REGISTER)      |  Y        |     --
--   =================================================================      --
--  | $110 (READ)       | MSR (MODEM STATUS REGISTER)     |  Y        |     --
--   =================================================================      --
--  | $111 (READ/WRITE) | SCR (SCRATCHPAD REGISTER)       |  N        |     --
--   =================================================================      --
--                                                                          --
--  NOTE:  By using Lattice ISP solution, the Baud Rate can be
--         re-configured even when the device is soldered on the board.     --
--         Therefore the Baud Rate register set is omitted.                 --
--                                                                          --
--         Because each Lattice ispLSI device has a embedded UES register,  --
--         the Scratchpad register can be omitted too.                      --
--                                                                          --
------------------------------------------------------------------------------
--  REGISTER BIT FIELDS:                                                    --
----------------------------                                                --
--                                                                          --
--    ============================                                          --
--   | LSR (LINE STATUS REGISTER) |                                         --
--    ==============================================================        --
--   |  0    | TEMT | THRE  |  BI   |  FE   |  PE   |  OE   | RxRDY |       --
--    ==============================================================        --
--                                                                          --
--    RxRDY : RECEIVE DATA READY                                            --
--    OE    : OVERRUN ERROR                                                 --
--    PE    : PARITY ERROR                                                  --
--    FE    : FRAMING ERROR                                                 --
--    BI    : BREAK INTERRUPT                                               --
--    THRE  : TRASMITTER HOLDING REGISTER EMPTY                             --
--    TEMT  : TRASMITTER EMPTY                                              --
--                                                                          --
--                                                                          --
--    RxRDY: The data received flag is set to 1 at the successful           --
--           completion of a byte receive cycle.  It is automatically       --
--           cleared to 0 when the Rx Data Register is read.  If a new byte --
--           is received before an Rx Data Register read, the over run flag --
--           will be set to 1. If (SR) status option is set the UART will   --
--           ignore all further incoming bytes until the Rx Data Register   --
--           has been read.                                                 --
--                                                                          --
--    OE:    It indicates that the data in RBR was not read by the CPU      --
--           before the next character arrived, thereby destroying the the  --
--           previous character. The OE indicator is set to 1 upon          --
--           detection of an overrun condition and reset whenever the CPU   --
--           reads the contents of LSR                                      --
--                                                                          --
--    PE:    The parity error flag is set to 1 if an invalid parity bit is  --
--           encountered. It is automatically cleared to 0 when the CPU     --
--           reads the contents of Line Status Register.                    --
--                                                                          --
--    FE:    The framing error flag is set to 1 if an invalid stop bit is   --
--           encountered. It is automatically cleared to 0 when the CPU     --
--           reads the contents of Line Status Register.                    --
--                                                                          --
--    BI:    The start bit error flag is set to 1 if an invalid start bit   --
--           is encountered. It is automatically cleared to 0 when the CPU  --
--           reads the contents of Line Status Register.                    --
--                                                                          --
--    THRE:  The Transmit Holding Register Empty flag indicate that the     --
--           UART is ready to accept a new character for transmission. In   --
--           addition this bit cause the UART issue an interrupt to the CPU --
--           when the THRE interrupt enable is set to high                  --
--                                                                          --
--    TEMT:  The Transmitter Empty indicator is set to '1' whenever         --
--           whenever the Transmitter Holding Register and the Transmitter  --
--           Shifting Register are both empty. It is reset to '0' whenever  --
--           either the Transmitter Holding register or Transmitter Shift   --
--           Register contains a character                                  --
--                                                                          --
--    ================================                                      --
--   | LCR (LINE CONTROL REGISTER)    |                                     --
--    ===============================================================       --
--   |  DLAB |  SB   |  SP   | EPS   |  PEN  |  STB  | WLS1  | WLS0  |      --
--    ===============================================================       --
--                                                                          --
--    WLS1-WLS0:  WORD LENGTH SELECT  00 = 5 DATA BITS                      --
--                                    01 = 6 DATA BITS                      --
--                                    10 = 7 DATA BITS                      --
--                                    11 = 8 DATA BITS                      --
--                                                                          --
--    STB:  NUMBER OF STOP BITS  0 = 1 STOP BIT (DEFAULT)                   --
--                               1 = 1.5 STOP BITS (DATA LENGTH 5 BITS)     --
--                               1 = 2 STOP BITS   (DATA LENGTH 6,7,8 BITS) --
--                                                                          --
--    PEN:  PARITY ENABLE                                                   --
--    EPS:  EVEN PARITY SELECT                                              --
--    SP:   SET PARITY                                                      --
--                                  SP EPS PEN      PARITY SELECTION        --
--                                  X   X   0       NO PARITY               --
--                                  0   0   1       ODD PARITY              --
--                                  0   1   1       EVEN PARITY             --
--                                  1   0   1       FORCE PARITY "1"        --
--                                  1   1   1       FORCE PARITY "0"        --
--                                                                          --
--    SB:   SET BREAK When enable the Break control bit causes a break      --
--          condition to be transmitted (the TX output is forced to a logic --
--          0 state). This condition exits until disabled by resetting this --
--          bit to a logic 0.                                               --
--                                                                          --
--    DLAB: DIVISOR LATCH ACCESS BIT:   0 = Divisor latch disable (default) --
--                                      1 = Divisor latch enabled           --
--          Note: Because we use ISP solution to reconfigure Baud Rate,     --
--                this bit is omitted as well as the Baud Rate Register.    --
--                                                                          --
--    =============================                                         --
--   | IIR (INTERRUPT ID REGISTER) |                                        --
--    ===================================================================   --
--   |   0   |   0   |   0   |   0   | INT 2 | INT 1 | INT 0 | INT STAT  |  --
--    ===================================================================   --
--                                                                          --
--   PRIOTITY LEVEL  BIT-3  BIT-2  BIT-1  BIT-0  SOURCE OF INTERRUPT        --
--   NONE              0      0      0      1    NONE                       --
--   HIGHEST           0      1      1      0    LSR (OE/PE/FE/BI)          --
--   2nd               0      1      0      0    RxRDY (Receiver Data Ready)--
--   3rd               0      0      1      0    THRE (THR Empty)           --
--   4th               0      0      0      0    MSR (Modem Status Register)--
--                                                                          --
--      In the 16450 Mode Bit-3 is 0.                                       --
--                                                                          --
--    =================================                                     --
--   | IER (INTERRUPT ENABLE REGISTER) |                                    --
--    ===============================================================       --
--   |   0   |   0   |   0   |   0   |  MSI  |  RLSI |  THRI | RHRI  |      --
--    ===============================================================       --
--                                                                          --
--   RBRI:    Receiver Buffer Register Interrupt (1 = Enable, 0 = Disble)   --
--   THRI:    Transmitter Hold Register Interrupt (1 = Enalbe, 0 = Disble)  --
--   RLSI:    Receiver Line Status Interrupt (1 = Enalble, 0 = Disble)      --
--   MSI:     Modem Status Interrupt (1 = Enable, 0 = Disble)               --
--                                                                          --
--    =============================                                         --
--   | MSR (MODEM STATUS REGISTER) |                                        --
--    ===============================================================       --
--   |  DCD  |  RI   |  DSR  |  CTS  |  DDCD |  TERI |  DDSR |  DCTS |      --
--    ===============================================================       --
--                                                                          --
--   DCD:       Data Carrier Detect                                         --
--   RI:        Ring Indicator                                              --
--   DSR:       Data Set Ready                                              --
--   CTS:       Clear To Send                                               --
--   DDCD:      Delta Data Carrier Detect                                   --
--   TERI:      Trailing Edge Ring Indicator                                --
--   DDSR:      Delta Data Set Ready                                        --
--   DCTS:      Delta Clear to Send                                         --
--   Bit0-3 are set to '1' whenever a control input from the MODEM changes  --
--   state, and an Modem Stauts. Interrupt is generated. They are reset to  --
--   '0' whenever the CPU reads the Modem Status Register.                  --
--                                                                          --
--    ==============================                                        --
--   | MCR (MODEM CONTROL REGISTER) |                                       --
--    ===============================================================       --
--   |   0   |   0   |   0   | LOOP* | OUT2* | OUT1* |  RTS  |  DTR  |      --
--    ===============================================================       --
--                                                                          --
--   DTR:       Data Terminal Ready                                         --
--   RTS:       Request To Send                                             --
--   OUT1:      Auxiliary User-defined Output 1 (Not Implemented)           --
--   OUT2:      Auxiliary User-defined Output 2 (Not Implemented)           --
--   LOOP:      Local Loopback for diagnostic testing of the UART           --
--              (Not Implemented)                                           --
--                                                                          --
--   Note:      OUT1, OUT2 and LOOP are not implemented                     --
--                                                                          --
------------------------------------------------------------------------------

library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Intface is
  port (
    -- Global reset and clock
    Reset       : in    std_logic; -- Master reset
    Clk16X      : in    std_logic; -- UART internal clock
    -- Processor interface
    A           : in    std_logic_vector(2 downto 0); -- Address bus
    DIN         : in    std_logic_vector(7 downto 0); -- Data bus input
    DOUT        : out   std_logic_vector(7 downto 0); -- Data but output
    ADSn        : in    std_logic; -- Address strobe
    CS          : in    std_logic; -- Chip Select
    RDn         : in    std_logic; -- Read
    WRn         : in    std_logic; -- Write
    DDIS        : out   std_logic; -- Driver disable
    INTR        : out   std_logic; -- Interrupt
    -- Registers
    RBR         : in    std_logic_vector(7 downto 0); -- Receiver Buffer Reg
    THR         : out   std_logic_vector(7 downto 0); -- Transmitter Holding Reg
    MSR         : in    std_logic_vector(7 downto 0); -- Modem Status Reg
    MCR         : out   std_logic_vector(1 downto 0); -- Modem Control Reg
    -- Rising edge of registers read/write strobes
    RbrRDn_re   : out   std_logic; -- pulse indicating rising of RbrRDn_r
    ThrWRn_re   : out   std_logic; -- pulse indicating rising of ThrWRn_r
    LsrRDn_re   : inout std_logic; -- pulse indicating rising of LsrRDn_r
    MsrRDn_re   : inout std_logic; -- pulse indicating rising of MsrRDn_r
    -- Receiver/Transmitter control
    Databits    : out   std_logic_vector(1 downto 0);
    Stopbits    : out   std_logic_vector(1 downto 0);
    ParityEnable: out   std_logic;
    ParityEven  : out   std_logic;
    ParityStick : out   std_logic;
    TxBreak     : out   std_logic;
    -- Receiver/Transmitter status
    RxRDY       : in    std_logic;
    OverrunErr  : in    std_logic;
    ParityErr   : in    std_logic;
    FrameErr    : in    std_logic;
    BreakInt    : in    std_logic;
    THRE        : in    std_logic;
    TEMT        : in    std_logic
  ); 
end Intface;

architecture Intface_a of Intface is

  signal ADDR_s    : std_logic_vector(2 downto 0); -- Latched address bus
  signal CS_r      : std_logic; -- Latched CS signal

  signal WRn_cs    : std_logic; -- Write strobe qualified by latched CS signal
  signal RDn_cs    : std_logic; -- Read strobe qualified by latched CS signal

  signal LSR       : std_logic_vector(6 downto 0);
  signal LCR       : std_logic_vector(6 downto 0);
  signal IIR       : std_logic_vector(3 downto 0);
  signal IER       : std_logic_vector(3 downto 0);

  signal ThrWRn_r  : std_logic; -- THR write strobe
  signal RbrRDn_r  : std_logic; -- RBR read strobe
  signal LsrRDn_r  : std_logic; -- LSR read strobe
  signal MsrRDn_r  : std_logic; -- MSR read strobe
  signal IirRDn_r  : std_logic; -- IIR read strobe
  signal IirRDn_re : std_logic; -- Rising edge of IIR read strobe

  signal ThrWRn1_r : std_logic; -- 1-clock Delayed version for edge detection
  signal ThrWRn2_r : std_logic; -- 2-clock Delayed version for edge detection
  signal RbrRDn1_r : std_logic; -- 1-clock Delayed version for edge detection
  signal RbrRDn2_r : std_logic; -- 2-clock Delayed version for edge detection
  signal LsrRDn1_r : std_logic; -- 1-clock Delayed version for edge detection
  signal LsrRDn2_r : std_logic; -- 2-clock Delayed version for edge detection
  signal MsrRDn1_r : std_logic; -- 1-clock Delayed version for edge detection
  signal MsrRDn2_r : std_logic; -- 2-clock Delayed version for edge detection
  signal IirRDn1_r : std_logic; -- 1-clock Delayed version for edge detection
  signal IirRDn2_r : std_logic; -- 2-clock Delayed version for edge detection

  signal RxRDY_Int   : std_logic;
  signal THRE_Int    : std_logic;
  signal DataErr_Int : std_logic;
  signal Modem_Int   : std_logic;

  signal DataErr     : std_logic;
  signal ModemStat   : std_logic;

  -- State Machine Definition
  type state_typ is (idle, int0, int1, int2, int3);
  signal Int_State : state_typ;

  -- UART Registers Address Map
  constant A_RBR : std_logic_vector(2 downto 0) := "000";
  constant A_THR : std_logic_vector(2 downto 0) := "000";
  constant A_IER : std_logic_vector(2 downto 0) := "001";
  constant A_IIR : std_logic_vector(2 downto 0) := "010";
  constant A_LCR : std_logic_vector(2 downto 0) := "011";
  constant A_MCR : std_logic_vector(2 downto 0) := "100";
  constant A_LSR : std_logic_vector(2 downto 0) := "101";
  constant A_MSR : std_logic_vector(2 downto 0) := "110";

  -- Attributes for ispMACH5000VG to get higher performance
  --   These can be removed when the UART design is targeted to other devices.
  ATTRIBUTE SYN_KEEP : integer;
  ATTRIBUTE SYN_KEEP OF RbrRDn1_r : SIGNAL IS 1;
  ATTRIBUTE OPT : string;
  ATTRIBUTE OPT OF RbrRDn1_r : SIGNAL IS "KEEP";

begin

--------------------------------------------------------------------------------
--  Address Bus Latch
--------------------------------------------------------------------------------

  Addr_Latch_Proc: process(Reset, ADSn, A)
  begin
    if (Reset='1') then
      ADDR_s <= (others=>'0');
    elsif (ADSn='0') then
      ADDR_s <= A;
    end if;
  end process Addr_Latch_Proc;

--------------------------------------------------------------------------------
--  Chip Select Latch
--------------------------------------------------------------------------------

  Chip_Select_Latch_Proc: process(Reset, CS, ADSn)
  begin
    if (Reset='1') then
      CS_r <= '0';
    elsif (ADSn='0') then
      CS_r <= CS;
    end if;
  end process Chip_Select_Latch_Proc;

--------------------------------------------------------------------------------
-- Registers Read/Write Control Signals
--------------------------------------------------------------------------------

  -- Read/Write strobes qualified by latched CS signal CS_r
  WRn_cs <= WRn when (CS_r='1') else '1';
  RDn_cs <= RDn when (CS_r='1') else '1';

  -- Registers read/write strobes
  ThrWRn_r <= '1' when (Reset='1') else WRn_cs when (ADDR_s=A_THR) else '1';
  RbrRDn_r <= '1' when (Reset='1') else RDn_cs when (ADDR_s=A_RBR) else '1';
  LsrRDn_r <= '1' when (Reset='1') else RDn_cs when (ADDR_s=A_LSR) else '1';
  MsrRDn_r <= '1' when (Reset='1') else RDn_cs when (ADDR_s=A_MSR) else '1';
  IirRDn_r <= '1' when (Reset='1') else RDn_cs when (ADDR_s=A_IIR) else '1';

  -- Delayed signals for rising edge dectection
  Delay_Signals_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      ThrWRn1_r <= '1';
      ThrWRn2_r <= '1';
      RbrRDn1_r <= '1';
      RbrRDn2_r <= '1';
      LsrRDn1_r <= '1';
      LsrRDn2_r <= '1';
      MsrRDn1_r <= '1';
      MsrRDn2_r <= '1';
      IirRDn1_r <= '1';
      IirRDn2_r <= '1';
    elsif rising_edge(Clk16X) then
      -- Signals for rising edge detection of THR write strobe signal ThrWRn_r
      ThrWRn1_r <= ThrWRn_r;
      ThrWRn2_r <= ThrWRn1_r;
      -- Signals for rising edge detection of RBR read strobe signal RbrRDn_r
      RbrRDn1_r <= RbrRDn_r;
      RbrRDn2_r <= RbrRDn1_r;
      -- Signals for rising edge detection of LSR read strobe signal LsrRDn_r
      LsrRDn1_r <= LsrRDn_r;
      LsrRDn2_r <= LsrRDn1_r;
      -- Signals for rising edge detection of MSR read strobe signal MsrRDn_r
      MsrRDn1_r <= MsrRDn_r;
      MsrRDn2_r <= MsrRDn1_r;
      -- Signals for rising edge detection of IIR read strobe signal IirRDn_r
      IirRDn1_r <= IirRDn_r;
      IirRDn2_r <= IirRDn1_r;
    end if;
  end process Delay_Signals_Proc;

  -- Rising edge of registers read/write strobes
  ThrWRn_re <= ThrWRn1_r and (not ThrWRn2_r); -- rising edge of ThrWRn_r
  RbrRDn_re <= RbrRDn1_r and (not RbrRDn2_r); -- rising edge of RbrRDn_r
  LsrRDn_re <= LsrRDn1_r and (not LsrRDn2_r); -- rising edge of LsrRDn_r
  MsrRDn_re <= MsrRDn1_r and (not MsrRDn2_r); -- rising edge of MsrRDn_r
  IirRDn_re <= IirRDn1_r and (not IirRDn2_r); -- rising edge of IirRDn_r

--------------------------------------------------------------------------------
-- Registers Read/Write Operation
--------------------------------------------------------------------------------

  -- Register Read
  Rd_Register_Proc: 
  process (Reset, RDn_cs, ADDR_s, RBR, IIR, LSR, MSR)
  begin
    if (Reset='1') then
      DOUT <= (others => '1');
    elsif (RDn_cs ='0') then
      case ADDR_s is
        when A_RBR =>
          DOUT <= RBR;
        when A_IIR =>
          DOUT <= "0000" & IIR;
        when A_LSR =>
          DOUT <= '0' & LSR;
        when A_MSR =>
          DOUT <= MSR;
        when others =>
          DOUT <= (others => '1');
      end case;
    else
      DOUT <= (others=>'1');
    end if;
  end process Rd_Register_Proc;

  -- Register Write
  Wr_Register_Proc:
  process (Reset, WRn_cs)
  begin
    if (Reset='1') then
      THR <= (Others=>'0');
      IER <= (Others=>'0');
      LCR <= (Others=>'0');
      MCR <= (Others=>'0');
    elsif rising_edge(WRn_cs) then
      case ADDR_s is
        when A_THR =>
          -- the Databits are aligned to the right (LSB)
          THR <= DIN;
        when A_IER =>
          IER <= DIN(3 downto 0);
        when A_LCR =>
          LCR <= DIN(6 downto 0);
        when A_MCR =>
          MCR <= DIN(1 downto 0);
        when others =>
      end case;
    end if;
  end process Wr_Register_Proc;

--------------------------------------------------------------------------------
--  Line Control Register
--------------------------------------------------------------------------------

  -- Databits : "00"=5-bit, "01"=6-bit, "10"=7-bit, "11"=8-bit
  Databits <= LCR(1 downto 0);

  -- Stopbits : "00"=1-bit, "01"=1.5-bit(5-bit data), "10"=2-bit(6,7,8-bit data)
  Stopbits <= "00" when (LCR(2)='0') else
              "01" when (LCR(2)='1') and (LCR(1 downto 0)="00") else
              "10";
  -- ParityEnable : '0'=Parity Bit Enable, '1'=Parity Bit Disable
  ParityEnable <= LCR(3);

  -- ParityEven : '0'=Even Parity Selected, '1'=Odd Parity Selected
  ParityEven <= LCR(4);

  -- ParityStick : '0'=Stick Parity Disable, '1'=Stick Parity Enable
  ParityStick <= LCR(5);

  -- TxBreak : '0'=Disable BREAK assertion, '1'=Assert BREAK
  TxBreak <= LCR(6);

--------------------------------------------------------------------------------
--  Line Status Register
--------------------------------------------------------------------------------

  LSR <= TEMT & THRE & BreakInt & FrameErr & ParityErr & OverrunErr & RxRDY;

--------------------------------------------------------------------------------
-- Interrupt Arbitrator
--------------------------------------------------------------------------------

  -- Int is the common interrupt line for all internal UART events
  INTR <= RxRDy_Int or THRE_Int or DataErr_Int or Modem_Int;

  -- Receiving Data Error Flags including Overrun, Parity, Framing and Break
  DataErr <= OverrunErr or ParityErr or FrameErr or BreakInt;

  -- Whenever bit0,1,2,or3 is set to '1', a Modem Status Interrupt is generated
  ModemStat <= MSR(0) or MSR(1) or MSR(2) or MSR(3);

  Int_Arbit_Proc: process(Reset, Clk16X)
  begin
    if (Reset='1') then
      Int_State <= idle;

    elsif rising_edge(Clk16X) then
      case Int_State is
        when idle =>

          if (IER(2)='1') and (DataErr='1') then
            Int_State <= int0;
          elsif (IER(0)='1') and (RxRDY='1') then
            Int_State <= int1;
          elsif (IER(1)='1') and (THRE='1') then
            Int_State <= int2;
          elsif (IER(3)='1') and (ModemStat='1') then
            Int_State <= int3;
          end if;

        when int0 =>
          if (LsrRDn_re='1') then
            -- Clear Receiver Line Status Interrupt after LSR read
            Int_State <= idle;
          end if;

        when int1 =>
          if (RxRDY='0') then
            -- Clear Received Data Available Interrupt after RBR read(RxRDY=0)
            Int_State <= idle;
          end if;

        when int2 =>
          if (IirRDn_re='1') or (THRE='0') then
            -- Clear THR Empty Interrupt after IIR read or THR write(THRE=0)
            Int_State <= idle;
          end if;

        when int3 =>
          if (MsrRDn_re='1') then
            -- Clear MODEM Status Interrupt after MSR read
            Int_State <= idle;
          end if;
        when others =>
          Int_State <= idle;
      end case;
    end if;
  end process Int_Arbit_Proc;

  -- Set Receiver Line Status Interrupt
  DataErr_Int <= '1' when Int_State = int0 else '0';

  -- Set Received Data Available Interrupt
  RxRDY_Int <= '1' when Int_State = int1 else '0';

  -- Set THR Empty Interrupt
  THRE_Int <= '1' when Int_State = int2 else '0';

  -- Set MODEM Status Interrupt
  Modem_Int <= '1' when Int_State = int3 else '0';

  -- Update IIR
  IIR <= "0110" when Int_State = int0 else -- 1st Priority Interrupt
         "0100" when Int_State = int1 else -- 2nd Priority Interrupt
         "0010" when Int_State = int2 else -- 3rd Priority Interrupt
         "0000" when Int_State = int3 else -- 4th Priority Interrupt
         "0001";                           -- No Interrupt Pending


  -- Driver Disable goes low whenever the CPU is reading data from the UART
  DDIS <= RDn_cs;

end Intface_a;





