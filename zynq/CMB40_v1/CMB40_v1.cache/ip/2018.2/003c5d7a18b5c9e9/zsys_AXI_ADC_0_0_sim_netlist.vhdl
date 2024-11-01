-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Sep 19 16:19:12 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_AXI_ADC_0_0_sim_netlist.vhdl
-- Design      : zsys_AXI_ADC_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_3 is
  port (
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_3 is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  SR(0) <= \^sr\(0);
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
      RST => \^sr\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
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
      RST => \^sr\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED
    );
ready_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
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
    o_debug : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_sm_master[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_master[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_master[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_master[1]_i_2_n_0\ : STD_LOGIC;
  signal bit_cntr0 : STD_LOGIC;
  signal \bit_cntr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \core_state[0]_i_1_n_0\ : STD_LOGIC;
  signal free_i_i_1_n_0 : STD_LOGIC;
  signal nCS_i_i_1_n_0 : STD_LOGIC;
  signal \^o_sclk\ : STD_LOGIC;
  signal \^o_debug\ : STD_LOGIC_VECTOR ( 0 to 0 );
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_master[0]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_master_reg[0]\ : label is "st_idle:00,st_start:01,st_stop:11,st_write_add:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_sm_master_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_master_reg[1]\ : label is "st_idle:00,st_start:01,st_stop:11,st_write_add:10";
  attribute KEEP of \FSM_sequential_sm_master_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \bit_cntr[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_cntr[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cntr[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cntr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cntr[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \scl_cntr[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \scl_cntr[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \scl_cntr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \scl_cntr[4]_i_1\ : label is "soft_lutpair4";
begin
  AR(0) <= \^ar\(0);
  o_SCLK <= \^o_sclk\;
  o_debug(0) <= \^o_debug\(0);
  spi_free <= \^spi_free\;
\FSM_sequential_sm_master[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0704"
    )
        port map (
      I0 => \FSM_sequential_sm_master[0]_i_2_n_0\,
      I1 => sm_master(1),
      I2 => sm_master(0),
      I3 => sm_master(0),
      O => \FSM_sequential_sm_master[0]_i_1_n_0\
    );
\FSM_sequential_sm_master[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(0),
      I3 => \bit_cntr_reg__0\(2),
      I4 => \bit_cntr_reg__0\(1),
      O => \FSM_sequential_sm_master[0]_i_2_n_0\
    );
\FSM_sequential_sm_master[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"76"
    )
        port map (
      I0 => sm_master(1),
      I1 => sm_master(0),
      I2 => sm_master(1),
      O => \FSM_sequential_sm_master[1]_i_1_n_0\
    );
\FSM_sequential_sm_master[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset,
      I1 => s00_axi_aresetn,
      O => \FSM_sequential_sm_master[1]_i_2_n_0\
    );
\FSM_sequential_sm_master_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \FSM_sequential_sm_master[1]_i_2_n_0\,
      D => \FSM_sequential_sm_master[0]_i_1_n_0\,
      Q => sm_master(0)
    );
\FSM_sequential_sm_master_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \FSM_sequential_sm_master[1]_i_2_n_0\,
      D => \FSM_sequential_sm_master[1]_i_1_n_0\,
      Q => sm_master(1)
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
      INIT => X"07707070"
    )
        port map (
      I0 => \bit_cntr_reg__0\(3),
      I1 => \bit_cntr_reg__0\(4),
      I2 => \bit_cntr_reg__0\(2),
      I3 => \bit_cntr_reg__0\(1),
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
      I2 => \bit_cntr_reg__0\(2),
      I3 => \bit_cntr_reg__0\(0),
      I4 => \bit_cntr_reg__0\(1),
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
      I3 => \bit_cntr_reg__0\(0),
      I4 => \bit_cntr_reg__0\(2),
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
      INIT => X"BA8A"
    )
        port map (
      I0 => \^o_debug\(0),
      I1 => reset,
      I2 => s00_axi_aresetn,
      I3 => sm_master(0),
      O => \core_state[0]_i_1_n_0\
    );
\core_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \core_state[0]_i_1_n_0\,
      Q => \^o_debug\(0),
      R => '0'
    );
free_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => sm_master(1),
      I1 => sm_master(0),
      I2 => \^spi_free\,
      O => free_i_i_1_n_0
    );
free_i_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \FSM_sequential_sm_master[1]_i_2_n_0\,
      D => free_i_i_1_n_0,
      Q => \^spi_free\
    );
nCS_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0090"
    )
        port map (
      I0 => sm_master(1),
      I1 => sm_master(0),
      I2 => s00_axi_aresetn,
      I3 => reset,
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    axi_awready_reg : in STD_LOGIC;
    axi_wready_reg : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    i_ADclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor is
  signal cnt_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cnt_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cnt_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cnt_4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cnt_f : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_f[11]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_12_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_13_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_12_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_13_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_12_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_13_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal cnt_fix : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_fix[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_fix[15]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fix[15]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fix[15]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_fix[15]_i_5_n_0\ : STD_LOGIC;
  signal cnt_fix_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_x[0]_i_2_n_0\ : STD_LOGIC;
  signal cnt_x_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_x_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal flag_end_cnt : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_cnt_f_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_x_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_f[3]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_f[7]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_f[7]_i_11\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_f[7]_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_fix[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_fix[15]_i_3\ : label is "soft_lutpair5";
begin
\cnt_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(0),
      Q => cnt_1(0),
      R => '0'
    );
\cnt_1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(10),
      Q => cnt_1(10),
      R => '0'
    );
\cnt_1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(11),
      Q => cnt_1(11),
      R => '0'
    );
\cnt_1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(12),
      Q => cnt_1(12),
      R => '0'
    );
\cnt_1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(13),
      Q => cnt_1(13),
      R => '0'
    );
\cnt_1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(14),
      Q => cnt_1(14),
      R => '0'
    );
\cnt_1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(15),
      Q => cnt_1(15),
      R => '0'
    );
\cnt_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(1),
      Q => cnt_1(1),
      R => '0'
    );
\cnt_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(2),
      Q => cnt_1(2),
      R => '0'
    );
\cnt_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(3),
      Q => cnt_1(3),
      R => '0'
    );
\cnt_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(4),
      Q => cnt_1(4),
      R => '0'
    );
\cnt_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(5),
      Q => cnt_1(5),
      R => '0'
    );
\cnt_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(6),
      Q => cnt_1(6),
      R => '0'
    );
\cnt_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(7),
      Q => cnt_1(7),
      R => '0'
    );
\cnt_1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(8),
      Q => cnt_1(8),
      R => '0'
    );
\cnt_1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_x_reg(9),
      Q => cnt_1(9),
      R => '0'
    );
\cnt_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(0),
      Q => cnt_2(0),
      R => '0'
    );
\cnt_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(10),
      Q => cnt_2(10),
      R => '0'
    );
\cnt_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(11),
      Q => cnt_2(11),
      R => '0'
    );
\cnt_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(12),
      Q => cnt_2(12),
      R => '0'
    );
\cnt_2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(13),
      Q => cnt_2(13),
      R => '0'
    );
\cnt_2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(14),
      Q => cnt_2(14),
      R => '0'
    );
\cnt_2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(15),
      Q => cnt_2(15),
      R => '0'
    );
\cnt_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(1),
      Q => cnt_2(1),
      R => '0'
    );
\cnt_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(2),
      Q => cnt_2(2),
      R => '0'
    );
\cnt_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(3),
      Q => cnt_2(3),
      R => '0'
    );
\cnt_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(4),
      Q => cnt_2(4),
      R => '0'
    );
\cnt_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(5),
      Q => cnt_2(5),
      R => '0'
    );
\cnt_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(6),
      Q => cnt_2(6),
      R => '0'
    );
\cnt_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(7),
      Q => cnt_2(7),
      R => '0'
    );
\cnt_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(8),
      Q => cnt_2(8),
      R => '0'
    );
\cnt_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_1(9),
      Q => cnt_2(9),
      R => '0'
    );
\cnt_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(0),
      Q => cnt_3(0),
      R => '0'
    );
\cnt_3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(10),
      Q => cnt_3(10),
      R => '0'
    );
\cnt_3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(11),
      Q => cnt_3(11),
      R => '0'
    );
\cnt_3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(12),
      Q => cnt_3(12),
      R => '0'
    );
\cnt_3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(13),
      Q => cnt_3(13),
      R => '0'
    );
\cnt_3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(14),
      Q => cnt_3(14),
      R => '0'
    );
\cnt_3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(15),
      Q => cnt_3(15),
      R => '0'
    );
\cnt_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(1),
      Q => cnt_3(1),
      R => '0'
    );
\cnt_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(2),
      Q => cnt_3(2),
      R => '0'
    );
\cnt_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(3),
      Q => cnt_3(3),
      R => '0'
    );
\cnt_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(4),
      Q => cnt_3(4),
      R => '0'
    );
\cnt_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(5),
      Q => cnt_3(5),
      R => '0'
    );
\cnt_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(6),
      Q => cnt_3(6),
      R => '0'
    );
\cnt_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(7),
      Q => cnt_3(7),
      R => '0'
    );
\cnt_3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(8),
      Q => cnt_3(8),
      R => '0'
    );
\cnt_3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_2(9),
      Q => cnt_3(9),
      R => '0'
    );
\cnt_4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(0),
      Q => cnt_4(0),
      R => '0'
    );
\cnt_4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(10),
      Q => cnt_4(10),
      R => '0'
    );
\cnt_4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(11),
      Q => cnt_4(11),
      R => '0'
    );
\cnt_4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(12),
      Q => cnt_4(12),
      R => '0'
    );
\cnt_4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(13),
      Q => cnt_4(13),
      R => '0'
    );
\cnt_4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(14),
      Q => cnt_4(14),
      R => '0'
    );
\cnt_4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(15),
      Q => cnt_4(15),
      R => '0'
    );
\cnt_4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(1),
      Q => cnt_4(1),
      R => '0'
    );
\cnt_4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(2),
      Q => cnt_4(2),
      R => '0'
    );
\cnt_4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(3),
      Q => cnt_4(3),
      R => '0'
    );
\cnt_4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(4),
      Q => cnt_4(4),
      R => '0'
    );
\cnt_4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(5),
      Q => cnt_4(5),
      R => '0'
    );
\cnt_4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(6),
      Q => cnt_4(6),
      R => '0'
    );
\cnt_4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(7),
      Q => cnt_4(7),
      R => '0'
    );
\cnt_4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(8),
      Q => cnt_4(8),
      R => '0'
    );
\cnt_4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => cnt_3(9),
      Q => cnt_4(9),
      R => '0'
    );
\cnt_f[11]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_3(9),
      I1 => cnt_2(9),
      I2 => cnt_4(9),
      O => \cnt_f[11]_i_10_n_0\
    );
