library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL; -- 
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- For Main Clock --
library machxo3d; 
use machxo3d.all;
--------------------

--Changes: Add TMR in b13.
entity top_cms_mux is
	generic (
		N_mezz : integer := 5;
		N_ADC_i : integer := 39 ;--number of signal per mezzanines
		N_DRS4_i:	integer := 14;
		N_ADC_o : integer := 39 ;--number of signal per mezzanines
		N_DRS4_o:	integer := 14;
		SPI_word_lenght : integer := 14 --originally 12 is for 12 bits, but now 14 bits due 2 additional for mezz's gain setting
	);
    port (
		--ADC digital output channels of each mezzanine
		--Mezzanine 1
		Mezz1_ADC_ch_i_p	: in std_logic_vector (7 downto 0);
		Mezz1_ADC_ch_i_n	: in std_logic_vector (7 downto 0);
		
		Mezz2_ADC_ch_i_p	: in std_logic_vector (7 downto 0);
		Mezz2_ADC_ch_i_n	: in std_logic_vector (7 downto 0);
		
		Mezz3_ADC_ch_i_p	: in std_logic_vector (7 downto 0);
		Mezz3_ADC_ch_i_n	: in std_logic_vector (7 downto 0);
		
		Mezz4_ADC_ch_i_p	: in std_logic_vector (7 downto 0);
		Mezz4_ADC_ch_i_n	: in std_logic_vector (7 downto 0);
		
		Mezz5_ADC_ch_i_p	: in std_logic_vector (7 downto 0);
		Mezz5_ADC_ch_i_n	: in std_logic_vector (7 downto 0);
		
		--LCLK of each mezzanine
		Mezz_ADC_LCLK_p	: in std_logic_vector (4 downto 0);--41
		Mezz_ADC_LCLK_n	: in std_logic_vector (4 downto 0);--39
		--ADCLK of each mezzanine
		Mezz_ADC_ADCLK_p: in std_logic_vector (4 downto 0);--47
		Mezz_ADC_ADCLK_n: in std_logic_vector (4 downto 0);--45
		--Mux signal selector
		o_Mezz_Mux0 : out std_logic_vector(N_mezz-1 downto 0);
		o_Mezz_Mux1 : out std_logic_vector(N_mezz-1 downto 0);
		
		------Signal from CPLD to SoM 
		CPLD_ADC_ch_o_p	: out std_logic_vector (7 downto 0);
		CPLD_ADC_ch_o_n	: out std_logic_vector (7 downto 0);

		CPLD_ADC_LCLK_o_p : out std_logic;
		CPLD_ADC_LCLK_o_n : out std_logic;

		CPLD_ADC_ADCLK_o_p : out std_logic;
		CPLD_ADC_ADCLK_o_n : out std_logic;

		------------DRS4 signals----------------
		Mezz_DRS4_o_refclk_p		: out std_logic_vector (N_mezz -1 downto 0);
		Mezz_DRS4_o_refclk_n		: out std_logic_vector (N_mezz -1 downto 0);
		
		DRS4_i_refclk_p	: in std_logic;
		DRS4_i_refclk_n	: in std_logic;
		
		Mezz1_DRS4_o_A	: out std_logic_vector(3 downto 0);
		Mezz2_DRS4_o_A	: out std_logic_vector(3 downto 0);
		Mezz3_DRS4_o_A	: out std_logic_vector(3 downto 0);
		Mezz4_DRS4_o_A	: out std_logic_vector(3 downto 0);
		Mezz5_DRS4_o_A	: out std_logic_vector(3 downto 0);
		
		
		DRS4_i_A : in std_logic_vector( 3 downto 0);
		DRS4_i_SRIN : in std_logic; -- osoto
		
		o_Mezz_DRS4_o_denable : out std_logic_vector ( N_mezz -1 downto 0 );
		o_Mezz_DRS4_o_SRIN	: out std_logic_vector(N_mezz -1 downto 0); -- osoto
		
		
		--Control signals----------------
		o_Mezz_DAC_sel0	: out std_logic_vector ( N_mezz -1 downto 0);--97
		o_Mezz_DAC_sel1	: out std_logic_vector ( N_mezz -1 downto 0);--89
		o_Mezz_ADC_nCS	: out std_logic_vector ( N_mezz-1 downto 0);--92
		o_Mezz_DAC_nReset	: out std_logic_vector ( N_mezz-1 downto 0);--100 
		o_Mezz_ADC_nReset : out std_logic_vector ( N_mezz-1 downto 0);--97 
		o_Mezz_nSHDN	: out std_logic_vector (N_mezz-1 downto 0);
		o_Mezz_tcal_en : out std_logic_vector (N_mezz-1 downto 0);
		o_Mezz_Mux_gain_0 : out std_logic_vector (N_mezz-1 downto 0);
		o_Mezz_Mux_gain_1 : out std_logic_vector (N_mezz-1 downto 0);
		
		-----SPI Som signals----------------
		
		CSR_MOSI	:	in std_logic;
		CSR_MISO	:	out std_logic;
		CSR_SCLK_P	:	in std_logic;
		CSR_SCLK_N	:	in std_logic;
		CSR_CS_SOM	:	in std_logic;
		CSR_CS_CPLD	:	out std_logic;
		
		------hearbeat signals -----------
		
		top_stdby     :  in std_logic;   
		top_rst       :  in std_logic;
		top_heartbeat :  out std_logic;

		------ monitor ---------
		--MOSI_monitor : out std_logic;
        --MISO_monitor : out std_logic;
        --SCLK_monitor : out std_logic;
        --CS_monitor   : out std_logic;
		--cnt_data_bit0_top : out std_logic;
		P3_monitor : out std_logic;
        P6_monitor : out std_logic;
        E14_monitor : out std_logic;
        E15_monitor   : out std_logic;
		F16_monitor : out std_logic;

		rst	: in std_logic;
		Mux_sel: in std_logic_vector ( 2 downto 0 )
		
    );
