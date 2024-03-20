library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fanout is
	generic (
		N : integer := 1
	);
	port (
		input : in std_logic_vector ( N-1 downto 0 );
		outA  : out std_logic_vector ( N-1 downto 0 );
		outB  : out std_logic_vector ( N-1 downto 0 );
		outC  : out std_logic_vector ( N-1 downto 0 )
	);
end fanout;

architecture Behavioral of fanout is

begin

outA <= input;
outB <= input;
outC <= input;

end Behavioral;