\cnt_f[11]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_3(8),
      I1 => cnt_4(8),
      I2 => cnt_2(8),
      O => \cnt_f[11]_i_11_n_0\
    );
\cnt_f[11]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_4(7),
      I1 => cnt_3(7),
      I2 => cnt_2(7),
      O => \cnt_f[11]_i_12_n_0\
    );
\cnt_f[11]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_3(6),
      I1 => cnt_2(6),
      I2 => cnt_4(6),
      O => \cnt_f[11]_i_13_n_0\
    );
\cnt_f[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(10),
      I1 => cnt_2(10),
      I2 => cnt_3(10),
      I3 => \cnt_f[11]_i_10_n_0\,
      I4 => cnt_1(10),
      O => \cnt_f[11]_i_2_n_0\
    );
\cnt_f[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(9),
      I1 => cnt_2(9),
      I2 => cnt_3(9),
      I3 => \cnt_f[11]_i_11_n_0\,
      I4 => cnt_1(9),
      O => \cnt_f[11]_i_3_n_0\
    );
\cnt_f[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(8),
      I1 => cnt_2(8),
      I2 => cnt_3(8),
      I3 => \cnt_f[11]_i_12_n_0\,
      I4 => cnt_1(8),
      O => \cnt_f[11]_i_4_n_0\
    );
\cnt_f[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(7),
      I1 => cnt_2(7),
      I2 => cnt_3(7),
      I3 => \cnt_f[11]_i_13_n_0\,
      I4 => cnt_1(7),
      O => \cnt_f[11]_i_5_n_0\
    );
\cnt_f[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[11]_i_2_n_0\,
      I1 => cnt_3(11),
      I2 => cnt_2(11),
      I3 => cnt_4(11),
      I4 => cnt_1(11),
      I5 => \cnt_f[15]_i_11_n_0\,
      O => \cnt_f[11]_i_6_n_0\
    );
\cnt_f[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[11]_i_3_n_0\,
      I1 => cnt_3(10),
      I2 => cnt_2(10),
      I3 => cnt_4(10),
      I4 => cnt_1(10),
      I5 => \cnt_f[11]_i_10_n_0\,
      O => \cnt_f[11]_i_7_n_0\
    );
\cnt_f[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[11]_i_4_n_0\,
      I1 => cnt_3(9),
      I2 => cnt_2(9),
      I3 => cnt_4(9),
      I4 => cnt_1(9),
      I5 => \cnt_f[11]_i_11_n_0\,
      O => \cnt_f[11]_i_8_n_0\
    );
\cnt_f[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[11]_i_5_n_0\,
      I1 => cnt_3(8),
      I2 => cnt_2(8),
      I3 => cnt_4(8),
      I4 => cnt_1(8),
      I5 => \cnt_f[11]_i_12_n_0\,
      O => \cnt_f[11]_i_9_n_0\
    );
\cnt_f[15]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_3(11),
      I1 => cnt_2(11),
      I2 => cnt_4(11),
      O => \cnt_f[15]_i_10_n_0\
    );
\cnt_f[15]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_4(10),
      I1 => cnt_3(10),
      I2 => cnt_2(10),
      O => \cnt_f[15]_i_11_n_0\
    );
\cnt_f[15]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_3(13),
      I1 => cnt_2(13),
      I2 => cnt_4(13),
      O => \cnt_f[15]_i_12_n_0\
    );
\cnt_f[15]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => cnt_3(15),
      I1 => cnt_2(15),
      I2 => cnt_4(15),
      I3 => cnt_1(15),
      O => \cnt_f[15]_i_13_n_0\
    );
\cnt_f[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(13),
      I1 => cnt_2(13),
      I2 => cnt_3(13),
      I3 => \cnt_f[15]_i_9_n_0\,
      I4 => cnt_1(13),
      O => \cnt_f[15]_i_2_n_0\
    );
\cnt_f[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(12),
      I1 => cnt_2(12),
      I2 => cnt_3(12),
      I3 => \cnt_f[15]_i_10_n_0\,
      I4 => cnt_1(12),
      O => \cnt_f[15]_i_3_n_0\
    );
\cnt_f[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(11),
      I1 => cnt_2(11),
      I2 => cnt_3(11),
      I3 => \cnt_f[15]_i_11_n_0\,
      I4 => cnt_1(11),
      O => \cnt_f[15]_i_4_n_0\
    );
\cnt_f[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187871E871E1E78"
    )
        port map (
      I0 => cnt_1(14),
      I1 => \cnt_f[15]_i_12_n_0\,
      I2 => \cnt_f[15]_i_13_n_0\,
      I3 => cnt_3(14),
      I4 => cnt_2(14),
      I5 => cnt_4(14),
      O => \cnt_f[15]_i_5_n_0\
    );
\cnt_f[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[15]_i_2_n_0\,
      I1 => cnt_3(14),
      I2 => cnt_2(14),
      I3 => cnt_4(14),
      I4 => cnt_1(14),
      I5 => \cnt_f[15]_i_12_n_0\,
      O => \cnt_f[15]_i_6_n_0\
    );
\cnt_f[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[15]_i_3_n_0\,
      I1 => cnt_3(13),
      I2 => cnt_2(13),
      I3 => cnt_4(13),
      I4 => cnt_1(13),
      I5 => \cnt_f[15]_i_9_n_0\,
      O => \cnt_f[15]_i_7_n_0\
    );
\cnt_f[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[15]_i_4_n_0\,
      I1 => cnt_3(12),
      I2 => cnt_2(12),
      I3 => cnt_4(12),
      I4 => cnt_1(12),
      I5 => \cnt_f[15]_i_10_n_0\,
      O => \cnt_f[15]_i_8_n_0\
    );
\cnt_f[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_2(12),
      I1 => cnt_3(12),
      I2 => cnt_4(12),
      O => \cnt_f[15]_i_9_n_0\
    );
\cnt_f[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt_4(2),
      I1 => cnt_2(2),
      I2 => cnt_3(2),
      O => \cnt_f[3]_i_10_n_0\
    );
\cnt_f[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(2),
      I1 => cnt_2(2),
      I2 => cnt_3(2),
      I3 => \cnt_f[3]_i_9_n_0\,
      I4 => cnt_1(2),
      O => \cnt_f[3]_i_2_n_0\
    );
\cnt_f[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \cnt_f[3]_i_9_n_0\,
      I1 => cnt_1(2),
      I2 => cnt_4(2),
      I3 => cnt_2(2),
      I4 => cnt_3(2),
      O => \cnt_f[3]_i_3_n_0\
    );
\cnt_f[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => cnt_3(1),
      I1 => cnt_2(1),
      I2 => cnt_4(1),
      I3 => cnt_1(1),
      O => \cnt_f[3]_i_4_n_0\
    );
\cnt_f[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[3]_i_2_n_0\,
      I1 => cnt_3(3),
      I2 => cnt_2(3),
      I3 => cnt_4(3),
      I4 => cnt_1(3),
      I5 => \cnt_f[7]_i_13_n_0\,
      O => \cnt_f[3]_i_5_n_0\
    );
\cnt_f[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \cnt_f[3]_i_10_n_0\,
      I1 => cnt_1(2),
      I2 => cnt_1(1),
      I3 => cnt_4(1),
      I4 => cnt_2(1),
      I5 => cnt_3(1),
      O => \cnt_f[3]_i_6_n_0\
    );
\cnt_f[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \cnt_f[3]_i_4_n_0\,
      I1 => cnt_3(0),
      I2 => cnt_2(0),
      I3 => cnt_4(0),
      O => \cnt_f[3]_i_7_n_0\
    );
\cnt_f[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => cnt_3(0),
      I1 => cnt_2(0),
      I2 => cnt_4(0),
      I3 => cnt_1(0),
      O => \cnt_f[3]_i_8_n_0\
    );
\cnt_f[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_2(1),
      I1 => cnt_3(1),
      I2 => cnt_4(1),
      O => \cnt_f[3]_i_9_n_0\
    );
\cnt_f[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_4(5),
      I1 => cnt_3(5),
      I2 => cnt_2(5),
      O => \cnt_f[7]_i_10_n_0\
    );
\cnt_f[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cnt_4(5),
      I1 => cnt_2(5),
      I2 => cnt_3(5),
      O => \cnt_f[7]_i_11_n_0\
    );
\cnt_f[7]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_2(3),
      I1 => cnt_3(3),
      I2 => cnt_4(3),
      O => \cnt_f[7]_i_12_n_0\
    );
\cnt_f[7]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => cnt_4(2),
      I1 => cnt_2(2),
      I2 => cnt_3(2),
      O => \cnt_f[7]_i_13_n_0\
    );
\cnt_f[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(6),
      I1 => cnt_2(6),
      I2 => cnt_3(6),
      I3 => \cnt_f[7]_i_10_n_0\,
      I4 => cnt_1(6),
      O => \cnt_f[7]_i_2_n_0\
    );
\cnt_f[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => cnt_1(5),
      I1 => cnt_3(4),
      I2 => cnt_2(4),
      I3 => cnt_4(4),
      I4 => \cnt_f[7]_i_11_n_0\,
      O => \cnt_f[7]_i_3_n_0\
    );
\cnt_f[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(4),
      I1 => cnt_2(4),
      I2 => cnt_3(4),
      I3 => \cnt_f[7]_i_12_n_0\,
      I4 => cnt_1(4),
      O => \cnt_f[7]_i_4_n_0\
    );
\cnt_f[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => cnt_4(3),
      I1 => cnt_2(3),
      I2 => cnt_3(3),
      I3 => \cnt_f[7]_i_13_n_0\,
      I4 => cnt_1(3),
      O => \cnt_f[7]_i_5_n_0\
    );
\cnt_f[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[7]_i_2_n_0\,
      I1 => cnt_3(7),
      I2 => cnt_2(7),
      I3 => cnt_4(7),
      I4 => cnt_1(7),
      I5 => \cnt_f[11]_i_13_n_0\,
      O => \cnt_f[7]_i_6_n_0\
    );
\cnt_f[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[7]_i_3_n_0\,
      I1 => cnt_3(6),
      I2 => cnt_2(6),
      I3 => cnt_4(6),
      I4 => cnt_1(6),
      I5 => \cnt_f[7]_i_10_n_0\,
      O => \cnt_f[7]_i_7_n_0\
    );
\cnt_f[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \cnt_f[7]_i_4_n_0\,
      I1 => \cnt_f[7]_i_11_n_0\,
      I2 => cnt_1(5),
      I3 => cnt_4(4),
      I4 => cnt_2(4),
      I5 => cnt_3(4),
      O => \cnt_f[7]_i_8_n_0\
    );
