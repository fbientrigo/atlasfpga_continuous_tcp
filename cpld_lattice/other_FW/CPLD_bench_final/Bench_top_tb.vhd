
-- VHDL Test Bench Created from source file Bench_top.vhd -- Mon Aug 29 16:30:52 2022

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

	COMPONENT Bench_top
	PORT(
		entrada_rst : IN std_logic;
		load : IN std_logic;          
		comp_out : OUT std_logic_vector(7 downto 0);
		tmrErr_unit : OUT std_logic_vector(7 downto 0);
		tmrErr_lfsr : OUT std_logic
		);
	END COMPONENT;

	SIGNAL entrada_rst :  std_logic;
	SIGNAL comp_out :  std_logic_vector(7 downto 0);
	SIGNAL tmrErr_unit :  std_logic_vector(7 downto 0);
	SIGNAL tmrErr_lfsr :  std_logic;
	SIGNAL load :  std_logic;

BEGIN

-- Please check and add your generic clause manually
	uut: Bench_top PORT MAP(
		entrada_rst => entrada_rst,
		comp_out => comp_out,
		tmrErr_unit => tmrErr_unit,
		tmrErr_lfsr => tmrErr_lfsr,
		load => load
	);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
