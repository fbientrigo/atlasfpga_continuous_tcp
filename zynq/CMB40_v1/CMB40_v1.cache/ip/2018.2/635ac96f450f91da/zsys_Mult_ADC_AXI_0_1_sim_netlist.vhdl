-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Nov 22 16:15:31 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_Mult_ADC_AXI_0_1_sim_netlist.vhdl
-- Design      : zsys_Mult_ADC_AXI_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_M_ADC_readout is
  port (
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RST : out STD_LOGIC;
    o_data_out_ch1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_Lclk : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    i_ADclk : in STD_LOGIC;
    i_data_in_ch0_p : in STD_LOGIC;
    i_data_in_ch0_n : in STD_LOGIC;
    i_data_in_ch1_p : in STD_LOGIC;
    i_data_in_ch1_n : in STD_LOGIC;
    i_data_in_ch2_p : in STD_LOGIC;
    i_data_in_ch2_n : in STD_LOGIC;
    i_data_in_ch3_p : in STD_LOGIC;
    i_data_in_ch3_n : in STD_LOGIC;
    i_data_in_ch4_p : in STD_LOGIC;
    i_data_in_ch4_n : in STD_LOGIC;
    i_data_in_ch5_p : in STD_LOGIC;
    i_data_in_ch5_n : in STD_LOGIC;
    i_data_in_ch6_p : in STD_LOGIC;
    i_data_in_ch6_n : in STD_LOGIC;
    i_data_in_ch7_p : in STD_LOGIC;
    i_data_in_ch7_n : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_M_ADC_readout;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_M_ADC_readout is
  signal \^rst\ : STD_LOGIC;
  signal bitslip_even : STD_LOGIC;
  signal bitslip_odd : STD_LOGIC;
  signal NLW_iserdes0_even_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes0_odd_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes0_odd_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes0_odd_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes1_n_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes1_n_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes1_n_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes1_p_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes1_p_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes1_p_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes2_n_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes2_n_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes2_n_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes2_p_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes2_p_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes2_p_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes3_n_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes3_n_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes3_n_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes3_p_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes3_p_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes3_p_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes4_n_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes4_n_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes4_n_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes4_p_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes4_p_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes4_p_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes5_n_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes5_n_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes5_n_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes5_p_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes5_p_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes5_p_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes6_n_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes6_n_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes6_n_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes6_p_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes6_p_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes6_p_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes7_n_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes7_n_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes7_n_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes7_p_O_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of iserdes0_even : label is "PRIMITIVE";
  attribute box_type of iserdes0_odd : label is "PRIMITIVE";
  attribute box_type of iserdes1_n : label is "PRIMITIVE";
  attribute box_type of iserdes1_p : label is "PRIMITIVE";
  attribute box_type of iserdes2_n : label is "PRIMITIVE";
  attribute box_type of iserdes2_p : label is "PRIMITIVE";
  attribute box_type of iserdes3_n : label is "PRIMITIVE";
  attribute box_type of iserdes3_p : label is "PRIMITIVE";
  attribute box_type of iserdes4_n : label is "PRIMITIVE";
  attribute box_type of iserdes4_p : label is "PRIMITIVE";
  attribute box_type of iserdes5_n : label is "PRIMITIVE";
  attribute box_type of iserdes5_p : label is "PRIMITIVE";
  attribute box_type of iserdes6_n : label is "PRIMITIVE";
  attribute box_type of iserdes6_p : label is "PRIMITIVE";
  attribute box_type of iserdes7_n : label is "PRIMITIVE";
  attribute box_type of iserdes7_p : label is "PRIMITIVE";
begin
  RST <= \^rst\;
  bitslip_even <= 'Z';
  bitslip_odd <= 'Z';
iserdes0_even: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_even,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch0_n,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes0_even_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch0(8),
      Q2 => o_data_out_ch0(9),
      Q3 => o_data_out_ch0(10),
      Q4 => o_data_out_ch0(11),
      Q5 => o_data_out_ch0(12),
      Q6 => o_data_out_ch0(13),
      Q7 => o_data_out_ch0(14),
      Q8 => o_data_out_ch0(15),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED
    );
iserdes0_even_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^rst\
    );
iserdes0_odd: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "TRUE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_odd,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch0_p,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes0_odd_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch0(0),
      Q2 => o_data_out_ch0(1),
      Q3 => o_data_out_ch0(2),
      Q4 => o_data_out_ch0(3),
      Q5 => o_data_out_ch0(4),
      Q6 => o_data_out_ch0(5),
      Q7 => o_data_out_ch0(6),
      Q8 => o_data_out_ch0(7),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes0_odd_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes0_odd_SHIFTOUT2_UNCONNECTED
    );
iserdes1_n: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_even,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch1_n,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes1_n_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch1(8),
      Q2 => o_data_out_ch1(9),
      Q3 => o_data_out_ch1(10),
      Q4 => o_data_out_ch1(11),
      Q5 => o_data_out_ch1(12),
      Q6 => o_data_out_ch1(13),
      Q7 => o_data_out_ch1(14),
      Q8 => o_data_out_ch1(15),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes1_n_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes1_n_SHIFTOUT2_UNCONNECTED
    );
iserdes1_p: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "TRUE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_odd,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch1_p,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes1_p_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch1(0),
      Q2 => o_data_out_ch1(1),
      Q3 => o_data_out_ch1(2),
      Q4 => o_data_out_ch1(3),
      Q5 => o_data_out_ch1(4),
      Q6 => o_data_out_ch1(5),
      Q7 => o_data_out_ch1(6),
      Q8 => o_data_out_ch1(7),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes1_p_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes1_p_SHIFTOUT2_UNCONNECTED
    );
iserdes2_n: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_even,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch2_n,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes2_n_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch2(8),
      Q2 => o_data_out_ch2(9),
      Q3 => o_data_out_ch2(10),
      Q4 => o_data_out_ch2(11),
      Q5 => o_data_out_ch2(12),
      Q6 => o_data_out_ch2(13),
      Q7 => o_data_out_ch2(14),
      Q8 => o_data_out_ch2(15),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes2_n_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes2_n_SHIFTOUT2_UNCONNECTED
    );
iserdes2_p: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "TRUE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_odd,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch2_p,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes2_p_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch2(0),
      Q2 => o_data_out_ch2(1),
      Q3 => o_data_out_ch2(2),
      Q4 => o_data_out_ch2(3),
      Q5 => o_data_out_ch2(4),
      Q6 => o_data_out_ch2(5),
      Q7 => o_data_out_ch2(6),
      Q8 => o_data_out_ch2(7),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes2_p_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes2_p_SHIFTOUT2_UNCONNECTED
    );
iserdes3_n: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_even,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch3_n,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes3_n_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch3(8),
      Q2 => o_data_out_ch3(9),
      Q3 => o_data_out_ch3(10),
      Q4 => o_data_out_ch3(11),
      Q5 => o_data_out_ch3(12),
      Q6 => o_data_out_ch3(13),
      Q7 => o_data_out_ch3(14),
      Q8 => o_data_out_ch3(15),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes3_n_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes3_n_SHIFTOUT2_UNCONNECTED
    );
iserdes3_p: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "TRUE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_odd,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch3_p,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes3_p_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch3(0),
      Q2 => o_data_out_ch3(1),
      Q3 => o_data_out_ch3(2),
      Q4 => o_data_out_ch3(3),
      Q5 => o_data_out_ch3(4),
      Q6 => o_data_out_ch3(5),
      Q7 => o_data_out_ch3(6),
      Q8 => o_data_out_ch3(7),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes3_p_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes3_p_SHIFTOUT2_UNCONNECTED
    );
iserdes4_n: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_even,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch4_n,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes4_n_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch4(8),
      Q2 => o_data_out_ch4(9),
      Q3 => o_data_out_ch4(10),
      Q4 => o_data_out_ch4(11),
      Q5 => o_data_out_ch4(12),
      Q6 => o_data_out_ch4(13),
      Q7 => o_data_out_ch4(14),
      Q8 => o_data_out_ch4(15),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes4_n_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes4_n_SHIFTOUT2_UNCONNECTED
    );
iserdes4_p: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "TRUE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_odd,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch4_p,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes4_p_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch4(0),
      Q2 => o_data_out_ch4(1),
      Q3 => o_data_out_ch4(2),
      Q4 => o_data_out_ch4(3),
      Q5 => o_data_out_ch4(4),
      Q6 => o_data_out_ch4(5),
      Q7 => o_data_out_ch4(6),
      Q8 => o_data_out_ch4(7),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes4_p_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes4_p_SHIFTOUT2_UNCONNECTED
    );
iserdes5_n: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_even,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch5_n,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes5_n_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch5(8),
      Q2 => o_data_out_ch5(9),
      Q3 => o_data_out_ch5(10),
      Q4 => o_data_out_ch5(11),
      Q5 => o_data_out_ch5(12),
      Q6 => o_data_out_ch5(13),
      Q7 => o_data_out_ch5(14),
      Q8 => o_data_out_ch5(15),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes5_n_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes5_n_SHIFTOUT2_UNCONNECTED
    );
iserdes5_p: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "TRUE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_odd,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch5_p,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes5_p_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch5(0),
      Q2 => o_data_out_ch5(1),
      Q3 => o_data_out_ch5(2),
      Q4 => o_data_out_ch5(3),
      Q5 => o_data_out_ch5(4),
      Q6 => o_data_out_ch5(5),
      Q7 => o_data_out_ch5(6),
      Q8 => o_data_out_ch5(7),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes5_p_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes5_p_SHIFTOUT2_UNCONNECTED
    );
iserdes6_n: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_even,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch6_n,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes6_n_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch6(8),
      Q2 => o_data_out_ch6(9),
      Q3 => o_data_out_ch6(10),
      Q4 => o_data_out_ch6(11),
      Q5 => o_data_out_ch6(12),
      Q6 => o_data_out_ch6(13),
      Q7 => o_data_out_ch6(14),
      Q8 => o_data_out_ch6(15),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes6_n_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes6_n_SHIFTOUT2_UNCONNECTED
    );
iserdes6_p: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "TRUE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_odd,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch6_p,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes6_p_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch6(0),
      Q2 => o_data_out_ch6(1),
      Q3 => o_data_out_ch6(2),
      Q4 => o_data_out_ch6(3),
      Q5 => o_data_out_ch6(4),
      Q6 => o_data_out_ch6(5),
      Q7 => o_data_out_ch6(6),
      Q8 => o_data_out_ch6(7),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes6_p_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes6_p_SHIFTOUT2_UNCONNECTED
    );
