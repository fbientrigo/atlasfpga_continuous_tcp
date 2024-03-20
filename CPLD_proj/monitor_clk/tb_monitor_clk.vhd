library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity tb_monitor_clk is
--port();

end tb_monitor_clk;

architecture behavioral of tb_monitor_clk is 

signal clk,clk_mon : std_logic;
signal cnt_out : std_logic_vector (15 downto 0);
constant T : time := 10 ns; 
constant T2: time := 6.6 ns;

signal en_test,nrst: std_logic;
signal A_out : std_logic_vector (3 downto 0);



begin

process
begin
		clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
end process;

process
begin
		clk_mon <= '0';
        wait for T2/2;
        clk_mon <= '1';
        wait for T2/2;
end process;

process
begin
 en_test <= '0';
 nrst <= '0'; 
wait for 50 ns;
 nrst <= '1';
wait for 50 ns;
 en_test <= '1';
wait;
end process;

mon:entity work.clk_monitor(Behavioral)
port map
(
clk_in => clk,
clk_monitor_in => clk_mon,
cnt_out => cnt_out
);

A:entity work.DRS_A_test(Behavioral)
port map
(
A_vec => b"1001",
  i_en_test => en_test,
  i_nrst => nrst,
  o_A_vec => A_out,
  i_clk  => clk
);

end;