\cnt_f[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[7]_i_5_n_0\,
      I1 => cnt_3(4),
      I2 => cnt_2(4),
      I3 => cnt_4(4),
      I4 => cnt_1(4),
      I5 => \cnt_f[7]_i_12_n_0\,
      O => \cnt_f[7]_i_9_n_0\
    );
\cnt_f_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[3]_i_1_n_7\,
      Q => cnt_f(0),
      R => '0'
    );
\cnt_f_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[11]_i_1_n_5\,
      Q => cnt_f(10),
      R => '0'
    );
\cnt_f_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[11]_i_1_n_4\,
      Q => cnt_f(11),
      R => '0'
    );
\cnt_f_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_f_reg[7]_i_1_n_0\,
      CO(3) => \cnt_f_reg[11]_i_1_n_0\,
      CO(2) => \cnt_f_reg[11]_i_1_n_1\,
      CO(1) => \cnt_f_reg[11]_i_1_n_2\,
      CO(0) => \cnt_f_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_f[11]_i_2_n_0\,
      DI(2) => \cnt_f[11]_i_3_n_0\,
      DI(1) => \cnt_f[11]_i_4_n_0\,
      DI(0) => \cnt_f[11]_i_5_n_0\,
      O(3) => \cnt_f_reg[11]_i_1_n_4\,
      O(2) => \cnt_f_reg[11]_i_1_n_5\,
      O(1) => \cnt_f_reg[11]_i_1_n_6\,
      O(0) => \cnt_f_reg[11]_i_1_n_7\,
      S(3) => \cnt_f[11]_i_6_n_0\,
      S(2) => \cnt_f[11]_i_7_n_0\,
      S(1) => \cnt_f[11]_i_8_n_0\,
      S(0) => \cnt_f[11]_i_9_n_0\
    );
\cnt_f_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[15]_i_1_n_7\,
      Q => cnt_f(12),
      R => '0'
    );
\cnt_f_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[15]_i_1_n_6\,
      Q => cnt_f(13),
      R => '0'
    );
\cnt_f_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[15]_i_1_n_5\,
      Q => cnt_f(14),
      R => '0'
    );
\cnt_f_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[15]_i_1_n_4\,
      Q => cnt_f(15),
      R => '0'
    );
\cnt_f_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_f_reg[11]_i_1_n_0\,
      CO(3) => \NLW_cnt_f_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_f_reg[15]_i_1_n_1\,
      CO(1) => \cnt_f_reg[15]_i_1_n_2\,
      CO(0) => \cnt_f_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \cnt_f[15]_i_2_n_0\,
      DI(1) => \cnt_f[15]_i_3_n_0\,
      DI(0) => \cnt_f[15]_i_4_n_0\,
      O(3) => \cnt_f_reg[15]_i_1_n_4\,
      O(2) => \cnt_f_reg[15]_i_1_n_5\,
      O(1) => \cnt_f_reg[15]_i_1_n_6\,
      O(0) => \cnt_f_reg[15]_i_1_n_7\,
      S(3) => \cnt_f[15]_i_5_n_0\,
      S(2) => \cnt_f[15]_i_6_n_0\,
      S(1) => \cnt_f[15]_i_7_n_0\,
      S(0) => \cnt_f[15]_i_8_n_0\
    );
\cnt_f_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[3]_i_1_n_6\,
      Q => cnt_f(1),
      R => '0'
    );
\cnt_f_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[3]_i_1_n_5\,
      Q => cnt_f(2),
      R => '0'
    );
\cnt_f_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[3]_i_1_n_4\,
      Q => cnt_f(3),
      R => '0'
    );
\cnt_f_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_f_reg[3]_i_1_n_0\,
      CO(2) => \cnt_f_reg[3]_i_1_n_1\,
      CO(1) => \cnt_f_reg[3]_i_1_n_2\,
      CO(0) => \cnt_f_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_f[3]_i_2_n_0\,
      DI(2) => \cnt_f[3]_i_3_n_0\,
      DI(1) => \cnt_f[3]_i_4_n_0\,
      DI(0) => cnt_1(0),
      O(3) => \cnt_f_reg[3]_i_1_n_4\,
      O(2) => \cnt_f_reg[3]_i_1_n_5\,
      O(1) => \cnt_f_reg[3]_i_1_n_6\,
      O(0) => \cnt_f_reg[3]_i_1_n_7\,
      S(3) => \cnt_f[3]_i_5_n_0\,
      S(2) => \cnt_f[3]_i_6_n_0\,
      S(1) => \cnt_f[3]_i_7_n_0\,
      S(0) => \cnt_f[3]_i_8_n_0\
    );
\cnt_f_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[7]_i_1_n_7\,
      Q => cnt_f(4),
      R => '0'
    );
\cnt_f_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[7]_i_1_n_6\,
      Q => cnt_f(5),
      R => '0'
    );
\cnt_f_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[7]_i_1_n_5\,
      Q => cnt_f(6),
      R => '0'
    );
\cnt_f_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[7]_i_1_n_4\,
      Q => cnt_f(7),
      R => '0'
    );
\cnt_f_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_f_reg[3]_i_1_n_0\,
      CO(3) => \cnt_f_reg[7]_i_1_n_0\,
      CO(2) => \cnt_f_reg[7]_i_1_n_1\,
      CO(1) => \cnt_f_reg[7]_i_1_n_2\,
      CO(0) => \cnt_f_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_f[7]_i_2_n_0\,
      DI(2) => \cnt_f[7]_i_3_n_0\,
      DI(1) => \cnt_f[7]_i_4_n_0\,
      DI(0) => \cnt_f[7]_i_5_n_0\,
      O(3) => \cnt_f_reg[7]_i_1_n_4\,
      O(2) => \cnt_f_reg[7]_i_1_n_5\,
      O(1) => \cnt_f_reg[7]_i_1_n_6\,
      O(0) => \cnt_f_reg[7]_i_1_n_7\,
      S(3) => \cnt_f[7]_i_6_n_0\,
      S(2) => \cnt_f[7]_i_7_n_0\,
      S(1) => \cnt_f[7]_i_8_n_0\,
      S(0) => \cnt_f[7]_i_9_n_0\
    );
\cnt_f_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[11]_i_1_n_7\,
      Q => cnt_f(8),
      R => '0'
    );
\cnt_f_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1_n_0\,
      D => \cnt_f_reg[11]_i_1_n_6\,
      Q => cnt_f(9),
      R => '0'
    );
\cnt_fix[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_fix(0),
      O => cnt_fix_0(0)
    );
\cnt_fix[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \cnt_fix[15]_i_2_n_0\,
      I1 => \cnt_fix[15]_i_3_n_0\,
      I2 => \cnt_fix[15]_i_4_n_0\,
      I3 => \cnt_fix[15]_i_5_n_0\,
      O => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_fix(5),
      I1 => cnt_fix(4),
      I2 => cnt_fix(7),
      I3 => cnt_fix(6),
      O => \cnt_fix[15]_i_2_n_0\
    );
\cnt_fix[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_fix(1),
      I1 => cnt_fix(0),
      I2 => cnt_fix(3),
      I3 => cnt_fix(2),
      O => \cnt_fix[15]_i_3_n_0\
    );
\cnt_fix[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => cnt_fix(12),
      I1 => cnt_fix(13),
      I2 => cnt_fix(15),
      I3 => cnt_fix(14),
      O => \cnt_fix[15]_i_4_n_0\
    );
\cnt_fix[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_fix(9),
      I1 => cnt_fix(8),
      I2 => cnt_fix(11),
      I3 => cnt_fix(10),
      O => \cnt_fix[15]_i_5_n_0\
    );
\cnt_fix_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cnt_fix_0(0),
      Q => cnt_fix(0),
      R => '0'
    );
\cnt_fix_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(10),
      Q => cnt_fix(10),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(11),
      Q => cnt_fix(11),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(12),
      Q => cnt_fix(12),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(13),
      Q => cnt_fix(13),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(14),
      Q => cnt_fix(14),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(15),
      Q => cnt_fix(15),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(1),
      Q => cnt_fix(1),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(2),
      Q => cnt_fix(2),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(3),
      Q => cnt_fix(3),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(4),
      Q => cnt_fix(4),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(5),
      Q => cnt_fix(5),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(6),
      Q => cnt_fix(6),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(7),
      Q => cnt_fix(7),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(8),
      Q => cnt_fix(8),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_fix_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => data0(9),
      Q => cnt_fix(9),
      R => \cnt_fix[15]_i_1_n_0\
    );
\cnt_x[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_x_reg(0),
      O => \cnt_x[0]_i_2_n_0\
    );
\cnt_x_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[0]_i_1_n_7\,
      Q => cnt_x_reg(0)
    );
\cnt_x_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_x_reg[0]_i_1_n_0\,
      CO(2) => \cnt_x_reg[0]_i_1_n_1\,
      CO(1) => \cnt_x_reg[0]_i_1_n_2\,
      CO(0) => \cnt_x_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_x_reg[0]_i_1_n_4\,
      O(2) => \cnt_x_reg[0]_i_1_n_5\,
      O(1) => \cnt_x_reg[0]_i_1_n_6\,
      O(0) => \cnt_x_reg[0]_i_1_n_7\,
      S(3 downto 1) => cnt_x_reg(3 downto 1),
      S(0) => \cnt_x[0]_i_2_n_0\
    );
\cnt_x_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[8]_i_1_n_5\,
      Q => cnt_x_reg(10)
    );
\cnt_x_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[8]_i_1_n_4\,
      Q => cnt_x_reg(11)
    );
\cnt_x_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[12]_i_1_n_7\,
      Q => cnt_x_reg(12)
    );
\cnt_x_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_x_reg[8]_i_1_n_0\,
      CO(3) => \NLW_cnt_x_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_x_reg[12]_i_1_n_1\,
      CO(1) => \cnt_x_reg[12]_i_1_n_2\,
      CO(0) => \cnt_x_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_x_reg[12]_i_1_n_4\,
      O(2) => \cnt_x_reg[12]_i_1_n_5\,
      O(1) => \cnt_x_reg[12]_i_1_n_6\,
      O(0) => \cnt_x_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_x_reg(15 downto 12)
    );
\cnt_x_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[12]_i_1_n_6\,
      Q => cnt_x_reg(13)
    );
\cnt_x_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[12]_i_1_n_5\,
      Q => cnt_x_reg(14)
    );
\cnt_x_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[12]_i_1_n_4\,
      Q => cnt_x_reg(15)
    );
\cnt_x_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[0]_i_1_n_6\,
      Q => cnt_x_reg(1)
    );
\cnt_x_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[0]_i_1_n_5\,
      Q => cnt_x_reg(2)
    );
\cnt_x_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[0]_i_1_n_4\,
      Q => cnt_x_reg(3)
    );