iserdes7_n: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_even,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch7_n,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes7_n_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch7(8),
      Q2 => o_data_out_ch7(9),
      Q3 => o_data_out_ch7(10),
      Q4 => o_data_out_ch7(11),
      Q5 => o_data_out_ch7(12),
      Q6 => o_data_out_ch7(13),
      Q7 => o_data_out_ch7(14),
      Q8 => o_data_out_ch7(15),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes7_n_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes7_n_SHIFTOUT2_UNCONNECTED
    );
iserdes7_p: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "SDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "TRUE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "NONE",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip_odd,
      CE1 => '1',
      CE2 => '1',
      CLK => i_Lclk,
      CLKB => CLKB,
      CLKDIV => i_ADclk,
      CLKDIVP => '0',
      D => i_data_in_ch7_p,
      DDLY => '0',
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => NLW_iserdes7_p_O_UNCONNECTED,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => o_data_out_ch7(0),
      Q2 => o_data_out_ch7(1),
      Q3 => o_data_out_ch7(2),
      Q4 => o_data_out_ch7(3),
      Q5 => o_data_out_ch7(4),
      Q6 => o_data_out_ch7(5),
      Q7 => o_data_out_ch7(6),
      Q8 => o_data_out_ch7(7),
      RST => \^rst\,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2 is
  port (
    o_SCLK : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    spi_free : out STD_LOGIC;
    o_debug : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_addrss_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ready_i_reg : out STD_LOGIC;
    spi_start_reg : out STD_LOGIC;
    \rd_value_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \adc_action_ctrl_state0__2\ : out STD_LOGIC;
    \adc_action_ctrl_state_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 0 to 2 );
    reset : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \adc_action_ctrl_state_reg[2]\ : in STD_LOGIC;
    \adc_action_ctrl_state_reg[0]_0\ : in STD_LOGIC;
    adc_config_reg : in STD_LOGIC;
    write_reg_reg : in STD_LOGIC;
    \adc_action_ctrl_state_reg[2]_0\ : in STD_LOGIC;
    read_reg_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_MISO : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_sm_master[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_master[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_master[1]_i_1_n_0\ : STD_LOGIC;
  signal MOSI01_out : STD_LOGIC;
  signal MOSI_i_10_n_0 : STD_LOGIC;
  signal MOSI_i_11_n_0 : STD_LOGIC;
  signal MOSI_i_12_n_0 : STD_LOGIC;
  signal MOSI_i_1_n_0 : STD_LOGIC;
  signal MOSI_i_7_n_0 : STD_LOGIC;
  signal MOSI_i_8_n_0 : STD_LOGIC;
  signal MOSI_i_9_n_0 : STD_LOGIC;
  signal MOSI_reg_i_2_n_0 : STD_LOGIC;
  signal MOSI_reg_i_3_n_0 : STD_LOGIC;
  signal MOSI_reg_i_5_n_0 : STD_LOGIC;
  signal MOSI_reg_i_6_n_0 : STD_LOGIC;
  signal \^adc_action_ctrl_state0__2\ : STD_LOGIC;
  signal bit_cntr0 : STD_LOGIC;
  signal bit_cntr16_out : STD_LOGIC;
  signal \bit_cntr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \core_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_i[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_i_reg_n_0_[9]\ : STD_LOGIC;
  signal free_i_i_1_n_0 : STD_LOGIC;
  signal incoming_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \incoming_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \incoming_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[12]_i_2_n_0\ : STD_LOGIC;
  signal \incoming_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \incoming_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[14]_i_2_n_0\ : STD_LOGIC;
  signal \incoming_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \incoming_i[15]_i_3_n_0\ : STD_LOGIC;
  signal \incoming_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \incoming_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \incoming_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \incoming_i[9]_i_1_n_0\ : STD_LOGIC;
  signal nCS_i_i_1_n_0 : STD_LOGIC;
  signal \^o_sclk\ : STD_LOGIC;
  signal \o_data_from[15]_i_1_n_0\ : STD_LOGIC;
  signal \^o_debug\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \scl_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \scl_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \scl_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal \scl_cntr[3]_i_1_n_0\ : STD_LOGIC;
  signal \scl_cntr[4]_i_1_n_0\ : STD_LOGIC;
  signal \scl_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \scl_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \scl_cntr_reg_n_0_[2]\ : STD_LOGIC;
  signal \scl_cntr_reg_n_0_[3]\ : STD_LOGIC;
  signal \scl_cntr_reg_n_0_[4]\ : STD_LOGIC;
  signal sclk_i_i_1_n_0 : STD_LOGIC;
  signal sclk_i_prev : STD_LOGIC;
  signal sm_master : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sm_master : signal is "yes";
  signal \^spi_free\ : STD_LOGIC;
  signal spi_reset : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_master[0]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_master_reg[0]\ : label is "st_idle:00,st_start:01,st_stop:11,st_write_add:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_sm_master_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_master_reg[1]\ : label is "st_idle:00,st_start:01,st_stop:11,st_write_add:10";
  attribute KEEP of \FSM_sequential_sm_master_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of MOSI_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cntr[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_cntr[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_cntr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_cntr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cntr[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \incoming_i[11]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \incoming_i[12]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \incoming_i[13]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \incoming_i[14]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \incoming_i[15]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \incoming_i[15]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \incoming_i[15]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \incoming_i[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \incoming_i[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \scl_cntr[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \scl_cntr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \scl_cntr[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \scl_cntr[4]_i_1\ : label is "soft_lutpair4";
begin
  AR(0) <= \^ar\(0);
  \adc_action_ctrl_state0__2\ <= \^adc_action_ctrl_state0__2\;
  o_SCLK <= \^o_sclk\;
  o_debug(1 downto 0) <= \^o_debug\(1 downto 0);
  spi_free <= \^spi_free\;
\FSM_sequential_sm_master[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0B0B0B080808"
    )
        port map (
      I0 => \FSM_sequential_sm_master[0]_i_2_n_0\,
      I1 => sm_master(1),
      I2 => sm_master(0),
      I3 => L(2),
      I4 => \^spi_free\,
      I5 => sm_master(0),
      O => \FSM_sequential_sm_master[0]_i_1_n_0\
    );
\FSM_sequential_sm_master[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \bit_cntr_reg__0\(0),
      I1 => \bit_cntr_reg__0\(2),
      I2 => \bit_cntr_reg__0\(1),
      I3 => \bit_cntr_reg__0\(3),
      I4 => \bit_cntr_reg__0\(4),
      O => \FSM_sequential_sm_master[0]_i_2_n_0\
    );
\FSM_sequential_sm_master[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"67776666"
    )
        port map (
      I0 => sm_master(1),
      I1 => sm_master(0),
      I2 => L(2),
      I3 => \^spi_free\,
      I4 => sm_master(1),
      O => \FSM_sequential_sm_master[1]_i_1_n_0\
    );
\FSM_sequential_sm_master[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => reset,
      O => spi_reset
    );
\FSM_sequential_sm_master_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => spi_reset,
      D => \FSM_sequential_sm_master[0]_i_1_n_0\,
      Q => sm_master(0)
    );
\FSM_sequential_sm_master_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => spi_reset,
      D => \FSM_sequential_sm_master[1]_i_1_n_0\,
      Q => sm_master(1)
    );
MOSI_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB28FFFFEB280000"
    )
        port map (
      I0 => MOSI_reg_i_2_n_0,
      I1 => \bit_cntr_reg__0\(3),
      I2 => \bit_cntr_reg__0\(4),
      I3 => MOSI_reg_i_3_n_0,
      I4 => MOSI01_out,
      I5 => \^o_debug\(0),
      O => MOSI_i_1_n_0
    );
MOSI_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_i_reg_n_0_[0]\,
      I1 => \data_i_reg_n_0_[1]\,
      I2 => \bit_cntr_reg__0\(1),
      I3 => \data_i_reg_n_0_[2]\,
      I4 => \bit_cntr_reg__0\(0),
      I5 => \data_i_reg_n_0_[3]\,
      O => MOSI_i_10_n_0
    );
MOSI_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_i_reg_n_0_[12]\,
      I1 => \data_i_reg_n_0_[13]\,
      I2 => \bit_cntr_reg__0\(1),
      I3 => \data_i_reg_n_0_[14]\,
      I4 => \bit_cntr_reg__0\(0),
      I5 => \data_i_reg_n_0_[15]\,
      O => MOSI_i_11_n_0
    );
MOSI_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_i_reg_n_0_[8]\,
      I1 => \data_i_reg_n_0_[9]\,
      I2 => \bit_cntr_reg__0\(1),
      I3 => \data_i_reg_n_0_[10]\,
      I4 => \bit_cntr_reg__0\(0),
      I5 => \data_i_reg_n_0_[11]\,
      O => MOSI_i_12_n_0
    );
MOSI_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101010"
    )
        port map (
      I0 => \^o_sclk\,
      I1 => \^ar\(0),
      I2 => sclk_i_prev,
      I3 => \bit_cntr_reg__0\(4),
      I4 => \bit_cntr_reg__0\(3),
      O => MOSI01_out
    );
MOSI_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_i_reg_n_0_[20]\,
      I1 => \data_i_reg_n_0_[21]\,
      I2 => \bit_cntr_reg__0\(1),
      I3 => \data_i_reg_n_0_[22]\,
      I4 => \bit_cntr_reg__0\(0),
      I5 => \data_i_reg_n_0_[23]\,
      O => MOSI_i_7_n_0
    );
MOSI_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_i_reg_n_0_[16]\,
      I1 => \data_i_reg_n_0_[17]\,
      I2 => \bit_cntr_reg__0\(1),
      I3 => \data_i_reg_n_0_[18]\,
      I4 => \bit_cntr_reg__0\(0),
      I5 => \data_i_reg_n_0_[19]\,
      O => MOSI_i_8_n_0
    );
MOSI_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_i_reg_n_0_[4]\,
      I1 => \data_i_reg_n_0_[5]\,
      I2 => \bit_cntr_reg__0\(1),
      I3 => \data_i_reg_n_0_[6]\,
      I4 => \bit_cntr_reg__0\(0),
      I5 => \data_i_reg_n_0_[7]\,
      O => MOSI_i_9_n_0
    );
MOSI_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => MOSI_i_1_n_0,
      Q => \^o_debug\(0),
      R => '0'
    );
MOSI_reg_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => MOSI_reg_i_5_n_0,
      I1 => MOSI_reg_i_6_n_0,
      O => MOSI_reg_i_2_n_0,
      S => \bit_cntr_reg__0\(3)
    );
MOSI_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => MOSI_i_7_n_0,
      I1 => MOSI_i_8_n_0,
      O => MOSI_reg_i_3_n_0,
      S => \bit_cntr_reg__0\(2)
    );
