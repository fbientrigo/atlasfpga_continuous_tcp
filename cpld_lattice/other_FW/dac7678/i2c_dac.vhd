LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
USE ieee.std_logic_unsigned.all;

entity i2c_dac is
generic(
	clk_freq : integer := 14000000; --clock of lattice machox3d
	baud_rate: integer := 200000 --ksps in F/S mode.
	);
PORT(

	clk_i : in std_logic; --Input clock of the module, should be same frequency has clk_freq
	rst_i: in std_logic; --general reset of the module
	SDA_t: out std_logic; --Enable read, disable output buffer
	SDA_o: out std_logic;
	SDA_i: in std_logic;
	SCL_o: out std_logic;
	ena_read: in std_logic;
	ena_write: in std_logic;
	update_i : in std_logic;
	nLDAC_o: out std_logic; -- For sincronous updates pull down to gnd
	ADDR0_o: out std_logic; -- Select between 3 dacs, 1, 0 or floating. Schmeatic had pulldown on this pin so cant be float.
	ADDR1_o: out std_logic; -- Select between 3 dacs, 1, 0 or floating. Schmeatic had pulldown on this pin so cant be float.
	ADDR0_sel_i: in std_logic; -- set to 0 or 1 depending on which DAC will be controlled. (up to 3 if left float but is already pull up on PCB)
	data_byte_i : in std_logic_vector(7 downto 0); --Para los 8 canales, el bit adicional "1111" es para broadcasts
	read_byte_o: out std_logic_vector(7 downto 0); -- for read data from dac7868
	SCLK_c_test : out std_logic_vector(3 downto 0); -- test para saber counter de SCLK y coordinar con a simulacion el ACK
	Fail_ACK: out std_logic
);

end i2c_dac;

architecture Behavioral of i2c_dac is
--- signal declarations:
constant FREQ_count : natural := (clk_freq/baud_rate-1)/2;
constant ena_internal_vref : std_logic_vector(15 downto 0) := "0000000000010000"; -- data bytes
constant command_byte2 : std_logic_vector(3 downto 0):= "0011";
constant enable_internal_voltage : std_logic_vector (3 downto 0) := "1000";
constant ACK_F_COUNT : integer := 10; -- Cuenta veces que se intento recibir un ACK desde el dac


type i2c_master_states IS ( ms_idle, ms_start,ms_start_read, ms_send_data,ms_stop,ms_ack);
signal i2c_states : i2c_master_states;
signal o_sclk: std_logic; --to operate inside process, then assign to output 
signal SDA_W,SDA_R:std_logic;--signals to read or write. SDA_i or SDA_o

signal update_1,update_2, update_pulse: std_logic;
signal init_1, init_2,init_pulse:std_logic;
signal ena_read_1,ena_read_2, ena_read_pulse: std_logic;
subtype integer_0_100 IS INTEGER RANGE 0 to 255; -- Para ajustar la frecuencia de envio de datos del DAC
subtype integer_0_20 IS INTEGER RANGE 0 to 20; -- Tipo para cuenta de cantos de subida de SCLK
signal Addr_byte : std_logic_vector(7 downto 0); --7 bits de dirección, ultimo bit es de lectura o escritura
signal ComAcc_byte: std_logic_vector(7 downto 0);--Command Access byte
signal Data_byte: std_logic_vector(7 downto 0);
signal freq_counter: integer_0_100;
signal SCLK_counter: integer_0_100;
signal sda_ena_r : std_logic;
signal ca_byte : std_logic_vector(7 downto 0 );
signal access_byte2 : std_logic_vector(3 downto 0);
signal rec_ack_ok : std_logic;
signal ack_counter: integer_0_100; -- Para contar tiempo en que ACK fue valido.
signal clk_delay1,clk_delay2: std_logic; -- Para detectar cantos de bajada
signal initialize_dac : std_logic;
signal ack_fail_counter:integer_0_100;
signal repeat_comm: std_logic;
signal i_sda: std_logic;
signal o_sda: std_logic;

BEGIN

--Definición de salida para los DACS. Si ADDR0_sel_i = 0 entonces las instrcciones van para ADDR0_o, en otro caso es para ADDR1_o;
ADDR0_o <= '0'; 
ADDR1_o <= '1';
i_sda <= SDA_i;
SDA_o <= o_sda;
pulse_detec: -- debouncing inputs to generate a single pulse only
--En el caso que quiera escribir por SDA dado que es inout

--SDA_t <= SDA_W when (sda_ena_r = '0') else ('Z');
SCL_o <= o_sclk;
nLDAC_o <= '0';

process(clk_i,rst_i)
begin
	if (rst_i = '1') then
		update_1 <= '0';
		update_2 <= '0';
		update_pulse <= '0';

	elsif rising_edge (clk_i) then
		update_1 <= update_i;
		update_2 <= update_1;
		update_pulse <= update_1 and (not update_2);
			
	else
		
	end if;

end process;


