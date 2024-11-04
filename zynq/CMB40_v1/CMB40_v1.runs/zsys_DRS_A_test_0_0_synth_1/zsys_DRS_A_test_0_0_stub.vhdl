-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
-- Date        : Mon Nov  4 01:05:13 2024
-- Host        : lapepuat11 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_DRS_A_test_0_0_stub.vhdl
-- Design      : zsys_DRS_A_test_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    A_vec : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_RSRLOAD : in STD_LOGIC;
    i_SRIN : in STD_LOGIC;
    i_dwrite : in STD_LOGIC;
    i_SRCLK : in STD_LOGIC;
    i_en_test : in STD_LOGIC;
    i_nrst : in STD_LOGIC;
    o_A_vec : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_RSRLOAD : out STD_LOGIC;
    o_dwrite : out STD_LOGIC;
    o_SRCLK : out STD_LOGIC;
    o_SRIN : out STD_LOGIC;
    i_clk : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A_vec[3:0],i_RSRLOAD,i_SRIN,i_dwrite,i_SRCLK,i_en_test,i_nrst,o_A_vec[3:0],o_RSRLOAD,o_dwrite,o_SRCLK,o_SRIN,i_clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DRS_A_test,Vivado 2018.2.2";
begin
end;
