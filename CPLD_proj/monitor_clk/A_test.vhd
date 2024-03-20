
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DRS_A_test is
  Port ( 
  A_vec : in std_logic_vector(3 downto 0);
  i_en_test: in std_logic;
  i_nrst : in std_logic;
  o_A_vec : out std_logic_vector(3 downto 0);
  i_clk : in std_logic
  );
end DRS_A_test;

architecture Behavioral of DRS_A_test is
signal sim_clk : std_logic_vector(3 downto 0);
signal count1,count2,count3,count4 : integer range 0 to 5;
begin

process(i_clk,i_nrst)

begin
if(i_nrst = '0') then
    sim_clk <= (others => '0');
    count1 <= 0;
    count2 <=0;
    count3 <= 0;
    count4 <= 0;
elsif(rising_edge(i_clk)) then
        sim_clk(0) <= not i_clk;
        if(count1 = 1) then
            count1 <= 0;
            sim_clk(1) <= not sim_clk(1);
            count2 <= count2+1;
            if(count2 = 1) then
                count2 <= 0;
                count3 <= count3+1;
                sim_clk(2) <= not sim_clk(2);
                if(count3 = 1) then
                    count3 <= 0;
                    sim_clk(3) <= not sim_clk(3);
                 end if;

            end if;
        end if;
end if;
end process;

process(i_clk)
begin
if(rising_edge(i_clk))then
    if(i_en_test = '1') then
        o_A_vec <= sim_clk;
    else
        o_A_vec <= A_vec;
    end if;
end if;
end process;

end Behavioral;