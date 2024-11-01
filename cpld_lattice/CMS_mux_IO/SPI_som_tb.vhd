
-- VHDL Test Bench Created from source file SPI_som.vhd -- Sat Mar 11 12:53:50 2023

--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Lattice recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "source->import"
-- menu in the ispLEVER Project Navigator to import the testbench.
-- Then edit the user defined section below, adding code to generate the 
-- stimulus for your design.
-- 3) VHDL simulations will produce errors if there are Lattice FPGA library 
-- elements in your design that require the instantiation of GSR, PUR, and
-- TSALL and they are not present in the testbench. For more information see
-- the How To section of online help.  
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 

	COMPONENT SPI_som
	PORT(
		MOSI_som : IN std_logic;
		MCLK_som : IN std_logic;
		CS_som : IN std_logic;          
		data_rec : OUT std_logic_vector(7 downto 0);
		data_rdy : OUT std_logic
		);
	END COMPONENT;

	SIGNAL MOSI_som :  std_logic;
	SIGNAL MCLK_som :  std_logic;
	SIGNAL CS_som :  std_logic;
	SIGNAL data_rec :  std_logic_vector(7 downto 0);
	SIGNAL data_rdy :  std_logic;

BEGIN

-- Please check and add your generic clause manually
	uut: SPI_som PORT MAP(
		MOSI_som => MOSI_som,
		MCLK_som => MCLK_som,
		CS_som => CS_som,
		data_rec => data_rec,
		data_rdy => data_rdy
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
   CS_som <= '1';
   MCLK_som <= '0';
   MOSI_som <= '0';
   wait for 10 ns;
	CS_som <= '0';
	MOSI_som <= '1';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '1';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '1';
	wait for 10 ns;
   MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '1';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	CS_som <= '1';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	wait for 100 ns;
	CS_som <= '0';
	MOSI_som <= '1';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '1';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '1';
	wait for 10 ns;
   MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '1';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	MOSI_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
	wait for 10 ns;
	MCLK_som <= '1';
	CS_som <= '1';
	wait for 10 ns;
	MCLK_som <= '1';
	wait for 10 ns;
	MCLK_som <= '0';
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
