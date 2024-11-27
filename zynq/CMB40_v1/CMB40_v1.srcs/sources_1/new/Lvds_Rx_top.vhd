----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2024 03:20:48 PM
-- Design Name: 
-- Module Name: Lvds_Rx_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_UNSIGNED.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Lvds_Rx_top is

	generic (
--=============================================================================================================
		ExternalClockIn	: integer := 1;		-- Indication that an external system clock is used for the design.
											-- When '1' external clock is used and a DCM is provided.
											-- When '0' no external clock is provided and the DCM is
											-- removed.
											-- Don't forget to eneable the attributes for the DCM.
		BramAsRegister  : integer := 0;		--  FfAsRegister  BramAsRegister                                            
		FfAsRegister	: integer := 0;		--			0		0		No register at all, direct out.
											--			0		1		Block SelectRAM used as register.
											--			1		0		Normal FFs register (look out for extra BUFG's).
											--			1		1		DO NOT USE !
											--
		PhaseControl	: integer := 0;		-- 1 = YES, 0 = NO
		LclkOffsetK 	: std_logic_vector (6 downto 0) := "0111111"
											-- This is the value indicating the mismatch between clock and data.
											-- This value depends on the PCB routing and layout.
											-- For the ADS5273 Lclk clock and data are already 90 degrees shifted.
											-- The DCM will bring this back to zero, and the LclkOffset must correct this.
											-- The value must be set to 64 when the clock is 90 degrees shifted.
--==============================================================================================================
	);


    port (
	-- FPGA interface
    --SysClkP    : in std_logic;        -- System clock input from FPGA.
    SysRst  : in std_logic;        -- System Reset, input into module.
    -- ADS interface
    Lclk        : in std_logic;        -- Six times ADCLK
    AdClk      : in std_logic;        -- Skewed and Data aligned version of the ADC sample clock. Used as strobe.
    DataInChP    : in std_logic_vector (7 downto 0);   -- In LVDS standard yet
    DataInChN    : in std_logic_vector (7 downto 0);   -- In LVDS standard yet

    AnalyseOut    : out std_logic; -- One Lclk clock cycle later than PostSyncOut, clock for analyser.
    -- Out data
    ChOut_0    : out std_logic_vector (11 downto 0);
	ChOut_1	: out std_logic_vector (11 downto 0)
    );

end Lvds_Rx_top;

architecture Lvds_Rx_top_arch of Lvds_Rx_top is

----------------------------------------------------------------------------------------------------------------------------------------
-- Component Instantiation
----------------------------------------------------------------------------------------------------------------------------------------
-- FF primitive with async preset
component FDP	port (C	: in std_logic;	D : in std_logic; PRE : in std_logic;	Q : out std_logic);	end component ;
-- CMOS25 input buffer primitive
component IBUF_LVCMOS25		port (I : in std_logic;	O : out std_logic);	end component;
-- CMOS25 output buffer primitive
component OBUF_LVCMOS25		port (I : in std_logic;	O : out std_logic);	end component;
-- BUFG primitive
component BUFG				port (I : in std_logic;	O : out std_logic);	end component;
-- Lvds input buffer primyive
component IBUFDS	port (I	: in std_logic;	IB : in std_logic;	O : out std_logic);	end component;





component AdcReceiver is
	generic (
		BramAsRegister : integer := 1;	-- 1 use a BRAM as register, 0 don't.
		FfAsRegister : integer := 0		-- 1 use FFs as register, 0 don't.
										-- FfAsRegister  BramAsRegister
										--			0		0		No register at all, direct out.
										--			0		1		Block SelectRAM used as register.
										--			1		0		Normal FFs register (look out for extra BUFG's).
										--			1		1		DO NOT USE !		
		);
    port (
        RxClk		: in std_logic;
        RxClkNot	: in std_logic;
        RxRst		: in std_logic;
        RxDatIn		: in std_logic_vector (1 downto 0);
        RxSyncIn	: in std_logic;
        PreSyncInP	: in std_logic;		-- Sync coming from previous module. if not used tie it to GND.
        PreSyncInN	: in std_logic;		-- Sync coming from previous module. if not used tie it to GND.
        PostSyncOutP	: out std_logic;	-- Sync to the next module.
        PostSyncOutN	: out std_logic;	-- Sync to the next module.
        AdClkOut	: out std_logic;	-- One Lclk later than PostSyncOut, for signal analyser purposes
        RxEnaRam	: out std_logic;	-- Used with an external BRAM fifo.
        RxDatOut	: out std_logic_vector (23 downto 0)
    );
end  component ;

component DCM 
--pragma translate_off (code only valid during simulation)
	generic (
		CLKIN_DIVIDE_BY_2	: boolean;
		DESKEW_ADJUST		: string;
		CLKDV_DIVIDE 		: real;
		CLKOUT_PHASE_SHIFT 	: string
		);
--pragma translate_on (code valid during synthesis of the design)
	port (
		CLKIN   	: in  std_logic ;
		CLKFB   	: in  std_logic ;
		DSSEN 		: in  std_logic ;
		PSINCDEC	: in  std_logic ;
		PSEN 		: in  std_logic ;
		PSCLK 		: in  std_logic ;
		RST     	: in  std_logic ;
		CLK0    	: out std_logic ;
		CLK90   	: out std_logic ;
		clk180  	: out std_logic ;
		CLK270  	: out std_logic ;
		CLK2X   	: out std_logic ;
		CLK2X180	: out std_logic ;
		CLKDV   	: out std_logic ;
		CLKFX   	: out std_logic ;
		CLKFX180	: out std_logic ;
		LOCKED  	: out std_logic ;
		PSDONE  	: out std_logic ;
		STATUS  	: out std_logic_vector(7 downto 0)); 
end component;

-- Signals

signal IntLclkDcmPhaseUpDwn : std_logic;
signal IntLclkDcmPhaseEna   : std_logic;
signal IntLclkDcmPhaseClk   : std_logic;
signal IntLclkDcmPhsClkLocked : std_logic;
signal IntLclkDcmPhsClkLockedNot : std_logic;
signal IntReceiverRst : std_logic;
signal IntDatCh10				: std_logic_vector (1 downto 0);
signal not_used_1 : std_logic;
signal not_used_2 : std_logic;
signal IntAdClkOut10 : std_logic;
signal IntDatRec10				: std_logic_vector (23 downto 0);
signal IntRxClk					: std_logic;
signal IntLclkDcmBufg			: std_logic;
signal IntLclkDcmNotBufg		: std_logic;
signal IntLclkDcmDvBufg			: std_logic;
signal IntRxClkNot				: std_logic;
signal IntRxClkDv				: std_logic;
signal IntLclkDcmLocked			: std_logic;
signal IntDatCh0                : std_logic;
signal IntDatCh1                : std_logic;
signal IntDatCh2                : std_logic;
signal IntDatCh3                : std_logic;
signal IntDatCh4                : std_logic;
signal IntDatCh5                : std_logic;
signal IntDatCh6                : std_logic;
signal IntDatCh7                : std_logic;





begin

-------------------------------------------------------
-- Reset f-f with async preset
-- Assuming PhaseControl = 0 is fixed
IntLclkDcmPhaseUpDwn <= '0';
IntLclkDcmPhaseEna <= '0';
IntLclkDcmPhaseClk <= '0';
IntLclkDcmPhsClkLocked <= IntLclkDcmLocked;
IntLclkDcmPhsClkLockedNot <= not IntLclkDcmPhsClkLocked;

RxRstFf : FDP
    port map (
        D    => IntLclkDcmPhsClkLockedNot,
        C     => IntRxClk,
        PRE => SysRst,
        Q     => IntReceiverRst         -- Reset for the receiver interface.
        );

--IntReceiverRst <= SysRst;

---------------------------------------------
-- Input data buffers
--Ch0Iob : IBUFDS	port map (I	=> DataInChP(0),	IB  => DataInChN(0),	O => IntDatCh0);
--Ch1Iob : IBUFDS	port map (I	=> DataInChP(1),	IB  => DataInChN(1),	O => IntDatCh1);
--Ch2Iob : IBUFDS	port map (I	=> DataInChP(2),	IB  => DataInChN(2),	O => IntDatCh2);
--Ch3Iob : IBUFDS port map (I	=> DataInChP(3),	IB  => DataInChN(3),	O => IntDatCh3);
--Ch4Iob : IBUFDS port map (I	=> DataInChP(4),	IB  => DataInChN(4),	O => IntDatCh4);
--Ch5Iob : IBUFDS port map (I	=> DataInChP(5),	IB  => DataInChN(5),	O => IntDatCh5);
--Ch6Iob : IBUFDS port map (I	=> DataInChP(6),	IB  => DataInChN(6),	O => IntDatCh6);
--Ch7Iob : IBUFDS port map (I	=> DataInChP(7),	IB  => DataInChN(7),	O => IntDatCh7);

IntDatCh0 <= DataInChP(0);
IntDatCh1 <= DataInChP(1);
IntDatCh2 <= DataInChP(2);
IntDatCh3 <= DataInChP(3);
IntDatCh4 <= DataInChP(4);
IntDatCh5 <= DataInChP(5);
IntDatCh6 <= DataInChP(6);
IntDatCh7 <= DataInChP(7);

---------------------------------------------
-- Channel 1 and 0 LVDS decoder
IntDatCh10 <= IntDatCh1 & IntDatCh0;

AdcCh10 : AdcReceiver
	generic map (
		BramAsRegister => BramAsRegister,	-- Take the value given at the Entity level of this file.
		FfAsRegister => FfAsRegister		-- Take the value given at the Entity level of this file.
		)
    port map (
		RxClk		=> IntRxClk,
		RxClkNot	=> IntRxClkNot,
		RxRst		=> IntReceiverRst,
		RxDatIn		=> IntDatCh10,
		RxSyncIn	=> AdClk,			-- Input of the external sync
		PreSyncInP	=> '0',					-- input from lower module.
		PreSyncInN	=> '0',					-- input from lower module.
		PostSyncOutP	=> not_used_1,	-- output to upper module.
		PostSyncOutN	=> not_used_2,	-- output to upper module.
		AdClkOut	=> IntAdClkOut10,		-- One Lclk later than PostSyncOut, for signal analyser purposes
		RxEnaRam	=> open,
		RxDatOut	=> IntDatRec10
    );

-- Output buffers for decoder signals
--Cust10 : for n in 23 downto 0 generate
--	Appl1 : if n > 11 generate
--		Ch1Obuf : BUFG	port map (I => IntDatRec10(n),	O => ChOut_1(n-12));
--	end generate;
--	Appl0 : if n <= 11 generate
--		Ch0Obuf : BUFG	port map (I => IntDatRec10(n),	O => ChOut_0(n));
--	end generate;
--end generate;





ChOut_1(11) <= IntDatRec10(23);
ChOut_1(10) <= IntDatRec10(22);
ChOut_1(9) <= IntDatRec10(21);
ChOut_1(8) <= IntDatRec10(20);
ChOut_1(7) <= IntDatRec10(19);
ChOut_1(6) <= IntDatRec10(18);
ChOut_1(5) <= IntDatRec10(17);
ChOut_1(4) <= IntDatRec10(16);
ChOut_1(3) <= IntDatRec10(15);
ChOut_1(2) <= IntDatRec10(14);
ChOut_1(1) <= IntDatRec10(13);
ChOut_1(0) <= IntDatRec10(12);

ChOut_0(11) <= IntDatRec10(11);
ChOut_0(10) <= IntDatRec10(10);
ChOut_0(9) <= IntDatRec10(9);
ChOut_0(8) <= IntDatRec10(8);
ChOut_0(7) <= IntDatRec10(7);
ChOut_0(6) <= IntDatRec10(6);
ChOut_0(5) <= IntDatRec10(5);
ChOut_0(4) <= IntDatRec10(4);
ChOut_0(3) <= IntDatRec10(3);
ChOut_0(2) <= IntDatRec10(2);
ChOut_0(1) <= IntDatRec10(1);
ChOut_0(0) <= IntDatRec10(0);


-------------------------------------------------------
--  DCM

--IntFpgaSystemRst <= IntReset;


-- This DCM can be phase shifted to allign into the middle of the data bits.
LclkDcm : DCM
--pragma translate_off
	generic map (
		CLKIN_DIVIDE_BY_2	=> FALSE,
		DESKEW_ADJUST		=> "SOURCE_SYNCHRONOUS",
		CLKDV_DIVIDE		=> 3.0,
		PHASE_SHIFT 		=> -255,
		CLKOUT_PHASE_SHIFT 	=> "NONE"
		)
--pragma translate_on
	port map (
		CLKIN		=> Lclk,
		CLKFB   	=> IntRxClk,
		DSSEN 		=> '0',
		PSINCDEC	=> IntLclkDcmPhaseUpDwn,	-- If clock and data PCB line lengths perfectly match
		PSEN 		=> IntLclkDcmPhaseEna,		-- Clock and data will be shifted over 90 degrees.
		PSCLK 		=> IntLclkDcmPhaseClk,		-- These DCM inputs can be tied to GROUND.
		RST     	=> SysRst,		-- Reset, when application ready, release DCM
		CLK0    	=> IntLclkDcmBufg,
		CLK90   	=> open,
		CLK180  	=> IntLclkDcmNotBufg,
		CLK270  	=> open,
		CLK2X   	=> open,
		CLK2X180	=> open,
		CLKDV   	=> IntLclkDcmDvBufg,		-- Lclk divided by 3 = 2xADCLK.
		CLKFX   	=> open,
		CLKFX180	=> open,
		LOCKED  	=> IntLclkDcmLocked,
		PSDONE  	=> open,
		STATUS  	=> open
	);
LclkBufg :		BUFG	port map (I => IntLclkDcmBufg,		O => IntRxClk);
LclkNotBufg :	BUFG	port map (I => IntLclkDcmNotBufg,	O => IntRxClkNot);
LclkDvBufg :	BUFG 	port map (I => IntLclkDcmDvBufg,	O => IntRxClkDv);



end Lvds_Rx_top_arch;
