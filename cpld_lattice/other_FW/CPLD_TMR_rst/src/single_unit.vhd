library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity single_unit is
	port (
		clock   : in std_logic;
		eoc_b13	: in std_logic;
		reset   : in std_logic;
		data_in : in std_logic_vector ( 7 downto 0 );
		output  : out std_logic;
		tmrErr  : out std_logic;
		change_rep: out std_logic
	);
end single_unit;

architecture Behavioral of single_unit is

signal data_out_1 : std_logic_vector ( 9 downto 0 );
signal data_out_1_Delay : std_logic_vector ( 9 downto 0 );

signal canale_1 : integer range 8 downto 0;
signal data_out_2 : std_logic_vector ( 9 downto 0 );
signal data_out_2_Delay : std_logic_vector ( 9 downto 0 );

signal canale_2 : integer range 8 downto 0;
signal nrst     : std_logic;

component b13
	port(
		reset    : in  std_logic;
		eoc      : in  std_logic;  
		soc      : out std_logic;
		load_dato,
		add_mpx2 : out std_logic;

		canale : out integer range 8 downto 0;
		mux_en   : out std_logic;

		clock    : in  std_logic;
		
		data_in	 : in  std_logic_vector( 7 downto 0 ); 
		dsr      : in  std_logic;
		error    : out std_logic;
		data_out : out std_logic
	);
end component b13;

component comparatorTMR
	generic (
		N : integer
	);
	port (
		data_1 : in std_logic_vector (N-1 downto 0);
		data_2 : in std_logic_vector (N-1 downto 0);
		result : out std_logic;
		tmrErr : out std_logic
	);
end component comparatorTMR;

begin

-- Testbench 1
B13_1: b13 port map (
		reset     => reset,
		clock     => clock,
		eoc       => eoc_b13,
		dsr       => '1',
		data_in   => data_in(7 downto 0),
		soc       => data_out_1(9),
		load_dato => data_out_1(8),
		add_mpx2  => data_out_1(7),
		mux_en    => data_out_1(6),
		error     => data_out_1(5),
		data_out  => data_out_1(4),
		canale    => canale_1
);

-- Testbench 2
B13_2: b13 port map (
		reset     => reset,
		clock     => clock,
		eoc       => eoc_b13,
		dsr       => '1',
		data_in   => data_in(7 downto 0),
		soc       => data_out_2(9),
		load_dato => data_out_2(8),
		add_mpx2  => data_out_2(7),
		mux_en    => data_out_2(6),
		error     => data_out_2(5),
		data_out  => data_out_2(4),
		canale    => canale_2
);
process(clock)
begin
if(rising_edge(clock))then
	data_out_1_Delay <= data_out_1;
	data_out_2_Delay <= data_out_2;
	if((data_out_1_Delay /= data_out_1) or (data_out_2_Delay /= data_out_2)) then
		change_rep <= '1';
	else
		change_rep <= '0';
	end if;
end if;

end process;
-- canale to output

data_out_1( 3 downto 0 ) <= std_logic_vector( to_unsigned( canale_1, 4 ) );
data_out_2( 3 downto 0 ) <= std_logic_vector( to_unsigned( canale_2, 4 ) );

-- Triple redundancy comparators

COMP_1: comparatorTMR
	generic map (
		N => 10
	)
	port map (
		data_1 => data_out_1,
		data_2 => data_out_2,
		result => output,
		tmrErr => tmrErr
	);
	
-- Reset inv
--nrst <= not reset;
	
end Behavioral;
		