MOSI_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => MOSI_i_9_n_0,
      I1 => MOSI_i_10_n_0,
      O => MOSI_reg_i_5_n_0,
      S => \bit_cntr_reg__0\(2)
    );
MOSI_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => MOSI_i_11_n_0,
      I1 => MOSI_i_12_n_0,
      O => MOSI_reg_i_6_n_0,
      S => \bit_cntr_reg__0\(2)
    );
\adc_action_ctrl_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^spi_free\,
      I1 => write_reg_reg,
      I2 => read_reg_reg,
      I3 => adc_config_reg,
      O => \adc_action_ctrl_state_reg[0]\
    );
\adc_action_ctrl_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^spi_free\,
      I1 => L(0),
      I2 => L(2),
      I3 => L(1),
      O => \^adc_action_ctrl_state0__2\
    );
\bit_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000777F"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(1),
      I3 => \bit_cntr_reg__0\(2),
      I4 => \bit_cntr_reg__0\(0),
      O => p_0_in(0)
    );
\bit_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(1),
      I3 => \bit_cntr_reg__0\(0),
      O => p_0_in(1)
    );
\bit_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07707700"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(1),
      I3 => \bit_cntr_reg__0\(2),
      I4 => \bit_cntr_reg__0\(0),
      O => p_0_in(2)
    );
\bit_cntr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5222222A"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(1),
      I3 => \bit_cntr_reg__0\(2),
      I4 => \bit_cntr_reg__0\(0),
      O => p_0_in(3)
    );
\bit_cntr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_sclk\,
      I1 => sclk_i_prev,
      O => bit_cntr0
    );
\bit_cntr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6444444C"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(1),
      I3 => \bit_cntr_reg__0\(2),
      I4 => \bit_cntr_reg__0\(0),
      O => p_0_in(4)
    );
\bit_cntr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bit_cntr0,
      CLR => \^ar\(0),
      D => p_0_in(0),
      Q => \bit_cntr_reg__0\(0)
    );
\bit_cntr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bit_cntr0,
      CLR => \^ar\(0),
      D => p_0_in(1),
      Q => \bit_cntr_reg__0\(1)
    );
\bit_cntr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bit_cntr0,
      CLR => \^ar\(0),
      D => p_0_in(2),
      Q => \bit_cntr_reg__0\(2)
    );
\bit_cntr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bit_cntr0,
      CLR => \^ar\(0),
      D => p_0_in(3),
      Q => \bit_cntr_reg__0\(3)
    );
\bit_cntr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => bit_cntr0,
      CLR => \^ar\(0),
      D => p_0_in(4),
      Q => \bit_cntr_reg__0\(4)
    );
\core_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => \^o_debug\(1),
      I1 => s00_axi_aresetn,
      I2 => reset,
      I3 => sm_master(0),
      O => \core_state[0]_i_1_n_0\
    );
\core_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \core_state[0]_i_1_n_0\,
      Q => \^o_debug\(1),
      R => '0'
    );
\data_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => sm_master(1),
      I1 => sm_master(0),
      I2 => L(2),
      I3 => \^spi_free\,
      I4 => reset,
      I5 => s00_axi_aresetn,
      O => \data_i[23]_i_1_n_0\
    );
\data_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(0),
      Q => \data_i_reg_n_0_[0]\,
      R => '0'
    );
\data_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(10),
      Q => \data_i_reg_n_0_[10]\,
      R => '0'
    );
\data_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(11),
      Q => \data_i_reg_n_0_[11]\,
      R => '0'
    );
\data_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(12),
      Q => \data_i_reg_n_0_[12]\,
      R => '0'
    );
\data_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(13),
      Q => \data_i_reg_n_0_[13]\,
      R => '0'
    );
\data_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(14),
      Q => \data_i_reg_n_0_[14]\,
      R => '0'
    );
\data_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(15),
      Q => \data_i_reg_n_0_[15]\,
      R => '0'
    );
\data_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(16),
      Q => \data_i_reg_n_0_[16]\,
      R => '0'
    );
\data_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(17),
      Q => \data_i_reg_n_0_[17]\,
      R => '0'
    );
\data_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(18),
      Q => \data_i_reg_n_0_[18]\,
      R => '0'
    );
\data_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(19),
      Q => \data_i_reg_n_0_[19]\,
      R => '0'
    );
\data_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(1),
      Q => \data_i_reg_n_0_[1]\,
      R => '0'
    );
\data_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(20),
      Q => \data_i_reg_n_0_[20]\,
      R => '0'
    );
\data_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(21),
      Q => \data_i_reg_n_0_[21]\,
      R => '0'
    );
\data_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(22),
      Q => \data_i_reg_n_0_[22]\,
      R => '0'
    );
\data_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(23),
      Q => \data_i_reg_n_0_[23]\,
      R => '0'
    );
\data_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(2),
      Q => \data_i_reg_n_0_[2]\,
      R => '0'
    );
\data_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(3),
      Q => \data_i_reg_n_0_[3]\,
      R => '0'
    );
\data_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(4),
      Q => \data_i_reg_n_0_[4]\,
      R => '0'
    );
\data_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(5),
      Q => \data_i_reg_n_0_[5]\,
      R => '0'
    );
\data_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(6),
      Q => \data_i_reg_n_0_[6]\,
      R => '0'
    );
\data_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(7),
      Q => \data_i_reg_n_0_[7]\,
      R => '0'
    );
\data_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(8),
      Q => \data_i_reg_n_0_[8]\,
      R => '0'
    );
\data_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_i[23]_i_1_n_0\,
      D => D(9),
      Q => \data_i_reg_n_0_[9]\,
      R => '0'
    );
free_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD03"
    )
        port map (
      I0 => L(2),
      I1 => sm_master(0),
      I2 => sm_master(1),
      I3 => \^spi_free\,
      O => free_i_i_1_n_0
    );
free_i_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => spi_reset,
      D => free_i_i_1_n_0,
      Q => \^spi_free\
    );
\incoming_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[12]_i_2_n_0\,
      I3 => \incoming_i[3]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(0),
      O => \incoming_i[0]_i_1_n_0\
    );
\incoming_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[11]_i_2_n_0\,
      I3 => \incoming_i[14]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(10),
      O => \incoming_i[10]_i_1_n_0\
    );
\incoming_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[11]_i_2_n_0\,
      I3 => \incoming_i[15]_i_3_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(11),
      O => \incoming_i[11]_i_1_n_0\
    );
\incoming_i[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \bit_cntr_reg__0\(4),
      I1 => \bit_cntr_reg__0\(3),
      I2 => \bit_cntr_reg__0\(2),
      O => \incoming_i[11]_i_2_n_0\
    );
\incoming_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[12]_i_2_n_0\,
      I3 => \incoming_i[15]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(12),
      O => \incoming_i[12]_i_1_n_0\
    );
\incoming_i[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_cntr_reg__0\(1),
      I1 => \bit_cntr_reg__0\(0),
      O => \incoming_i[12]_i_2_n_0\
    );
\incoming_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[15]_i_2_n_0\,
      I3 => \incoming_i[13]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(13),
      O => \incoming_i[13]_i_1_n_0\
    );
\incoming_i[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bit_cntr_reg__0\(0),
      I1 => \bit_cntr_reg__0\(1),
      O => \incoming_i[13]_i_2_n_0\
    );
\incoming_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[15]_i_2_n_0\,
      I3 => \incoming_i[14]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(14),
      O => \incoming_i[14]_i_1_n_0\
    );
\incoming_i[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \bit_cntr_reg__0\(1),
      I1 => \bit_cntr_reg__0\(0),
      O => \incoming_i[14]_i_2_n_0\
    );
\incoming_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[15]_i_2_n_0\,
      I3 => \incoming_i[15]_i_3_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(15),
      O => \incoming_i[15]_i_1_n_0\
    );
\incoming_i[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \bit_cntr_reg__0\(2),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(3),
      O => \incoming_i[15]_i_2_n_0\
    );
\incoming_i[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_cntr_reg__0\(1),
      I1 => \bit_cntr_reg__0\(0),
      O => \incoming_i[15]_i_3_n_0\
    );
\incoming_i[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      O => bit_cntr16_out
    );
\incoming_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[3]_i_2_n_0\,
      I3 => \incoming_i[13]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(1),
      O => \incoming_i[1]_i_1_n_0\
    );
\incoming_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[3]_i_2_n_0\,
      I3 => \incoming_i[14]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(2),
      O => \incoming_i[2]_i_1_n_0\
    );
\incoming_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[3]_i_2_n_0\,
      I3 => \incoming_i[15]_i_3_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(3),
      O => \incoming_i[3]_i_1_n_0\
    );
\incoming_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(2),
      O => \incoming_i[3]_i_2_n_0\
    );
\incoming_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[12]_i_2_n_0\,
      I3 => \incoming_i[7]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(4),
      O => \incoming_i[4]_i_1_n_0\
    );
\incoming_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[7]_i_2_n_0\,
      I3 => \incoming_i[13]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(5),
      O => \incoming_i[5]_i_1_n_0\
    );
\incoming_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[7]_i_2_n_0\,
      I3 => \incoming_i[14]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(6),
      O => \incoming_i[6]_i_1_n_0\
    );
\incoming_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[7]_i_2_n_0\,
      I3 => \incoming_i[15]_i_3_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(7),
      O => \incoming_i[7]_i_1_n_0\
    );
\incoming_i[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \bit_cntr_reg__0\(2),
      I1 => \bit_cntr_reg__0\(3),
      I2 => \bit_cntr_reg__0\(4),
      O => \incoming_i[7]_i_2_n_0\
    );
\incoming_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[12]_i_2_n_0\,
      I3 => \incoming_i[11]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(8),
      O => \incoming_i[8]_i_1_n_0\
    );
\incoming_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => i_MISO,
      I1 => bit_cntr0,
      I2 => \incoming_i[11]_i_2_n_0\,
      I3 => \incoming_i[13]_i_2_n_0\,
      I4 => bit_cntr16_out,
      I5 => incoming_i(9),
      O => \incoming_i[9]_i_1_n_0\
    );
\incoming_i_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[0]_i_1_n_0\,
      Q => incoming_i(0)
    );
\incoming_i_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[10]_i_1_n_0\,
      Q => incoming_i(10)
    );
\incoming_i_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[11]_i_1_n_0\,
      Q => incoming_i(11)
    );
\incoming_i_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[12]_i_1_n_0\,
      Q => incoming_i(12)
    );
\incoming_i_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[13]_i_1_n_0\,
      Q => incoming_i(13)
    );
