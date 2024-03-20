library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.math_real.uniform;
use ieee.math_real.floor;
use ieee.numeric_std.all;


entity top_tb is
end entity;

architecture tb of top_tb is

constant N_UNITS : integer := 8;
--constant taps : std_logic_vector := B"0010000001";
--signal clock : std_logic := '0';
signal entrada_rst : std_logic;
signal load  : std_logic := '1';
constant taps : std_logic_vector := B"00100001";
signal seed : std_logic_vector (taps'high downto 0) := B"00000001";
signal comp_out    : std_logic_vector ( N_UNITS-1 downto 0 );
signal tmrErr_unit : std_logic_vector ( N_UNITS-1 downto 0 );
signal tmrErr_lfsr : std_logic;


begin


--component top is
    i_Timer : entity work.top(Behavioral)

	generic map(
		N_UNITS => N_UNITS, --: integer := 8;
		taps => taps) -- std_logic_vector := B"0010000001"
	
		port map (
--		clk         : in std_logic;
--		rst         => rst std_logic;

		entrada_rst => entrada_rst,
		comp_out    => comp_out, --: out std_logic_vector ( N_UNITS-1 downto 0 );
		tmrErr_unit => tmrErr_unit, --: out std_logic_vector ( N_UNITS-1 downto 0 );
		tmrErr_lfsr => tmrErr_lfsr, --: out std_logic;
		-- lfsr
		load     => load);
 --   : in std_logic
--end component;

--begin

--uut: top
	--generic map (
		--N_UNITS => N_UNITS,
		--taps    => taps
	--)
	--port map (
		--clk   => clock,
		--load   => load,
		--comp_out => comp_out,
		--tmrErr_unit => tmrErr_unit,
		--tmrErr_lfsr => tmrErr_lfsr
	--);
	
	
--clock <= not clock after 1 ns;

--stim: process

--begin
process is
    begin
	
entrada_rst <= '1';
wait for 10 ns;
	
entrada_rst <= '0';

wait for 2 ns;

load <= '1';
wait for 50 ns;

load <= '0';


-- Generate SEU
--<<signal .top_tb.uut.GEN_SUNIT(0).SUX.B13_1.S1 : integer range 7 downto 0 >> <= force 5;
--wait for 3 ns;
--<<signal .top_tb.uut.GEN_SUNIT(0).SUX.B13_1.S1 : integer range 7 downto 0 >> <= release;

wait;

assert false
	report "simulation ended"
	severity failure;


--wait;

end process;
end tb;