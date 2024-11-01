library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lfsrTMR is
	generic( 
		 -- Tap vector: a TRUE means that position is tapped, otherwise that position is untapped.
		 -- https://www.gaussianwaves.com/2018/09/maximum-length-sequences-m-sequences/
		 -- Tap format is x^n*taps(n) + x^n-1*taps(n-1) + ... + x*taps(0) + 1
		taps : std_logic_vector := B"10000001"
	);
	port(
		nReset,clk : in std_logic:='0';
		load : in std_logic := '0';
		seed : in std_logic_vector( 7 downto 0 ) := B"00011000";
		q    : out std_logic_vector( 7 downto 0 );
		tmrErr : out std_logic
	);
end lfsrTMR;
	
architecture Behavioral of lfsrTMR is

-- Fanout signals
signal nResetA, nResetB, nResetC : std_logic;
signal clkA, clkB, clkC          : std_logic;
signal loadA, loadB, loadC       : std_logic;

-- Fanout seed
signal seedA : std_logic_vector ( taps'high downto 0);
signal seedB : std_logic_vector ( taps'high downto 0);
signal seedC : std_logic_vector ( taps'high downto 0);

-- Triple q
signal qA : std_logic_vector ( taps'high downto 0);
signal qB : std_logic_vector ( taps'high downto 0);
signal qC : std_logic_vector ( taps'high downto 0);

component fanout
	generic (
		N : integer
	);
	port (
		input : in std_logic_vector ( N-1 downto 0 );
		outA  : out std_logic_vector ( N-1 downto 0 );
		outB  : out std_logic_vector ( N-1 downto 0 );
		outC  : out std_logic_vector ( N-1 downto 0 )
	);
end component fanout;

component voter
	generic (
		N : integer
	);
	port (
		inA    : in std_logic_vector ( N-1 downto 0 );
		inB    : in std_logic_vector ( N-1 downto 0 );
		inC    : in std_logic_vector ( N-1 downto 0 );
		output : out std_logic_vector ( N-1 downto 0 );
		tmrErr : out std_logic
	);
end component voter;

component lfsr is
	generic( 
		taps : std_logic_vector
	);
	port(
		nReset,clk : in std_ulogic;
		load : in std_logic;
		seed : in std_logic_vector( taps'high downto 0 );
		q    : out std_logic_vector( taps'high downto 0 )
	);
end component lfsr;

begin

F1: fanout
	generic map (
		N => 1
	)
	port map (
		input(0) => clk,
		outA(0)  => clkA,
		outB(0)  => clkB,
		outC(0)  => clkC
	);
	
F2: fanout
	generic map (
		N => 1
	)
	port map (
		input(0) => nReset,
		outA(0)  => nResetA,
		outB(0)  => nResetB,
		outC(0)  => nResetC
	);
	
F3: fanout
	generic map (
		N => 1
	)
	port map (
		input(0) => load,
		outA(0)  => loadA,
		outB(0)  => loadB,
		outC(0)  => loadC
	);
	
F4: fanout
	generic map (
		N => taps'length
	)
	port map (
		input => seed,
		outA  => seedA,
		outB  => seedB,
		outC  => seedC
	);
	
-- Triple redundancy comparators


LA: lfsr
	generic map (
		taps => taps
	)
	port map (
		clk    => clkA,
		nReset => nResetA,
		load   => loadA,
		seed   => seedA,
		q      => qA
	);
	
LB: lfsr
	generic map (
		taps => taps
	)
	port map (
		clk    => clkB,
		nReset => nResetB,
		load   => loadB,
		seed   => seedB,
		q      => qB
	);
	
LC: lfsr
	generic map (
		taps => taps
	)
	port map (
		clk    => clkC,
		nReset => nResetC,
		load   => loadC,
		seed   => seedC,
		q      => qC
	);

-- Output voter

V1: voter
	generic map (
		N => taps'length
	)
	port map (
		inA    => qA,
		inB    => qB,
		inC    => qC,
		output => q,
		tmrErr => tmrErr
	);

end Behavioral;