end top_cms_mux;


architecture Behavioral of top_cms_mux is

--Differential input buffers
signal Mezz1_ADC_ch_input_diff : std_logic_vector(7 downto 0);
signal Mezz2_ADC_ch_input_diff : std_logic_vector(7 downto 0);
signal Mezz3_ADC_ch_input_diff : std_logic_vector(7 downto 0);
signal Mezz4_ADC_ch_input_diff : std_logic_vector(7 downto 0);
signal Mezz5_ADC_ch_input_diff : std_logic_vector(7 downto 0);
signal ADC_LCLK_input_buff : std_logic_vector(N_mezz-1 downto 0);
signal ADC_ADCLK_input_buff : std_logic_vector(N_mezz-1 downto 0);

signal ADC_ch_out_sel : std_logic_vector(7 downto 0);
signal ADC_LCLK_out : std_logic;
signal ADC_ADCLK_out : std_logic;

signal Mezz_DRS4_o_denable,Mezz_nSHDN,Mezz_DAC_sel0,Mezz_DAC_sel1,Mezz_ADC_DAC_nReset,Mezz_ADC_nCS,Mezz_Mux0,Mezz_Mux1,Mezz_tcal_en,Mezz_Mux_gain_0,Mezz_Mux_gain_1 : std_logic_vector(N_mezz -1 downto 0);


---------------DRS4 signals -------------------
signal DRS4_refclk_input_buff :  std_logic;
signal DRS4_refclk_sel : std_logic;
signal DRS4_A_buf : std_logic_vector( 3 downto 0);
signal DRS4_SRIN_buff : std_logic; -- osoto

component IB 
port (
 I : in std_logic;
 O : out std_logic
);
end component;

Component OLVDS
	port(
	A: in std_logic;
	Z: out std_logic;
	ZN: out std_logic
	);
	End component;

Component ILVDS
	port(
	A: in std_logic;
	An: in std_logic;
	Z: out std_logic
	);
	End component;
	
Component SPI_SOM
generic(
word_lenght : integer := 14 --originaly 12 bits, but now 2 additional for gain settting at mezzanine's mux
);
port(
		MOSI_som : in std_logic;
		MISO_som : out std_logic;
		MCLK_som : in std_logic;
		CS_som : in std_logic;  --CS from SOM to CPLD
		CS_CPLD: out std_logic; --CS to SOM from CPLD
		o_data_rec: out std_logic_vector(word_lenght-1 downto 0);
		data_rdy: out std_logic;
		end_bit_state : out std_logic --osoto mod
	);
end component;

signal SCLK_buff,MOSI_buff,CS_buff,CS_buff_neg : std_logic;
signal SPI_data : std_logic_vector (SPI_word_lenght-1 downto 0);
signal SPI_rdy : std_logic;


