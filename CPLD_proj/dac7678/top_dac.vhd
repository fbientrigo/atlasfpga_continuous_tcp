LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

-- For Main Clock --
library machxo3d; 
use machxo3d.all;


entity top_dac is
	PORT(
	SDA_T : INOUT std_logic;
	SCL_O : OUT std_logic;
	nCLR_O: OUT std_logic;
	--ClkX_I: IN std_logic;
	rstn : IN std_logic;
	Addr_O: OUT std_logic;
	nLDAC_O: OUT std_logic;
	DIPSW : IN std_logic_vector (3 downto 0);
	LED : OUT std_logic_vector (7 downto 0)
	);
end top_dac;

architecture behavioral of top_dac is

component dac7678_i2c is
generic(
	clk_freq : integer := 14000000; --clock of lattice machox3d
	baud_rate: integer := 200000 --ksps in F/S mode.
	);
PORT(

	clk_i : in std_logic; --Input clock of the module, should be same frequency has clk_freq
	rst_i: in std_logic; --general reset of the module
	SDA_t: inout std_logic; --can be read or write
	SCL_o: out std_logic;
	nLDAC_o: out std_logic; -- For sincronous updates pull down to gnd
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
	init_dac_i : in std_logic; --Inicialización del DAC para configuracion inicial (
	Fail_ACK: out std_logic

);

end component dac7678_i2c;


COMPONENT OBZPU 
PORT
(I:IN std_logic;
 O:OUT std_logic;
 T: INOUT std_logic
 );
 END COMPONENT;

COMPONENT OSCJ -- synthesis translate_off 
GENERIC (NOM_FREQ: string := "14.00");
-- synthesis translate_on 
PORT (STDBY: IN std_logic; 
OSC: OUT std_logic;
SEDSTDBY: OUT std_logic; 
OSCESB : OUT std_logic); 
END COMPONENT; 

attribute NOM_FREQ : string; 
attribute NOM_FREQ of OSCinst0 : label is "14.00";

 
signal osc_int: std_logic; -- Reloj interno CPLD.
signal rst_1, rst_2,rst_db: std_logic;
signal rst: std_logic;
signal DAC_byte : std_logic_vector (11 downto 0);
begin

nLDAC_O <= '0';

rst <= not rstn;-- Del boton de la placa

OSCInst0: OSCJ -- synthesis translate_off 
GENERIC MAP( NOM_FREQ => "14.00" ) -- synthesis translate_on 
PORT MAP (
STDBY=> '0', 
OSC => osc_int, 
SEDSTDBY => open, 
OSCESB => open 
);



dac_inst :component  dac7678_i2c
	generic map(
		clk_freq => 14000000,
		baud_rate => 200000
		)
    port map (
		clk_i  => osc_int,
		rst_i => rst,
		SCL_o => SCL_O,
		SDA_t => SDA_t,
		update_i => DIPSW(0),
		ADDR0_sel_i => '0', --1 o 0 dependiendo de nLDAC
		ADDR0_o => Addr_O,
		dac_ch_i => "1111", --Todos los canales
		clr_dac_i => '0',
		DAC_byte_i => DAC_byte,
		enable_read_i => '0',
		SCLK_c_test => open,
		init_dac_i => DIPSW(1),
		Fail_ACK => LED(0)
    );

LED(7 downto 1) <= (OTHERS => '1');
process(osc_int,rst)
begin
	if(rst='1') then
		nCLR_O <= '0';
	
	elsif(rising_edge (osc_int)) then
		nCLR_O <= '1';
		rst_1 <= rst;
		rst_2 <= rst_1;
		rst_db <= rst_1 and (not rst_2);
		CASE DIPSW IS
			WHEN "0001" =>
				DAC_byte <= x"00F";
			WHEN "0010" =>
				DAC_byte <= x"040";
			WHEN "0111"=>
				DAC_byte <= x"FF0";
			WHEN "1011" =>
				DAC_byte <= x"007";
			WHEN "1111" =>
				DAC_byte <= x"FFF";
			WHEN Others =>
				DAC_byte <= x"FA0";	
		end case;
	end if;
end process;

END behavioral;
	
