
-- http://www.opencores.org/project,galois_lfsr

library ieee; use ieee.std_logic_1164.all; use ieee.numeric_std.all;
 
entity lfsr is
	generic( 
		 -- Tap vector: a TRUE means that position is tapped, otherwise that position is untapped.
		 -- https://www.gaussianwaves.com/2018/09/maximum-length-sequences-m-sequences/
		 -- Tap format is x^n*taps(n) + x^n-1*taps(n-1) + ... + x*taps(0) + 1
		taps : std_logic_vector(7 downto 0) := B"00010001"
	);
	port(
		nReset,clk : in std_logic:='0';
		load : in std_logic := '0';
		seed : in std_logic_vector( 7 downto 0 ) := B"10011000";
		pause : in std_logic := '0';
		q    : out std_logic_vector( 7 downto 0 )
	);
end entity lfsr;
 
architecture Behavioral of lfsr is
	signal i_d,i_q : std_logic_vector( taps'high downto 0 ); 
begin
 
	-- Receives a vector of taps; generates LFSR structure with correct XOR positionings.
	tapGenr:
	for i in 0 to taps'high-1 generate
		process( i_q ) is begin
			if taps(i) = '1' then
				i_d(i+1) <= i_q(i) xor i_q(taps'high);
			else
				i_d(i+1) <= i_q(i);
			end if;
		end process;
	end generate tapGenr;
		
	i_d(0) <= i_q(taps'high);
	q      <= i_q;
 
	process(clk) is begin
		if rising_edge(clk) then
			if nReset = '0' then
				i_q <= ( others => '0' );
			elsif load = '1' then
				i_q <= seed;
			elsif pause = '1' then
				i_q <= i_q;
			else
				i_q <= i_d;
			end if;
		end if;
	end process;
 
end Behavioral;