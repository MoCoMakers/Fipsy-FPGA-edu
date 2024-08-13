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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_Unsigned.all;

entity Uart_top is
  port (
    -- Global reset and clock
    MR     : in  std_logic; -- Master reset
    MCLK   : in  std_logic; -- Master clock

    -- Processor interface
    A      : in  std_logic_vector(2 downto 0); -- Address bus
    DIN    : in  std_logic_vector(7 downto 0); -- Data bus input
    DOUT   : out std_logic_vector(7 downto 0); -- Data but output
    ADSn   : in  std_logic; -- Address strobe
    CS     : in  std_logic; -- Chip Select
    RDn    : in  std_logic; -- Read
    WRn    : in  std_logic; -- Write
    DDIS   : out std_logic; -- Driver disable
    INTR   : out std_logic; -- Interrupt

    -- Receiver interface
    SIN    : in  std_logic; -- Receiver serial input
    RxRDYn : out std_logic; -- Receiver ready

    -- Transmitter interface
    SOUT   : out std_logic; -- Transmitter serial output
    TxRDYn : out std_logic; -- Transmitter ready

    -- Modem interface
    DCDn   : in  std_logic; -- Data Carrier Detect
    CTSn   : in  std_logic; -- Clear To Send
    DSRn   : in  std_logic; -- Data Set Ready
    RIn    : in  std_logic; -- Ring Indicator
    DTRn   : out std_logic; -- Data Terminal Ready
    RTSn   : out std_logic  -- Request To Send
  );
end Uart_top;

architecture Uart_top_a of Uart_top is
  component Intface
    port (
      -- Global reset and clock
      Reset       : in  std_logic; -- Master reset
      Clk16X      : in  std_logic; -- Master clock
      -- Processor interface
      A           : in  std_logic_vector(2 downto 0); -- Address bus
      DIN         : in  std_logic_vector(7 downto 0); -- Data bus input
      DOUT        : out std_logic_vector(7 downto 0); -- Data but output
      ADSn        : in  std_logic; -- Address strobe
      CS          : in  std_logic; -- Chip Select
      RDn         : in  std_logic; -- Read
      WRn         : in  std_logic; -- Write
      DDIS        : out std_logic; -- Driver disable
      INTR        : out std_logic; -- Interrupt
      -- Registers
      RBR         : in  std_logic_vector(7 downto 0); -- Receiver Buffer Reg
      THR         : out std_logic_vector(7 downto 0); -- Transmitter Holding Reg
      MSR         : in  std_logic_vector(7 downto 0); -- Modem Status Reg
      MCR         : out std_logic_vector(1 downto 0); -- Modem Control Reg
      -- Rising edge of registers read/write strobes
      RbrRDn_re   : out   std_logic; -- pulse indicating rising of RbrRDn_r
      ThrWRn_re   : out   std_logic; -- pulse indicating rising of ThrWRn_r
      LsrRDn_re   : inout std_logic; -- pulse indicating rising of LsrRDn_r
      MsrRDn_re   : inout std_logic; -- pulse indicating rising of MsrRDn_r
      -- Receiver/Transmitter control
      Databits    : out std_logic_vector(1 downto 0);
      Stopbits    : out std_logic_vector(1 downto 0);
      ParityEnable: out std_logic;
      ParityEven  : out std_logic;
      ParityStick : out std_logic;
      TxBreak     : out std_logic;
      -- Receiver/Transmitter status
      RxRDY       : in  std_logic;
      OverrunErr  : in  std_logic;
      ParityErr   : in  std_logic;
      FrameErr    : in  std_logic;
      BreakInt    : in  std_logic;
      THRE        : in  std_logic;
      TEMT        : in  std_logic
    );
  end component;

  component Modem
    port (
      -- Global reset and clock
      Reset      : in  std_logic; -- Master reset
      Clk16X     : in  std_logic; -- Master clock
      -- Registers
      MCR        : in std_logic_vector(1 downto 0);  -- Modem Control Reg
      MSR        : out std_logic_vector(7 downto 0); -- Modem Status Reg
      -- Rising Edge of MSR Read Strobe
      MsrRDn_re  : in std_logic;  -- pulse indicating rising of MsrRDn_r
      -- Modem interface
      DCDn       : in std_logic;  -- Data Carrier Detect
      CTSn       : in std_logic;  -- Clear To Send
      DSRn       : in std_logic;  -- Data Set Ready
      RIn        : in std_logic;  -- Ring Indicator
      DTRn       : out std_logic; -- Data Terminal Ready
      RTSn       : out std_logic  -- Request To Send
    );
  end component;

  component Rxcver
    port (
      -- Global reset and clock
      Reset       : in  std_logic; -- Master reset
      Clk16X      : in  std_logic; -- Master clock
      -- Register RBR
      RBR         : out std_logic_vector(7 downto 0); -- Receiver Buffer Reg
      -- Rising edge of RBR, LSR read strobes
      RbrRDn_re   : in  std_logic; -- pulse indicating rising of RbrRDn_r
      LsrRDn_re   : in  std_logic; -- pulse indicating rising of LsrRDn_r
      -- Receiver input
      SIN         : in  std_logic;
      -- Receiver control
      Databits    : in  std_logic_vector(1 downto 0); -- Data bits length
      ParityEnable: in  std_logic; -- 0= Parity Disabled; 1= Parity Enabled
      ParityEven  : in  std_logic; -- 0= Odd Parity; 1= Even Parity
      ParityStick : in  std_logic; -- 0= Stick Disabled; 1= Stick Enabled
      -- Receiver status
      RxRDY       : out std_logic; -- Receiver data ready to read
      OverrunErr  : out std_logic; -- Receiver overrun error flag
      ParityErr   : out std_logic; -- Receiver parity error flag
      FrameErr    : out std_logic; -- Receiver framing error flag
      BreakInt    : out std_logic  -- Receiver BREAK interrupt flag
    );
  end component;

  component Txmitt
    port (
      -- Global reset and clock
      Reset       : in  std_logic; -- Master reset
      Clk16X      : in  std_logic; -- Master clock
      -- Register THR
      THR         : in  std_logic_vector(7 downto 0); -- Transmitter Holding Reg
      -- Rising edge of THR write strobe
      ThrWRn_re   : in  std_logic; -- pulse indicating rising of ThrWRn_r
      -- Transmitter output
      SOUT        : out std_logic;
      -- Transmitter control
      DataBits    : in  std_logic_vector(1 downto 0);
      StopBits    : in  std_logic_vector(1 downto 0);
      ParityEnable: in  std_logic;
      ParityEven  : in  std_logic;
      ParityStick : in  std_logic;
      TxBreak     : in  std_logic;
      -- Transmitter status
      THRE        : out std_logic;
      TEMT        : out std_logic
    );
  end component;

  signal RBR         : std_logic_vector(7 downto 0);
  signal THR         : std_logic_vector(7 downto 0);
  signal MSR         : std_logic_vector(7 downto 0);
  signal MCR         : std_logic_vector(1 downto 0);

  signal DataBits    : std_logic_vector(1 downto 0);
  signal StopBits    : std_logic_vector(1 downto 0);
  signal ParityEnable: std_logic;
  signal ParityEven  : std_logic;
  signal ParityStick : std_logic;
  signal TxBreak     : std_logic;

  signal ThrWRn_re   : std_logic;
  signal RbrRDn_re   : std_logic;
  signal LsrRDn_re   : std_logic;
  signal MsrRDn_re   : std_logic;

  signal RxRDY       : std_logic;
  signal ParityErr   : std_logic;
  signal FrameErr    : std_logic;
  signal OverrunErr  : std_logic;
  signal BreakInt    : std_logic;

  signal THRE        : std_logic;
  signal TEMT        : std_logic;

