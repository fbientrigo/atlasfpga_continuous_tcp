library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity B13_duo_TMR is
	port (
		clock   : in std_logic;
		eoc_b13	: in std_logic;
		reset   : in std_logic;
		data_in : in std_logic_vector ( 7 downto 0 );
		result_o  : out std_logic;
		comp_TMR_err_o: out std_logic;
		change_rep_o: out std_logic
	);
end B13_duo_TMR;

architecture Behavioral of B13_duo_TMR is

Component B13_duo
port (
		clock   : in std_logic;
		eoc_b13	: in std_logic;
		reset   : in std_logic;
		data_in : in std_logic_vector ( 7 downto 0 );
		result  : out std_logic;
		change_rep: out std_logic
	);
end component;

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

signal comp_out_3 : std_logic_vector( 2 downto 0);
signal change_report_3 : std_logic_vector( 2 downto 0);
signal CompA,CompB,CompC : std_logic_vector( 2 downto 0); --For fanout
signal comparator_results : std_logic;--Results of comparator of b13 with TMR

attribute preserve_signal : boolean;
 attribute preserve_signal of comp_out_3 : signal is true;
 attribute preserve_signal of change_report_3 : signal is true;
 -- attribute dont_touch : boolean;
 -- attribute dont_touch of B13_duo: label is true;
 -- attribute dont_touch of voter: label is true;


begin

change_rep_o <= change_report_3(2) or change_report_3 (1) or change_report_3(0);
result_o <= comparator_results;
TMR_b13:
for i in 0 to 2 generate
	B13_duo_mod: B13_duo port map
(
	clock   => clock,
	reset   => reset,
	eoc_b13	=> eoc_b13,
	data_in => data_in,
	result  => comp_out_3(i),
	change_rep => change_report_3(i)
);
end generate TMR_b13;

V1: voter
	generic map (
		N => 1
	)
	port map (
		inA(0) => comp_out_3(0),
		inB(0) => comp_out_3(1),
		inC(0) => comp_out_3(2),
		output(0) => comparator_results,
		tmrErr => comp_TMR_err_o
	);


end Behavioral;