\incoming_i_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[14]_i_1_n_0\,
      Q => incoming_i(14)
    );
\incoming_i_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[15]_i_1_n_0\,
      Q => incoming_i(15)
    );
\incoming_i_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[1]_i_1_n_0\,
      Q => incoming_i(1)
    );
\incoming_i_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[2]_i_1_n_0\,
      Q => incoming_i(2)
    );
\incoming_i_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[3]_i_1_n_0\,
      Q => incoming_i(3)
    );
\incoming_i_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[4]_i_1_n_0\,
      Q => incoming_i(4)
    );
\incoming_i_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[5]_i_1_n_0\,
      Q => incoming_i(5)
    );
\incoming_i_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[6]_i_1_n_0\,
      Q => incoming_i(6)
    );
\incoming_i_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[7]_i_1_n_0\,
      Q => incoming_i(7)
    );
\incoming_i_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[8]_i_1_n_0\,
      Q => incoming_i(8)
    );
\incoming_i_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \incoming_i[9]_i_1_n_0\,
      Q => incoming_i(9)
    );
nCS_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0009"
    )
        port map (
      I0 => sm_master(1),
      I1 => sm_master(0),
      I2 => reset,
      I3 => s00_axi_aresetn,
      I4 => \^ar\(0),
      O => nCS_i_i_1_n_0
    );
nCS_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => nCS_i_i_1_n_0,
      Q => \^ar\(0),
      R => '0'
    );
\o_data_from[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sm_master(1),
      I1 => sm_master(0),
      I2 => reset,
      I3 => s00_axi_aresetn,
      O => \o_data_from[15]_i_1_n_0\
    );
\o_data_from_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(0),
      Q => Q(0),
      R => '0'
    );
\o_data_from_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(10),
      Q => Q(10),
      R => '0'
    );
\o_data_from_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(11),
      Q => Q(11),
      R => '0'
    );
\o_data_from_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(12),
      Q => Q(12),
      R => '0'
    );
\o_data_from_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(13),
      Q => Q(13),
      R => '0'
    );
\o_data_from_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(14),
      Q => Q(14),
      R => '0'
    );
\o_data_from_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(15),
      Q => Q(15),
      R => '0'
    );
\o_data_from_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(1),
      Q => Q(1),
      R => '0'
    );
\o_data_from_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(2),
      Q => Q(2),
      R => '0'
    );
\o_data_from_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(3),
      Q => Q(3),
      R => '0'
    );
\o_data_from_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(4),
      Q => Q(4),
      R => '0'
    );
\o_data_from_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(5),
      Q => Q(5),
      R => '0'
    );
\o_data_from_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(6),
      Q => Q(6),
      R => '0'
    );
\o_data_from_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(7),
      Q => Q(7),
      R => '0'
    );
\o_data_from_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(8),
      Q => Q(8),
      R => '0'
    );
\o_data_from_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_data_from[15]_i_1_n_0\,
      D => incoming_i(9),
      Q => Q(9),
      R => '0'
    );
\rd_value[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \adc_action_ctrl_state_reg[2]\,
      I1 => \^adc_action_ctrl_state0__2\,
      I2 => \adc_action_ctrl_state_reg[0]_0\,
      I3 => s00_axi_aresetn,
      O => \rd_value_reg[15]\(0)
    );
ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => write_reg_reg,
      I1 => read_reg_reg,
      I2 => \^spi_free\,
      I3 => adc_config_reg,
      I4 => \adc_action_ctrl_state_reg[0]_0\,
      I5 => \adc_action_ctrl_state_reg[2]\,
      O => ready_i_reg
    );
\reg_addrss[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004440"
    )
        port map (
      I0 => \adc_action_ctrl_state_reg[2]_0\,
      I1 => \^spi_free\,
      I2 => write_reg_reg,
      I3 => read_reg_reg,
      I4 => adc_config_reg,
      I5 => s00_axi_aresetn,
      O => \reg_addrss_reg[7]\(0)
    );
\scl_cntr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001F"
    )
        port map (
      I0 => \scl_cntr_reg_n_0_[3]\,
      I1 => \scl_cntr_reg_n_0_[2]\,
      I2 => \scl_cntr_reg_n_0_[4]\,
      I3 => \scl_cntr_reg_n_0_[0]\,
      O => \scl_cntr[0]_i_1_n_0\
    );
\scl_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001F1F00"
    )
        port map (
      I0 => \scl_cntr_reg_n_0_[3]\,
      I1 => \scl_cntr_reg_n_0_[2]\,
      I2 => \scl_cntr_reg_n_0_[4]\,
      I3 => \scl_cntr_reg_n_0_[1]\,
      I4 => \scl_cntr_reg_n_0_[0]\,
      O => \scl_cntr[1]_i_1_n_0\
    );
\scl_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07303030"
    )
        port map (
      I0 => \scl_cntr_reg_n_0_[3]\,
      I1 => \scl_cntr_reg_n_0_[4]\,
      I2 => \scl_cntr_reg_n_0_[2]\,
      I3 => \scl_cntr_reg_n_0_[1]\,
      I4 => \scl_cntr_reg_n_0_[0]\,
      O => \scl_cntr[2]_i_1_n_0\
    );
\scl_cntr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14444444"
    )
        port map (
      I0 => \scl_cntr_reg_n_0_[4]\,
      I1 => \scl_cntr_reg_n_0_[3]\,
      I2 => \scl_cntr_reg_n_0_[2]\,
      I3 => \scl_cntr_reg_n_0_[0]\,
      I4 => \scl_cntr_reg_n_0_[1]\,
      O => \scl_cntr[3]_i_1_n_0\
    );
\scl_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40002222"
    )
        port map (
      I0 => \scl_cntr_reg_n_0_[4]\,
      I1 => \scl_cntr_reg_n_0_[3]\,
      I2 => \scl_cntr_reg_n_0_[1]\,
      I3 => \scl_cntr_reg_n_0_[0]\,
      I4 => \scl_cntr_reg_n_0_[2]\,
      O => \scl_cntr[4]_i_1_n_0\
    );
\scl_cntr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \scl_cntr[0]_i_1_n_0\,
      Q => \scl_cntr_reg_n_0_[0]\
    );
\scl_cntr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \scl_cntr[1]_i_1_n_0\,
      Q => \scl_cntr_reg_n_0_[1]\
    );
\scl_cntr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \scl_cntr[2]_i_1_n_0\,
      Q => \scl_cntr_reg_n_0_[2]\
    );
\scl_cntr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \scl_cntr[3]_i_1_n_0\,
      Q => \scl_cntr_reg_n_0_[3]\
    );
\scl_cntr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \scl_cntr[4]_i_1_n_0\,
      Q => \scl_cntr_reg_n_0_[4]\
    );
sclk_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC803C8"
    )
        port map (
      I0 => \scl_cntr_reg_n_0_[1]\,
      I1 => \scl_cntr_reg_n_0_[3]\,
      I2 => \scl_cntr_reg_n_0_[2]\,
      I3 => \scl_cntr_reg_n_0_[4]\,
      I4 => \^o_sclk\,
      O => sclk_i_i_1_n_0
    );
sclk_i_prev_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \^o_sclk\,
      PRE => \^ar\(0),
      Q => sclk_i_prev
    );
sclk_i_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sclk_i_i_1_n_0,
      PRE => \^ar\(0),
      Q => \^o_sclk\
    );
\spi_data_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \adc_action_ctrl_state_reg[2]\,
      I1 => \adc_action_ctrl_state_reg[0]_0\,
      I2 => \^spi_free\,
      I3 => adc_config_reg,
      I4 => write_reg_reg,
      I5 => s00_axi_aresetn,
      O => E(0)
    );
spi_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E0"
    )
        port map (
      I0 => write_reg_reg,
      I1 => read_reg_reg,
      I2 => \^spi_free\,
      I3 => adc_config_reg,
      I4 => \adc_action_ctrl_state_reg[0]_0\,
      I5 => \adc_action_ctrl_state_reg[2]\,
      O => spi_start_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl is
  port (
    o_debug_0_sp_1 : out STD_LOGIC;
    o_SCLK : out STD_LOGIC;
    \o_debug[7]\ : out STD_LOGIC;
    o_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    read_reg_reg : out STD_LOGIC;
    write_reg_reg : out STD_LOGIC;
    adc_config_reg : out STD_LOGIC;
    \slv_reg2_reg[16]\ : out STD_LOGIC;
    \slv_reg2_reg[17]\ : out STD_LOGIC;
    \slv_reg2_reg[18]\ : out STD_LOGIC;
    \slv_reg2_reg[19]\ : out STD_LOGIC;
    \slv_reg2_reg[20]\ : out STD_LOGIC;
    \slv_reg2_reg[21]\ : out STD_LOGIC;
    \slv_reg2_reg[22]\ : out STD_LOGIC;
    \slv_reg2_reg[23]\ : out STD_LOGIC;
    \slv_reg2_reg[24]\ : out STD_LOGIC;
    \slv_reg2_reg[25]\ : out STD_LOGIC;
    \slv_reg2_reg[26]\ : out STD_LOGIC;
    \slv_reg2_reg[27]\ : out STD_LOGIC;
    \slv_reg2_reg[28]\ : out STD_LOGIC;
    \slv_reg2_reg[29]\ : out STD_LOGIC;
    \slv_reg2_reg[30]\ : out STD_LOGIC;
    \slv_reg2_reg[31]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    read_reg_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg_wren__2\ : in STD_LOGIC;
    write_reg_reg_0 : in STD_LOGIC;
    adc_config_reg_0 : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    axi_awready_reg : in STD_LOGIC;
    axi_wready_reg : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    \slv_reg1_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_MISO : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl is
  signal L : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \action_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \action_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \adc_action_ctrl_state0__2\ : STD_LOGIC;
  signal \adc_action_ctrl_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \adc_action_ctrl_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_action_ctrl_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \adc_action_ctrl_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \adc_action_ctrl_state_reg_n_0_[2]\ : STD_LOGIC;
  signal adc_prev_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \adc_prev_state[0]_i_1_n_0\ : STD_LOGIC;
  signal o_data_from : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^o_debug\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal o_debug_0_sn_1 : STD_LOGIC;
  signal rd_value : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal reg_addrss : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_addrss[7]_i_2_n_0\ : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal spi_core_n_11 : STD_LOGIC;
  signal spi_core_n_5 : STD_LOGIC;
  signal spi_core_n_6 : STD_LOGIC;
  signal spi_core_n_7 : STD_LOGIC;
  signal spi_core_n_8 : STD_LOGIC;
  signal spi_core_n_9 : STD_LOGIC;
  signal spi_data_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal spi_free : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \action_state[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \action_state[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adc_prev_state[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_addrss[7]_i_2\ : label is "soft_lutpair11";
begin
  o_debug(4 downto 0) <= \^o_debug\(4 downto 0);
  o_debug_0_sp_1 <= o_debug_0_sn_1;
\action_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC04"
    )
        port map (
      I0 => \adc_action_ctrl_state_reg_n_0_[0]\,
      I1 => \adc_action_ctrl_state_reg_n_0_[2]\,
      I2 => s00_axi_aresetn,
      I3 => \^o_debug\(2),
      O => \action_state[0]_i_1_n_0\
    );
\action_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE06"
    )
        port map (
      I0 => \adc_action_ctrl_state_reg_n_0_[0]\,
      I1 => \adc_action_ctrl_state_reg_n_0_[2]\,
      I2 => s00_axi_aresetn,
      I3 => \^o_debug\(3),
      O => \action_state[1]_i_1_n_0\
    );
\action_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \action_state[0]_i_1_n_0\,
      Q => \^o_debug\(2),
      R => '0'
    );
\action_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \action_state[1]_i_1_n_0\,
      Q => \^o_debug\(3),
      R => '0'
    );
\adc_action_ctrl_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C0A0000000A00"
    )
        port map (
      I0 => adc_config_reg_0,
      I1 => adc_prev_state(0),
      I2 => \adc_action_ctrl_state_reg_n_0_[0]\,
      I3 => spi_core_n_11,
      I4 => \adc_action_ctrl_state_reg_n_0_[2]\,
      I5 => \adc_action_ctrl_state0__2\,
      O => \adc_action_ctrl_state[0]_i_1_n_0\
    );
