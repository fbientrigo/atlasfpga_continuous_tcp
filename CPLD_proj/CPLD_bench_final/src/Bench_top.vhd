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

entity Bench_top is
	generic (
		N_UNITS : integer := 8;
		taps : std_logic_vector := B"00100001"
	);
    port (
		clk         : in std_logic;
		rst         : in std_logic;
		Neg_enable_fifo: in std_logic;
		comp_out    : out std_logic_vector ( N_UNITS-1 downto 0 );
		tmrErr_unit : out std_logic_vector ( N_UNITS-1 downto 0 );
		tmrErr_lfsr : out std_logic;
		-- lfsr
		load        : in std_logic;
		change_report: out std_logic
    );
end Bench_top;


architecture Behavioral of Bench_top is


----------------------------------------------------------

signal nReset: std_logic; -- Reloj interno CPLD.

-- Constants
constant all_ones : std_logic_vector(N_UNITS-1 downto 0) := (others => '1');
constant all_zeros : std_logic_vector(N_UNITS-1 downto 0) := (others => '0');

--
signal compErr : std_logic;
signal data_in : std_logic_vector ( 7 downto 0 );
signal seed    : std_logic_vector ( 7 downto 0 ) := B"00110001";
signal comp_out_buf : std_logic_vector ( N_UNITS-1 downto 0 );
signal tmrErr_unit_buf : std_logic_vector ( N_UNITS-1 downto 0 );
signal tmrErr_lfsr_buf : std_logic;
signal change_report_comp : std_logic;
signal counter_update : integer range 0 to 127 := 0;
signal change_rep : std_logic_vector(N_UNITS-1 downto 0);


component single_unit is
	port (
		clock   : in std_logic;
		eoc_b13	: in std_logic;
		reset   : in std_logic;
		data_in : in std_logic_vector ( 7 downto 0 );
		output  : out std_logic;
		tmrErr  : out std_logic;
		change_rep: out std_logic
	);
end component;

component lfsrTMR is
	generic( 
		 -- Tap vector: a TRUE means that position is tapped, otherwise that position is untapped.
		taps : std_logic_vector
	);
	port(
		nReset,clk : in std_ulogic;
		load : in std_logic;
		seed : in std_logic_vector( taps'high downto 0 );
		q    : out std_logic_vector( taps'high downto 0 );
		tmrErr : out std_logic
	);
end component lfsrTMR;
--Conversion to hexa en ascii code.

begin


nReset <= not rst;


-- TMR Galois LFSR instantiation
LFSR1: lfsrTMR
	generic map (
		taps => taps
	)
	port map (
		clk    => clk,
		nReset => nReset,
		load   => load,
		seed   => seed,
		q      => data_in,
		tmrErr => tmrErr_lfsr_buf
	);

-- B13 single units generation
GEN_SUNIT:
for I in 0 to N_UNITS-1 generate
	SUX: single_unit
		port map (
			clock   => clk,
			reset   => rst,
			eoc_b13	=> Neg_enable_fifo,
			data_in => data_in,
			output  => comp_out_buf(I),
			tmrErr  => tmrErr_unit_buf(I),
			change_rep => change_rep(I)
	);
end generate GEN_SUNIT;

-- Comparator reset logic (combinational)
-- Esta todo negado.....



process ( comp_out_buf )
begin

	if comp_out_buf = all_ones then
		compErr <= '1';  -- Cambiar por 1, todos en 1 => que las comparaciones son iguales.
	else
		compErr <= '0';
	end if;
end process;


-- Process with a counter to trigger fifo updates at regular times.
process(clk,rst)

begin
	if(rst = '1') then
		counter_update <= 0;
	elsif(rising_edge(clk)) then
		if(change_rep /= all_zeros) then
			counter_update <= 0;
			change_report_comp <= '1';
		elsif(counter_update >= 110) then
			change_report_comp <= '1';
		else
			change_report_comp <= '0';
			counter_update <= counter_update + 1;
		end if;
	end if;

end process;

change_report <= change_report_comp;
comp_out    <= comp_out_buf;
tmrErr_lfsr <= tmrErr_lfsr_buf;
tmrErr_unit <= tmrErr_unit_buf;
	
	 
end Behavioral;