component heartbeat
port (
        stdby     : in  std_logic;  -- Señal de standby
        rst       : in  std_logic;  -- Señal de reset
        heartbeat : out std_logic   -- Señal de salida en P3 (5.115 MHz)
    );

end component;


--- osoto_mod monitoreo spi signals
--signal spi_mosi_monitor : std_logic;
signal spi_miso_monitor : std_logic;
--signal spi_clk_monitor : std_logic;
signal spi_cs_monitor : std_logic;
----- end osoto



begin


o_Mezz_DRS4_o_denable <= Mezz_DRS4_o_denable;
o_Mezz_nSHDN <= Mezz_nSHDN;
o_Mezz_DAC_sel0 <= Mezz_DAC_sel0;
o_Mezz_DAC_sel1 <= Mezz_DAC_sel1;
o_Mezz_ADC_nReset <= Mezz_ADC_DAC_nReset;
o_Mezz_DAC_nReset <= Mezz_ADC_DAC_nReset;
o_Mezz_ADC_nCS <= Mezz_ADC_nCS;
o_Mezz_Mux0 <= Mezz_Mux0;
o_Mezz_Mux1 <= Mezz_Mux1;
o_Mezz_tcal_en <= Mezz_tcal_en;
o_Mezz_Mux_gain_0 <= Mezz_Mux_gain_0;
o_Mezz_Mux_gain_1 <= Mezz_Mux_gain_1;

DRS4_A_buf <= DRS4_i_A;
DRS4_SRIN_buff <= DRS4_i_SRIN; --osoto

SPI: SPI_SOM
generic map
(
	word_lenght => SPI_word_lenght
)
port map(
	MOSI_som => CSR_MOSI,
	--MISO_som => CSR_MISO,
	MISO_som => spi_miso_monitor,
	MCLK_som => SCLK_buff,
	CS_som => CSR_CS_SOM,
	--CS_CPLD =>  CSR_CS_CPLD,
	CS_CPLD =>  spi_cs_monitor,
	o_data_rec => SPI_data,
	data_rdy => SPI_rdy,
	end_bit_state => F16_monitor --osoto mod
);

SCLK_clk:ILVDS
port map (
	A => CSR_SCLK_P,
	An=> CSR_SCLK_N,
	Z => SCLK_buff
);

-- osoto mod
h_beat:heartbeat
port map (
	stdby => top_stdby,   
    rst   => top_rst,
    heartbeat => top_heartbeat
);

CSR_MISO <= spi_miso_monitor;
CSR_CS_CPLD <= spi_cs_monitor;
 
--P3_monitor <= CSR_MOSI;
--P6_monitor <= spi_miso_monitor;
--E14_monitor <= SCLK_buff;
----CS_monitor   <= spi_cs_monitor;
--E15_monitor   <= CSR_CS_SOM;


---end osoto_mod


------------------ADC_inputs_ch buffers-------
Mezz1_ADC_ch_i:
for I in 0 to 7 generate
	ADC_buff1:ILVDS
		port map (
			A => Mezz1_ADC_ch_i_p(I),
			An=> Mezz1_ADC_ch_i_n(I),
			Z => Mezz1_ADC_ch_input_diff(I)
		);
end generate Mezz1_ADC_ch_i;

Mezz2_ADC_ch_i:
for I in 0 to 7 generate
	ADC_buff2:ILVDS
		port map (
			A => Mezz2_ADC_ch_i_p(I),
			An=> Mezz2_ADC_ch_i_n(I),
			Z => Mezz2_ADC_ch_input_diff(I)
		);
end generate Mezz2_ADC_ch_i;

Mezz3_ADC_ch_i:
for I in 0 to 7 generate
	ADC_buff3:ILVDS
		port map (
			A => Mezz3_ADC_ch_i_p(I),
			An=> Mezz3_ADC_ch_i_n(I),
			Z => Mezz3_ADC_ch_input_diff(I)
		);
end generate Mezz3_ADC_ch_i;


Mezz4_ADC_ch_i:
for I in 0 to 7 generate
	ADC_buff4:ILVDS
		port map (
			A => Mezz4_ADC_ch_i_p(I),
			An=> Mezz4_ADC_ch_i_n(I),
			Z => Mezz4_ADC_ch_input_diff(I)
		);
end generate Mezz4_ADC_ch_i;


