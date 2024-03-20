
LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- For Main Clock --
library machxo3d; 
use machxo3d.all;
use IEEE.NUMERIC_STD.ALL;

entity uart_top is
generic
(
N_UNITS : integer := 32
);
port(
Uart_tx_P : out std_logic;
Uart_tx_N : out std_logic
);

end uart_top;

architecture Behavioral of uart_top is
constant freq_clk : string :="14.00";
constant freq_clk_num : integer := 14000000;
constant baud_rate : integer := 115200;
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

COMPONENT b13fifo
	PORT(
		Data : IN std_logic_vector(7 downto 0);
		WrClock : IN std_logic;
		RdClock : IN std_logic;
		WrEn : IN std_logic;
		RdEn : IN std_logic;
		Reset : IN std_logic;
		RPReset : IN std_logic;          
		Q : OUT std_logic_vector(7 downto 0);
		Empty : OUT std_logic;
		Full : OUT std_logic
		);
	END COMPONENT;

	SIGNAL Data :  std_logic_vector(7 downto 0);
	SIGNAL WrClock :  std_logic;
	SIGNAL RdClock :  std_logic;
	SIGNAL WrEn :  std_logic;
	SIGNAL RdEn :  std_logic;
	SIGNAL Reset :  std_logic;
	SIGNAL RPReset :  std_logic;
	SIGNAL Q :  std_logic_vector(7 downto 0);
	SIGNAL Empty :  std_logic;
	SIGNAL Full :  std_logic;
	SIGNAL AlmostEmpty :  std_logic;
	SIGNAL AlmostFull :  std_logic;
	SIGNAL ERROR :  std_logic_vector(1 downto 0);

