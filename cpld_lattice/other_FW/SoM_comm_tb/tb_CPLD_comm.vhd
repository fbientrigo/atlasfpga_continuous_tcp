----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.06.2023 16:10:20
-- Design Name: 
-- Module Name: tb_CPLD_comm - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.

entity tb_CPLD_comm is
--  Port ( );
end tb_CPLD_comm;

architecture Behavioral of tb_CPLD_comm is
component CPLD_comm_module is
    generic(
        SPI_baud_rate : integer :=10000000; --SPI frequency
        input_clock_freq : integer := 100000000; -- input clock frequency
        SPI_word_lenght : integer := 12
    );
  Port ( 
        i_clk: in std_logic;
        i_rst: in std_logic;
        i_Mezz_mux  : in std_logic_vector( 2 downto 0); --For mux ADC inputs 
        i_SPI_WR_en : in std_logic; --when asserted, write to SPI bus of CPLD
        i_SPI_data : in std_logic_vector(SPI_word_lenght -1 downto 0);
        i_SPI_MISO: in std_logic;
        i_nCS_CPLD : in std_logic;
        ---OUTPUTS physical
        o_Mux_sel : out std_logic_vector(2 downto 0); -- mux of mezzanines
        o_SPI_MOSI: out std_logic;
        o_SPI_SCLK: out std_logic;
        o_SPI_nCS : out std_logic;
        ---OUTPUTS for control
        o_cpld_data_ans : out std_logic_vector (SPI_word_lenght -1 downto 0);
        o_wr_rdy : out std_logic---ready to receive new data
  
  );
end component;

Component SPI_som
generic(
		word_lenght : integer := 12
		);
Port(
		MOSI_som : in std_logic;
		MISO_som : out std_logic;
		MCLK_som : in std_logic;
		CS_som : in std_logic;  --CS from SOM to CPLD
		CS_CPLD: out std_logic; --CS to SOM from CPLD
		o_data_rec: out std_logic_vector(word_lenght-1 downto 0);
		data_rdy: out std_logic
);
end component;

constant SPI_word_lenght : integer := 12;
signal clk,rst : std_logic;
signal mezz_mux : std_logic_vector( 2 downto 0);
signal SPI_mezz_sel : std_logic_vector ( 2 downto 0);
signal SPI_WR_en : std_logic;
signal mux_cal_signal, nRst,nshdn,denable,SPI_MOSI,SPI_SCLK,wr_rdy,SPI_nCS,SPI_nCS_cpld,ADC_nCS,SPI_MISO: std_logic;
signal mux_sel : std_logic_vector (2 downto 0);
signal dac_sel : std_logic_vector (1 downto 0);
signal data_received,o_cpld_data_ans,SPI_data : std_logic_vector(SPI_word_lenght-1 downto 0);
signal data_rdy : std_logic;
constant T : time := 10 ns; 
signal t1,t2,t3 : std_logic_vector(0 downto 0);
begin

CPLD:SPI_som
generic Map
(
word_lenght => SPI_word_lenght
)
Port Map
(
	MOSI_som => SPI_MOSI,
    MISO_som => SPI_MISO,
	MCLK_som =>SPI_SCLK,
	CS_som	=> SPI_nCS,
    CS_CPLD => SPI_nCS_cpld,
	o_data_rec =>data_received,
	data_rdy => data_rdy

);

SoM:CPLD_comm_module
generic map(

	   SPI_word_lenght => SPI_word_lenght
	)
Port Map(
    i_clk => clk,
    i_rst => rst,
	i_Mezz_mux => mezz_mux,
	i_SPI_WR_en => SPI_WR_en,
	i_SPI_data => SPI_data,
	i_SPI_MISO => SPI_MISO,
	i_nCS_CPLD => SPI_nCS_cpld,
	o_Mux_sel => Mux_sel,
	o_SPI_MOSI => SPI_MOSI,
	o_SPI_SCLK => SPI_SCLK,
	o_SPI_nCS => SPI_nCS,
	o_cpld_data_ans => o_cpld_data_ans,
	o_wr_rdy => wr_rdy
);
forlab:
for i in 0 to 0 generate
	t3(i) <= t1(i) and t2(i);
end generate forlab;

process 
    begin
        clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
    end process;

variable_proc:process
begin
t1 <= b"1";
t2 <= b"1";
rst <= '1';
SPI_WR_en <= '0';
SPI_data <= x"69f";
wait for 100 ns;
rst <= '0';
SPI_WR_en <= '1';
wait for 100 ns;
SPI_WR_en <= '0';
mezz_mux <= b"001";

wait for 5000 ns;
SPI_WR_en <= '0';
SPI_data <= x"abc";

wait for 100 ns;
SPI_WR_en <= '1';
wait;

end process;

end Behavioral;