Mezz5_ADC_ch_i:
for I in 0 to 7 generate
	ADC_buff5:ILVDS
		port map (
			A => Mezz5_ADC_ch_i_p(I),
			An=> Mezz5_ADC_ch_i_n(I),
			Z => Mezz5_ADC_ch_input_diff(I)
		);
end generate Mezz5_ADC_ch_i;


ADC_LCLK:
for I in 0 to N_mezz-1 generate
	ADC_LCLK:ILVDS
		port map (
			A => Mezz_ADC_LCLK_p(I),
			An=> Mezz_ADC_LCLK_n(I),
			Z => ADC_LCLK_input_buff(I)
		);
end generate ADC_LCLK;

ADC_ADCLK:
for I in 0 to N_mezz-1 generate
	ADC_ADCLK:ILVDS
		port map (
			A => Mezz_ADC_ADCLK_p(I),
			An=> Mezz_ADC_ADCLK_n(I),
			Z => ADC_ADCLK_input_buff(I)
		);
end generate ADC_ADCLK;
------------------output buffers ----------------
---------Diff buffers--------------
	
CPLD2SOM_ADC_ch:
for I in 0 to 7 generate
	ADCobuf:OLVDS
		port map(
			A => ADC_ch_out_sel(I),
			Z => CPLD_ADC_ch_o_p(I),
			ZN=> CPLD_ADC_ch_o_n(I)
		);
end generate CPLD2SOM_ADC_ch;


LCLKobuf:OLVDS
	port map(
		A => ADC_LCLK_out,
		Z => CPLD_ADC_LCLK_o_p,
		ZN=> CPLD_ADC_LCLK_o_n
	);

ADclkobuf:OLVDS
	port map(
		A => ADC_ADCLK_out,
		Z => CPLD_ADC_ADCLK_o_p,
		ZN=> CPLD_ADC_ADCLK_o_n
	);

---------------------------------------DRS4------------------------------------------

DRS4_refclk_in:ILVDS
		port map (
			A => DRS4_i_refclk_p,
			An=> DRS4_i_refclk_n,
			Z => DRS4_refclk_input_buff
		);
				
		
DRS4_refclk:
for I in 0 to N_mezz-1 generate
	DRS4_refclk_gen:OLVDS
		port map (
			A => DRS4_refclk_input_buff,
			Z=> Mezz_DRS4_o_refclk_p(I),
			Zn => Mezz_DRS4_o_refclk_n(I)
		);
end generate DRS4_refclk;

