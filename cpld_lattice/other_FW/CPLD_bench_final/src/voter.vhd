library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity voter is
	generic (
		N : integer := 1
	);
	port (
		inA    : in std_logic_vector ( N-1 downto 0 );
		inB    : in std_logic_vector ( N-1 downto 0 );
		inC    : in std_logic_vector ( N-1 downto 0 );
		output : out std_logic_vector ( N-1 downto 0 );
		tmrErr : out std_logic
	);
end voter;

architecture Behavioral of voter is

begin

output <= (inA and inB) or (inA and inC) or (inB and inC);

process( inA, inB, inC )
begin

	if (inA/=inB or inA/=inC or inB/=inC) then
		tmrErr <= '1';
	else
		tmrErr <= '0';
	end if;
	
end process;

end Behavioral;