\adc_action_ctrl_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010055550100"
    )
        port map (
      I0 => \adc_action_ctrl_state_reg_n_0_[0]\,
      I1 => adc_config_reg_0,
      I2 => \adc_action_ctrl_state[2]_i_2_n_0\,
      I3 => spi_free,
      I4 => \adc_action_ctrl_state_reg_n_0_[2]\,
      I5 => \adc_action_ctrl_state0__2\,
      O => \adc_action_ctrl_state[2]_i_1_n_0\
    );
\adc_action_ctrl_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_reg_reg_0,
      I1 => read_reg_reg_0,
      O => \adc_action_ctrl_state[2]_i_2_n_0\
    );
\adc_action_ctrl_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \adc_action_ctrl_state[0]_i_1_n_0\,
      Q => \adc_action_ctrl_state_reg_n_0_[0]\
    );
\adc_action_ctrl_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => \adc_action_ctrl_state[2]_i_1_n_0\,
      Q => \adc_action_ctrl_state_reg_n_0_[2]\
    );
adc_config_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0AAAA"
    )
        port map (
      I0 => adc_config_reg_0,
      I1 => Q(0),
      I2 => \slv_reg_wren__2\,
      I3 => o_debug_0_sn_1,
      I4 => s00_axi_aresetn,
      O => adc_config_reg
    );
\adc_prev_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => \adc_action_ctrl_state_reg_n_0_[0]\,
      I1 => s00_axi_aresetn,
      I2 => \adc_action_ctrl_state_reg_n_0_[2]\,
      I3 => adc_prev_state(0),
      O => \adc_prev_state[0]_i_1_n_0\
    );
\adc_prev_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \adc_prev_state[0]_i_1_n_0\,
      Q => adc_prev_state(0),
      R => '0'
    );
\o_debug[11]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => \^o_debug\(4)
    );
\prev_start_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => L(2),
      Q => L(1)
    );
\prev_start_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => L(1),
      Q => L(0)
    );
\rd_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(0),
      Q => rd_value(0),
      R => '0'
    );
\rd_value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(10),
      Q => rd_value(10),
      R => '0'
    );
\rd_value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(11),
      Q => rd_value(11),
      R => '0'
    );
\rd_value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(12),
      Q => rd_value(12),
      R => '0'
    );
\rd_value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(13),
      Q => rd_value(13),
      R => '0'
    );
\rd_value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(14),
      Q => rd_value(14),
      R => '0'
    );
\rd_value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(15),
      Q => rd_value(15),
      R => '0'
    );
\rd_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(1),
      Q => rd_value(1),
      R => '0'
    );
\rd_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(2),
      Q => rd_value(2),
      R => '0'
    );
\rd_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(3),
      Q => rd_value(3),
      R => '0'
    );
\rd_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(4),
      Q => rd_value(4),
      R => '0'
    );
\rd_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(5),
      Q => rd_value(5),
      R => '0'
    );
\rd_value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(6),
      Q => rd_value(6),
      R => '0'
    );
\rd_value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(7),
      Q => rd_value(7),
      R => '0'
    );
\rd_value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(8),
      Q => rd_value(8),
      R => '0'
    );
\rd_value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_9,
      D => o_data_from(9),
      Q => rd_value(9),
      R => '0'
    );
read_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0AAAA"
    )
        port map (
      I0 => read_reg_reg_0,
      I1 => Q(2),
      I2 => \slv_reg_wren__2\,
      I3 => o_debug_0_sn_1,
      I4 => s00_axi_aresetn,
      O => read_reg_reg
    );
ready_i_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => spi_core_n_7,
      Q => o_debug_0_sn_1
    );
\reg_addrss[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \adc_action_ctrl_state_reg_n_0_[2]\,
      I1 => \adc_action_ctrl_state_reg_n_0_[0]\,
      O => \reg_addrss[7]_i_2_n_0\
    );
\reg_addrss_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_6,
      D => \slv_reg1_reg[23]\(16),
      Q => reg_addrss(0),
      R => '0'
    );
\reg_addrss_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_6,
      D => \slv_reg1_reg[23]\(17),
      Q => reg_addrss(1),
      R => '0'
    );
\reg_addrss_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_6,
      D => \slv_reg1_reg[23]\(18),
      Q => reg_addrss(2),
      R => '0'
    );
\reg_addrss_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_6,
      D => \slv_reg1_reg[23]\(19),
      Q => reg_addrss(3),
      R => '0'
    );
\reg_addrss_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_6,
      D => \slv_reg1_reg[23]\(20),
      Q => reg_addrss(4),
      R => '0'
    );
\reg_addrss_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_6,
      D => \slv_reg1_reg[23]\(21),
      Q => reg_addrss(5),
      R => '0'
    );
\reg_addrss_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_6,
      D => \slv_reg1_reg[23]\(22),
      Q => reg_addrss(6),
      R => '0'
    );
\reg_addrss_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_6,
      D => \slv_reg1_reg[23]\(23),
      Q => reg_addrss(7),
      R => '0'
    );
reset_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      PRE => s00_axi_aresetn,
      Q => reset
    );
\slv_reg0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFFFFFFFFFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => axi_awready_reg,
      I2 => axi_wready_reg,
      I3 => s00_axi_awvalid,
      I4 => o_debug_0_sn_1,
      I5 => s00_axi_aresetn,
      O => SR(0)
    );
\slv_reg2[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(0),
      O => \slv_reg2_reg[16]\
    );
\slv_reg2[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(1),
      O => \slv_reg2_reg[17]\
    );
\slv_reg2[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(2),
      O => \slv_reg2_reg[18]\
    );
\slv_reg2[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(3),
      O => \slv_reg2_reg[19]\
    );
\slv_reg2[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(4),
      O => \slv_reg2_reg[20]\
    );
\slv_reg2[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(5),
      O => \slv_reg2_reg[21]\
    );
\slv_reg2[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(6),
      O => \slv_reg2_reg[22]\
    );
\slv_reg2[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(7),
      O => \slv_reg2_reg[23]\
    );
\slv_reg2[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(8),
      O => \slv_reg2_reg[24]\
    );
\slv_reg2[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(9),
      O => \slv_reg2_reg[25]\
    );
\slv_reg2[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(10),
      O => \slv_reg2_reg[26]\
    );
\slv_reg2[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(11),
      O => \slv_reg2_reg[27]\
    );
\slv_reg2[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(12),
      O => \slv_reg2_reg[28]\
    );
\slv_reg2[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(13),
      O => \slv_reg2_reg[29]\
    );
\slv_reg2[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(14),
      O => \slv_reg2_reg[30]\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => \slv_reg_wren__2\,
      I2 => o_debug_0_sn_1,
      I3 => rd_value(15),
      O => \slv_reg2_reg[31]\
    );
spi_core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2
     port map (
      AR(0) => \o_debug[7]\,
      D(23 downto 16) => reg_addrss(7 downto 0),
      D(15 downto 0) => spi_data_i(15 downto 0),
      E(0) => spi_core_n_5,
      L(0 to 2) => L(0 to 2),
      Q(15 downto 0) => o_data_from(15 downto 0),
      \adc_action_ctrl_state0__2\ => \adc_action_ctrl_state0__2\,
      \adc_action_ctrl_state_reg[0]\ => spi_core_n_11,
      \adc_action_ctrl_state_reg[0]_0\ => \adc_action_ctrl_state_reg_n_0_[0]\,
      \adc_action_ctrl_state_reg[2]\ => \adc_action_ctrl_state_reg_n_0_[2]\,
      \adc_action_ctrl_state_reg[2]_0\ => \reg_addrss[7]_i_2_n_0\,
      adc_config_reg => adc_config_reg_0,
      i_MISO => i_MISO,
      o_SCLK => o_SCLK,
      o_debug(1 downto 0) => \^o_debug\(1 downto 0),
      \rd_value_reg[15]\(0) => spi_core_n_9,
      read_reg_reg => read_reg_reg_0,
      ready_i_reg => spi_core_n_7,
      \reg_addrss_reg[7]\(0) => spi_core_n_6,
      reset => reset,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      spi_free => spi_free,
      spi_start_reg => spi_core_n_8,
      write_reg_reg => write_reg_reg_0
    );
\spi_data_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(0),
      Q => spi_data_i(0),
      R => '0'
    );
\spi_data_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(10),
      Q => spi_data_i(10),
      R => '0'
    );
\spi_data_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(11),
      Q => spi_data_i(11),
      R => '0'
    );
\spi_data_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(12),
      Q => spi_data_i(12),
      R => '0'
    );
\spi_data_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(13),
      Q => spi_data_i(13),
      R => '0'
    );
\spi_data_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(14),
      Q => spi_data_i(14),
      R => '0'
    );
\spi_data_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(15),
      Q => spi_data_i(15),
      R => '0'
    );
\spi_data_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(1),
      Q => spi_data_i(1),
      R => '0'
    );
\spi_data_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(2),
      Q => spi_data_i(2),
      R => '0'
    );
\spi_data_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(3),
      Q => spi_data_i(3),
      R => '0'
    );
