--osoto mod
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- For Main Clock --
library machxo3d; 
use machxo3d.all;

entity heartbeat is
port (
        stdby     : in  std_logic;  -- Señal de standby
        rst       : in  std_logic;  -- Señal de reset
        heartbeat : out std_logic   -- Señal de salida en P3 (5.115 MHz)
    );
end heartbeat;

architecture Behavioral of heartbeat is

  
    COMPONENT OSCH   -- Componente del oscilador interno (10.23 MHz)
    GENERIC (NOM_FREQ: string := "10.23"); 
	
    PORT (STDBY : IN std_logic;
              OSC : OUT std_logic
                );    
    END COMPONENT;

    signal clk_internal : std_logic;
    signal divided_clk  : std_logic := '0';

begin

    Clock_inst: OSCH     -- Instancia del oscilador interno
	GENERIC MAP( NOM_FREQ => "10.23" )    

	PORT MAP (  STDBY => stdby,
                OSC => clk_internal
    );    
    process(clk_internal, rst)    -- Proceso para dividir la señal de reloj de 10.23 MHz a 5.115 MHz
    begin
        if rst = '1' then
            divided_clk <= '0';
        elsif rising_edge(clk_internal) then
            divided_clk <= not divided_clk;  -- Alternar la señal de salida a cada ciclo del reloj
        end if;
    end process;

    heartbeat <= divided_clk;     -- Asigna la señal dividida (5.115 MHz) a la salida

end Behavioral;
--end osoto