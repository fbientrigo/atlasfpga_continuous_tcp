library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.math_real.uniform;
use ieee.math_real.floor;
use ieee.numeric_std.all;

entity lfsr_tb is
end entity;

architecture tb of lfsr_tb is

constant taps : std_logic_vector:= B"10000001";

signal seed : std_logic_vector (taps'high downto 0) := B"10011000";
signal clock : std_logic := '0';
signal reset,pause : std_logic;
signal output : std_logic_vector (taps'high downto 0);
signal load : std_logic;


component lfsr is
	generic( 
		 -- Tap vector: a TRUE means that position is tapped, otherwise that position is untapped.
		taps : std_logic_vector
	);
	port(
		nReset,clk : in std_ulogic;
		load : in std_logic;
		seed : in std_logic_vector( taps'high downto 0 );
		pause : in std_logic := '0';
		q    : out std_logic_vector( taps'high downto 0 )
	);
end component lfsr;

begin

uut: lfsr
	generic map (
		taps => taps
	)
	port map (
		clk   => clock,
		nReset => reset,
		load => load,
		pause => pause,
		seed => seed,
		q => output
	);
	
clock <= not clock after 1 ns;

stim: process

begin

reset <= '0';
wait for 5 ns;

reset <= '1';
load <= '1';
wait for 5 ns;

load <= '0';
wait for 50 ns;
pause <= '1';
wait for 20 ns;
pause <= '0';
wait for 80 ns;

assert false
	report "simulation ended"
	severity failure;

--wait;

end process;
end tb;