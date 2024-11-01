--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_3419_wrapper.bd
--Design : bd_3419_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_3419_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end bd_3419_wrapper;

architecture STRUCTURE of bd_3419_wrapper is
  component bd_3419 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_3419;
begin
bd_3419_i: component bd_3419
     port map (
      clk => clk,
      probe0(0) => probe0(0)
    );
end STRUCTURE;