\cnt_x_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[4]_i_1_n_7\,
      Q => cnt_x_reg(4)
    );
\cnt_x_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_x_reg[0]_i_1_n_0\,
      CO(3) => \cnt_x_reg[4]_i_1_n_0\,
      CO(2) => \cnt_x_reg[4]_i_1_n_1\,
      CO(1) => \cnt_x_reg[4]_i_1_n_2\,
      CO(0) => \cnt_x_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_x_reg[4]_i_1_n_4\,
      O(2) => \cnt_x_reg[4]_i_1_n_5\,
      O(1) => \cnt_x_reg[4]_i_1_n_6\,
      O(0) => \cnt_x_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_x_reg(7 downto 4)
    );
\cnt_x_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[4]_i_1_n_6\,
      Q => cnt_x_reg(5)
    );
\cnt_x_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[4]_i_1_n_5\,
      Q => cnt_x_reg(6)
    );
\cnt_x_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[4]_i_1_n_4\,
      Q => cnt_x_reg(7)
    );
\cnt_x_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[8]_i_1_n_7\,
      Q => cnt_x_reg(8)
    );
\cnt_x_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_x_reg[4]_i_1_n_0\,
      CO(3) => \cnt_x_reg[8]_i_1_n_0\,
      CO(2) => \cnt_x_reg[8]_i_1_n_1\,
      CO(1) => \cnt_x_reg[8]_i_1_n_2\,
      CO(0) => \cnt_x_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_x_reg[8]_i_1_n_4\,
      O(2) => \cnt_x_reg[8]_i_1_n_5\,
      O(1) => \cnt_x_reg[8]_i_1_n_6\,
      O(0) => \cnt_x_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_x_reg(11 downto 8)
    );
\cnt_x_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ADclk,
      CE => '1',
      CLR => flag_end_cnt,
      D => \cnt_x_reg[8]_i_1_n_6\,
      Q => cnt_x_reg(9)
    );
flag_end_cnt_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => flag_end_cnt,
      S => \cnt_fix[15]_i_1_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => cnt_fix(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => cnt_fix(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => cnt_fix(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => cnt_fix(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => cnt_fix(15 downto 13)
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(0),
      O => D(0)
    );
\slv_reg0[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(10),
      O => D(10)
    );
\slv_reg0[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(11),
      O => D(11)
    );
\slv_reg0[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(12),
      O => D(12)
    );
\slv_reg0[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(13),
      O => D(13)
    );
\slv_reg0[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(14),
      O => D(14)
    );
\slv_reg0[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(15),
      O => D(15)
    );
\slv_reg0[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(1),
      O => D(1)
    );
\slv_reg0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(2),
      O => D(2)
    );
\slv_reg0[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(3),
      O => D(3)
    );
\slv_reg0[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(4),
      O => D(4)
    );
\slv_reg0[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(5),
      O => D(5)
    );
\slv_reg0[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(6),
      O => D(6)
    );
\slv_reg0[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(7),
      O => D(7)
    );
\slv_reg0[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(8),
      O => D(8)
    );
\slv_reg0[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => cnt_f(9),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    i_Lclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    axi_awready_reg : in STD_LOGIC;
    axi_wready_reg : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor_0 : entity is "clk_monitor";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor_0 is
  signal \cnt_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_1_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_2_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_3_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_4_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_f[11]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_11__0_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_12__0_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_13__0_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_f[11]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_11__0_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_12__0_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_13__0_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_f[15]_i_9__0_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_f[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_11__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_12__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_13__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_f[7]_i_9_n_0\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_f_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_f_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_f_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_f_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_f_reg_n_0_[9]\ : STD_LOGIC;
  signal cnt_fix : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_fix[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_fix[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_fix[15]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_fix[15]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_fix[15]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_fix_reg_n_0_[9]\ : STD_LOGIC;
  signal \cnt_x[0]_i_2__0_n_0\ : STD_LOGIC;
  signal cnt_x_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_x_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \cnt_x_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \cnt_x_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \cnt_x_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \cnt_x_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal flag_end_cnt_reg_n_0 : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_carry__2_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal \NLW_cnt_f_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_x_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_f[3]_i_10__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_f[7]_i_10__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_f[7]_i_11__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_f[7]_i_13__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_fix[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_fix[15]_i_3__0\ : label is "soft_lutpair8";
begin
\cnt_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(0),
      Q => \cnt_1_reg_n_0_[0]\,
      R => '0'
    );
\cnt_1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(10),
      Q => \cnt_1_reg_n_0_[10]\,
      R => '0'
    );
\cnt_1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(11),
      Q => \cnt_1_reg_n_0_[11]\,
      R => '0'
    );
\cnt_1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(12),
      Q => \cnt_1_reg_n_0_[12]\,
      R => '0'
    );
\cnt_1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(13),
      Q => \cnt_1_reg_n_0_[13]\,
      R => '0'
    );
\cnt_1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(14),
      Q => \cnt_1_reg_n_0_[14]\,
      R => '0'
    );
\cnt_1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(15),
      Q => \cnt_1_reg_n_0_[15]\,
      R => '0'
    );
\cnt_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(1),
      Q => \cnt_1_reg_n_0_[1]\,
      R => '0'
    );
\cnt_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(2),
      Q => \cnt_1_reg_n_0_[2]\,
      R => '0'
    );
\cnt_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(3),
      Q => \cnt_1_reg_n_0_[3]\,
      R => '0'
    );
\cnt_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(4),
      Q => \cnt_1_reg_n_0_[4]\,
      R => '0'
    );
\cnt_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(5),
      Q => \cnt_1_reg_n_0_[5]\,
      R => '0'
    );
\cnt_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(6),
      Q => \cnt_1_reg_n_0_[6]\,
      R => '0'
    );
\cnt_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(7),
      Q => \cnt_1_reg_n_0_[7]\,
      R => '0'
    );
\cnt_1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(8),
      Q => \cnt_1_reg_n_0_[8]\,
      R => '0'
    );
\cnt_1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => cnt_x_reg(9),
      Q => \cnt_1_reg_n_0_[9]\,
      R => '0'
    );
\cnt_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[0]\,
      Q => \cnt_2_reg_n_0_[0]\,
      R => '0'
    );
\cnt_2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[10]\,
      Q => \cnt_2_reg_n_0_[10]\,
      R => '0'
    );
\cnt_2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[11]\,
      Q => \cnt_2_reg_n_0_[11]\,
      R => '0'
    );
\cnt_2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[12]\,
      Q => \cnt_2_reg_n_0_[12]\,
      R => '0'
    );
\cnt_2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[13]\,
      Q => \cnt_2_reg_n_0_[13]\,
      R => '0'
    );
\cnt_2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[14]\,
      Q => \cnt_2_reg_n_0_[14]\,
      R => '0'
    );
\cnt_2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[15]\,
      Q => \cnt_2_reg_n_0_[15]\,
      R => '0'
    );
\cnt_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[1]\,
      Q => \cnt_2_reg_n_0_[1]\,
      R => '0'
    );
\cnt_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[2]\,
      Q => \cnt_2_reg_n_0_[2]\,
      R => '0'
    );
\cnt_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[3]\,
      Q => \cnt_2_reg_n_0_[3]\,
      R => '0'
    );
\cnt_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[4]\,
      Q => \cnt_2_reg_n_0_[4]\,
      R => '0'
    );
\cnt_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[5]\,
      Q => \cnt_2_reg_n_0_[5]\,
      R => '0'
    );
\cnt_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[6]\,
      Q => \cnt_2_reg_n_0_[6]\,
      R => '0'
    );
\cnt_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[7]\,
      Q => \cnt_2_reg_n_0_[7]\,
      R => '0'
    );
\cnt_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[8]\,
      Q => \cnt_2_reg_n_0_[8]\,
      R => '0'
    );
\cnt_2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_1_reg_n_0_[9]\,
      Q => \cnt_2_reg_n_0_[9]\,
      R => '0'
    );
\cnt_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[0]\,
      Q => \cnt_3_reg_n_0_[0]\,
      R => '0'
    );
\cnt_3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[10]\,
      Q => \cnt_3_reg_n_0_[10]\,
      R => '0'
    );
\cnt_3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[11]\,
      Q => \cnt_3_reg_n_0_[11]\,
      R => '0'
    );
\cnt_3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[12]\,
      Q => \cnt_3_reg_n_0_[12]\,
      R => '0'
    );
\cnt_3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[13]\,
      Q => \cnt_3_reg_n_0_[13]\,
      R => '0'
    );
\cnt_3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[14]\,
      Q => \cnt_3_reg_n_0_[14]\,
      R => '0'
    );
\cnt_3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[15]\,
      Q => \cnt_3_reg_n_0_[15]\,
      R => '0'
    );
\cnt_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[1]\,
      Q => \cnt_3_reg_n_0_[1]\,
      R => '0'
    );
\cnt_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[2]\,
      Q => \cnt_3_reg_n_0_[2]\,
      R => '0'
    );
\cnt_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[3]\,
      Q => \cnt_3_reg_n_0_[3]\,
      R => '0'
    );
\cnt_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[4]\,
      Q => \cnt_3_reg_n_0_[4]\,
      R => '0'
    );
\cnt_3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[5]\,
      Q => \cnt_3_reg_n_0_[5]\,
      R => '0'
    );
\cnt_3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[6]\,
      Q => \cnt_3_reg_n_0_[6]\,
      R => '0'
    );
\cnt_3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[7]\,
      Q => \cnt_3_reg_n_0_[7]\,
      R => '0'
    );
\cnt_3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[8]\,
      Q => \cnt_3_reg_n_0_[8]\,
      R => '0'
    );
\cnt_3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_2_reg_n_0_[9]\,
      Q => \cnt_3_reg_n_0_[9]\,
      R => '0'
    );
\cnt_4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[0]\,
      Q => \cnt_4_reg_n_0_[0]\,
      R => '0'
    );
\cnt_4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[10]\,
      Q => \cnt_4_reg_n_0_[10]\,
      R => '0'
    );
\cnt_4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[11]\,
      Q => \cnt_4_reg_n_0_[11]\,
      R => '0'
    );
\cnt_4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[12]\,
      Q => \cnt_4_reg_n_0_[12]\,
      R => '0'
    );
\cnt_4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[13]\,
      Q => \cnt_4_reg_n_0_[13]\,
      R => '0'
    );
\cnt_4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[14]\,
      Q => \cnt_4_reg_n_0_[14]\,
      R => '0'
    );
\cnt_4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[15]\,
      Q => \cnt_4_reg_n_0_[15]\,
      R => '0'
    );
\cnt_4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[1]\,
      Q => \cnt_4_reg_n_0_[1]\,
      R => '0'
    );
