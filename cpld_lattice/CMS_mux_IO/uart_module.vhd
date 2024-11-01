library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart is
    generic (
        CLK_FREQ : integer := 10230000;  -- Frecuencia del reloj en Hz (10.23 MHz)
        BAUD_RATE : integer := 9600      -- Velocidad en baudios
    );
    port (
        clk   : in  std_logic;           -- Reloj principal
        rst   : in  std_logic;           -- Reset
        rx    : in  std_logic;           -- Entrada de recepción UART
        tx    : out std_logic;           -- Salida de transmisión UART
        data_in  : in  std_logic_vector(7 downto 0);  -- Datos a enviar
        data_out : out std_logic_vector(7 downto 0);  -- Datos recibidos
        tx_start : in  std_logic;        -- Señal para iniciar transmisión
        tx_busy  : out std_logic         -- Indica que la transmisión está en curso
    );
end uart;

architecture Behavioral of uart is

    -- Constante que calcula el divisor para el baud rate
    constant BAUD_DIV : integer := CLK_FREQ / BAUD_RATE;

    -- Señales internas
    signal baud_counter : integer := 0;
    signal baud_tick : std_logic := '0';

    -- Transmisión
    signal tx_shift_reg : std_logic_vector(9 downto 0);  -- 1 bit start, 8 bits data, 1 bit stop
    signal tx_bit_counter : integer range 0 to 9 := 0;
    signal tx_state : std_logic := '0';

    -- Recepción
    signal rx_shift_reg : std_logic_vector(7 downto 0) := (others => '0');
    signal rx_bit_counter : integer range 0 to 7 := 0;
    signal rx_busy : std_logic := '0';

begin

    -- Generación del baud rate tick (divisor)
    process(clk)
    begin
        if rising_edge(clk) then
            if baud_counter = BAUD_DIV / 2 then
                baud_tick <= '1';
                baud_counter <= 0;
            else
                baud_tick <= '0';
                baud_counter <= baud_counter + 1;
            end if;
        end if;
    end process;

    -- Transmisión UART
    process(clk, rst)
    begin
        if rst = '1' then
            tx <= '1';  -- Línea de transmisión inactiva (idle = 1)
            tx_state <= '0';
            tx_busy <= '0';
            tx_bit_counter <= 0;
        elsif rising_edge(clk) then
            if baud_tick = '1' then
                case tx_state is
                    when '0' =>  -- Estado inactivo
                        if tx_start = '1' then
                            tx_shift_reg <= '0' & data_in & '1';  -- Start bit (0), data, stop bit (1)
                            tx_state <= '1';
                            tx_busy <= '1';
                        end if;
                    when '1' =>  -- Estado de transmisión
                        if tx_bit_counter < 10 then
                            tx <= tx_shift_reg(0);
                            tx_shift_reg <= tx_shift_reg(9 downto 1) & '0';
                            tx_bit_counter <= tx_bit_counter + 1;
                        else
                            tx <= '1';  -- Línea idle
                            tx_state <= '0';
                            tx_busy <= '0';
                            tx_bit_counter <= 0;
                        end if;
                    when others =>
                        tx_state <= '0';
                end case;
            end if;
        end if;
    end process;

    -- Recepción UART
    process(clk, rst)
    begin
        if rst = '1' then
            data_out <= (others => '0');
            rx_busy <= '0';
            rx_bit_counter <= 0;
        elsif rising_edge(clk) then
            if baud_tick = '1' then
                if rx = '0' and rx_busy = '0' then  -- Detectar bit de inicio
                    rx_busy <= '1';
                    rx_bit_counter <= 0;
                elsif rx_busy = '1' then
                    if rx_bit_counter < 8 then
                        rx_shift_reg <= rx & rx_shift_reg(7 downto 1);  -- Captura el bit
                        rx_bit_counter <= rx_bit_counter + 1;
                    else
                        data_out <= rx_shift_reg;  -- Transferir datos recibidos
                        rx_busy <= '0';  -- Fin de la recepción
                    end if;
                end if;
            end if;
        end if;
    end process;

end Behavioral;