begin

  U1: Intface port map(
    -- Global reset and clock
    Reset        => MR,
    Clk16X       => MCLK,
    -- Processor interface
    A            => A,
    DIN          => DIN,
    DOUT         => DOUT,
    ADSn         => ADSn,
    CS           => CS,
    RDn          => RDn,
    WRn          => WRn,
    DDIS         => DDIS,
    INTR         => INTR,
    -- Registers
    RBR          => RBR,
    THR          => THR,
    MSR          => MSR,
    MCR          => MCR,
    -- Rising edge of registers read/write strobes
    RbrRDn_re    => RbrRDn_re,
    ThrWRn_re    => ThrWRn_re,
    LsrRDn_re    => LsrRDn_re,
    MsrRDn_re    => MsrRDn_re,
    -- Receiver/Transmitter control
    DataBits     => DataBits,
    StopBits     => StopBits,
    ParityEnable => ParityEnable,
    ParityEven   => ParityEven,
    ParityStick  => ParityStick,
    TxBreak      => TxBreak,
    -- Receiver/Transmitter status
    RxRDY        => RxRDY,
    OverrunErr   => OverrunErr,
    ParityErr    => ParityErr,
    FrameErr     => FrameErr,
    BreakInt     => BreakInt,
    THRE         => THRE,
    TEMT         => TEMT
  );

  U2: Modem port map(
    -- Global reset and clock
    Reset        => MR,
    Clk16X       => MCLK,
    -- Registers
    MSR          => MSR,
    MCR          => MCR,
    -- Rising Edge of MSR Read Strobe
    MsrRDn_re    => MsrRDn_re,
    -- Modem interface
    DCDn         => DCDn,
    CTSn         => CTSn,
    DSRn         => DSRn,
    RIn          => RIn,
    DTRn         => DTRn,
    RTSn         => RTSn
  );

  U3: Rxcver port map(
    -- Global reset and clock
    Reset        => MR,
    Clk16X       => MCLK,
    -- Register RBR
    RBR          => RBR,
    -- Rising edge of RBR, LSR read strobes
    RbrRDn_re    => RbrRDn_re,
    LsrRDn_re    => LsrRDn_re,
    -- Receiver input
    SIN          => SIN,
    -- Receiver control
    Databits     => Databits,
    ParityEnable => ParityEnable,
    ParityEven   => ParityEven,
    ParityStick  => ParityStick,
    -- Receiver status
    RxRDY        => RxRDY,
    OverrunErr   => OverrunErr,
    ParityErr    => ParityErr,
    FrameErr     => FrameErr,
    BreakInt     => BreakInt
  );

  U4: Txmitt port map(
    -- Global reset and clock
    Reset        => MR,
    Clk16X       => MCLK,
    -- Register THR
    THR          => THR,
    -- Rising edge of THR write strobe
    ThrWRn_re    => ThrWRn_re,
    -- Transmitter control
    DataBits     => DataBits,
    StopBits     => StopBits,
    ParityEnable => ParityEnable,
    ParityEven   => ParityEven,
    ParityStick  => ParityStick,
    TxBreak      => TxBreak,
    -- Transmitter output
    SOUT         => SOUT,
    -- Transmitter status
    THRE         => THRE,
    TEMT         => TEMT
  );

  -- TxRDYn, RxRDYn is low active output
  TxRDYn <= not THRE;
  RxRDYn <= not RxRDY;

end UART_top_a;
