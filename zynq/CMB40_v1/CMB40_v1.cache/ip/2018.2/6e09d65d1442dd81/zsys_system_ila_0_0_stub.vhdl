-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Aug 17 13:21:55 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_system_ila_0_0_stub.vhdl
-- Design      : zsys_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_FIFO_READ_rd_data : in STD_LOGIC_VECTOR ( 96 downto 0 );
    SLOT_0_FIFO_READ_rd_en : in STD_LOGIC;
    SLOT_0_FIFO_READ_empty : in STD_LOGIC;
    SLOT_1_FIFO_WRITE_wr_data : in STD_LOGIC_VECTOR ( 96 downto 0 );
    SLOT_1_FIFO_WRITE_wr_en : in STD_LOGIC;
    SLOT_1_FIFO_WRITE_full : in STD_LOGIC;
    SLOT_2_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXIS_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXIS_tlast : in STD_LOGIC;
    SLOT_2_AXIS_tvalid : in STD_LOGIC;
    SLOT_2_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[31:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[2:0],probe6[7:0],probe7[0:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[0:0],probe12[3:0],SLOT_0_FIFO_READ_rd_data[96:0],SLOT_0_FIFO_READ_rd_en,SLOT_0_FIFO_READ_empty,SLOT_1_FIFO_WRITE_wr_data[96:0],SLOT_1_FIFO_WRITE_wr_en,SLOT_1_FIFO_WRITE_full,SLOT_2_AXIS_tdata[31:0],SLOT_2_AXIS_tstrb[3:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,resetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_f448,Vivado 2018.2";
begin
end;
