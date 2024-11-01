
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- For Main Clock --
library machxo3d; 
use machxo3d.all;
--------------------

entity SPI_som is
	generic(
		word_lenght : integer := 14
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
end SPI_som;

architecture Behavioral of SPI_som is

signal data_in : std_logic_vector( word_lenght-1 downto 0) := (others => '0');
signal count_data : integer range 0 to word_lenght+1 := 0;
signal count_data_cpld : integer range 0 to word_lenght+1 := 0;
type SPI_type_states is (wait_start,receaving_data,end_bit);
type SPI_return_states is(idle, start_bit,sending, end_bit);
signal SPI_states_ack : SPI_return_states := idle;
signal SPI_states  : SPI_type_states := wait_start;
---constant ack_word : std_logic_vector(word_lenght-1 downto 0) := x"555"; --ack word when receive a data.
constant ack_word : std_logic_vector(word_lenght-1 downto 0) := "00010101010101"; --ack word when receive a data.
---constant ka_word: std_logic_vector(word_lenght-1 downto 0) := x"1d2"; --keep alive word.
constant ka_word: std_logic_vector(word_lenght-1 downto 0) := "00000111010010"; --keep alive word.
signal echo_word : std_logic_vector(word_lenght-1 downto 0);--send the last data that has been receive it.
signal data_cpld :std_logic_vector(word_lenght-1 downto 0);
signal data_rec : std_logic_vector(word_lenght-1 downto 0);
signal data_rdy_o,flag_end_reception,start_cpld_ans : std_logic;
begin

o_data_rec <= data_rec;
data_rdy <= data_rdy_o;
end_bit_state <= '1' when (SPI_states = end_bit) else '0';--osoto mod
process(MCLK_som)variable tmp_cnt : integer range 0 to word_lenght+1 := 0;
begin
if(CS_som = '1') then
	SPI_states <= wait_start;
	count_data <= 0;
	data_rdy_o <= '0';
	flag_end_reception <= '0';
elsif(rising_edge(MCLK_som)) then
		--data will be captured
		case SPI_states is
			when wait_start =>
				--Start bit '1' to get next state
				data_rdy_o <= '0';
				count_data <= 0;
				tmp_cnt := 0;
				flag_end_reception <= '0';
				data_in <= (others =>'0');
				if(CS_som = '0') then
					if(MOSI_som = '1') then
						SPI_states <= receaving_data;
					end if;
				end if;
			when receaving_data =>
				data_in <=  data_in(data_in'High-1 downto 0) & MOSI_som;
				tmp_cnt := count_data + 1;
				if(tmp_cnt = word_lenght) then --ready to receive the last bit 
					SPI_states <= end_bit;
					--count_data <= 0;
				else
					count_data <= tmp_cnt;
					data_rdy_o <= '0';
				end if;
			when end_bit =>	
				if(data_rdy_o = '1') then
					SPI_states <= wait_start;
				--end if;
				else 
					data_rdy_o <= '1';
					if(MOSI_som ='0') then --end bit confirmation
						data_rec <= data_in;
						echo_word <= data_in;							
					else	--Fail to receive stop bit- sent ka_word in answer.
						echo_word <= ka_word;
					end if;
				end if;
			when others =>
				SPI_states <= wait_start;
		end case;

end if;

end process;


-- Process to provided data to SOM 
-- Note that MCLK_som is on rising edge, so will be delayed one bit.
--Add states to process status word and send status of all the mezzanines. For ask about the status of all of them.
process(MCLK_som) 
begin	
	if(rising_edge(MCLK_som)) then
		case SPI_states_ack is
			when idle =>
				count_data_cpld <= 0;
				CS_CPLD <= '1';
				if(SPI_states = end_bit) then
					SPI_states_ack <= start_bit;
					CS_CPLD <= '0'; --chip_select 	
				end if;
			when start_bit => 
				MISO_som <= '1';
				SPI_states_ack <= sending;
				if(echo_word = ka_word) then --Receive keep alive word from SoM
					data_cpld <= ack_word;
				else
					data_cpld <=  echo_word; -- if not requested, CPLD send back the word that receive it.	
				end if;
			when sending =>			
				if(count_data_cpld = data_cpld'Length) then  
					--count_data_cpld <= 0;
					SPI_states_ack <= end_bit;
					MISO_som <= '0';
				else 
					MISO_som <= data_cpld(data_cpld'High); --sent msb bit
					data_cpld <= data_cpld(data_cpld'High-1 downto 0) & data_cpld(data_cpld'High); --shift register.
					count_data_cpld <= count_data_cpld +1;
				end if;
			when end_bit =>
				MISO_som <= '0';
				SPI_states_ack <= idle;
			when others =>
				SPI_states_ack <= idle;
		end case;
	end if;
end process;

end architecture;