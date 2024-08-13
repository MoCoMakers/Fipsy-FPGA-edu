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
use IEEE.std_logic_unsigned.all;

entity Modem is
  port (
    -- Global reset and clock
    Reset      : in  std_logic; -- Master reset
    Clk16X     : in  std_logic; -- UART internal clock
    -- Registers
    MSR        : out std_logic_vector(7 downto 0); -- Modem Status Reg
    MCR        : in  std_logic_vector(1 downto 0); -- Modem Control Reg
    -- Rising Edge of MSR Read Strobe
    MsrRDn_re  : in  std_logic; -- pulse indicating rising of MsrRDn_r
    -- Modem interface
    DCDn       : in  std_logic; -- Data Carrier Detect
    CTSn       : in  std_logic; -- Clear To Send
    DSRn       : in  std_logic; -- Data Set Ready
    RIn        : in  std_logic; -- Ring Indicator
    DTRn       : out std_logic; -- Data Terminal Ready
    RTSn       : out std_logic  -- Request To Send
  );
end Modem;

architecture Modem_a of Modem is

  signal MSReg   : std_logic_vector(7 downto 0);

  signal CTSn1   : std_logic; -- Delayed version of CTSn
  signal DSRn1   : std_logic; -- Delayed version of DSRn
  signal DCDn1   : std_logic; -- Delayed version of DCDn
  signal RIn1    : std_logic; -- Delayed version of RIn

begin

   DTRn <= not MCR(0);
   RTSn <= not MCR(1);

--------------------------------------------------------------------------------
--      Modem Status Register Setup
--------------------------------------------------------------------------------

  MSR <= MSReg;

  Modem_Stat_Proc: process(Reset, Clk16X)
  begin
    if (Reset='1') then
      MSReg <= (others=>'0');
      CTSn1 <= '1';
      DSRn1 <= '1';
      DCDn1 <= '1';
      RIn1 <= '1';
    elsif rising_edge(Clk16X) then
      CTSn1 <= CTSn; -- Delay of CTSn
      DSRn1 <= DSRn; -- Delay of DSRn
      DCDn1 <= DCDn; -- Delay of DCDn
      RIn1 <= RIn;   -- Delay of RIn
      if (MsrRDn_re='1') then
        MSReg <= (others=>'0');
      else
        MSReg(0) <= MSReg(0) or (CTSn1 xor CTSn);     -- Indicate DCDn changes
        MSReg(1) <= MSReg(1) or (DSRn1 xor DSRn);     -- Indicate DSRn changes
        MSReg(2) <= MSReg(2) or ((not RIn1) and RIn); -- Rising edge of RI
        MSReg(3) <= MSReg(3) or (DCDn1 xor DCDn);     -- Indicate DCDn changes
        MSReg(4) <= not CTSn; -- Compliment of CTSn
        MSReg(5) <= not DSRn; -- Compliment of DSRn
        MSReg(6) <= not RIn;  -- Compliment of RIn
        MSReg(7) <= not DCDn; -- Compliment of DCDn
      end if;
    end if;
  end process Modem_Stat_Proc;

end Modem_a;


