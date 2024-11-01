library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparator is
	generic (
		N : integer := 10
	);
	port (
		data_1 : in std_logic_vector (N-1 downto 0);
		data_2 : in std_logic_vector (N-1 downto 0);
		result    : out std_logic
	);
end comparator;
	
architecture Behavioral of comparator is

begin

process(data_1, data_2)
begin

if data_1 = data_2 then
	result <= '1';
else
	result <= '0';
end if;

end process;

end Behavioral;
		