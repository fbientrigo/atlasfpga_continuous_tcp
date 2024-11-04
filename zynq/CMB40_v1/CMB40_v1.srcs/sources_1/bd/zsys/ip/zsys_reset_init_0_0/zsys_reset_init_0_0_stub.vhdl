-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
-- Date        : Mon Nov  4 01:05:15 2024
-- Host        : lapepuat11 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/osotosan/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_reset_init_0_0/zsys_reset_init_0_0_stub.vhdl
-- Design      : zsys_reset_init_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zsys_reset_init_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : out STD_LOGIC;
    input_start : in STD_LOGIC
  );

end zsys_reset_init_0_0;

architecture stub of zsys_reset_init_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,input_start";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "reset_init,Vivado 2018.2.2";
begin
end;