type hexa is array (0 to 15) of character ;
constant to_hex_table: hexa := ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
-- convert to and hex representation of the given vector, hex is given as ascii
function to_hex(hex: std_logic_vector (7 downto 0)) return std_logic_vector is
	  variable answer: std_logic_vector(15 downto 0); 
	  variable a : std_logic_vector(7 downto 0);
	  variable b : std_logic_vector(7 downto 0);
	begin
	  a := std_logic_vector(to_unsigned(character'pos(to_hex_table(to_integer(unsigned(hex(3 downto 0))))),8));
	  b := std_logic_vector(to_unsigned(character'pos(to_hex_table(to_integer(unsigned(hex(7 downto 4))))),8));
	  answer := b & a;
	return answer;
end function;
  
COMPONENT Bench_top
	generic
	(
		N_UNITS : integer := 8;
		taps : std_logic_vector := B"00100001"
	);
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		load : IN std_logic;  
		Neg_enable_fifo: in std_logic;
		comp_out : OUT std_logic_vector(N_UNITS-1 downto 0);
		tmrErr_unit : OUT std_logic_vector(N_UNITS-1 downto 0);
		tmrErr_lfsr : OUT std_logic;
		change_report : OUT std_logic
		);
	END COMPONENT;

	SIGNAL comp_out :  std_logic_vector(N_UNITS-1 downto 0);
	SIGNAL tmrErr_unit :  std_logic_vector(N_UNITS-1 downto 0);
	SIGNAL tmrErr_lfsr :  std_logic;
	SIGNAL load_seed :  std_logic;
  
  

COMPONENT fifo2Uart
generic(
baud_rate : integer := 115200;
freq_clk : integer := 133000000
);
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		i_f_wr_en : IN std_logic;
		i_ascii : IN std_logic_vector(7 downto 0);
		i_UART_Rx : IN std_logic;
		i_fifo_dout : IN std_logic_vector(7 downto 0);
		i_fifo_empty : IN std_logic;
		i_fifo_full : IN std_logic;          
		o_fifo_full : OUT std_logic;
		o_UART_Tx : OUT std_logic;
		end_one_byte : OUT std_logic;
		o_serial_out : OUT std_logic_vector(7 downto 0);
		o_fifo_wr_en : OUT std_logic;
		o_fifo_rd_en : OUT std_logic;
		o_rst_fifo : OUT std_logic;
		o_fifo_din : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;


	SIGNAL clk :  std_logic;
	SIGNAL rst :  std_logic;
	SIGNAL i_f_wr_en :  std_logic;
	SIGNAL o_fifo_full :  std_logic;
	SIGNAL i_ascii :  std_logic_vector(7 downto 0);
	SIGNAL o_UART_Tx :  std_logic;
	SIGNAL i_UART_Rx :  std_logic;
	SIGNAL end_one_byte :  std_logic;
	SIGNAL o_serial_out :  std_logic_vector(7 downto 0);
	SIGNAL o_fifo_wr_en :  std_logic;
	SIGNAL o_fifo_rd_en :  std_logic;
	SIGNAL o_rst_fifo :  std_logic;
	SIGNAL o_fifo_din :  std_logic_vector(7 downto 0);
	SIGNAL i_fifo_dout :  std_logic_vector(7 downto 0);
	SIGNAL i_fifo_empty :  std_logic;
	SIGNAL i_fifo_full :  std_logic;
	signal osc_int : std_logic;
	--La idea es que N_UNITS sea multiplo de 8...si no no funciona.
	constant length_b13_array : integer := (N_UNITS*2)-1;
	constant length_TMR_comp_array : integer := N_UNITS/2;
	constant length_8_unit : integer:= N_UNITS/8;
	--constant test_b13_out : std_logic_vector(N_UNITS-1 downto 0):=X"12345678";
	--constant test_comp_out : std_logic_vector(N_UNITS-1 downto 0):=X"9ABCDEF1";
	----
	type Fifo_handler_ST is (idle, start_msg,seq_lfsr,seq_coma, seq_1ch, seq_2ch, seq_3ch,seq_4ch,seq_next,seq_fin);
	signal ST_fifo_handler : Fifo_handler_ST:= idle;
	signal b13_conv_hexa: std_logic_vector (15 downto 0);
	signal TMR_comparator_hex : std_logic_vector(15 downto 0);
	signal count_N_unis : integer range 0 to N_UNITS/8;
	SIGNAL flag_finish_b13 : STD_LOGIC := '1';
	signal Neg_enable_fifo : std_logic;
	signal rst_counter : integer range 0 to 1300:= 0;
	signal seed_counter : integer range 0 to 127:= 0;

	Component OLVDS
	port(
	A: in std_logic;
	Z: out std_logic;
	ZN: out std_logic
	);
	End component;
	
begin

OSCInst0:Component OSCJ -- synthesis translate_off 
GENERIC MAP( NOM_FREQ => freq_clk ) -- synthesis translate_on 
PORT MAP (
STDBY=> '0', 
OSC => osc_int, 
SEDSTDBY => open, 
OSCESB => open 
);


Neg_enable_fifo <= o_fifo_full;
WrEn <= o_fifo_wr_en;
RdEn <= o_fifo_rd_en;
i_fifo_empty <= Empty;
--uart_tx <= o_UART_Tx;

I2: OLVDS
port map( 
 A => o_UART_Tx,
 Z => Uart_tx_P,
 ZN => Uart_tx_N);



fifo: b13fifo PORT MAP(
		Data => o_fifo_din,
		WrClock => osc_int,
		RdClock => osc_int,
		WrEn => o_fifo_wr_en,
		RdEn => o_fifo_rd_en,
		Reset => rst,
		RPReset => RPReset,
		Q => i_fifo_dout,
		Empty => Empty,
		Full => Full);
		
		
bench_b13 : Bench_top 
	generic map(
	N_UNITS => N_UNITS,
	taps => B"00100001"
	)
	Port map
	(
		clk => osc_int,
		rst => rst,
		comp_out => comp_out,
		Neg_enable_fifo => Neg_enable_fifo,
		tmrErr_unit => tmrErr_unit,
		tmrErr_lfsr => tmrErr_lfsr,
		load => load_seed,
		change_report => flag_finish_b13
	);
	

fifoUart: fifo2Uart 
generic MAP(
baud_rate  => baud_rate,
freq_clk => freq_clk_num
)
PORT MAP(
		clk => osc_int,
		rst => rst,
		i_f_wr_en => i_f_wr_en,
		o_fifo_full => o_fifo_full,
		i_ascii => i_ascii,
		o_UART_Tx => o_UART_Tx,
		i_UART_Rx => i_UART_Rx,
		end_one_byte => end_one_byte,
		o_serial_out => o_serial_out,
		o_fifo_wr_en => o_fifo_wr_en,
		o_fifo_rd_en => o_fifo_rd_en,
		o_rst_fifo => o_rst_fifo,
		o_fifo_din => o_fifo_din,
		i_fifo_dout => i_fifo_dout,
		i_fifo_empty => Empty,
		i_fifo_full => Full
);
process(osc_int)
begin
if(rising_edge(osc_int)) then
	if(rst_counter <= 1288) then
		rst <= '1';
		rst_counter <= rst_counter +1;
	else
		rst <= '0';
		
	end if;
end if;

end process;
  
process(osc_int,rst)
begin
if(rst = '1') then	
	seed_counter <= 0;
elsif(rising_edge(osc_int)) then
	if(rst = '0') then
		
		if(seed_counter > 120) then
			seed_counter <= seed_counter;
		else
			seed_counter <= seed_counter +1;
		end if;
		if((seed_counter >= 80) and (seed_counter <= 100)) then
			load_seed <= '1';
		else
			load_seed <= '0';
		end if;
	end if;
end if;

end process;

process (osc_int,rst)
variable err_lfsr_concat: std_logic_vector(3 downto 0);
begin
if(rst = '1') then
	ST_fifo_handler <= idle;

elsif(rising_edge(osc_int))then
		i_f_wr_en <= '1';
		case ST_fifo_handler is
			WHEN idle => 
				if(o_fifo_full= '0') then
					if(flag_finish_b13 = '1') then	
						count_N_unis <= 0;
						ST_fifo_handler <= start_msg;
						i_ascii <= X"23"; --This is for init seq #
						
						
					else
						i_f_wr_en <= '0';
					end if;
				end if;
			WHEN start_msg =>
					if(count_N_unis = 0 ) then 
						ST_fifo_handler <= seq_lfsr;
					else
						ST_fifo_handler <= seq_1ch;
					end if;
					b13_conv_hexa <= to_hex(comp_out(((count_N_unis+1)*8-1) downto count_N_unis*8));
					TMR_comparator_hex <= to_hex(tmrErr_unit(((count_N_unis+1)*8-1) downto count_N_unis*8));
			WHEN seq_lfsr =>
				if(o_fifo_full= '0') then
					err_lfsr_concat := "000" & tmrErr_lfsr;
					i_ascii <= std_logic_vector(to_unsigned(character'pos(to_hex_table(to_integer(unsigned(err_lfsr_concat)))),8));
					ST_fifo_handler <= seq_coma;
				end if;
			WHEN seq_coma =>
				if(o_fifo_full= '0') then
					i_ascii <= X"2C";
					ST_fifo_handler <= seq_1ch;
				end if;
			WHEN seq_1ch =>
				if(o_fifo_full= '0') then
					
					i_ascii <= b13_conv_hexa(15 downto 8);
					ST_fifo_handler <= seq_2ch;
				end if;
			WHEN seq_2ch =>
				if(o_fifo_full= '0') then
					i_ascii <= b13_conv_hexa(7 downto 0);
					ST_fifo_handler <= seq_3ch;
				end if;
			WHEN seq_3ch =>
				if(o_fifo_full= '0') then
					i_ascii <= TMR_comparator_hex(15 downto 8);
					ST_fifo_handler <= seq_4ch;
				end if;
			WHEN seq_4ch =>
				if(o_fifo_full= '0') then
					i_ascii <= TMR_comparator_hex(7 downto 0);
					ST_fifo_handler <= seq_next;
				end if;
			WHEN seq_next =>
				if(o_fifo_full= '0') then
					if(count_N_unis = (N_UNITS/8-1)) then
						ST_fifo_handler <= seq_fin;
						i_ascii <= X"2A"; --Send * the final character to UART fifo.
					else
						i_ascii <= X"2C"; -- "," character to go to next convertion and send to UART FIFO
						count_N_unis <= count_N_unis+1;
						ST_fifo_handler <= start_msg;
						
					end if;
				end if;
			WHEN seq_fin =>
				if(o_fifo_full= '0') then
					i_ascii <= X"0A";-- Send \n to uart
					ST_fifo_handler <= idle;
				end if;
			WHEN others =>
				ST_fifo_handler <= idle;
		end case;
end if;
end process;



  
end Behavioral;
