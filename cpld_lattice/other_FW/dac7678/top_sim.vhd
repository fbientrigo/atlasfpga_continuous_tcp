library work, ieee, std;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity top_sim is

end entity;


architecture Behavioral of top_sim is

component dac7678_i2c is
generic(
	clk_freq : integer := 10000000; --clock of lattice machox3d
	baud_rate: integer := 400000 --ksps in F/S mode.
	);
PORT(

	clk_i : in std_logic; --Input clock of the module, should be same frequency has clk_freq
	rst_i: in std_logic; --general reset of the module
	SDA_t: inout std_logic; --can be read or write
	SCL_o: out std_logic;
	nLDAC_o: out std_logic; -- For sincronous updates pull to gnd
	ADDR0_o: out std_logic; -- Select between 3 dacs, 1, 0 or floating. Schmeatic had pulldown on this pin so cant be float.
	ADDR1_o: out std_logic; -- Select between 3 dacs, 1, 0 or floating. Schmeatic had pulldown on this pin so cant be float.
	ADDR0_sel_i: in std_logic; -- set to 0 or 1 depending on which DAC will be controlled. (up to 3 if left float but is already pull up on PCB)
	dac_ch_i : in std_logic_vector(3 downto 0); --Para los 8 canales, el bit adicional "1111" es para broadcasts
	clr_dac_i: in std_logic;
	DAC_byte_i: in std_logic_vector(11 downto 0); --Data byte for the dac channel that wants to set. 12 bits value
	read_byte_o: out std_logic_vector(15 downto 0); -- for read data from dac7868
	update_i: in std_logic; -- if a pulse is detected will update the data of the dac
	enable_read_i: in std_logic; --if is '1' dac will be read instead of write content.
	SCLK_c_test : out std_logic_vector(3 downto 0); -- test para saber counter de SCLK y coordinar con a simulacion el ACK
	init_dac_i : in std_logic --Inicialización del DAC para configuracion inicial (

);

end component dac7678_i2c;


signal CLK_in : std_logic;
signal rst,clr_dac_i : std_logic;
constant clk_period : time := 100.000ns;
signal update_dac : std_logic;
signal SCLK_c_test: integer ;
signal scl_counter : std_logic_vector (3 downto 0);
signal SDA_top,SCL_o: std_logic;
signal init_dac_i : std_logic;
begin

CLK_process:process
begin
    CLK_in <= '1';
    wait for clk_period/2;
    CLK_in <= '0';
    wait for clk_period/2;
end process;

rst_process: process
begin
rst <= '1';
update_dac <= '0';
init_dac_i <= '0';
clr_dac_i <= '1';
wait for 400 ns;
rst <= '0';
wait for 600 ns;
init_dac_i <= '1';
wait for 120 us;
update_dac <= '1';
wait;
end process;

dac_sim :component  dac7678_i2c
	generic map(
		clk_freq => 10000000,
		baud_rate => 400000
		)
    port map (
		clk_i  => CLK_in,
		rst_i => rst,
		SCL_o => SCL_o,
		SDA_t => SDA_top,
		update_i => update_dac,
		ADDR0_sel_i => '1',
		dac_ch_i => "0011",
		clr_dac_i => clr_dac_i,
		DAC_byte_i => x"AAA",
		enable_read_i => '0',
		SCLK_c_test => scl_counter,
		init_dac_i => init_dac_i
    );
	SCLK_c_test <= to_integer(unsigned(scl_counter));
process(CLK_in)
begin
	if rising_edge (CLK_in) then
		if(SCLK_c_test > 8 and SCL_o = '1') then
			SDA_top <= '0';
		else 
			SDA_top <= 'Z';
		end if;
	end if;
end process;
end Behavioral;
