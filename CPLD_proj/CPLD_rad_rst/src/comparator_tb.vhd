library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparator_tb is
end entity;

architecture tb of comparator_tb is
component comparator is
	Port (
		data_1 : in std_logic_vector (9 downto 0);
		data_2 : in std_logic_vector (9 downto 0);
		result    : out std_logic
	);
end component;

signal data_1 : std_logic_vector ( 9 downto 0 );
signal data_2 : std_logic_vector ( 9 downto 0 );
signal result     : std_logic;

begin

uut: comparator port map (
	data_1 => data_1,
	data_2 => data_2,
	result => result
	);

stim: process
begin

data_1 <= "1101011010";
data_2 <= "1101011010";
wait for 20 ns;

data_1 <= "1101011010";
data_2 <= "1101111010";
wait for 20 ns;

data_1 <= "1101011110";
data_2 <= "1101011010";
wait for 20 ns;

data_1 <= "1101011010";
data_2 <= "1101011010";
wait for 20 ns;
wait;

end process;
end tb;