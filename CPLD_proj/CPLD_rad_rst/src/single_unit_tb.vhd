library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.math_real.uniform;
use ieee.math_real.floor;
use ieee.numeric_std.all;

entity single_unit_tb is
end entity;

architecture tb of single_unit_tb is

signal clock : std_logic := '0';
signal reset : std_logic;
signal output : std_logic;

signal data_in : std_logic_vector ( 9 downto 0 ) := ( others => '0' );

component single_unit is
	port (
		clock   : in std_logic;
		reset   : in std_logic;
		data_in : in std_logic_vector ( 9 downto 0 );
		output  : out std_logic;
		tmrErr  : out std_logic
	);
end component;

begin

uut: single_unit port map (
	clock   => clock,
	reset   => reset,
	data_in => data_in,
	output  => output
	);
	
clock <= not clock after 1 ns;

stim: process

variable rand1 : integer;
variable rand2 : real;
variable seed1 : positive;
variable seed2 : positive;

begin

seed1 := 1;
seed2 := 1;

reset <= '1';
wait for 5 ns;

reset <= '0';

for n in 1 to 30 loop
      uniform(seed1, seed2, rand2);
      rand1 := integer(floor(rand2 * 1024.0));
	  data_in <= std_logic_vector( to_unsigned(rand1, data_in'length ) );
	  wait for 5 ns;
end loop;

assert false
	report "simulation ended"
	severity failure;

--wait;

end process;
end tb;