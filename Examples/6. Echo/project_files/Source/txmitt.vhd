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
use IEEE.Std_Logic_1164.all;
use IEEE.Std_Logic_Unsigned.all;

entity Txmitt is
  port (
    -- Global reset and clock
    Reset       : in  std_logic; -- Master reset
    Clk16X      : in  std_logic; -- UART internal clock
    -- Register THR
    THR         : in  std_logic_vector(7 downto 0); -- Transmitter Holding Reg
    -- Rising edge of THR write strobe
    ThrWRn_re   : in  std_logic;   -- pulse indicating rising of ThrWRn_r
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
end Txmitt;

architecture Txmitt_a of Txmitt is

  signal TxOutput     : std_logic;
  signal TSR          : std_logic_vector(7 downto 0);
  signal TxParity_r   : std_logic;
  signal ThrEmpty     : std_logic;
  signal TsrEmpty     : std_logic;

  signal TxInStartState  : std_logic;
  signal TxInShiftState  : std_logic;
  signal TxInStopState   : std_logic;

  signal TxInStartState1 : std_logic; -- TxInStartState delayed 1 Clk16X clock
  signal TxInShiftState1 : std_logic; -- TxInShiftState delayed 1 Clk16X clock
  signal TxInStopState1  : std_logic; -- TxInStopState delayed 1 Clk16X clock

  -- Transmitter Clock Enable Signals
  signal TxClkEnA     : std_logic;
  signal TxClkEnB     : std_logic;

  signal TxCNT_r  : std_logic_vector(2 downto 0);
  signal Count_vr : std_logic_vector(3 downto 0);

  -- State Machine Definition
  type state_typ is (start, shift, parity, stop_1bit, stop_2bit, stop_halfbit);
  signal Tx_State     : state_typ;

  -- Attributes for ispMACH5000VG to get higher performance
  --   These can be removed when the UART design is targeted to other devices.
  ATTRIBUTE SYN_KEEP : integer;
  ATTRIBUTE SYN_KEEP OF TxOutput, TxCNT_r, TSR, TxParity_r : SIGNAL IS 1;
  ATTRIBUTE SYN_KEEP OF TsrEmpty, ThrEmpty : SIGNAL IS 1;
  ATTRIBUTE OPT : string;
  ATTRIBUTE OPT OF TxOutput, TxCNT_r, TSR, TxParity_r : SIGNAL IS "KEEP";
  ATTRIBUTE OPT OF TsrEmpty, ThrEmpty : SIGNAL IS "KEEP";

begin

--------------------------------------------------------------------------------
-- Transmitter Finite State Machine
--------------------------------------------------------------------------------

  Shift_Data_Proc: process(Reset, CLK16X)
  begin
    if (Reset='1') then
      TxCNT_r <= (others=>'0');
      TSR <= (others=>'0');
      TxOutput <= '1';
      TxParity_r <= '1';
      Tx_State <= start;
    elsif rising_edge(Clk16X) then
      case Tx_State is
        when start =>
          if (ThrEmpty='0') and (TxClkEnA='1') then
            -- Load data from THR to TSR
            TSR <= THR;
            -- TxParity_r initialization:
            --   set it when odd parity is selected(ParityEven='0')
            --   clear it when even parity is selected(ParityEven='1')
            TxParity_r <= not ParityEven;
            TxOutput <= '0'; -- start bit='0'
            TxCNT_r <= (others=>'0');
            Tx_State <= shift;
          else
            TxOutput <= '1';
          end if;
        when shift =>
          if (TxClkEnA='1') then
            -- Shift serial data out
            TSR <= '0' & TSR(7 downto 1);
            TxParity_r <= TxParity_r xor TSR(0);
            TxOutput <= TSR(0); -- output Data bits
            TxCNT_r <= TxCNT_r + 1;
            if ((Databits="00" and TxCNT_r=4) or
                (Databits="01" and TxCNT_r=5) or
                (Databits="10" and TxCNT_r=6) or
                (Databits="11" and TxCNT_r=7)) then
              if (ParityEnable='0') then
                Tx_State <= stop_1bit;
              else
                Tx_State <= parity;
              end if;
            end if;
          end if;
        when parity =>
          if (TxClkEnA='1') then
            -- Output 1 parity bit
            if (ParityStick='0') then
              TxOutput <= TxParity_r; -- output Parity bit
            else
              TxOutput <= not ParityEven; -- forced parity bit
            end if;
            Tx_State <= stop_1bit;
          end if;
        when stop_1bit =>
          if (TxClkEnA='1') then
            -- Output 1 bit of StopBits
            TxOutput <= '1';
            if (StopBits="00") then -- 1 stop bit
              Tx_State <= start;
            elsif (StopBits="01") then -- 1.5 stop bits(for 5-bit data only)
              Tx_State <= stop_halfbit;
            else -- 2 stop bits(for 6,7,8-bit data)
              Tx_State <= stop_2bit;
            end if;
          end if;
        when stop_2bit =>
          if (TxClkEnA='1') then
            -- Output 2nd bit of 2 Stopbits
            TxOutput <= '1';
            Tx_State <= start;
          end if;
        when stop_halfbit =>
          if (TxClkEnB='1') then -- half bit
            TxOutput <= '1';
            Tx_State <= start;
          end if;
        when others =>
          Tx_State <= Start;
      end case;
    end if;
  end process Shift_Data_Proc;

--------------------------------------------------------------------------------
-- Generate TsrEmpty and ThrEmpty signals
--------------------------------------------------------------------------------

  -- TsrEmpty : will be set whenever TSR is empty
  TsrEmpty_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      TsrEmpty <= '1';
    elsif rising_edge(Clk16X) then
      if (TxInStopState='1') and (TxInStopState1='0') then
        -- Set TsrEmpty flag to '1' when StopBit(s) is transmitted
        TsrEmpty <= '1';
      elsif (TxInShiftState='1') and (TxInShiftState1='0') then
        -- Reset TsrEmpty flag to '0' when data is transferred from THR to TSR
        TsrEmpty <= '0';
      end if;
    end if;
  end process TsrEmpty_Proc;

  -- ThrEmpty : will be set whenever THR is empty
  ThrEmpty_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      ThrEmpty <= '1';
    elsif rising_edge(Clk16X) then
      if (ThrWRn_re='1') then
        -- Reset ThrEmpty flag to '0' when data is written into THR by CPU
        ThrEmpty <= '0';
      elsif (TxInShiftState='1') and (TxInShiftState1='0') then
        -- Set ThrEmpty flag to '1' when data is transferred from THR to TSR
        -- (this occurs when signal TxInShiftState is changed from '0' to '1')
        ThrEmpty <= '1';
      end if;
    end if;
  end process ThrEmpty_Proc;

--------------------------------------------------------------------------------
-- Delayed signals for edge detections
--------------------------------------------------------------------------------
  Delay_Signals_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      TxInStartState1 <= '1';
      TxInShiftState1 <= '1';
      TxInStopState1 <= '1';
    elsif rising_edge(Clk16X) then
      -- Signal for rising edge detection of signal TxInStartState
      TxInStartState1 <= TxInStartState;
      -- Signal for rising edge detection of signal TxInShiftState
      TxInShiftState1 <= TxInShiftState;
      -- Signal for rising edge detection of signal TxInStopState
      TxInStopState1 <= TxInStopState;
    end if;
  end process Delay_Signals_Proc;

--------------------------------------------------------------------------------
-- Transmitter FSM state indication signals
--------------------------------------------------------------------------------

  -- TxInShiftState : will be set whenever transmitter is in shift state
  TxInShiftState_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      TxInShiftState <= '0';
    elsif rising_edge(Clk16X) then
      if (Tx_State=shift) then
        TxInShiftState <= '1';
      else
        TxInShiftState <= '0';
      end if;
    end if;
  end process TxInShiftState_Proc;

  -- TxInStopState : will be set whenever transmitter is in stop_1bit state
  TxInStopState_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      TxInStopState <= '0';
    elsif rising_edge(Clk16X) then
      if (Tx_State=stop_1bit) then
        TxInStopState <= '1';
      else
        TxInStopState <= '0';
      end if;
    end if;
  end process TxInStopState_Proc;

  -- TxInStartState : will be set whenever transmitter is in start state
  TxInStartState_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      TxInStartState <= '0';
    elsif rising_edge(Clk16X) then
      if (Tx_State=start) then
        TxInStartState <= '1';
      else
        TxInStartState <= '0';
      end if;
    end if;
  end process TxInStartState_Proc;
  
--------------------------------------------------------------------------------
-- Generate TxClkEnA/TxClkEnB signals
--------------------------------------------------------------------------------

  -- Transmitter operates at 1/16th of the input clock frequency.
  -- TxClkEnA, TxClkEnB are clock enable signals used in transmitter FSM
  TxCLK_Proc: process(Reset, Clk16X)
  begin
    if (Reset='1') then
      Count_vr <= (others => '1');
      TxClkEnA <= '0';
      TxClkEnB <= '0';
    elsif rising_edge(Clk16X) then

      if (Count_vr="0000") then
         TxClkEnA <= '1';
      else
         TxClkEnA <= '0';
      end if;
      
      -- TxClkEnB will be used only for 1.5 stop bit generation
      if (Count_vr="1000") then
         TxClkEnB <= '1';
      else
         TxClkEnB <= '0';
      end if;
      
      if (TxInStartState='1') and (TxInStartState1='0') then
         Count_vr <= "0011";  -- Offset to the 2 cycle's delay
      else
         Count_vr <= Count_vr + 1;
      end if;

    end if;
  end process TxCLK_Proc;

--------------------------------------------------------------------------------
-- Generate THRE/TEMT flags
--------------------------------------------------------------------------------

  -- Transmitter Holding Register Empty Indicator
  THRE <= ThrEmpty;

  -- Transmitter Empty Indicator is set to '1' whenever THR and TSR are
  -- both empty, and reset to '0' when either THR or TSR contain a character
  TEMT <= '1' when (ThrEmpty='1') and (TsrEmpty='1') else '0';

--------------------------------------------------------------------------------
-- Serial Data Output
--------------------------------------------------------------------------------

  -- If Break Control bit is set to 1, the serial output is forced to Zero
  SOUT <= '0' when (TxBreak='1') else TxOutput;

end Txmitt_a;