\cnt_4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[2]\,
      Q => \cnt_4_reg_n_0_[2]\,
      R => '0'
    );
\cnt_4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[3]\,
      Q => \cnt_4_reg_n_0_[3]\,
      R => '0'
    );
\cnt_4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[4]\,
      Q => \cnt_4_reg_n_0_[4]\,
      R => '0'
    );
\cnt_4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[5]\,
      Q => \cnt_4_reg_n_0_[5]\,
      R => '0'
    );
\cnt_4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[6]\,
      Q => \cnt_4_reg_n_0_[6]\,
      R => '0'
    );
\cnt_4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[7]\,
      Q => \cnt_4_reg_n_0_[7]\,
      R => '0'
    );
\cnt_4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[8]\,
      Q => \cnt_4_reg_n_0_[8]\,
      R => '0'
    );
\cnt_4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_3_reg_n_0_[9]\,
      Q => \cnt_4_reg_n_0_[9]\,
      R => '0'
    );
\cnt_f[11]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_3_reg_n_0_[9]\,
      I1 => \cnt_2_reg_n_0_[9]\,
      I2 => \cnt_4_reg_n_0_[9]\,
      O => \cnt_f[11]_i_10__0_n_0\
    );
\cnt_f[11]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_3_reg_n_0_[8]\,
      I1 => \cnt_4_reg_n_0_[8]\,
      I2 => \cnt_2_reg_n_0_[8]\,
      O => \cnt_f[11]_i_11__0_n_0\
    );
\cnt_f[11]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[7]\,
      I1 => \cnt_3_reg_n_0_[7]\,
      I2 => \cnt_2_reg_n_0_[7]\,
      O => \cnt_f[11]_i_12__0_n_0\
    );
\cnt_f[11]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_3_reg_n_0_[6]\,
      I1 => \cnt_2_reg_n_0_[6]\,
      I2 => \cnt_4_reg_n_0_[6]\,
      O => \cnt_f[11]_i_13__0_n_0\
    );
\cnt_f[11]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[10]\,
      I1 => \cnt_2_reg_n_0_[10]\,
      I2 => \cnt_3_reg_n_0_[10]\,
      I3 => \cnt_f[11]_i_10__0_n_0\,
      I4 => \cnt_1_reg_n_0_[10]\,
      O => \cnt_f[11]_i_2__0_n_0\
    );
\cnt_f[11]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[9]\,
      I1 => \cnt_2_reg_n_0_[9]\,
      I2 => \cnt_3_reg_n_0_[9]\,
      I3 => \cnt_f[11]_i_11__0_n_0\,
      I4 => \cnt_1_reg_n_0_[9]\,
      O => \cnt_f[11]_i_3__0_n_0\
    );
\cnt_f[11]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[8]\,
      I1 => \cnt_2_reg_n_0_[8]\,
      I2 => \cnt_3_reg_n_0_[8]\,
      I3 => \cnt_f[11]_i_12__0_n_0\,
      I4 => \cnt_1_reg_n_0_[8]\,
      O => \cnt_f[11]_i_4__0_n_0\
    );
\cnt_f[11]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[7]\,
      I1 => \cnt_2_reg_n_0_[7]\,
      I2 => \cnt_3_reg_n_0_[7]\,
      I3 => \cnt_f[11]_i_13__0_n_0\,
      I4 => \cnt_1_reg_n_0_[7]\,
      O => \cnt_f[11]_i_5__0_n_0\
    );
\cnt_f[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[11]_i_2__0_n_0\,
      I1 => \cnt_3_reg_n_0_[11]\,
      I2 => \cnt_2_reg_n_0_[11]\,
      I3 => \cnt_4_reg_n_0_[11]\,
      I4 => \cnt_1_reg_n_0_[11]\,
      I5 => \cnt_f[15]_i_11__0_n_0\,
      O => \cnt_f[11]_i_6_n_0\
    );
\cnt_f[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[11]_i_3__0_n_0\,
      I1 => \cnt_3_reg_n_0_[10]\,
      I2 => \cnt_2_reg_n_0_[10]\,
      I3 => \cnt_4_reg_n_0_[10]\,
      I4 => \cnt_1_reg_n_0_[10]\,
      I5 => \cnt_f[11]_i_10__0_n_0\,
      O => \cnt_f[11]_i_7_n_0\
    );
\cnt_f[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[11]_i_4__0_n_0\,
      I1 => \cnt_3_reg_n_0_[9]\,
      I2 => \cnt_2_reg_n_0_[9]\,
      I3 => \cnt_4_reg_n_0_[9]\,
      I4 => \cnt_1_reg_n_0_[9]\,
      I5 => \cnt_f[11]_i_11__0_n_0\,
      O => \cnt_f[11]_i_8_n_0\
    );
\cnt_f[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[11]_i_5__0_n_0\,
      I1 => \cnt_3_reg_n_0_[8]\,
      I2 => \cnt_2_reg_n_0_[8]\,
      I3 => \cnt_4_reg_n_0_[8]\,
      I4 => \cnt_1_reg_n_0_[8]\,
      I5 => \cnt_f[11]_i_12__0_n_0\,
      O => \cnt_f[11]_i_9_n_0\
    );
\cnt_f[15]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_3_reg_n_0_[11]\,
      I1 => \cnt_2_reg_n_0_[11]\,
      I2 => \cnt_4_reg_n_0_[11]\,
      O => \cnt_f[15]_i_10__0_n_0\
    );
\cnt_f[15]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[10]\,
      I1 => \cnt_3_reg_n_0_[10]\,
      I2 => \cnt_2_reg_n_0_[10]\,
      O => \cnt_f[15]_i_11__0_n_0\
    );
\cnt_f[15]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_3_reg_n_0_[13]\,
      I1 => \cnt_2_reg_n_0_[13]\,
      I2 => \cnt_4_reg_n_0_[13]\,
      O => \cnt_f[15]_i_12__0_n_0\
    );
\cnt_f[15]_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \cnt_3_reg_n_0_[15]\,
      I1 => \cnt_2_reg_n_0_[15]\,
      I2 => \cnt_4_reg_n_0_[15]\,
      I3 => \cnt_1_reg_n_0_[15]\,
      O => \cnt_f[15]_i_13__0_n_0\
    );
\cnt_f[15]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[13]\,
      I1 => \cnt_2_reg_n_0_[13]\,
      I2 => \cnt_3_reg_n_0_[13]\,
      I3 => \cnt_f[15]_i_9__0_n_0\,
      I4 => \cnt_1_reg_n_0_[13]\,
      O => \cnt_f[15]_i_2__0_n_0\
    );
\cnt_f[15]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[12]\,
      I1 => \cnt_2_reg_n_0_[12]\,
      I2 => \cnt_3_reg_n_0_[12]\,
      I3 => \cnt_f[15]_i_10__0_n_0\,
      I4 => \cnt_1_reg_n_0_[12]\,
      O => \cnt_f[15]_i_3__0_n_0\
    );
\cnt_f[15]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[11]\,
      I1 => \cnt_2_reg_n_0_[11]\,
      I2 => \cnt_3_reg_n_0_[11]\,
      I3 => \cnt_f[15]_i_11__0_n_0\,
      I4 => \cnt_1_reg_n_0_[11]\,
      O => \cnt_f[15]_i_4__0_n_0\
    );
\cnt_f[15]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187871E871E1E78"
    )
        port map (
      I0 => \cnt_1_reg_n_0_[14]\,
      I1 => \cnt_f[15]_i_12__0_n_0\,
      I2 => \cnt_f[15]_i_13__0_n_0\,
      I3 => \cnt_3_reg_n_0_[14]\,
      I4 => \cnt_2_reg_n_0_[14]\,
      I5 => \cnt_4_reg_n_0_[14]\,
      O => \cnt_f[15]_i_5__0_n_0\
    );
\cnt_f[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[15]_i_2__0_n_0\,
      I1 => \cnt_3_reg_n_0_[14]\,
      I2 => \cnt_2_reg_n_0_[14]\,
      I3 => \cnt_4_reg_n_0_[14]\,
      I4 => \cnt_1_reg_n_0_[14]\,
      I5 => \cnt_f[15]_i_12__0_n_0\,
      O => \cnt_f[15]_i_6_n_0\
    );
\cnt_f[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[15]_i_3__0_n_0\,
      I1 => \cnt_3_reg_n_0_[13]\,
      I2 => \cnt_2_reg_n_0_[13]\,
      I3 => \cnt_4_reg_n_0_[13]\,
      I4 => \cnt_1_reg_n_0_[13]\,
      I5 => \cnt_f[15]_i_9__0_n_0\,
      O => \cnt_f[15]_i_7_n_0\
    );
\cnt_f[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[15]_i_4__0_n_0\,
      I1 => \cnt_3_reg_n_0_[12]\,
      I2 => \cnt_2_reg_n_0_[12]\,
      I3 => \cnt_4_reg_n_0_[12]\,
      I4 => \cnt_1_reg_n_0_[12]\,
      I5 => \cnt_f[15]_i_10__0_n_0\,
      O => \cnt_f[15]_i_8_n_0\
    );
\cnt_f[15]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_2_reg_n_0_[12]\,
      I1 => \cnt_3_reg_n_0_[12]\,
      I2 => \cnt_4_reg_n_0_[12]\,
      O => \cnt_f[15]_i_9__0_n_0\
    );
\cnt_f[3]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[2]\,
      I1 => \cnt_2_reg_n_0_[2]\,
      I2 => \cnt_3_reg_n_0_[2]\,
      O => \cnt_f[3]_i_10__0_n_0\
    );
\cnt_f[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[2]\,
      I1 => \cnt_2_reg_n_0_[2]\,
      I2 => \cnt_3_reg_n_0_[2]\,
      I3 => \cnt_f[3]_i_9__0_n_0\,
      I4 => \cnt_1_reg_n_0_[2]\,
      O => \cnt_f[3]_i_2__0_n_0\
    );
\cnt_f[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \cnt_f[3]_i_9__0_n_0\,
      I1 => \cnt_1_reg_n_0_[2]\,
      I2 => \cnt_4_reg_n_0_[2]\,
      I3 => \cnt_2_reg_n_0_[2]\,
      I4 => \cnt_3_reg_n_0_[2]\,
      O => \cnt_f[3]_i_3_n_0\
    );
\cnt_f[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \cnt_3_reg_n_0_[1]\,
      I1 => \cnt_2_reg_n_0_[1]\,
      I2 => \cnt_4_reg_n_0_[1]\,
      I3 => \cnt_1_reg_n_0_[1]\,
      O => \cnt_f[3]_i_4_n_0\
    );
