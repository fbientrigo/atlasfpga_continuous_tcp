-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Sep 20 15:27:58 2023
-- Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_util_ds_buf_0_0_sim_netlist.vhdl
-- Design      : zsys_util_ds_buf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    OBUF_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 4 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 4 downto 0 );
    IOBUF_DS_P : inout STD_LOGIC_VECTOR ( 4 downto 0 );
    IOBUF_DS_N : inout STD_LOGIC_VECTOR ( 4 downto 0 );
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    IOBUF_IO_IO : inout STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFG_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFGCE_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFGCE_CE : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFGCE_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFH_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFH_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFHCE_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFHCE_CE : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFHCE_O : out STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFG_GT_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFG_GT_CE : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFG_GT_CLR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFG_GT_DIV : in STD_LOGIC_VECTOR ( 14 downto 0 );
    BUFG_GT_O : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is "BUFH";
  attribute C_SIZE : integer;
  attribute C_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf : entity is 5;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf is
  signal \<const0>\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \USE_BUFH.GEN_BUFH[0].BUFH_U\ : label is "PRIMITIVE";
  attribute box_type of \USE_BUFH.GEN_BUFH[1].BUFH_U\ : label is "PRIMITIVE";
  attribute box_type of \USE_BUFH.GEN_BUFH[2].BUFH_U\ : label is "PRIMITIVE";
  attribute box_type of \USE_BUFH.GEN_BUFH[3].BUFH_U\ : label is "PRIMITIVE";
  attribute box_type of \USE_BUFH.GEN_BUFH[4].BUFH_U\ : label is "PRIMITIVE";
