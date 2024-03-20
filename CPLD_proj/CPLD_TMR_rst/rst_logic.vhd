
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- This module is implemented with TMR 
entity rst_logic is
generic(
	N_units : integer:= 32
	);
port(
 comparator_b13 : in std_logic_vector (N_units - 1 downto 0);
 lfsr_err : in std_logic;
 tmrErr_unit : in std_logic_vector(N_units - 1 downto 0); 
 o_rst : out std_logic
 

);
end rst_logic;

architecture behav of rst_logic is

constant ones : std_logic_vector (N_units -1 downto 0 ) := (others => '1');
constant zeros: std_logic_vector (N_units - 1 downto 0) := (others => '0');

begin

o_rst <= '0' when (comparator_b13 = ones and lfsr_err = '0' and tmrErr_unit = zeros) else '1';

end behav;