\cnt_f[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[3]_i_2__0_n_0\,
      I1 => \cnt_3_reg_n_0_[3]\,
      I2 => \cnt_2_reg_n_0_[3]\,
      I3 => \cnt_4_reg_n_0_[3]\,
      I4 => \cnt_1_reg_n_0_[3]\,
      I5 => \cnt_f[7]_i_13__0_n_0\,
      O => \cnt_f[3]_i_5_n_0\
    );
\cnt_f[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => \cnt_f[3]_i_10__0_n_0\,
      I1 => \cnt_1_reg_n_0_[2]\,
      I2 => \cnt_1_reg_n_0_[1]\,
      I3 => \cnt_4_reg_n_0_[1]\,
      I4 => \cnt_2_reg_n_0_[1]\,
      I5 => \cnt_3_reg_n_0_[1]\,
      O => \cnt_f[3]_i_6_n_0\
    );
\cnt_f[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \cnt_f[3]_i_4_n_0\,
      I1 => \cnt_3_reg_n_0_[0]\,
      I2 => \cnt_2_reg_n_0_[0]\,
      I3 => \cnt_4_reg_n_0_[0]\,
      O => \cnt_f[3]_i_7_n_0\
    );
\cnt_f[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \cnt_3_reg_n_0_[0]\,
      I1 => \cnt_2_reg_n_0_[0]\,
      I2 => \cnt_4_reg_n_0_[0]\,
      I3 => \cnt_1_reg_n_0_[0]\,
      O => \cnt_f[3]_i_8_n_0\
    );
\cnt_f[3]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_2_reg_n_0_[1]\,
      I1 => \cnt_3_reg_n_0_[1]\,
      I2 => \cnt_4_reg_n_0_[1]\,
      O => \cnt_f[3]_i_9__0_n_0\
    );
\cnt_f[7]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[5]\,
      I1 => \cnt_3_reg_n_0_[5]\,
      I2 => \cnt_2_reg_n_0_[5]\,
      O => \cnt_f[7]_i_10__0_n_0\
    );
\cnt_f[7]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[5]\,
      I1 => \cnt_2_reg_n_0_[5]\,
      I2 => \cnt_3_reg_n_0_[5]\,
      O => \cnt_f[7]_i_11__0_n_0\
    );
\cnt_f[7]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_2_reg_n_0_[3]\,
      I1 => \cnt_3_reg_n_0_[3]\,
      I2 => \cnt_4_reg_n_0_[3]\,
      O => \cnt_f[7]_i_12__0_n_0\
    );
\cnt_f[7]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[2]\,
      I1 => \cnt_2_reg_n_0_[2]\,
      I2 => \cnt_3_reg_n_0_[2]\,
      O => \cnt_f[7]_i_13__0_n_0\
    );
\cnt_f[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[6]\,
      I1 => \cnt_2_reg_n_0_[6]\,
      I2 => \cnt_3_reg_n_0_[6]\,
      I3 => \cnt_f[7]_i_10__0_n_0\,
      I4 => \cnt_1_reg_n_0_[6]\,
      O => \cnt_f[7]_i_2__0_n_0\
    );
\cnt_f[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEAA880"
    )
        port map (
      I0 => \cnt_1_reg_n_0_[5]\,
      I1 => \cnt_3_reg_n_0_[4]\,
      I2 => \cnt_2_reg_n_0_[4]\,
      I3 => \cnt_4_reg_n_0_[4]\,
      I4 => \cnt_f[7]_i_11__0_n_0\,
      O => \cnt_f[7]_i_3__0_n_0\
    );
\cnt_f[7]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[4]\,
      I1 => \cnt_2_reg_n_0_[4]\,
      I2 => \cnt_3_reg_n_0_[4]\,
      I3 => \cnt_f[7]_i_12__0_n_0\,
      I4 => \cnt_1_reg_n_0_[4]\,
      O => \cnt_f[7]_i_4__0_n_0\
    );
\cnt_f[7]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => \cnt_4_reg_n_0_[3]\,
      I1 => \cnt_2_reg_n_0_[3]\,
      I2 => \cnt_3_reg_n_0_[3]\,
      I3 => \cnt_f[7]_i_13__0_n_0\,
      I4 => \cnt_1_reg_n_0_[3]\,
      O => \cnt_f[7]_i_5__0_n_0\
    );
\cnt_f[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[7]_i_2__0_n_0\,
      I1 => \cnt_3_reg_n_0_[7]\,
      I2 => \cnt_2_reg_n_0_[7]\,
      I3 => \cnt_4_reg_n_0_[7]\,
      I4 => \cnt_1_reg_n_0_[7]\,
      I5 => \cnt_f[11]_i_13__0_n_0\,
      O => \cnt_f[7]_i_6_n_0\
    );
\cnt_f[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[7]_i_3__0_n_0\,
      I1 => \cnt_3_reg_n_0_[6]\,
      I2 => \cnt_2_reg_n_0_[6]\,
      I3 => \cnt_4_reg_n_0_[6]\,
      I4 => \cnt_1_reg_n_0_[6]\,
      I5 => \cnt_f[7]_i_10__0_n_0\,
      O => \cnt_f[7]_i_7_n_0\
    );
\cnt_f[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \cnt_f[7]_i_4__0_n_0\,
      I1 => \cnt_f[7]_i_11__0_n_0\,
      I2 => \cnt_1_reg_n_0_[5]\,
      I3 => \cnt_4_reg_n_0_[4]\,
      I4 => \cnt_2_reg_n_0_[4]\,
      I5 => \cnt_3_reg_n_0_[4]\,
      O => \cnt_f[7]_i_8_n_0\
    );
\cnt_f[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \cnt_f[7]_i_5__0_n_0\,
      I1 => \cnt_3_reg_n_0_[4]\,
      I2 => \cnt_2_reg_n_0_[4]\,
      I3 => \cnt_4_reg_n_0_[4]\,
      I4 => \cnt_1_reg_n_0_[4]\,
      I5 => \cnt_f[7]_i_12__0_n_0\,
      O => \cnt_f[7]_i_9_n_0\
    );
\cnt_f_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[3]_i_1_n_7\,
      Q => \cnt_f_reg_n_0_[0]\,
      R => '0'
    );
\cnt_f_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[11]_i_1_n_5\,
      Q => \cnt_f_reg_n_0_[10]\,
      R => '0'
    );
\cnt_f_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[11]_i_1_n_4\,
      Q => \cnt_f_reg_n_0_[11]\,
      R => '0'
    );
\cnt_f_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_f_reg[7]_i_1_n_0\,
      CO(3) => \cnt_f_reg[11]_i_1_n_0\,
      CO(2) => \cnt_f_reg[11]_i_1_n_1\,
      CO(1) => \cnt_f_reg[11]_i_1_n_2\,
      CO(0) => \cnt_f_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_f[11]_i_2__0_n_0\,
      DI(2) => \cnt_f[11]_i_3__0_n_0\,
      DI(1) => \cnt_f[11]_i_4__0_n_0\,
      DI(0) => \cnt_f[11]_i_5__0_n_0\,
      O(3) => \cnt_f_reg[11]_i_1_n_4\,
      O(2) => \cnt_f_reg[11]_i_1_n_5\,
      O(1) => \cnt_f_reg[11]_i_1_n_6\,
      O(0) => \cnt_f_reg[11]_i_1_n_7\,
      S(3) => \cnt_f[11]_i_6_n_0\,
      S(2) => \cnt_f[11]_i_7_n_0\,
      S(1) => \cnt_f[11]_i_8_n_0\,
      S(0) => \cnt_f[11]_i_9_n_0\
    );
\cnt_f_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[15]_i_1_n_7\,
      Q => \cnt_f_reg_n_0_[12]\,
      R => '0'
    );
\cnt_f_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[15]_i_1_n_6\,
      Q => \cnt_f_reg_n_0_[13]\,
      R => '0'
    );
\cnt_f_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[15]_i_1_n_5\,
      Q => \cnt_f_reg_n_0_[14]\,
      R => '0'
    );
\cnt_f_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[15]_i_1_n_4\,
      Q => \cnt_f_reg_n_0_[15]\,
      R => '0'
    );
\cnt_f_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_f_reg[11]_i_1_n_0\,
      CO(3) => \NLW_cnt_f_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_f_reg[15]_i_1_n_1\,
      CO(1) => \cnt_f_reg[15]_i_1_n_2\,
      CO(0) => \cnt_f_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \cnt_f[15]_i_2__0_n_0\,
      DI(1) => \cnt_f[15]_i_3__0_n_0\,
      DI(0) => \cnt_f[15]_i_4__0_n_0\,
      O(3) => \cnt_f_reg[15]_i_1_n_4\,
      O(2) => \cnt_f_reg[15]_i_1_n_5\,
      O(1) => \cnt_f_reg[15]_i_1_n_6\,
      O(0) => \cnt_f_reg[15]_i_1_n_7\,
      S(3) => \cnt_f[15]_i_5__0_n_0\,
      S(2) => \cnt_f[15]_i_6_n_0\,
      S(1) => \cnt_f[15]_i_7_n_0\,
      S(0) => \cnt_f[15]_i_8_n_0\
    );
\cnt_f_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[3]_i_1_n_6\,
      Q => \cnt_f_reg_n_0_[1]\,
      R => '0'
    );
\cnt_f_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[3]_i_1_n_5\,
      Q => \cnt_f_reg_n_0_[2]\,
      R => '0'
    );
\cnt_f_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[3]_i_1_n_4\,
      Q => \cnt_f_reg_n_0_[3]\,
      R => '0'
    );
\cnt_f_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_f_reg[3]_i_1_n_0\,
      CO(2) => \cnt_f_reg[3]_i_1_n_1\,
      CO(1) => \cnt_f_reg[3]_i_1_n_2\,
      CO(0) => \cnt_f_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_f[3]_i_2__0_n_0\,
      DI(2) => \cnt_f[3]_i_3_n_0\,
      DI(1) => \cnt_f[3]_i_4_n_0\,
      DI(0) => \cnt_1_reg_n_0_[0]\,
      O(3) => \cnt_f_reg[3]_i_1_n_4\,
      O(2) => \cnt_f_reg[3]_i_1_n_5\,
      O(1) => \cnt_f_reg[3]_i_1_n_6\,
      O(0) => \cnt_f_reg[3]_i_1_n_7\,
      S(3) => \cnt_f[3]_i_5_n_0\,
      S(2) => \cnt_f[3]_i_6_n_0\,
      S(1) => \cnt_f[3]_i_7_n_0\,
      S(0) => \cnt_f[3]_i_8_n_0\
    );
\cnt_f_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[7]_i_1_n_7\,
      Q => \cnt_f_reg_n_0_[4]\,
      R => '0'
    );
\cnt_f_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[7]_i_1_n_6\,
      Q => \cnt_f_reg_n_0_[5]\,
      R => '0'
    );
