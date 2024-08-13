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

entity Rxcver is
  port (
    -- Global reset and clock
    Reset       : in  std_logic; -- Master reset
    Clk16X      : in  std_logic; -- UART internal clock
    -- Register
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
end Rxcver;

architecture Rxcver_a of Rxcver is

  signal NumDataBitReceived_r : std_logic_vector(3 downto 0);

  signal RSR         : std_logic_vector(7 downto 0);
  signal RxPrtyErr   : std_logic;
  signal RxFrmErr    : std_logic;
  signal RxIdle_r    : std_logic;
  signal RbrDataRDY  : std_logic;
  signal CNT_r       : std_logic_vector(3 downto 0);

  signal Hunt_r      : boolean;
  signal HuntOne_r   : std_logic;

  signal SIN_reg	 : std_logic;										--Added by Aman
  signal SIN1_r      : std_logic;
  signal RxFrmErr1_r : std_logic;
  signal RxIdle1_r   : std_logic;

  signal OverrunErr_r: std_logic;
  signal ParityErr_r : std_logic;
  signal FrameErr_r  : std_logic;
  signal BreakInt_r  : std_logic;

  signal SampledOnce : std_logic;

  -- Receiver Clock Enable Signal
  signal RxClkEn     : std_logic;

  signal RBR_r       : std_logic_vector(7 downto 0);

  -- State Machine Definition
  type state_typ is (idle, shift, parity, stop);
  signal Rx_State : state_typ;

  -- Attributes for ispMACH5000VG to get higher performance
  --   These can be removed when the UART design is targeted to other devices.
  ATTRIBUTE SYN_KEEP : integer;
  ATTRIBUTE SYN_KEEP OF RxPrtyErr, NumDataBitReceived_r, RSR : SIGNAL IS 1;
  ATTRIBUTE SYN_KEEP OF Hunt_r, HuntOne_r, ParityErr_r, FrameErr_r : SIGNAL IS 1;
  ATTRIBUTE SYN_KEEP OF BreakInt_r, RBR_r, OverrunErr_r, RbrDataRDY : SIGNAL IS 1;
  ATTRIBUTE SYN_KEEP OF RxFrmErr, RxIdle_r : SIGNAL IS 1;
  ATTRIBUTE OPT : string;
  ATTRIBUTE OPT OF RxPrtyErr, NumDataBitReceived_r, RSR : SIGNAL IS "KEEP";
  ATTRIBUTE OPT OF Hunt_r, HuntOne_r, ParityErr_r, FrameErr_r : SIGNAL IS "KEEP";
  ATTRIBUTE OPT OF BreakInt_r, RBR_r, OverrunErr_r, RbrDataRDY : SIGNAL IS "KEEP";
  ATTRIBUTE OPT OF RxFrmErr, RxIdle_r : SIGNAL IS "KEEP";

begin

--------------------------------------------------------------------------------
-- Generate RxClkEn signal
--------------------------------------------------------------------------------

  -- RxClkEn : serial port data receiving clock enable
  RxCLK_Proc: process (Reset, Clk16X)
  begin
    if (Reset='1') then
      RxClkEn <= '0';
    elsif rising_edge(Clk16X) then
      if (CNT_r="0110") then
        RxClkEn <= '1';
      else
        RxClkEn <= '0';
      end if;
    end if;
  end process RxCLK_Proc;

  -- CNT_r : 4-bit counter for RxClkEn waveform generation
  CNT_Proc: process (Reset, Clk16X)
  begin
    if (Reset='1') then
      CNT_r <= (others => '0');
    elsif rising_edge(Clk16X) then
      if (Rx_State /= idle) or (Hunt_r) then
        -- Increment count when not idle or when Hunt_r is TRUE
        CNT_r <= CNT_r + 1;
      elsif (SampledOnce='1') then
        -- Adjust 2 clks forward for RxClkEn during the resync after framing error
        CNT_r <= "0010";
      else
        CNT_r <= (others => '0');
      end if;
    end if;
  end process CNT_Proc;

--------------------------------------------------------------------------------
-- Generate Hunt_r
--------------------------------------------------------------------------------

  -- Hunt_r : will be TRUE when start bit is found
  Hunt_r_Proc: process (Reset, Clk16X)
  begin
    if (Reset='1') then
      Hunt_r <= FALSE;
    elsif rising_edge(Clk16X) then
      if (Rx_State=idle) and (SIN_reg='0') and (SIN1_r='1') then
        -- Set Hunt_r when SIN falling edge is found at the idle state
        Hunt_r <= TRUE;
      elsif (SampledOnce='1') and (SIN_reg='0') then
        -- Start bit is successfully sampled twice after framing error
        -- set Hunt_r "true" for resynchronizing of next frame
        Hunt_r <= TRUE;
      elsif (RxIdle_r='0') or (SIN_reg='1') then
        -- Clear Hunt_r when data shifting starts or when SIN returns to '1'
        Hunt_r <= FALSE;
      end if;
    end if;
  end process Hunt_r_Proc;

  -- HuntOne_r :
  --   HuntOne_r, used for BI flag generation, indicates that there is at
  --   least a '1' in the (data + parity + stop) bits of the frame.
  --   Break Interrupt flag(BI) is set to '1' whenever the received input
  --   is held at the '0' state for all bits in the frame (Start bit +
  --   Data bits + Parity bit + Stop bit).  So, as long as HuntOne_r is still
  --   low after all bits are received, BI will be set to '1'.
  HuntOne_r_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      HuntOne_r <= '0';
    elsif rising_edge(Clk16X) then
      if (Hunt_r) then
        HuntOne_r <= '0';
      elsif (RxIdle_r='0') and (CNT_r(3)='1') and (SIN_reg='1') then
        HuntOne_r <= '1';
      end if;
    end if;
  end process HuntOne_r_Proc;

  -- RbrDataRDY :
  --   This will be set to indicate that the data in RBR is ready for read and
  --   will be cleared after RBR is read.
  RbrDataRDY_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      RbrDataRDY <= '0';
    elsif rising_edge(Clk16X) then
      if (RxIdle_r='1') and (RxIdle1_r='0') then
        -- set RbrDataRDY at RxIdle_r rising edge
        RbrDataRDY <= '1';
      elsif (RbrRDn_re='1') then
        -- clear RbrDataRDY when RBR is read by CPU
        RbrDataRDY <= '0';
      end if;
    end if;
  end process RbrDataRDY_Proc;

  -- SampledOnce :
  --   This will be set for one Clk16X clock after a framing error occurs not
  --   because of BREAK and a low SIN signal is sampled by the Clk16X right
  --   after the sample time of the Stop bit which causes the framing error.
  SampledOnce_Proc: process (Reset, Clk16X)
  begin
    if (Reset='1') then
      SampledOnce <= '0';
    elsif rising_edge(Clk16X) then
      if (RxFrmErr='1') and (RxFrmErr1_r='0') and
         (SIN_reg='0') and (HuntOne_r='1') then
        -- Start bit got sampled once
        SampledOnce <= '1';
      else
        SampledOnce <= '0';
      end if;
    end if;
  end process SampledOnce_Proc;

  -- RxIdle_r Flag
  RxIdle_Proc: process(Reset, Clk16X)
  begin
    if (Reset='1') then
      RxIdle_r <= '1';
    elsif rising_edge(Clk16X) then
      if (Rx_State=idle) then
        RxIdle_r <= '1';
      elsif (CNT_r(3)='1') then
        RxIdle_r <= '0';
      end if;
    end if;
  end process RxIdle_Proc;

--------------------------------------------------------------------------------
-- Receiver Finite State Machine
--------------------------------------------------------------------------------

  Shift_data_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      RSR <= (others=>'0');
      NumDataBitReceived_r <= (others=>'0');
      RxPrtyErr <= '1';
      RxFrmErr <= '0';
      Rx_State <= idle;
    elsif rising_edge(Clk16X) then
      case Rx_State is
        when idle =>
          if (RxIdle_r='1') and (SIN_reg='0') and (RxClkEn='1') then
            RSR <= (others=>'0');
            NumDataBitReceived_r <= (others=>'0');
            --  RxPrtyErr:
            --    RxPrtyErr is a dynamic Parity Error indicator which is
            --    initialized to 0 for even parity and 1 for odd parity.
            --    For odd parity, if there are odd number of '1's in the
            --    (data + parity) bits, the XOR will bring RxPrtyErr back to 0
            --    which means no parity error, otherwise RxPrtyErr will be 1 to
            --    indicate a parity error.
            RxPrtyErr <= not ParityEven;
            RxFrmErr <= '0';
            Rx_State <= shift;
          end if;
        when shift =>
          if (RxClkEn='1') then
            RSR <= SIN_reg & RSR(7 downto 1);
            RxPrtyErr <= RxPrtyErr xor SIN_reg; -- Update RxPrtyErr dynamically
            NumDataBitReceived_r <= NumDataBitReceived_r + 1;
            if ((DataBits="00" and NumDataBitReceived_r=4) or
                (DataBits="01" and NumDataBitReceived_r=5) or
                (DataBits="10" and NumDataBitReceived_r=6) or
                (DataBits="11" and NumDataBitReceived_r=7)) then
              if (ParityEnable='0') then
                Rx_State <= stop;
              else
                Rx_State <= parity;
              end if;
            end if;
          end if;
        when parity =>
          if (RxClkEn='1') then
            if (ParityStick='0') then
              RxPrtyErr <= RxPrtyErr xor SIN_reg; -- Update RxPrtyErr dynamically
            else
              -- ParityStick='1' means Stick Parity is enabled.  In this case,
              -- the accumulated dynamic RxPrtyErr result will be ignored.  A new
              -- value will be assigned to RxPrtyErr based on the even/odd parity
              -- mode setting and the SIN sampled in parity bit.
              --    ParityEven='0'(odd parity):
              --       SIN needs to be '1', otherwise it's a stick parity error.
              --    ParityEven='1'(even parity):
              --       SIN needs to be '0', otherwise it's a stick parity error.
              if (ParityEven='0') then
                RxPrtyErr <= not SIN_reg;
              else
                RxPrtyErr <= SIN_reg;
              end if;
            end if;
            Rx_State <= stop;
          end if;
        when stop =>
          if (RxClkEn='1') then
            -- The Receiver checks the 1st Stopbit only regardless of the number
            -- of Stop bits selected.
            -- Stop bit needs to be '1', otherwise it's a Framing error
            RxFrmErr <= not SIN_reg;
            Rx_State <= idle;
          end if;
        when others =>
          if (RxClkEn='1') then
            Rx_State <= idle;
          end if;
      end case;
    end if;
  end process Shift_Data_Proc;

--------------------------------------------------------------------------------
-- Receiver Buffer Register
--------------------------------------------------------------------------------

  RBR_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      RBR_r <= (others=>'0');
    elsif rising_edge(Clk16X) then
      if (RxIdle_r='1') and (RxIdle1_r='0') then
        -- Update RBR at RxIdle_r rising edge
        case DataBits is
          when "00" =>   -- 5-bit data
            RBR_r <= "000" & RSR(7 downto 3);
          when "01" =>   -- 6-bit data
            RBR_r <=  "00" & RSR(7 downto 2);
          when "10" =>   -- 7-bit data
            RBR_r <=   '0' & RSR(7 downto 1);
          when others => -- 8-bit data
            RBR_r <= RSR;
        end case;
      end if;
    end if;
  end process RBR_Proc;

  RBR <= RBR_r;

--------------------------------------------------------------------------------
-- Delayed Signals for edge detections
--------------------------------------------------------------------------------
  Delay_Signals_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      SIN1_r <= '0';
      RxFrmErr1_r <= '1';
      RxIdle1_r <= '1';
    elsif rising_edge(Clk16X) then
      SIN_reg <= SIN;
	  -- SIN1_r : Signal for falling edge detection of signal SIN
      SIN1_r <= SIN_reg;
      -- RxFrmErr1_r :
      --   a delayed version of RxFrmErr for detacting the rising edge
      --   used to resynchronize the next frame after framing error
      RxFrmErr1_r <= RxFrmErr;
      -- RxIdle1_r : Signal for rising edge detection of signal RxIdle_r
      RxIdle1_r <= RxIdle_r;
    end if;
  end process Delay_Signals_Proc;

--------------------------------------------------------------------------------
-- Generate Error Flags
--------------------------------------------------------------------------------

  -- Receiver Error Flags in LSR
  --   OverrunErr(OE), ParityErr_r(PE), FrameErr_r(FE), BreakInt_r(BI)
  --   will be set to reflect the SIN line status only after the whole frame
  --   (Start bit + Data bits + Parity bit + Stop bit) is received.  A rising
  --   edge of RxIdle_r indicates the whole frame is received.
  Error_Flags_Proc: process(Clk16X, Reset)
  begin
    if (Reset='1') then
      OverrunErr_r <= '0';
      ParityErr_r <= '0';
      FrameErr_r <= '0';
      BreakInt_r <= '0';
    elsif rising_edge(Clk16X) then
      if (RxIdle_r='1') and (RxIdle1_r='0') then -- update at RxIdle_r rising
        -- Set OverrunErr_r flag if RBR data is still not read by CPU
        OverrunErr_r <= RbrDataRDY;
        -- Set ParityErr_r flag if RxPrtyErr is 1 when Parity enable
        ParityErr_r <= (ParityErr_r or RxPrtyErr) and ParityEnable;
        -- Set FrameErr_r flag if RxFrmErr is 1(Stop bit is sampled low)
        FrameErr_r <= FrameErr_r or RxFrmErr;
        -- Set BreakInt_r flag if HuntOne_r is still low
        BreakInt_r <= BreakInt_r or (not HuntOne_r);
      elsif (LsrRDn_re='1') then -- clear when LSR is read
        ParityErr_r <= '0';
        FrameErr_r <= '0';
        OverrunErr_r <= '0';
        BreakInt_r <= '0';
      end if;
    end if;
  end process Error_Flags_Proc;

  -- Receiver ready for read when data is available in RBR
  RxRDY <= RbrDataRDY;

  -- Overrun Error flag
  OverrunErr <= OverrunErr_r;

  -- Parity Error flag
  ParityErr <= ParityErr_r;

  -- Frame Error flag
  FrameErr <= FrameErr_r;

  -- Break Interrupt flag
  BreakInt <= BreakInt_r;

end Rxcver_a;


