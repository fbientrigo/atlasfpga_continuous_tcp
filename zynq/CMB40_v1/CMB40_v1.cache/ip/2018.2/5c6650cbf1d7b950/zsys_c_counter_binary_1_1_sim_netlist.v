// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Aug 13 12:35:19 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_c_counter_binary_1_1_sim_netlist.v
// Design      : zsys_c_counter_binary_1_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_c_counter_binary_1_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_0_0_o_data_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
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
  (* C_WIDTH = "16" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
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
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [15:0]Q;
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
  (* C_WIDTH = "16" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
CnMwh7QUBSuPtboMK6zaai/S4KHShr8Fdk/+2pW9T3ZHb3v+RYr0FUaaCZHRecyUlqjBKSBPNfQb
+mm27EwNfew5qh0BbYcb4HdZfi6KA7xOwhFCRKvr7VJjD+EQqTzgAlAmwxsiWeF5uI7sgYQKCGqO
gulLwuS02MksCYMH2FhJU/0XXIhwjywvB1mfeeKtHl6UjtmxUytqIOjVjMMUiTGETPg4FEXBR8kV
DI5JQfFHuBflRJklyIPfj9u7/sydti90vEwXzn3C+l6qwMBDicpeZxleH1yerXabygJZQJqq9XDw
+GTcMFuEcjgvH9gRjkSwtPg5Um7QqOdQhd2Lhg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jbaqHQg1dy2f19jdoHTZZQ9h7tPJ+F1A8A7BbDr3U3ijlmL7l01KrF226BSLJDcGQI5DURxOEqrJ
8aTsHWPtoSc66+f/wzyEAxIhlHUDXBNVLdwlfVhzpoJ9a1vUDxGzkLi2MlEK4vBD76c5Jz5v9FYh
L1t6oF8t8eu+p3k+M8pIc0Barb33Gd1eEFKOQ/TqM9VIVkIFhUVW/7UXeDZUPvuQlpyxDgO0cSNJ
hceWUcQlE/tHf0pxAFF9A2a/yOETA71xIZpBFP2dqI0T219w75mTuSZXfrhOfRxViW9/UMUeLwN4
qdtivY6ngg2trYnQRqo0Au2a6CERfHwrOgaPwA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10016)
`pragma protect data_block
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
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