\cnt_f_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[7]_i_1_n_5\,
      Q => \cnt_f_reg_n_0_[6]\,
      R => '0'
    );
\cnt_f_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[7]_i_1_n_4\,
      Q => \cnt_f_reg_n_0_[7]\,
      R => '0'
    );
\cnt_f_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_f_reg[3]_i_1_n_0\,
      CO(3) => \cnt_f_reg[7]_i_1_n_0\,
      CO(2) => \cnt_f_reg[7]_i_1_n_1\,
      CO(1) => \cnt_f_reg[7]_i_1_n_2\,
      CO(0) => \cnt_f_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_f[7]_i_2__0_n_0\,
      DI(2) => \cnt_f[7]_i_3__0_n_0\,
      DI(1) => \cnt_f[7]_i_4__0_n_0\,
      DI(0) => \cnt_f[7]_i_5__0_n_0\,
      O(3) => \cnt_f_reg[7]_i_1_n_4\,
      O(2) => \cnt_f_reg[7]_i_1_n_5\,
      O(1) => \cnt_f_reg[7]_i_1_n_6\,
      O(0) => \cnt_f_reg[7]_i_1_n_7\,
      S(3) => \cnt_f[7]_i_6_n_0\,
      S(2) => \cnt_f[7]_i_7_n_0\,
      S(1) => \cnt_f[7]_i_8_n_0\,
      S(0) => \cnt_f[7]_i_9_n_0\
    );
\cnt_f_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[11]_i_1_n_7\,
      Q => \cnt_f_reg_n_0_[8]\,
      R => '0'
    );
\cnt_f_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_fix[15]_i_1__0_n_0\,
      D => \cnt_f_reg[11]_i_1_n_6\,
      Q => \cnt_f_reg_n_0_[9]\,
      R => '0'
    );
\cnt_fix[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_fix_reg_n_0_[0]\,
      O => cnt_fix(0)
    );
\cnt_fix[15]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \cnt_fix[15]_i_2__0_n_0\,
      I1 => \cnt_fix[15]_i_3__0_n_0\,
      I2 => \cnt_fix[15]_i_4__0_n_0\,
      I3 => \cnt_fix[15]_i_5__0_n_0\,
      O => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix[15]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_fix_reg_n_0_[5]\,
      I1 => \cnt_fix_reg_n_0_[4]\,
      I2 => \cnt_fix_reg_n_0_[7]\,
      I3 => \cnt_fix_reg_n_0_[6]\,
      O => \cnt_fix[15]_i_2__0_n_0\
    );
\cnt_fix[15]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_fix_reg_n_0_[1]\,
      I1 => \cnt_fix_reg_n_0_[0]\,
      I2 => \cnt_fix_reg_n_0_[3]\,
      I3 => \cnt_fix_reg_n_0_[2]\,
      O => \cnt_fix[15]_i_3__0_n_0\
    );
\cnt_fix[15]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \cnt_fix_reg_n_0_[12]\,
      I1 => \cnt_fix_reg_n_0_[13]\,
      I2 => \cnt_fix_reg_n_0_[15]\,
      I3 => \cnt_fix_reg_n_0_[14]\,
      O => \cnt_fix[15]_i_4__0_n_0\
    );
\cnt_fix[15]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \cnt_fix_reg_n_0_[9]\,
      I1 => \cnt_fix_reg_n_0_[8]\,
      I2 => \cnt_fix_reg_n_0_[11]\,
      I3 => \cnt_fix_reg_n_0_[10]\,
      O => \cnt_fix[15]_i_5__0_n_0\
    );
\cnt_fix_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cnt_fix(0),
      Q => \cnt_fix_reg_n_0_[0]\,
      R => '0'
    );
\cnt_fix_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__1_n_6\,
      Q => \cnt_fix_reg_n_0_[10]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__1_n_5\,
      Q => \cnt_fix_reg_n_0_[11]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__1_n_4\,
      Q => \cnt_fix_reg_n_0_[12]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__2_n_7\,
      Q => \cnt_fix_reg_n_0_[13]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__2_n_6\,
      Q => \cnt_fix_reg_n_0_[14]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__2_n_5\,
      Q => \cnt_fix_reg_n_0_[15]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_7,
      Q => \cnt_fix_reg_n_0_[1]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_6,
      Q => \cnt_fix_reg_n_0_[2]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_5,
      Q => \cnt_fix_reg_n_0_[3]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => plusOp_carry_n_4,
      Q => \cnt_fix_reg_n_0_[4]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_7\,
      Q => \cnt_fix_reg_n_0_[5]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_6\,
      Q => \cnt_fix_reg_n_0_[6]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_5\,
      Q => \cnt_fix_reg_n_0_[7]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__0_n_4\,
      Q => \cnt_fix_reg_n_0_[8]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_fix_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \plusOp_carry__1_n_7\,
      Q => \cnt_fix_reg_n_0_[9]\,
      R => \cnt_fix[15]_i_1__0_n_0\
    );
\cnt_x[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_x_reg(0),
      O => \cnt_x[0]_i_2__0_n_0\
    );
\cnt_x_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[0]_i_1__0_n_7\,
      Q => cnt_x_reg(0)
    );
\cnt_x_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_x_reg[0]_i_1__0_n_0\,
      CO(2) => \cnt_x_reg[0]_i_1__0_n_1\,
      CO(1) => \cnt_x_reg[0]_i_1__0_n_2\,
      CO(0) => \cnt_x_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_x_reg[0]_i_1__0_n_4\,
      O(2) => \cnt_x_reg[0]_i_1__0_n_5\,
      O(1) => \cnt_x_reg[0]_i_1__0_n_6\,
      O(0) => \cnt_x_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => cnt_x_reg(3 downto 1),
      S(0) => \cnt_x[0]_i_2__0_n_0\
    );
\cnt_x_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[8]_i_1__0_n_5\,
      Q => cnt_x_reg(10)
    );
\cnt_x_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[8]_i_1__0_n_4\,
      Q => cnt_x_reg(11)
    );
\cnt_x_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[12]_i_1__0_n_7\,
      Q => cnt_x_reg(12)
    );
\cnt_x_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_x_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_cnt_x_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \cnt_x_reg[12]_i_1__0_n_1\,
      CO(1) => \cnt_x_reg[12]_i_1__0_n_2\,
      CO(0) => \cnt_x_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_x_reg[12]_i_1__0_n_4\,
      O(2) => \cnt_x_reg[12]_i_1__0_n_5\,
      O(1) => \cnt_x_reg[12]_i_1__0_n_6\,
      O(0) => \cnt_x_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => cnt_x_reg(15 downto 12)
    );
\cnt_x_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[12]_i_1__0_n_6\,
      Q => cnt_x_reg(13)
    );
\cnt_x_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[12]_i_1__0_n_5\,
      Q => cnt_x_reg(14)
    );
\cnt_x_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[12]_i_1__0_n_4\,
      Q => cnt_x_reg(15)
    );
\cnt_x_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[0]_i_1__0_n_6\,
      Q => cnt_x_reg(1)
    );
\cnt_x_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[0]_i_1__0_n_5\,
      Q => cnt_x_reg(2)
    );
\cnt_x_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[0]_i_1__0_n_4\,
      Q => cnt_x_reg(3)
    );
\cnt_x_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[4]_i_1__0_n_7\,
      Q => cnt_x_reg(4)
    );
\cnt_x_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_x_reg[0]_i_1__0_n_0\,
      CO(3) => \cnt_x_reg[4]_i_1__0_n_0\,
      CO(2) => \cnt_x_reg[4]_i_1__0_n_1\,
      CO(1) => \cnt_x_reg[4]_i_1__0_n_2\,
      CO(0) => \cnt_x_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_x_reg[4]_i_1__0_n_4\,
      O(2) => \cnt_x_reg[4]_i_1__0_n_5\,
      O(1) => \cnt_x_reg[4]_i_1__0_n_6\,
      O(0) => \cnt_x_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => cnt_x_reg(7 downto 4)
    );
\cnt_x_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[4]_i_1__0_n_6\,
      Q => cnt_x_reg(5)
    );
\cnt_x_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[4]_i_1__0_n_5\,
      Q => cnt_x_reg(6)
    );
\cnt_x_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[4]_i_1__0_n_4\,
      Q => cnt_x_reg(7)
    );
\cnt_x_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[8]_i_1__0_n_7\,
      Q => cnt_x_reg(8)
    );
\cnt_x_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_x_reg[4]_i_1__0_n_0\,
      CO(3) => \cnt_x_reg[8]_i_1__0_n_0\,
      CO(2) => \cnt_x_reg[8]_i_1__0_n_1\,
      CO(1) => \cnt_x_reg[8]_i_1__0_n_2\,
      CO(0) => \cnt_x_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_x_reg[8]_i_1__0_n_4\,
      O(2) => \cnt_x_reg[8]_i_1__0_n_5\,
      O(1) => \cnt_x_reg[8]_i_1__0_n_6\,
      O(0) => \cnt_x_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => cnt_x_reg(11 downto 8)
    );
\cnt_x_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Lclk,
      CE => '1',
      CLR => flag_end_cnt_reg_n_0,
      D => \cnt_x_reg[8]_i_1__0_n_6\,
      Q => cnt_x_reg(9)
    );
flag_end_cnt_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      Q => flag_end_cnt_reg_n_0,
      S => \cnt_fix[15]_i_1__0_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \cnt_fix_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3) => \cnt_fix_reg_n_0_[4]\,
      S(2) => \cnt_fix_reg_n_0_[3]\,
      S(1) => \cnt_fix_reg_n_0_[2]\,
      S(0) => \cnt_fix_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3) => \cnt_fix_reg_n_0_[8]\,
      S(2) => \cnt_fix_reg_n_0_[7]\,
      S(1) => \cnt_fix_reg_n_0_[6]\,
      S(0) => \cnt_fix_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__1_n_4\,
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3) => \cnt_fix_reg_n_0_[12]\,
      S(2) => \cnt_fix_reg_n_0_[11]\,
      S(1) => \cnt_fix_reg_n_0_[10]\,
      S(0) => \cnt_fix_reg_n_0_[9]\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2) => \plusOp_carry__2_n_5\,
      O(1) => \plusOp_carry__2_n_6\,
      O(0) => \plusOp_carry__2_n_7\,
      S(3) => '0',
      S(2) => \cnt_fix_reg_n_0_[15]\,
      S(1) => \cnt_fix_reg_n_0_[14]\,
      S(0) => \cnt_fix_reg_n_0_[13]\
    );
\slv_reg0[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[0]\,
      O => D(0)
    );
\slv_reg0[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[1]\,
      O => D(1)
    );
\slv_reg0[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[2]\,
      O => D(2)
    );
\slv_reg0[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[3]\,
      O => D(3)
    );