----------SPI process -------------------------------
-------Use SPI for control signals of mezzanines 
process(SPI_rdy)
begin
	if(rising_edge(SPI_rdy)) then
		case SPI_data(SPI_data'high downto SPI_data'high-2) is
			WHEN b"001" =>
				Mezz_DRS4_o_denable(0) <= SPI_data(0);
				Mezz_nSHDN(0) <= SPI_data(1);
				Mezz_DAC_sel0(0) <= SPI_data(2);
				Mezz_DAC_sel1(0) <= SPI_data(3);
				Mezz_ADC_DAC_nReset(0) <= SPI_data(4);
				Mezz_tcal_en(0) <= SPI_data(5);
				Mezz_Mux0(0) <= SPI_data(6);
				Mezz_Mux1(0) <= SPI_data(7);
				Mezz_ADC_nCS(0) <= SPI_data(8);
				Mezz_Mux_gain_0(0) <= SPI_data(9);
				Mezz_Mux_gain_1(0) <= SPI_data(10);
				
			WHEN b"010" =>
				Mezz_DRS4_o_denable(1) <= SPI_data(0);
				Mezz_nSHDN(1) <= SPI_data(1);
				Mezz_DAC_sel0(1) <= SPI_data(2);
				Mezz_DAC_sel1(1) <= SPI_data(3);
				Mezz_ADC_DAC_nReset(1) <= SPI_data(4);
				Mezz_tcal_en(1) <= SPI_data(5);
				Mezz_Mux0(1) <= SPI_data(6);
				Mezz_Mux1(1) <= SPI_data(7);
				Mezz_ADC_nCS(1) <= SPI_data(8);
				Mezz_Mux_gain_0(1) <= SPI_data(9);
				Mezz_Mux_gain_1(1) <= SPI_data(10);
				
			WHEN b"011" =>
				Mezz_DRS4_o_denable(2) <= SPI_data(0);
				Mezz_nSHDN(2) <= SPI_data(1);
				Mezz_DAC_sel0(2) <= SPI_data(2);
				Mezz_DAC_sel1(2) <= SPI_data(3);
				Mezz_ADC_DAC_nReset(2) <= SPI_data(4);
				Mezz_tcal_en(2) <= SPI_data(5);
				Mezz_Mux0(2) <= SPI_data(6);
				Mezz_Mux1(2) <= SPI_data(7);
				Mezz_ADC_nCS(2) <= SPI_data(8);
				Mezz_Mux_gain_0(2) <= SPI_data(9);
				Mezz_Mux_gain_1(2) <= SPI_data(10);
				
			WHEN b"100" =>
				Mezz_DRS4_o_denable(3) <= SPI_data(0);
				Mezz_nSHDN(3) <= SPI_data(1);
				Mezz_DAC_sel0(3) <= SPI_data(2);
				Mezz_DAC_sel1(3) <= SPI_data(3);
				Mezz_ADC_DAC_nReset(3) <= SPI_data(4);
				Mezz_tcal_en(3) <= SPI_data(5);
				Mezz_Mux0(3) <= SPI_data(6);
				Mezz_Mux1(3) <= SPI_data(7);
				Mezz_ADC_nCS(3) <= SPI_data(8);
				Mezz_Mux_gain_0(3) <= SPI_data(9);
				Mezz_Mux_gain_1(3) <= SPI_data(10);
				
			WHEN b"101" =>
				Mezz_DRS4_o_denable(4) <= SPI_data(0);
				Mezz_nSHDN(4) <= SPI_data(1);
				Mezz_DAC_sel0(4) <= SPI_data(2);
				Mezz_DAC_sel1(4) <= SPI_data(3);
				Mezz_ADC_DAC_nReset(4) <= SPI_data(4);
				Mezz_tcal_en(4) <= SPI_data(5);
				Mezz_Mux0(4) <= SPI_data(6);
				Mezz_Mux1(4) <= SPI_data(7);
				Mezz_ADC_nCS(4) <= SPI_data(8);
				Mezz_Mux_gain_0(4) <= SPI_data(9);
				Mezz_Mux_gain_1(4) <= SPI_data(10);
				
			WHEN b"111" =>
				
				Mezz_DRS4_o_denable <= SPI_data(0) & SPI_data(0) & SPI_data(0) & SPI_data(0) & SPI_data(0);
				Mezz_nSHDN <= SPI_data(1) & SPI_data(1) & SPI_data(1) & SPI_data(1) & SPI_data(1);
				Mezz_DAC_sel0 <= SPI_data(2) & SPI_data(2) & SPI_data(2) & SPI_data(2) & SPI_data(2);
				Mezz_DAC_sel1 <= SPI_data(3) & SPI_data(3) & SPI_data(3) & SPI_data(3) & SPI_data(3);
				Mezz_ADC_DAC_nReset <= SPI_data(4) & SPI_data(4) & SPI_data(4) & SPI_data(4) & SPI_data(4);
				Mezz_tcal_en <= SPI_data(5)& SPI_data(5)& SPI_data(5)& SPI_data(5)& SPI_data(5);
				Mezz_Mux0 <= SPI_data(6) & SPI_data(6) & SPI_data(6) & SPI_data(6) & SPI_data(6);
				Mezz_Mux1 <= SPI_data(7)& SPI_data(7)& SPI_data(7)& SPI_data(7)& SPI_data(7);
				Mezz_ADC_nCS <= SPI_data(8)& SPI_data(8)& SPI_data(8)& SPI_data(8)& SPI_data(8);
				Mezz_Mux_gain_0 <= SPI_data(9)& SPI_data(9)& SPI_data(9)& SPI_data(9)& SPI_data(9);
				Mezz_Mux_gain_1 <= SPI_data(10)& SPI_data(10)& SPI_data(10)& SPI_data(10)& SPI_data(10);
			WHEN others =>
				Mezz_DRS4_o_denable <= Mezz_DRS4_o_denable;
				Mezz_nSHDN <= Mezz_nSHDN;
				Mezz_DAC_sel0 <= Mezz_DAC_sel0;
				Mezz_DAC_sel1 <= Mezz_DAC_sel1;
				Mezz_ADC_DAC_nReset <= Mezz_ADC_DAC_nReset;
				Mezz_tcal_en <= Mezz_tcal_en;
				Mezz_Mux0 <= Mezz_Mux0;
				Mezz_Mux1 <= Mezz_Mux1;
				Mezz_ADC_nCS <= Mezz_ADC_nCS;
				Mezz_Mux_gain_0 <= Mezz_Mux_gain_0;
				Mezz_Mux_gain_1 <= Mezz_Mux_gain_1;
		end case;
			
	end if;