begin
  BUFGCE_O(4) <= \<const0>\;
  BUFGCE_O(3) <= \<const0>\;
  BUFGCE_O(2) <= \<const0>\;
  BUFGCE_O(1) <= \<const0>\;
  BUFGCE_O(0) <= \<const0>\;
  BUFG_GT_O(4) <= \<const0>\;
  BUFG_GT_O(3) <= \<const0>\;
  BUFG_GT_O(2) <= \<const0>\;
  BUFG_GT_O(1) <= \<const0>\;
  BUFG_GT_O(0) <= \<const0>\;
  BUFG_O(4) <= \<const0>\;
  BUFG_O(3) <= \<const0>\;
  BUFG_O(2) <= \<const0>\;
  BUFG_O(1) <= \<const0>\;
  BUFG_O(0) <= \<const0>\;
  BUFHCE_O(4) <= \<const0>\;
  BUFHCE_O(3) <= \<const0>\;
  BUFHCE_O(2) <= \<const0>\;
  BUFHCE_O(1) <= \<const0>\;
  BUFHCE_O(0) <= \<const0>\;
  IBUF_DS_ODIV2(4) <= \<const0>\;
  IBUF_DS_ODIV2(3) <= \<const0>\;
  IBUF_DS_ODIV2(2) <= \<const0>\;
  IBUF_DS_ODIV2(1) <= \<const0>\;
  IBUF_DS_ODIV2(0) <= \<const0>\;
  IBUF_OUT(4) <= \<const0>\;
  IBUF_OUT(3) <= \<const0>\;
  IBUF_OUT(2) <= \<const0>\;
  IBUF_OUT(1) <= \<const0>\;
  IBUF_OUT(0) <= \<const0>\;
  IOBUF_IO_O(4) <= \<const0>\;
  IOBUF_IO_O(3) <= \<const0>\;
  IOBUF_IO_O(2) <= \<const0>\;
  IOBUF_IO_O(1) <= \<const0>\;
  IOBUF_IO_O(0) <= \<const0>\;
  OBUF_DS_N(4) <= \<const0>\;
  OBUF_DS_N(3) <= \<const0>\;
  OBUF_DS_N(2) <= \<const0>\;
  OBUF_DS_N(1) <= \<const0>\;
  OBUF_DS_N(0) <= \<const0>\;
  OBUF_DS_P(4) <= \<const0>\;
  OBUF_DS_P(3) <= \<const0>\;
  OBUF_DS_P(2) <= \<const0>\;
  OBUF_DS_P(1) <= \<const0>\;
  OBUF_DS_P(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_BUFH.GEN_BUFH[0].BUFH_U\: unisim.vcomponents.BUFH
     port map (
      I => BUFH_I(0),
      O => BUFH_O(0)
    );
\USE_BUFH.GEN_BUFH[1].BUFH_U\: unisim.vcomponents.BUFH
     port map (
      I => BUFH_I(1),
      O => BUFH_O(1)
    );
\USE_BUFH.GEN_BUFH[2].BUFH_U\: unisim.vcomponents.BUFH
     port map (
      I => BUFH_I(2),
      O => BUFH_O(2)
    );
\USE_BUFH.GEN_BUFH[3].BUFH_U\: unisim.vcomponents.BUFH
     port map (
      I => BUFH_I(3),
      O => BUFH_O(3)
    );
\USE_BUFH.GEN_BUFH[4].BUFH_U\: unisim.vcomponents.BUFH
     port map (
      I => BUFH_I(4),
      O => BUFH_O(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    BUFH_I : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BUFH_O : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "zsys_util_ds_buf_0_0,util_ds_buf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "util_ds_buf,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_BUFGCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_BUFG_GT_O_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_BUFG_O_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_BUFHCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_IBUF_OUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_IOBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_IOBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_IOBUF_IO_IO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_IOBUF_IO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_OBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_OBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of U0 : label is "BUFH";
  attribute C_SIZE : integer;
  attribute C_SIZE of U0 : label is 5;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ds_buf
     port map (
      BUFGCE_CE(4 downto 0) => B"00000",
      BUFGCE_I(4 downto 0) => B"00000",
      BUFGCE_O(4 downto 0) => NLW_U0_BUFGCE_O_UNCONNECTED(4 downto 0),
      BUFG_GT_CE(4 downto 0) => B"00000",
      BUFG_GT_CEMASK(4 downto 0) => B"00000",
      BUFG_GT_CLR(4 downto 0) => B"00000",
      BUFG_GT_CLRMASK(4 downto 0) => B"00000",
      BUFG_GT_DIV(14 downto 0) => B"000000000000000",
      BUFG_GT_I(4 downto 0) => B"00000",
      BUFG_GT_O(4 downto 0) => NLW_U0_BUFG_GT_O_UNCONNECTED(4 downto 0),
      BUFG_I(4 downto 0) => B"00000",
      BUFG_O(4 downto 0) => NLW_U0_BUFG_O_UNCONNECTED(4 downto 0),
      BUFHCE_CE(4 downto 0) => B"00000",
      BUFHCE_I(4 downto 0) => B"00000",
      BUFHCE_O(4 downto 0) => NLW_U0_BUFHCE_O_UNCONNECTED(4 downto 0),
      BUFH_I(4 downto 0) => BUFH_I(4 downto 0),
      BUFH_O(4 downto 0) => BUFH_O(4 downto 0),
      IBUF_DS_N(4 downto 0) => B"00000",
      IBUF_DS_ODIV2(4 downto 0) => NLW_U0_IBUF_DS_ODIV2_UNCONNECTED(4 downto 0),
      IBUF_DS_P(4 downto 0) => B"00000",
      IBUF_OUT(4 downto 0) => NLW_U0_IBUF_OUT_UNCONNECTED(4 downto 0),
      IOBUF_DS_N(4 downto 0) => NLW_U0_IOBUF_DS_N_UNCONNECTED(4 downto 0),
      IOBUF_DS_P(4 downto 0) => NLW_U0_IOBUF_DS_P_UNCONNECTED(4 downto 0),
      IOBUF_IO_I(4 downto 0) => B"00000",
      IOBUF_IO_IO(4 downto 0) => NLW_U0_IOBUF_IO_IO_UNCONNECTED(4 downto 0),
      IOBUF_IO_O(4 downto 0) => NLW_U0_IOBUF_IO_O_UNCONNECTED(4 downto 0),
      IOBUF_IO_T(4 downto 0) => B"00000",
      OBUF_DS_N(4 downto 0) => NLW_U0_OBUF_DS_N_UNCONNECTED(4 downto 0),
      OBUF_DS_P(4 downto 0) => NLW_U0_OBUF_DS_P_UNCONNECTED(4 downto 0),
      OBUF_IN(4 downto 0) => B"00000"
    );
end STRUCTURE;