\slv_reg0[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[4]\,
      O => D(4)
    );
\slv_reg0[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[5]\,
      O => D(5)
    );
\slv_reg0[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[6]\,
      O => D(6)
    );
\slv_reg0[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[7]\,
      O => D(7)
    );
\slv_reg0[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[8]\,
      O => D(8)
    );
\slv_reg0[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[9]\,
      O => D(9)
    );
\slv_reg0[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[10]\,
      O => D(10)
    );
\slv_reg0[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[11]\,
      O => D(11)
    );
\slv_reg0[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[12]\,
      O => D(12)
    );
\slv_reg0[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[13]\,
      O => D(13)
    );
\slv_reg0[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[14]\,
      O => D(14)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => s00_axi_awvalid,
      I2 => axi_awready_reg,
      I3 => axi_wready_reg,
      I4 => s00_axi_wvalid,
      I5 => \cnt_f_reg_n_0_[15]\,
      O => D(15)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl is
  port (
    o_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl is
  signal reset : STD_LOGIC;
  signal spi_free : STD_LOGIC;
begin
\o_debug[11]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => o_debug(4)
    );
ready_i_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => SR(0),
      D => spi_free,
      Q => o_debug(0)
    );
reset_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset
    );
spi_core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2
     port map (
      AR(0) => o_debug(2),
      o_SCLK => o_debug(1),
      o_debug(0) => o_debug(3),
      reset => reset,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      spi_free => spi_free
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_ADC_v2_0_S00_AXI is
  port (
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
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
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_ADC_v2_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_ADC_v2_0_S00_AXI is
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal i_rst : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pointer_tbr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
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
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair13";
begin
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
Inst_ADC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl
     port map (
      SR(0) => i_rst,
      o_debug(4 downto 0) => o_debug(4 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
Inst_ADC_readout_12bit: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_readout_3
     port map (
      CLKB => CLKB,
      SR(0) => i_rst,
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
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_arready\,
      I3 => axi_araddr(2),
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
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => i_rst
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => i_rst
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
      R => i_rst
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
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
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s00_axi_awready\,
      I4 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => i_rst
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => i_rst
    );
axi_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s00_axi_awready\,
      R => i_rst
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wvalid,
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
      R => i_rst
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => slv_reg0(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[10]\,
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[11]\,
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[12]\,
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[13]\,
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[14]\,
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[15]\,
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => pointer_tbr(0),
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => pointer_tbr(1),
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => pointer_tbr(2),
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => pointer_tbr(3),
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[1]\,
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => pointer_tbr(4),
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => pointer_tbr(5),
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => pointer_tbr(6),
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => pointer_tbr(7),
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[24]\,
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[25]\,
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[26]\,
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[27]\,
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[28]\,
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[29]\,
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[2]\,
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[30]\,
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
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
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[31]\,
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[3]\,
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[4]\,
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[5]\,
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[6]\,
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[7]\,
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[8]\,
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[9]\,
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => i_rst
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => i_rst
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => i_rst
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => i_rst
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => i_rst
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => i_rst
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => i_rst
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => i_rst
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => i_rst
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => i_rst
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => i_rst
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => i_rst
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => i_rst
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => i_rst
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => i_rst
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => i_rst
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => i_rst
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => i_rst
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => i_rst
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => i_rst
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => i_rst
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => i_rst
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => i_rst
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => i_rst
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => i_rst
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => i_rst
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => i_rst
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => i_rst
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => i_rst
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => i_rst
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => i_rst
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => i_rst
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
      R => i_rst
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^s00_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s00_axi_wready\,
      R => i_rst
    );
monitor_ADCLK: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor
     port map (
      D(15 downto 0) => p_1_in(15 downto 0),
      axi_awready_reg => \^s00_axi_awready\,
      axi_wready_reg => \^s00_axi_wready\,
      i_ADclk => i_ADclk,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
monitor_LCLK: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_monitor_0
     port map (
      D(15 downto 0) => p_1_in(31 downto 16),
      axi_awready_reg => \^s00_axi_awready\,
      axi_wready_reg => \^s00_axi_wready\,
      i_Lclk => i_Lclk,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(31 downto 16),
      s00_axi_wvalid => s00_axi_wvalid
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(1),
      I3 => \slv_reg_wren__2\,
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(2),
      I3 => \slv_reg_wren__2\,
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(3),
      I3 => \slv_reg_wren__2\,
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => s00_axi_wstrb(0),
      I3 => \slv_reg_wren__2\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => slv_reg0(0),
      R => i_rst
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => slv_reg0(10),
      R => i_rst
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => slv_reg0(11),
      R => i_rst
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => slv_reg0(12),
      R => i_rst
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => slv_reg0(13),
      R => i_rst
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => slv_reg0(14),
      R => i_rst
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => slv_reg0(15),
      R => i_rst
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => p_1_in(16),
      Q => slv_reg0(16),
      R => i_rst
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => p_1_in(17),
      Q => slv_reg0(17),
      R => i_rst
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => p_1_in(18),
      Q => slv_reg0(18),
      R => i_rst
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => p_1_in(19),
      Q => slv_reg0(19),
      R => i_rst
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => slv_reg0(1),
      R => i_rst
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => p_1_in(20),
      Q => slv_reg0(20),
      R => i_rst
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => p_1_in(21),
      Q => slv_reg0(21),
      R => i_rst
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => p_1_in(22),
      Q => slv_reg0(22),
      R => i_rst
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => p_1_in(23),
      Q => slv_reg0(23),
      R => i_rst
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => p_1_in(24),
      Q => slv_reg0(24),
      R => i_rst
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => p_1_in(25),
      Q => slv_reg0(25),
      R => i_rst
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => p_1_in(26),
      Q => slv_reg0(26),
      R => i_rst
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => p_1_in(27),
      Q => slv_reg0(27),
      R => i_rst
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => p_1_in(28),
      Q => slv_reg0(28),
      R => i_rst
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => p_1_in(29),
      Q => slv_reg0(29),
      R => i_rst
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => slv_reg0(2),
      R => i_rst
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => p_1_in(30),
      Q => slv_reg0(30),
      R => i_rst
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => p_1_in(31),
      Q => slv_reg0(31),
      R => i_rst
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => slv_reg0(3),
      R => i_rst
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => slv_reg0(4),
      R => i_rst
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => slv_reg0(5),
      R => i_rst
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => slv_reg0(6),
      R => i_rst
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => slv_reg0(7),
      R => i_rst
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => slv_reg0(8),
      R => i_rst
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => p_1_in(9),
      Q => slv_reg0(9),
      R => i_rst
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => i_rst
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => i_rst
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => i_rst
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => i_rst
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => i_rst
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => i_rst
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => i_rst
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => pointer_tbr(0),
      R => i_rst
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => pointer_tbr(1),
      R => i_rst
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => pointer_tbr(2),
      R => i_rst
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => pointer_tbr(3),
      R => i_rst
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => i_rst
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => pointer_tbr(4),
      R => i_rst
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => pointer_tbr(5),
      R => i_rst
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => pointer_tbr(6),
      R => i_rst
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => pointer_tbr(7),
      R => i_rst
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => i_rst
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => i_rst
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => i_rst
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => i_rst
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => i_rst
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => i_rst
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => i_rst
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => i_rst
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => i_rst
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => i_rst
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => i_rst
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => i_rst
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => i_rst
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => i_rst
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => i_rst
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => i_rst
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => i_rst
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => i_rst
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => i_rst
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => i_rst
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => i_rst
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => i_rst
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => i_rst
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => i_rst
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => i_rst
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => i_rst
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => i_rst
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => i_rst
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => i_rst
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => i_rst
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => i_rst
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => i_rst
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => i_rst
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => i_rst
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => i_rst
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => i_rst
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => i_rst
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => i_rst
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => i_rst
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => i_rst
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => i_rst
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => i_rst
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => i_rst
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => i_rst
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => i_rst
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => i_rst
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => i_rst
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => i_rst
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => i_rst
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => i_rst
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => i_rst
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => i_rst
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => i_rst
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => i_rst
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => i_rst
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => i_rst
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => i_rst
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => i_rst
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => i_rst
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => i_rst
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => i_rst
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => i_rst
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => i_rst
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => i_rst
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => i_rst
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => i_rst
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => i_rst
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => i_rst
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => i_rst
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => i_rst
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => i_rst
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => i_rst
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => i_rst
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => i_rst
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => i_rst
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => i_rst
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => i_rst
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => i_rst
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => i_rst
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => i_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_ADC_v2_0 is
  port (
    o_data_out_ch0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch4 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch5 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch6 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_out_ch7 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
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
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_ADC_v2_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_ADC_v2_0 is
begin
AXI_ADC_v2_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_ADC_v2_0_S00_AXI
     port map (
      CLKB => CLKB,
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
      o_debug(4 downto 0) => o_debug(4 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
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
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_AXI_ADC_0_0,AXI_ADC_v2_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AXI_ADC_v2_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^i_adclk\ : STD_LOGIC;
  signal \^i_miso\ : STD_LOGIC;
  signal \^o_sclk\ : STD_LOGIC;
  signal \^o_debug\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of o_data_clk : signal is "xilinx.com:signal:clock:1.0 o_data_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of o_data_clk : signal is "XIL_INTERFACENAME o_data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_0_0_o_data_clk";
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
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
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
  o_MOSI <= \<const0>\;
  o_SCLK <= \^o_sclk\;
  o_data_clk <= \^i_adclk\;
  o_debug(11) <= \^o_debug\(11);
  o_debug(10) <= \<const0>\;
  o_debug(9) <= \<const0>\;
  o_debug(8 downto 7) <= \^o_debug\(8 downto 7);
  o_debug(6) <= \^o_sclk\;
  o_debug(5) <= \<const0>\;
  o_debug(4) <= \^i_miso\;
  o_debug(0) <= \^o_debug\(0);
  o_nCS <= \^o_debug\(7);
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  o_debug(1) <= 'Z';
  o_debug(2) <= 'Z';
  o_debug(3) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI_ADC_v2_0
     port map (
      CLKB => i_Lclk,
      i_ADclk => \^i_adclk\,
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
      o_debug(4) => \^o_debug\(11),
      o_debug(3 downto 2) => \^o_debug\(8 downto 7),
      o_debug(1) => \^o_sclk\,
      o_debug(0) => \^o_debug\(0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
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