SCLK_c_test <= std_logic_vector(to_unsigned(SCLK_counter, SCLK_c_test'length));

i2c_comm:
process(clk_i,rst_i)
--variable SCLK_counter : integer_0_12;	
	begin
		if(rst_i = '1') then
			i2c_states <= ms_idle;
	    elsif rising_edge (clk_i) then
			--Addr_byte <= "10010"& ADDR0_sel_i & "0" & enable_read_i; -- enable_read_i = 0 habilita lectura del DAC, enable_read_i = 1 habilita escritura que es lo que más se usará.
			clk_delay1 <= o_sclk;
			clk_delay2 <= clk_delay1;

			CASE i2c_states IS
				WHEN ms_idle =>
					SDA_W <= '0';
					sda_ena_r <= '0';
					ack_fail_counter <= 0;
					o_sclk <= '0';
					SDA_R <= '0';
					SCLK_counter <= 0;
					rec_ack_ok <= '0';
					clk_delay2 <= '0';
					clk_delay1 <= '0';
					Fail_ACK <= '0';
					if (update_pulse ='1') then --Se solicita envío de nuevos datos hacia el DAC. Un canal a la vez
						i2c_states <= ms_start;
						SDA_W <= '1';
					elsif (ena_read_pulse = '1') then
						i2c_states <= ms_start_read;--Definir lectura 
					else 
						i2c_states <= i2c_states;
					end if;	
					
					
				WHEN ms_start =>
					--Inicialización de señales con entradas
					sda_ena_r <= '0'; --desHabilito lectura de SDA_t
					SCLK_counter <= 0;
					
						if(freq_counter >= (FREQ_count)) then
							SDA_W <= '0'; -- condicion de inicio de comunicacion
						else	
							SDA_W <= '1';
						end if;
						
						if(freq_counter >= FREQ_count*2) then --Siguiente estado, envío de datos de addr
							if(ena_read = '1') then -- lectura de datos desde i2c
							
							end if;
							if(ena_write = '1') then	
								o_sclk <= '0'; --Fin del bit de inicio de comunicación
								freq_counter <= 0;
								i2c_states <= ms_send_data;
								Data_byte <= data_byte_i;-- En este punto almaceno los bits que se desean enviar 
							end if;
						else	
							freq_counter <= freq_counter + 1;					
							o_sclk <= '1';
							i2c_states <= ms_start;
						end if;

				WHEN ms_send_data =>
					--Dos opciones en este estado, elegir DAC 1 o DAC 0 
					
					if (freq_counter < FREQ_count) then
						freq_counter <= freq_counter + 1; 
					else 
						o_sclk <= not o_sclk;
						freq_counter <= 0; 
					end if;
					--Condicion para setear SDA en ciclo bajo de sclk 
					if (o_sclk <= '0' and freq_counter = (FREQ_count/2) and (SCLK_counter <= 7)) then
						SDA_W <= Data_byte(7-SCLK_counter);

					elsif ((clk_delay1 = '0' and o_sclk = '1') and (SCLK_counter <=8)) then--Canto de subida de SCL
						SCLK_counter <= SCLK_counter + 1; -- Incremento la cantidad de SCLK ciclos asignación al final del clock
					else
						SDA_W <= SDA_W;
					end if;
					
					if( SCLK_counter = 8 and freq_counter = (FREQ_count/2) and o_sclk = '0') then	-- canto de subida
							sda_ena_r <= '1'; --Habilito lectura de SDA_t esto es para habilitar el canal antes de pasar al estado siguiente
					end if;
					if( SCLK_counter = 8 and (clk_delay1 = '0' and o_sclk = '1')) then	-- canto de subida
						i2c_states <= ms_ack;-- Estado de espera del ACK del ADDR
						freq_counter <= 0;
						ack_counter <= 0;
						SDA_W <= '0';
						SDA_t <= '1';

					end if;
				WHEN ms_ack =>
					SDA_t <= '1'; --Habilito lectura de SDA_t
					SDA_R <= i_sda;

					if(rec_ack_ok = '0') then --Esperando el ACK correcto
						if (freq_counter < FREQ_count) then
							freq_counter <= freq_counter + 1; 
						else 
							freq_counter <= 0; 
							o_sclk <= not o_sclk;
						end if;
					else -- Si ocurre el ACK agrego un canto estado de low adiciona en SCL de acuerdo al manual.
						if (freq_counter < FREQ_count*3) then
							freq_counter <= freq_counter + 1; 
							o_sclk <= '0';
						else 
							rec_ack_ok <= '0';
							SCLK_counter <= 0;
							freq_counter <= 0; 
							if( ack_counter >= (FREQ_count/2)) then
								ack_counter <= 0;
								i2c_states <= ms_stop; --OK ACK cuando ocurre un ciclo	
								sda_ena_r <= '0';			
							else					
								i2c_states <= ms_stop; --repetir secuencia	
								sda_ena_r <= '0';
								repeat_comm <= '1';
								ack_fail_counter <= ack_fail_counter + 1;
							end if;
							
						end if;
					end if;
					
					if( o_sclk = '1' and rec_ack_ok = '0' ) then
						
						if(SDA_R = '0') then --ACK OK
								ack_counter <= ack_counter +1;
						else	
								ack_counter <= ack_counter;
						end if;
							
						
					end if;
					if((clk_delay1 = '1' and o_sclk = '0')) then	--Esto ocurre al final del estado. canto de bajada SCL
						rec_ack_ok <= '1';
					end if;
				
				WHEN ms_stop =>
					if(freq_counter >= (FREQ_count/2)) then
						sda_w <= '1'; -- condicion de FIN de comunicacion
					else	
						sda_w <= '0';
					end if;
					if (initialize_dac = '1') then
						initialize_dac <= '0';
					end if;
					
					if(freq_counter >= FREQ_count) then --Siguiente estado, envío de datos de addr
						if(repeat_comm = '0') then
							o_sclk <= '0'; --Fin del bit de inicio de comunicación
							freq_counter <= 0;
							i2c_states <= ms_idle;
						else
							o_sclk <= '0'; --Repetir secuencia por error en ACK
							freq_counter <= 0;
							i2c_states <= ms_start;
							repeat_comm <= '0';
						end if;
					else	
						freq_counter <= freq_counter + 1;					
						o_sclk <= '1';
						i2c_states <= ms_stop;
					end if;
				WHEN OTHERS => 
					i2c_states <= ms_idle;
			end case;
		else
			i2c_states <= i2c_states;
		end if;
		
end process;

END Behavioral;