library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comparatorTMR is
	generic (
		N : integer := 10
	);
	port (
		data_1 : in std_logic_vector (N-1 downto 0);
		data_2 : in std_logic_vector (N-1 downto 0);
		result : out std_logic;
		tmrErr : out std_logic
	);
end comparatorTMR;
	
architecture Behavioral of comparatorTMR is

-- Fanout data1
signal dataA_1 : std_logic_vector ( N-1 downto 0);
signal dataB_1 : std_logic_vector ( N-1 downto 0);
signal dataC_1 : std_logic_vector ( N-1 downto 0);

-- Fanout data2
signal dataA_2 : std_logic_vector ( N-1 downto 0);
signal dataB_2 : std_logic_vector ( N-1 downto 0);
signal dataC_2 : std_logic_vector ( N-1 downto 0);

-- Triple result
signal resultA : std_logic;
signal resultB : std_logic;
signal resultC : std_logic;

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

component comparator
	generic (
		N : integer
	);
	port (
		data_1 : in std_logic_vector (N-1 downto 0);
		data_2 : in std_logic_vector (N-1 downto 0);
		result    : out std_logic
	);
end component comparator;

begin

F1: fanout
	generic map (
		N => N
	)
	port map (
		input => data_1,
		outA => dataA_1,
		outB => dataB_1,
		outC => dataC_1
	);
	
	
F2: fanout
	generic map (
		N => N
	)
	port map (
		input => data_2,
		outA => dataA_2,
		outB => dataB_2,
		outC => dataC_2
	);
	
-- Triple redundancy comparators

CA: comparator
	generic map (
		N => N
	)
	port map (
		data_1 => dataA_1,
		data_2 => dataA_2,
		result => resultA
	);
	
CB: comparator
	generic map (
		N => N
	)
	port map (
		data_1 => dataB_1,
		data_2 => dataB_2,
		result => resultB
	);
	
CC: comparator
	generic map (
		N => N
	)
	port map (
		data_1 => dataC_1,
		data_2 => dataC_2,
		result => resultC
	);

-- Output voter

V1: voter
	generic map (
		N => 1
	)
	port map (
		inA(0) => resultA,
		inB(0) => resultB,
		inC(0) => resultC,
		output(0) => result,
		tmrErr => tmrErr
	);

end Behavioral;