\spi_data_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(4),
      Q => spi_data_i(4),
      R => '0'
    );
\spi_data_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(5),
      Q => spi_data_i(5),
      R => '0'
    );
\spi_data_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(6),
      Q => spi_data_i(6),
      R => '0'
    );
\spi_data_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(7),
      Q => spi_data_i(7),
      R => '0'
    );
\spi_data_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(8),
      Q => spi_data_i(8),
      R => '0'
    );
\spi_data_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => spi_core_n_5,
      D => \slv_reg1_reg[23]\(9),
      Q => spi_data_i(9),
      R => '0'
    );
spi_start_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => s00_axi_aresetn,
      D => spi_core_n_8,
      Q => L(2)
    );
write_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0AAAA"
    )
        port map (
      I0 => write_reg_reg_0,
      I1 => Q(1),
      I2 => \slv_reg_wren__2\,
      I3 => o_debug_0_sn_1,
      I4 => s00_axi_aresetn,
      O => write_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0_S00_AXI is
  port (
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_debug_0_sp_1 : out STD_LOGIC;
    o_SCLK : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    o_debug_1_sp_1 : out STD_LOGIC;
    o_debug_2_sp_1 : out STD_LOGIC;
    o_debug_3_sp_1 : out STD_LOGIC;
    o_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_Lclk : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    i_ADclk : in STD_LOGIC;
    i_data_in_ch0_p : in STD_LOGIC;
    i_data_in_ch0_n : in STD_LOGIC;
    i_data_in_ch1_p : in STD_LOGIC;
    i_data_in_ch1_n : in STD_LOGIC;
    i_data_in_ch2_p : in STD_LOGIC;
    i_data_in_ch2_n : in STD_LOGIC;
    i_data_in_ch3_p : in STD_LOGIC;
    i_data_in_ch3_n : in STD_LOGIC;
    i_data_in_ch4_p : in STD_LOGIC;
    i_data_in_ch4_n : in STD_LOGIC;
    i_data_in_ch5_p : in STD_LOGIC;
    i_data_in_ch5_n : in STD_LOGIC;
    i_data_in_ch6_p : in STD_LOGIC;
    i_data_in_ch6_n : in STD_LOGIC;
    i_data_in_ch7_p : in STD_LOGIC;
    i_data_in_ch7_n : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_MISO : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0_S00_AXI is
  signal Inst_ADC_n_10 : STD_LOGIC;
  signal Inst_ADC_n_11 : STD_LOGIC;
  signal Inst_ADC_n_12 : STD_LOGIC;
  signal Inst_ADC_n_13 : STD_LOGIC;
  signal Inst_ADC_n_14 : STD_LOGIC;
  signal Inst_ADC_n_15 : STD_LOGIC;
  signal Inst_ADC_n_16 : STD_LOGIC;
  signal Inst_ADC_n_17 : STD_LOGIC;
  signal Inst_ADC_n_18 : STD_LOGIC;
  signal Inst_ADC_n_19 : STD_LOGIC;
  signal Inst_ADC_n_20 : STD_LOGIC;
  signal Inst_ADC_n_21 : STD_LOGIC;
  signal Inst_ADC_n_22 : STD_LOGIC;
  signal Inst_ADC_n_23 : STD_LOGIC;
  signal Inst_ADC_n_24 : STD_LOGIC;
  signal Inst_ADC_n_25 : STD_LOGIC;
  signal Inst_ADC_n_26 : STD_LOGIC;
  signal Inst_ADC_n_27 : STD_LOGIC;
  signal Inst_ADC_n_8 : STD_LOGIC;
  signal Inst_ADC_n_9 : STD_LOGIC;
  signal RST : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal o_debug_0_sn_1 : STD_LOGIC;
  signal o_debug_1_sn_1 : STD_LOGIC;
  signal o_debug_2_sn_1 : STD_LOGIC;
  signal o_debug_3_sn_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal pointer_tbr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg_data_out__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[4]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[5]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[6]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of read_reg_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg0[4]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg0[7]_i_2\ : label is "soft_lutpair15";
begin
  o_debug_0_sp_1 <= o_debug_0_sn_1;
  o_debug_1_sp_1 <= o_debug_1_sn_1;
  o_debug_2_sp_1 <= o_debug_2_sn_1;
  o_debug_3_sp_1 <= o_debug_3_sn_1;
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
Inst_ADC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl
     port map (
      Q(2) => \slv_reg0_reg_n_0_[2]\,
      Q(1) => \slv_reg0_reg_n_0_[1]\,
      Q(0) => \slv_reg0_reg_n_0_[0]\,
      SR(0) => Inst_ADC_n_27,
      adc_config_reg => Inst_ADC_n_10,
      adc_config_reg_0 => o_debug_1_sn_1,
      axi_awready_reg => \^s00_axi_awready\,
      axi_wready_reg => \^s00_axi_wready\,
      i_MISO => i_MISO,
      o_SCLK => o_SCLK,
      o_debug(4 downto 0) => o_debug(4 downto 0),
      \o_debug[7]\ => AR(0),
      o_debug_0_sp_1 => o_debug_0_sn_1,
      read_reg_reg => Inst_ADC_n_8,
      read_reg_reg_0 => o_debug_3_sn_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(31 downto 16),
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg1_reg[23]\(23 downto 16) => pointer_tbr(7 downto 0),
      \slv_reg1_reg[23]\(15) => \slv_reg1_reg_n_0_[15]\,
      \slv_reg1_reg[23]\(14) => \slv_reg1_reg_n_0_[14]\,
      \slv_reg1_reg[23]\(13) => \slv_reg1_reg_n_0_[13]\,
      \slv_reg1_reg[23]\(12) => \slv_reg1_reg_n_0_[12]\,
      \slv_reg1_reg[23]\(11) => \slv_reg1_reg_n_0_[11]\,
      \slv_reg1_reg[23]\(10) => \slv_reg1_reg_n_0_[10]\,
      \slv_reg1_reg[23]\(9) => \slv_reg1_reg_n_0_[9]\,
      \slv_reg1_reg[23]\(8) => \slv_reg1_reg_n_0_[8]\,
      \slv_reg1_reg[23]\(7) => \slv_reg1_reg_n_0_[7]\,
      \slv_reg1_reg[23]\(6) => \slv_reg1_reg_n_0_[6]\,
      \slv_reg1_reg[23]\(5) => \slv_reg1_reg_n_0_[5]\,
      \slv_reg1_reg[23]\(4) => \slv_reg1_reg_n_0_[4]\,
      \slv_reg1_reg[23]\(3) => \slv_reg1_reg_n_0_[3]\,
      \slv_reg1_reg[23]\(2) => \slv_reg1_reg_n_0_[2]\,
      \slv_reg1_reg[23]\(1) => \slv_reg1_reg_n_0_[1]\,
      \slv_reg1_reg[23]\(0) => \slv_reg1_reg_n_0_[0]\,
      \slv_reg2_reg[16]\ => Inst_ADC_n_11,
      \slv_reg2_reg[17]\ => Inst_ADC_n_12,
      \slv_reg2_reg[18]\ => Inst_ADC_n_13,
      \slv_reg2_reg[19]\ => Inst_ADC_n_14,
      \slv_reg2_reg[20]\ => Inst_ADC_n_15,
      \slv_reg2_reg[21]\ => Inst_ADC_n_16,
      \slv_reg2_reg[22]\ => Inst_ADC_n_17,
      \slv_reg2_reg[23]\ => Inst_ADC_n_18,
      \slv_reg2_reg[24]\ => Inst_ADC_n_19,
      \slv_reg2_reg[25]\ => Inst_ADC_n_20,
      \slv_reg2_reg[26]\ => Inst_ADC_n_21,
      \slv_reg2_reg[27]\ => Inst_ADC_n_22,
      \slv_reg2_reg[28]\ => Inst_ADC_n_23,
      \slv_reg2_reg[29]\ => Inst_ADC_n_24,
      \slv_reg2_reg[30]\ => Inst_ADC_n_25,
      \slv_reg2_reg[31]\ => Inst_ADC_n_26,
      \slv_reg_wren__2\ => \slv_reg_wren__2\,
      write_reg_reg => Inst_ADC_n_9,
      write_reg_reg_0 => o_debug_2_sn_1
    );
Inst_M_ADC_readout: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_M_ADC_readout
     port map (
      CLKB => CLKB,
      RST => RST,
      i_ADclk => i_ADclk,
      i_Lclk => i_Lclk,
      i_data_in_ch0_n => i_data_in_ch0_n,
      i_data_in_ch0_p => i_data_in_ch0_p,
      i_data_in_ch1_n => i_data_in_ch1_n,
      i_data_in_ch1_p => i_data_in_ch1_p,
      i_data_in_ch2_n => i_data_in_ch2_n,
      i_data_in_ch2_p => i_data_in_ch2_p,
      i_data_in_ch3_n => i_data_in_ch3_n,
      i_data_in_ch3_p => i_data_in_ch3_p,
      i_data_in_ch4_n => i_data_in_ch4_n,
      i_data_in_ch4_p => i_data_in_ch4_p,
      i_data_in_ch5_n => i_data_in_ch5_n,
      i_data_in_ch5_p => i_data_in_ch5_p,
      i_data_in_ch6_n => i_data_in_ch6_n,
      i_data_in_ch6_p => i_data_in_ch6_p,
      i_data_in_ch7_n => i_data_in_ch7_n,
      i_data_in_ch7_p => i_data_in_ch7_p,
      o_data_out_ch0(15 downto 0) => o_data_out_ch0(15 downto 0),
      o_data_out_ch1(15 downto 0) => o_data_out_ch1(15 downto 0),
      o_data_out_ch2(15 downto 0) => o_data_out_ch2(15 downto 0),
      o_data_out_ch3(15 downto 0) => o_data_out_ch3(15 downto 0),
      o_data_out_ch4(15 downto 0) => o_data_out_ch4(15 downto 0),
      o_data_out_ch5(15 downto 0) => o_data_out_ch5(15 downto 0),
      o_data_out_ch6(15 downto 0) => o_data_out_ch6(15 downto 0),
      o_data_out_ch7(15 downto 0) => o_data_out_ch7(15 downto 0),
      s00_axi_aresetn => s00_axi_aresetn
    );
adc_config_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Inst_ADC_n_10,
      Q => o_debug_1_sn_1,
      R => '0'
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      S => RST
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      S => RST
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      S => RST
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s00_axi_arready\,
      R => RST
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_awready\,
      I4 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_awready\,
      I4 => axi_awaddr(4),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => RST
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => RST
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => axi_awaddr(4),
      R => RST
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => RST
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_awready\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => RST
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(0),
      I4 => sel0(0),
      O => \reg_data_out__0\(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(10),
      I4 => sel0(0),
      O => \reg_data_out__0\(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg2(10),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[10]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(11),
      I4 => sel0(0),
      O => \reg_data_out__0\(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg2(11),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[11]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(12),
      I4 => sel0(0),
      O => \reg_data_out__0\(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg2(12),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[12]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(13),
      I4 => sel0(0),
      O => \reg_data_out__0\(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg2(13),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[13]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(14),
      I4 => sel0(0),
      O => \reg_data_out__0\(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg2(14),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[14]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(15),
      I4 => sel0(0),
      O => \reg_data_out__0\(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg2(15),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[15]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(16),
      I4 => sel0(0),
      O => \reg_data_out__0\(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => slv_reg2(16),
      I2 => sel0(1),
      I3 => pointer_tbr(0),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(17),
      I4 => sel0(0),
      O => \reg_data_out__0\(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => slv_reg2(17),
      I2 => sel0(1),
      I3 => pointer_tbr(1),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(18),
      I4 => sel0(0),
      O => \reg_data_out__0\(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => slv_reg2(18),
      I2 => sel0(1),
      I3 => pointer_tbr(2),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(19),
      I4 => sel0(0),
      O => \reg_data_out__0\(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => slv_reg2(19),
      I2 => sel0(1),
      I3 => pointer_tbr(3),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(1),
      I4 => sel0(0),
      O => \reg_data_out__0\(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[1]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(20),
      I4 => sel0(0),
      O => \reg_data_out__0\(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => slv_reg2(20),
      I2 => sel0(1),
      I3 => pointer_tbr(4),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(21),
      I4 => sel0(0),
      O => \reg_data_out__0\(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => slv_reg2(21),
      I2 => sel0(1),
      I3 => pointer_tbr(5),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(22),
      I4 => sel0(0),
      O => \reg_data_out__0\(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => slv_reg2(22),
      I2 => sel0(1),
      I3 => pointer_tbr(6),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(23),
      I4 => sel0(0),
      O => \reg_data_out__0\(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg2(23),
      I2 => sel0(1),
      I3 => pointer_tbr(7),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(24),
      I4 => sel0(0),
      O => \reg_data_out__0\(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg2(24),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[24]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(25),
      I4 => sel0(0),
      O => \reg_data_out__0\(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg2(25),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[25]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(26),
      I4 => sel0(0),
      O => \reg_data_out__0\(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg2(26),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[26]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(27),
      I4 => sel0(0),
      O => \reg_data_out__0\(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg2(27),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[27]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(28),
      I4 => sel0(0),
      O => \reg_data_out__0\(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg2(28),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[28]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(29),
      I4 => sel0(0),
      O => \reg_data_out__0\(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg2(29),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[29]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(2),
      I4 => sel0(0),
      O => \reg_data_out__0\(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[2]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(30),
      I4 => sel0(0),
      O => \reg_data_out__0\(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => slv_reg2(30),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[30]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(31),
      I4 => sel0(0),
      O => \reg_data_out__0\(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => slv_reg2(31),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[31]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(3),
      I4 => sel0(0),
      O => \reg_data_out__0\(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[3]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(4),
      I4 => sel0(0),
      O => \reg_data_out__0\(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg2(4),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[4]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(5),
      I4 => sel0(0),
      O => \reg_data_out__0\(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg2(5),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[5]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(6),
      I4 => sel0(0),
      O => \reg_data_out__0\(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg2(6),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[6]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[6]\,
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(7),
      I4 => sel0(0),
      O => \reg_data_out__0\(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg2(7),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[7]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(8),
      I4 => sel0(0),
      O => \reg_data_out__0\(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg2(8),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[8]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => slv_reg4(9),
      I4 => sel0(0),
      O => \reg_data_out__0\(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg2(9),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(0),
      Q => s00_axi_rdata(0),
      R => RST
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(10),
      Q => s00_axi_rdata(10),
      R => RST
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(11),
      Q => s00_axi_rdata(11),
      R => RST
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(12),
      Q => s00_axi_rdata(12),
      R => RST
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(13),
      Q => s00_axi_rdata(13),
      R => RST
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(14),
      Q => s00_axi_rdata(14),
      R => RST
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(15),
      Q => s00_axi_rdata(15),
      R => RST
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(16),
      Q => s00_axi_rdata(16),
      R => RST
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(17),
      Q => s00_axi_rdata(17),
      R => RST
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(18),
      Q => s00_axi_rdata(18),
      R => RST
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(19),
      Q => s00_axi_rdata(19),
      R => RST
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(1),
      Q => s00_axi_rdata(1),
      R => RST
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(20),
      Q => s00_axi_rdata(20),
      R => RST
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(21),
      Q => s00_axi_rdata(21),
      R => RST
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(22),
      Q => s00_axi_rdata(22),
      R => RST
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(23),
      Q => s00_axi_rdata(23),
      R => RST
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(24),
      Q => s00_axi_rdata(24),
      R => RST
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(25),
      Q => s00_axi_rdata(25),
      R => RST
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(26),
      Q => s00_axi_rdata(26),
      R => RST
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(27),
      Q => s00_axi_rdata(27),
      R => RST
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(28),
      Q => s00_axi_rdata(28),
      R => RST
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(29),
      Q => s00_axi_rdata(29),
      R => RST
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(2),
      Q => s00_axi_rdata(2),
      R => RST
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(30),
      Q => s00_axi_rdata(30),
      R => RST
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(31),
      Q => s00_axi_rdata(31),
      R => RST
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(3),
      Q => s00_axi_rdata(3),
      R => RST
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(4),
      Q => s00_axi_rdata(4),
      R => RST
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(5),
      Q => s00_axi_rdata(5),
      R => RST
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(6),
      Q => s00_axi_rdata(6),
      R => RST
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(7),
      Q => s00_axi_rdata(7),
      R => RST
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(8),
      Q => s00_axi_rdata(8),
      R => RST
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \reg_data_out__0\(9),
      Q => s00_axi_rdata(9),
      R => RST
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => RST
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => RST
    );
read_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_awready\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_awvalid,
      O => \slv_reg_wren__2\
    );
read_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Inst_ADC_n_8,
      Q => o_debug_3_sn_1,
      R => '0'
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(2)
    );
\slv_reg0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E4FFF0F0E400F0F0"
    )
        port map (
      I0 => axi_awaddr(4),
      I1 => s00_axi_wdata(4),
      I2 => o_debug_0_sn_1,
      I3 => \slv_reg0[4]_i_2_n_0\,
      I4 => \slv_reg_wren__2\,
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => \slv_reg0[4]_i_1_n_0\
    );
\slv_reg0[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EE10"
    )
        port map (
      I0 => axi_awaddr(2),
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(4),
      O => \slv_reg0[4]_i_2_n_0\
    );
\slv_reg0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => \slv_reg_wren__2\,
      I2 => \slv_reg0[7]_i_2_n_0\,
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      I5 => \slv_reg0_reg_n_0_[5]\,
      O => \slv_reg0[5]_i_1_n_0\
    );
\slv_reg0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => \slv_reg_wren__2\,
      I2 => \slv_reg0[7]_i_2_n_0\,
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      I5 => \slv_reg0_reg_n_0_[6]\,
      O => \slv_reg0[6]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => \slv_reg_wren__2\,
      I2 => \slv_reg0[7]_i_2_n_0\,
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      I5 => \slv_reg0_reg_n_0_[7]\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      O => \slv_reg0[7]_i_2_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => Inst_ADC_n_27
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => RST
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => RST
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => RST
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => RST
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => RST
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => RST
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => RST
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => RST
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => RST
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => RST
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => Inst_ADC_n_27
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => RST
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => RST
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => RST
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => RST
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => RST
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => RST
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => RST
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => RST
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => RST
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => RST
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => Inst_ADC_n_27
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => RST
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => RST
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(2),
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => Inst_ADC_n_27
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[4]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[4]\,
      R => RST
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[5]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[5]\,
      R => RST
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[6]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[6]\,
      R => RST
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[7]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[7]\,
      R => RST
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => RST
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => RST
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(1),
      I4 => axi_awaddr(2),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(2),
      I4 => axi_awaddr(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(3),
      I4 => axi_awaddr(2),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(0),
      I4 => axi_awaddr(2),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => RST
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => RST
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => RST
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => RST
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => RST
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => RST
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => RST
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => pointer_tbr(0),
      R => RST
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => pointer_tbr(1),
      R => RST
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => pointer_tbr(2),
      R => RST
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => pointer_tbr(3),
      R => RST
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => RST
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => pointer_tbr(4),
      R => RST
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => pointer_tbr(5),
      R => RST
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => pointer_tbr(6),
      R => RST
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => pointer_tbr(7),
      R => RST
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => RST
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => RST
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => RST
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => RST
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => RST
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => RST
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => RST
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => RST
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => RST
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => RST
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => RST
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => RST
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => RST
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => RST
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => RST
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => RST
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => \slv_reg_wren__2\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555555D5"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(4),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"555555D5"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(4),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => \slv_reg_wren__2\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => RST
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => RST
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => RST
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => RST
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => RST
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => RST
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => RST
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => Inst_ADC_n_11,
      Q => slv_reg2(16),
      R => RST
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => Inst_ADC_n_12,
      Q => slv_reg2(17),
      R => RST
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => Inst_ADC_n_13,
      Q => slv_reg2(18),
      R => RST
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => Inst_ADC_n_14,
      Q => slv_reg2(19),
      R => RST
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => RST
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => Inst_ADC_n_15,
      Q => slv_reg2(20),
      R => RST
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => Inst_ADC_n_16,
      Q => slv_reg2(21),
      R => RST
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => Inst_ADC_n_17,
      Q => slv_reg2(22),
      R => RST
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => Inst_ADC_n_18,
      Q => slv_reg2(23),
      R => RST
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => Inst_ADC_n_19,
      Q => slv_reg2(24),
      R => RST
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => Inst_ADC_n_20,
      Q => slv_reg2(25),
      R => RST
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => Inst_ADC_n_21,
      Q => slv_reg2(26),
      R => RST
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => Inst_ADC_n_22,
      Q => slv_reg2(27),
      R => RST
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => Inst_ADC_n_23,
      Q => slv_reg2(28),
      R => RST
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => Inst_ADC_n_24,
      Q => slv_reg2(29),
      R => RST
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => RST
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => Inst_ADC_n_25,
      Q => slv_reg2(30),
      R => RST
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => Inst_ADC_n_26,
      Q => slv_reg2(31),
      R => RST
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => RST
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => RST
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => RST
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => RST
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => RST
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => RST
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => RST
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => RST
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => RST
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => RST
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => RST
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => RST
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => RST
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => RST
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => RST
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => RST
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => RST
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => RST
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => RST
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => RST
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => RST
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => RST
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => RST
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => RST
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => RST
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => RST
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => RST
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => RST
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => RST
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => RST
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => RST
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => RST
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => RST
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => RST
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => RST
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => RST
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => RST
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => RST
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => RST
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(4),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => RST
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => RST
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => RST
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => RST
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => RST
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => RST
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => RST
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => RST
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => RST
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => RST
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => RST
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => RST
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => RST
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => RST
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => RST
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => RST
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => RST
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => RST
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => RST
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => RST
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => RST
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => RST
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => RST
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => RST
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => RST
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => RST
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => RST
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => RST
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => RST
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => RST
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => RST
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => RST
    );
write_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => Inst_ADC_n_9,
      Q => o_debug_2_sn_1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0 is
  port (
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_debug_0_sp_1 : out STD_LOGIC;
    o_SCLK : out STD_LOGIC;
    \o_debug[7]\ : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    o_debug_1_sp_1 : out STD_LOGIC;
    o_debug_2_sp_1 : out STD_LOGIC;
    o_debug_3_sp_1 : out STD_LOGIC;
    o_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    i_Lclk : in STD_LOGIC;
    CLKB : in STD_LOGIC;
    i_ADclk : in STD_LOGIC;
    i_data_in_ch0_p : in STD_LOGIC;
    i_data_in_ch0_n : in STD_LOGIC;
    i_data_in_ch1_p : in STD_LOGIC;
    i_data_in_ch1_n : in STD_LOGIC;
    i_data_in_ch2_p : in STD_LOGIC;
    i_data_in_ch2_n : in STD_LOGIC;
    i_data_in_ch3_p : in STD_LOGIC;
    i_data_in_ch3_n : in STD_LOGIC;
    i_data_in_ch4_p : in STD_LOGIC;
    i_data_in_ch4_n : in STD_LOGIC;
    i_data_in_ch5_p : in STD_LOGIC;
    i_data_in_ch5_n : in STD_LOGIC;
    i_data_in_ch6_p : in STD_LOGIC;
    i_data_in_ch6_n : in STD_LOGIC;
    i_data_in_ch7_p : in STD_LOGIC;
    i_data_in_ch7_n : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_MISO : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0 is
  signal o_debug_0_sn_1 : STD_LOGIC;
  signal o_debug_1_sn_1 : STD_LOGIC;
  signal o_debug_2_sn_1 : STD_LOGIC;
  signal o_debug_3_sn_1 : STD_LOGIC;
begin
  o_debug_0_sp_1 <= o_debug_0_sn_1;
  o_debug_1_sp_1 <= o_debug_1_sn_1;
  o_debug_2_sp_1 <= o_debug_2_sn_1;
  o_debug_3_sp_1 <= o_debug_3_sn_1;
Mult_ADC_AXI_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0_S00_AXI
     port map (
      AR(0) => \o_debug[7]\,
      CLKB => CLKB,
      i_ADclk => i_ADclk,
      i_Lclk => i_Lclk,
      i_MISO => i_MISO,
      i_data_in_ch0_n => i_data_in_ch0_n,
      i_data_in_ch0_p => i_data_in_ch0_p,
      i_data_in_ch1_n => i_data_in_ch1_n,
      i_data_in_ch1_p => i_data_in_ch1_p,
      i_data_in_ch2_n => i_data_in_ch2_n,
      i_data_in_ch2_p => i_data_in_ch2_p,
      i_data_in_ch3_n => i_data_in_ch3_n,
      i_data_in_ch3_p => i_data_in_ch3_p,
      i_data_in_ch4_n => i_data_in_ch4_n,
      i_data_in_ch4_p => i_data_in_ch4_p,
      i_data_in_ch5_n => i_data_in_ch5_n,
      i_data_in_ch5_p => i_data_in_ch5_p,
      i_data_in_ch6_n => i_data_in_ch6_n,
      i_data_in_ch6_p => i_data_in_ch6_p,
      i_data_in_ch7_n => i_data_in_ch7_n,
      i_data_in_ch7_p => i_data_in_ch7_p,
      o_SCLK => o_SCLK,
      o_data_out_ch0(15 downto 0) => o_data_out_ch0(15 downto 0),
      o_data_out_ch1(15 downto 0) => o_data_out_ch1(15 downto 0),
      o_data_out_ch2(15 downto 0) => o_data_out_ch2(15 downto 0),
      o_data_out_ch3(15 downto 0) => o_data_out_ch3(15 downto 0),
      o_data_out_ch4(15 downto 0) => o_data_out_ch4(15 downto 0),
      o_data_out_ch5(15 downto 0) => o_data_out_ch5(15 downto 0),
      o_data_out_ch6(15 downto 0) => o_data_out_ch6(15 downto 0),
      o_data_out_ch7(15 downto 0) => o_data_out_ch7(15 downto 0),
      o_debug(4 downto 0) => o_debug(4 downto 0),
      o_debug_0_sp_1 => o_debug_0_sn_1,
      o_debug_1_sp_1 => o_debug_1_sn_1,
      o_debug_2_sp_1 => o_debug_2_sn_1,
      o_debug_3_sp_1 => o_debug_3_sn_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_MISO : in STD_LOGIC;
    o_MOSI : out STD_LOGIC;
    o_SCLK : out STD_LOGIC;
    o_nCS : out STD_LOGIC;
    o_ADC_nrst : out STD_LOGIC;
    o_debug : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_ADclk : in STD_LOGIC;
    i_Lclk : in STD_LOGIC;
    i_data_in_ch0_p : in STD_LOGIC;
    i_data_in_ch0_n : in STD_LOGIC;
    i_data_in_ch1_p : in STD_LOGIC;
    i_data_in_ch1_n : in STD_LOGIC;
    i_data_in_ch2_p : in STD_LOGIC;
    i_data_in_ch2_n : in STD_LOGIC;
    i_data_in_ch3_p : in STD_LOGIC;
    i_data_in_ch3_n : in STD_LOGIC;
    i_data_in_ch4_p : in STD_LOGIC;
    i_data_in_ch4_n : in STD_LOGIC;
    i_data_in_ch5_p : in STD_LOGIC;
    i_data_in_ch5_n : in STD_LOGIC;
    i_data_in_ch6_p : in STD_LOGIC;
    i_data_in_ch6_n : in STD_LOGIC;
    i_data_in_ch7_p : in STD_LOGIC;
    i_data_in_ch7_n : in STD_LOGIC;
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_clk : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_Mult_ADC_AXI_0_1,Mult_ADC_AXI_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Mult_ADC_AXI_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^i_adclk\ : STD_LOGIC;
  signal \^i_miso\ : STD_LOGIC;
  signal n_0_198 : STD_LOGIC;
  signal \^o_sclk\ : STD_LOGIC;
  signal \^o_debug\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of o_data_clk : signal is "xilinx.com:signal:clock:1.0 o_data_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of o_data_clk : signal is "XIL_INTERFACENAME o_data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_Mult_ADC_AXI_0_1_o_data_clk";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  \^i_adclk\ <= i_ADclk;
  \^i_miso\ <= i_MISO;
  o_ADC_nrst <= \^o_debug\(11);
  o_MOSI <= \^o_debug\(5);
  o_SCLK <= \^o_sclk\;
  o_data_clk <= \^i_adclk\;
  o_debug(11 downto 7) <= \^o_debug\(11 downto 7);
  o_debug(6) <= \^o_sclk\;
  o_debug(5) <= \^o_debug\(5);
  o_debug(4) <= \^i_miso\;
  o_debug(3 downto 0) <= \^o_debug\(3 downto 0);
  o_nCS <= \^o_debug\(7);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0
     port map (
      CLKB => i_Lclk,
      i_ADclk => \^i_adclk\,
      i_Lclk => i_Lclk,
      i_MISO => \^i_miso\,
      i_data_in_ch0_n => i_data_in_ch0_n,
      i_data_in_ch0_p => i_data_in_ch0_p,
      i_data_in_ch1_n => i_data_in_ch1_n,
      i_data_in_ch1_p => i_data_in_ch1_p,
      i_data_in_ch2_n => i_data_in_ch2_n,
      i_data_in_ch2_p => i_data_in_ch2_p,
      i_data_in_ch3_n => i_data_in_ch3_n,
      i_data_in_ch3_p => i_data_in_ch3_p,
      i_data_in_ch4_n => i_data_in_ch4_n,
      i_data_in_ch4_p => i_data_in_ch4_p,
      i_data_in_ch5_n => i_data_in_ch5_n,
      i_data_in_ch5_p => i_data_in_ch5_p,
      i_data_in_ch6_n => i_data_in_ch6_n,
      i_data_in_ch6_p => i_data_in_ch6_p,
      i_data_in_ch7_n => i_data_in_ch7_n,
      i_data_in_ch7_p => i_data_in_ch7_p,
      o_SCLK => \^o_sclk\,
      o_data_out_ch0(15 downto 0) => o_data_out_ch0(15 downto 0),
      o_data_out_ch1(15 downto 0) => o_data_out_ch1(15 downto 0),
      o_data_out_ch2(15 downto 0) => o_data_out_ch2(15 downto 0),
      o_data_out_ch3(15 downto 0) => o_data_out_ch3(15 downto 0),
      o_data_out_ch4(15 downto 0) => o_data_out_ch4(15 downto 0),
      o_data_out_ch5(15 downto 0) => o_data_out_ch5(15 downto 0),
      o_data_out_ch6(15 downto 0) => o_data_out_ch6(15 downto 0),
      o_data_out_ch7(15 downto 0) => o_data_out_ch7(15 downto 0),
      o_debug(4 downto 1) => \^o_debug\(11 downto 8),
      o_debug(0) => \^o_debug\(5),
      \o_debug[7]\ => \^o_debug\(7),
      o_debug_0_sp_1 => \^o_debug\(0),
      o_debug_1_sp_1 => \^o_debug\(1),
      o_debug_2_sp_1 => \^o_debug\(2),
      o_debug_3_sp_1 => \^o_debug\(3),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
i_198: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => n_0_198
    );
end STRUCTURE;