end process;


---------------------------Select process--------------------
--- osoto mod
P3_monitor <= DRS4_A_buf(0);
E15_monitor <= DRS4_A_buf(1);
P6_monitor <= DRS4_A_buf(2);
E14_monitor <= DRS4_A_buf(3);
--- end osoto
process(Mux_sel)
begin
	Case Mux_sel is 
		WHEN b"001" => 
			---ADC 
			ADC_ch_out_sel <= Mezz1_ADC_ch_input_diff;
			ADC_LCLK_out <= ADC_LCLK_input_buff(0);
			ADC_ADCLK_out <= ADC_ADCLK_input_buff(0);
			---DRS4
			Mezz1_DRS4_o_A <= DRS4_A_buf;
			o_Mezz_DRS4_o_SRIN(0) <= DRS4_SRIN_buff;--osoto
			
		WHEN b"010" =>
			---ADC
			ADC_ch_out_sel <= Mezz2_ADC_ch_input_diff;
			ADC_LCLK_out <= ADC_LCLK_input_buff(1);
			ADC_ADCLK_out <= ADC_ADCLK_input_buff(1);
			
			---DRS4
			Mezz2_DRS4_o_A <= DRS4_A_buf;
			o_Mezz_DRS4_o_SRIN(1) <= DRS4_SRIN_buff;	--osoto
		WHEN b"011" =>
			---ADC
			ADC_ch_out_sel <= Mezz3_ADC_ch_input_diff;
			ADC_LCLK_out <= ADC_LCLK_input_buff(2);
			ADC_ADCLK_out <= ADC_ADCLK_input_buff(2);
			
			---DRS4
			Mezz3_DRS4_o_A <= DRS4_A_buf;
			o_Mezz_DRS4_o_SRIN(2) <= DRS4_SRIN_buff;--osoto
		WHEN b"100" =>
			---ADC
			ADC_ch_out_sel <= Mezz4_ADC_ch_input_diff;
			ADC_LCLK_out <= ADC_LCLK_input_buff(3);
			ADC_ADCLK_out <= ADC_ADCLK_input_buff(3);
			---DRS4
			Mezz4_DRS4_o_A <= DRS4_A_buf;
			o_Mezz_DRS4_o_SRIN(3) <= DRS4_SRIN_buff;--osoto
		WHEN b"101" =>
			---ADC
			ADC_ch_out_sel <= Mezz5_ADC_ch_input_diff;
			ADC_LCLK_out <= ADC_LCLK_input_buff(4);
			ADC_ADCLK_out <= ADC_ADCLK_input_buff(4);
			
			---DRS4
			Mezz5_DRS4_o_A <= DRS4_A_buf;
			o_Mezz_DRS4_o_SRIN(4) <= DRS4_SRIN_buff;--osoto
		WHEN b"111" => ---Broadcast to all mezzanines
		
			----------------DRS4-------------------
			Mezz1_DRS4_o_A <= DRS4_A_buf;
			Mezz2_DRS4_o_A <= DRS4_A_buf;
			Mezz3_DRS4_o_A <= DRS4_A_buf;
			Mezz4_DRS4_o_A <= DRS4_A_buf;
			Mezz5_DRS4_o_A <= DRS4_A_buf;
			o_Mezz_DRS4_o_SRIN(0) <= DRS4_SRIN_buff; --osoto
			o_Mezz_DRS4_o_SRIN(1) <= DRS4_SRIN_buff; --osoto
			o_Mezz_DRS4_o_SRIN(2) <= DRS4_SRIN_buff; --osoto
			o_Mezz_DRS4_o_SRIN(3) <= DRS4_SRIN_buff; --osoto
			o_Mezz_DRS4_o_SRIN(4) <= DRS4_SRIN_buff; --osoto
			
		WHEN OTHERS => 
			---ADC
			ADC_ch_out_sel <= Mezz1_ADC_ch_input_diff;
			ADC_LCLK_out <= ADC_LCLK_input_buff(0);
			ADC_ADCLK_out <= ADC_ADCLK_input_buff(0);
			
			---DRS4
			
		end case;
end process;
----------------------------------------


end architecture;