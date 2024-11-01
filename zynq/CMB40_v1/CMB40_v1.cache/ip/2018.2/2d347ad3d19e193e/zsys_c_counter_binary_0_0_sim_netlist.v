// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jun 26 16:44:30 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_c_counter_binary_0_0_sim_netlist.v
// Design      : zsys_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 12}, PortType data, PortType.PROP_SRC false" *) output [11:0]Q;

  wire CLK;
  wire [11:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "12" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [11:0]L;
  output THRESH0;
  output [11:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [11:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K2XbUa4auxAzYxTWzWK4KvYSNe6+3R6AisCrb7NiJqeB60V0UoIbr5bSvvUnyZmUmA2CGcftMZ4N
6qFPYlXp9NVciRjDZFDEHcYbIxs/93X4HFQBFdVRprS+svF7lsMqlVmLfAgNbKY+JP11Jd+dyPKh
0dsqAGPIYkAnlHDKRY+lewKG721r3t46Ctzqa7sADPU6qBEorkDe8yk5YfxADprY1CNi2G6vmiT2
TE8rlGMes9qUA+lfyuBgTrVPvssqYe3FpdoZtTrUg5Xi5b05YHrsapr3HF+sRQxr4GI8/0Bygvg7
Wm3mVcuLg1R4bX0w/TxJaWvk41YXU/rL9TCneg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NjIHp21j7U4fpWvguBc9dLgTIhBY9HEU6a4iQcyvIavRxEdvMWKgv/nx430OKWVVYT+ktu7fjqI3
H9ZMjg1irHEgB31SLp+ZzBSJ7QqDROSupMGxWyezHZsE7Ern0M2eYr7hiS5vPXzt2WWzXs50s/qU
a0Nd2BY1GPw/UqB6U0KlFKLlYVbahieCSj26oNzMybesHDUO1QODAFErhi5gCoRNc8VqLAKV6JA/
MlMaX+fG/cnFfZuG2vQhOB3zCws9rcC0s1kjdthd4QDfufeNj9MVM6opMnegKWwlOt516VjqJj4w
OAr6I2RDuH9Nn2qyh5y4XuJwQbp+AaoVzhkTnw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8224)
`pragma protect data_block
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
bzZCrJkxh7o3ZIS2XCu3WA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
