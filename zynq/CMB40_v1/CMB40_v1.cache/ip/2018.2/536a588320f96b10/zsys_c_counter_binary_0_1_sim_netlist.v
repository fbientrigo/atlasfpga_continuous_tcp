// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Aug 14 13:17:57 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_c_counter_binary_0_1_sim_netlist.v
// Design      : zsys_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_AXI_ADC_0_0_o_data_clk" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 8}, PortType data, PortType.PROP_SRC false" *) output [7:0]Q;

  wire CLK;
  wire [7:0]Q;
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
  (* C_WIDTH = "8" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "8" *) 
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
  input [7:0]L;
  output THRESH0;
  output [7:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [7:0]Q;
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
  (* C_WIDTH = "8" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
ezyW7p8BSBpKV8ercu4HvlVEsiOZIeay9H/y0rDtObTvEZ/KEkPdkrnHT0sT4Cjlg7MSJNmR2cQK
L2uJ58VSYAlaDXpl0lf1xKHkhxeyflBMtx11kSj8kKbs6TAS48DBxrv8a/1N9abcbH16RUQxRTxH
6/EsLS4a8cPsYlCBDn/HPoAVLvKlJLvUSjR9OA3Yf+VdKYG6xxzCmXbPLuGyWp98bS8B/uu7Ojk5
rNMjn6t2ZtlMqvgak2NJKpKJYDmGtVsOGGEBs3zmdgg8qFukz0xPF7pA97rUWW9SgbxKyE4vK0R7
vi66r10M7MHWje9rfPs/9HlQlLJyWFD3chKMaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pdNV5+hw14lC03AKTO+CGjZb7sxL/5ITfxG/cQaAYwLMre5AimoP5ychO3pOTTpXcmSTH1H/spPa
phgzbEuZ7NsiQYX3v1+l9dDFpeAkudbCtxNERfhGLGbnVzNCrf8JUynty9J33IoSh5IW+0C342c7
/x5c+WBXoZHsW7+PDx0C41CJBetrFUcqxyD3pqbxgpUIvlT8XvFa0R2RteC3t0Q5fOqsa1tAH9wF
eH+MJTnd7VS+oAOYT2ceMpLGscxQdRKuvDKYE76a3zyqq6kXrP+jWyOko0o2+mZbWH3Uy1cqcYS6
oq0ko9KcOWKpGw0I0I2WbXRn5mLJHt0Zajd3gw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6448)
`pragma protect data_block
Fzu8osT/ru2Rvf6fG25nvF2fW8J2RII6dZt6lgumlcZTqN72/KUBb1jB+BmwTMeplFCM5U0QxvkY
ajjxegbe8Tu/F0qOBZEu6FSNouOixsl4J1HAsOYLFBOOcd+PjVI/FXfOFU+nS3ak0bsx4pam+TAz
gYYE0Z9XxVOIyWjL02Q7G/yCsuioyhYe8N2csmjtF5lRS85jLU+FhjzRv4FusxCOz55pu/+dn8qs
kq4HnxBStKAWM8I5bhpyhVAlHlvXPf1qjnf/5Vr2/Zh2DJGGs9+041r24VzSoeeoL7SDXYKcffKV
Q3p/ZQWv6JT0tVasTC3K/ecxscghwQAvgOF6xhbaNqeqfGpTmky6b1/C8dbYIR9F/xUxtcJAM0rD
oWZ6V+fHat05hd+QqW3LNLe6bJlLSHVNM29SwkOGooMBH1mnf+HoBRQpJ1vOqWUKzOT1vVjiYZTk
pwS24B/f3nDCoAMPYM6e2x2O4RC7M5QUz3dbgm1QP03w//4NX4zw8cwJ7fSPZMPJAIUoZUsshxfO
jH5zLPbeYAa+zxC9q6GGBIPf/fLijotBdPAvC4xiTVkMN9N5KGwTgYcDhls+OjOyYwd6l96rAgsT
kpu824E4tZfTKg054jgbjFv7DV88Xz5qQySoGH5T9dls4p1RYO2yrkGMoxumrr4hmyj7OWA/wWe9
TD+N0H3Eanw4zufeLLUGxMQQBJsKazED0moMaGQGUjBafbpEhcNEkSBeoMXwX5/g8f1GVhevhg4W
68hmSqT0p/axVi9Utn6850aA0gWEdL4n+QCwHAW+nVE2udsDQCCi3jQ3GSaLtl++ghWUGlhxtSAU
4tHsxg88pEmMHlxMfH2UuwUMFV/bQ/vx+EQQulIVssWeIpxOKo6Z8kXbUC6f3EIdRkZGwH5ndXbJ
283rfAra9OVCKaEl5zUWYzfn7oUPS6V3fp0LgIGfkYtIp5KACF9xh2wFuUYlfp9nm31ArLAuhans
MeMCyf/fJZ50zdel7rd8UqMSiDtNslf0IRHFaeSv+tOtraDvX0EX7klWmSYigF2rZV+camtpe6Ax
5hXDWkkNWaK0ToZaKeduy/9AFAuZ5GA449IAi7exQzMNtpUPaSMFK9bpbksF76DuH3CvfvHDpMT9
4mUWxHNpHA7hByojWhcA1QsQAKofNgM+M3F4QLyjlI0APW/qhZd7LSFHTuqHh6PwUbqs0GNMAS3+
sSVVfFdXYzbhbftJ6Gv/7KL/bAHRDCE/trK+5W99n2kX54+8Rft6PUC5eBN7J+UWwR9JB9MaFeXG
NyaDGyrlP/Fs8Nzfx4Nk8yNUUNczq21QLp8AXHYzDlHLB7yrTOqUKfvifwaTWZd8pY5E14ewQ8Sp
/8l4LrJrLtogXRIAhluhyJREMse+rOls9weC/3MU7HtXBR93KfsFI29BkhdY+VNL84DKIAXO7MaS
v9wNpf/4LFE8itdLT98sh5Okhnq0776RoGsPMxzaccT40zEkl15uE7vAu5ng0cW0SMEi24fjLzK/
9cy+SbqJK3B7o3Fr11v3cRGlALVNFrItcbxB3l3n+MWMoYYG3j8ZfF/kd3Z3MxDxtDkl/hlrHayy
OAYx5fD4U+DKtg2bK/rDKinaWLId8NqZ16Bczdlft2geKM3ojxeWnRLPdCVPizgVyUPDzqmbcTz1
QprJwN29LnMZamPZ7gKJw/w0GflJYAUIceHmsYnIHTOFSjdt41RzFYaz7r2yerznPxYDi5z9XXfm
d239Vf80s80bht5IY7ozMDoXrOv3so/jVSZo+5zCjh0l0M5Ht9CSk2aCCHkNAQoC9b8K+53Sdw1Y
0G9/7KTLOUvMSgxXzjr7eCpjchnBn59X8ABErTPxTtz4DZ5Va+jMdb92uuR9OwOFtXZ8GhIRZ5Yu
LYXskAAKJwVJllJ0Ga+uH9ChQxtNebePX4mBMsX2PG43kYel5eIRpNDqJb82PaJ7kDU+eOTmfJFN
vXvFbyJ0yANMoXPAXG1dJ5NoMdGcR/Z5Q3CcJtecWEd+9WrhjwbBZ4jC7wEy41hKlu2Bxweu8BTo
U1KUA0W1uGDtQHdZ8soB3IAyIBWchL3WAQNc3jyKA5sW7ie8YiVTKFrk+z75KzZ2zTIUZ+JTr//H
CvOvA7DugbC1AC7CVzTxxrJELpTdQ5HXNi7M23+nBnuFXUvcqoZufhKS1fhQk0S75tCtartwJz46
wAAcmSIqZJBYmlrXrXjE/JvRvgIzEmoIXAShBDu0/F45TiUA8oS99t8M990esraEFKfCfjfU85z8
Jyg25+iheyFP0nTYm/3uHmo9HWEslAGlExFK5dym/erEreyDBDrb9DVhSyWYnOP07p/OhjUYIntd
zhq6l93Qmjjy3/SvwZu/FIF4YOtRDRqI380ngjCfoFHEF22oGIS0aK/f77G35iguJdcBm8EIsnRY
rvF7qaIUH6Xt5n4/Pt/ZgqzWFALpQKs8JoVJCZdXiDkWT2bcwKNuClehZhZbun1HczGQGC7nxPpI
dd4QdPYayTX16VnrAl7evqbNMPBDcmSYAzmk0Xhw2Yhtc1qiW33LYuQDQeYswVo3VREE6d0GRq2g
p3vt9KhMPWevTTtGrlng70eNfLhgpW/+9gPaXdZU6kT3BUlCyWdXkA/y35HrfRr7mPBrvf6r+i1n
XzHdEbxyTrqtx0DMZkurW54jbsG56JzihzgUsD7TXIR8rMJ1kNordI7C8ElRRCR16OXrG0JTVyqB
qppdTih+89YEVkn0tQaF62V/pRFG8/M7KHdxCIgOuFzGmM7GecenQ0Vp9j+exKj70s1eJkehD1OI
V5rJqGDKoQOCxYqiEZze4s26RB3GvaXtgFzt5JgjYKSlj/ggdcFrRMsjIJLN5/xGTm5GTAJcIE63
wf+l00qJfJgFdqAcvNBGVAl3X2xCyqsf0tFK4kxLuPrAU/c4hg5LOUNOUyO4x/Ftyi+I/OfcDnGJ
LUzerxmduEJEoynXz9NMU30+6AQSjdnUtzZ+12qWBkKVu7gepagjI2DYip4wUwRwSLydXRe5F2i8
L3cAZh9wn37QSz6CVOdA7+KiBoZ/BdKCLkhofUbM59f5AhxRWculYTOfIxVTyqT4iTgphXiwR3Mz
5baNrBsJp2ZFaORf7UVdtAWFq/O1mEvncFzSZFVWSVUSD0S/nkmdPARAjr3TbxfTgIMUyxYNOZT2
/o7orDkx50eOhAZ9fzwlRODcjE5wIot/4N1EGNLrdjGdsUIGCf1rXem4NI1F3MA1xVgbTrXJeoWc
+J/B5dQkKOeDWUEfkYhNw9B7BelS86rhFxkD2U4t1sT2L7b2i75UOPoGDqli0onh5zskTav2331K
Pggu06K6q9V+CtvrrQuw0pfGlxzvm2AsXMhyT0Gc0pu8fTb+iqPtB7kuOuJ3Cfc/Wi0vx7YD1g12
VDUZ63hgcD19wKWcmHnIcRNViiCCUMY6fVVCkclXryqdwO8MJTfoX6mgaLwxteBwpJ3GneX9qfo+
58oqmZ7/jBKVld9Xv8MbNLaGdCjS9mGtnN8hLYEXTy6pEIXLU9NSmFuFyvW+KMZk4h0ziSHSkMqu
NgY9UmRbdYoRZCA3hQakGfp/NXRvsK0FGPEUWOQm2fimACy6yla9CES8WGBW464/TNnSu03QQbU1
wqq2F88SYhOzSwBOAi6YuPA5WVudYdpacFuULJGMgTI/UgNI+TpaVDm/0ogb/OzNH3KCPwfwc0ey
i8ToAUPDOK8jNOw+ESvurpzb0CYTi5f3wCuPBQEx2GOYoqAaTwV/njGXlLn/wvMlcHXkJYz95sPl
Hiev5vgeXbiGKkLWl+/W3tu7HJ0PBq/DhdfJapkpMvJ2kgAOOsHYuVxtBcqJ+TBUhMFNubucr109
CuL8rf0myPgScrmYWasdFp6xoAa1FtpgsKkmn58+7S2ZXH6kSU6NVbNfCC/V210CV2NIHeEebg8K
aCoIGbjveg6yn9bmho+6TGihP12scF6ga/gaN5XJyiXxv1kQOYRn87bFC2OrRD4kwZFWrYgNLsWq
qqYf/b5lfUVtF4uRGA0aB8Zo1nHA4vETDu1nEY71+GxhGDBjWx0Q6cxPngU4rULB+bhh9/TF+87a
qPVbuW9oCjm1T1pdfVEyf6VvDtld8I1RpV9MPwsclKqqTc1VQ213TwrlrxTKWq89hz4vguwq5v3e
Wzr3XkRpy1m8grDCEMs7t+aMzIzAT3lc9MXfzgJd5UuZoDUQKTGxIK1tK1HaxQUkDdWMSgMPYOsr
pEHWlftv3FyvhZ+j4BSk7YzsT5kTBRuGeHkAhrR6zfK6IyPfJhXCDFJnH9pF3NAJ4syafQwRhyD0
k9dgVi0eqAApwv/E+Cb4QlP0PjzA3uPTNbNeUUtW+nfHX2SW7+lx5htcGiz6VsFxznyDX9PP7hTR
Po9+5tTJDBrjKVnitbwc9VDHaXFYr7ICHQbkPH6mikKMAKOtll2unTMFCwPxnIypi4Kqh5+tRLPS
zgOOqOGRZRkjs7nrAtT4KDiTqi7pCWNOpV6h8R9OwbPwAAzZdkuL/1fmSflN8XXw7WyqjcWC7bOo
iE+mVbO0xocX95mbmvdirlk6MYBfF79gtBxJCZnfy7f3ErxGUl21CrORa4uifao99ltB0oGaDgV9
zpCXpRxStax3CaMmPw33NC5zSYMh2WOk0wUjwKncHVb/T6wCXYfOj1v3MpS5h8YLSpfCCn6fhjQu
Wxw0YikMaofWgPlWCEXQ62sgganhXeeYdGk4uF0V6XsS/1Px8rjIVEbqglIw3jud4LyOWM/EYLt0
gKtkmz0ZR2aFxv08v7o4uhs2pz3bQFFqpJqKMa+IXzqBWCPG/IlSU2pWmos1ca45+qu+UUQ6ANvz
eaU04jodhf/Ue2dgYIgaY6smPzBA+981fJf/YKR1TcVyJ9VNyRcVDOXGBzy1kaOKBXPbuh5s6mS+
gtt8LRHUA8Q4mgDEi7Psw4mEvIJDYHRWCJjxqinDWDY+3Jy1XACtYsJO0cIVfi4G41HXy75AfXTU
YZcwQQihK7QNq2fHzuybhpQOd/ddLQf9OrXetB1vC8xC54a+kNSyB2WKdZgjoVF5vtUMYrUNrkeU
wZGiBxSz+V8v4AkXQMX3+9e77Nk9DotVqp6H15SAC+YLLXqAB463cf2n+nSRhRVqwEcghUeKKSLZ
xGnEXFin8jBhA7sWLDN+z+3q5xBV3YpKC2GGfefpX4JOvN1i2It+fTuJBjDwkR0SRBgDBbqyTiqa
C7vzD8skWm08HSmZT42lUf8DPGywV5Urr1ber74CxIjjSMuWdIPifgUy7NaJpz/gsqEbcvyZgW9w
2N8TRtdw32P8U7lr8OKOi69HtssRvVDWBrnAkLuZV7IOrBYdFnpENSbyWrPprnz71UlLnejXxBa8
U+WVmEjL4W1lgnVX4BqDHvxkdcy0vC8y3+cckRPdx01Jnz0h6PI2x2zJ3SYMsXbcee88bESIWVlF
b4A+isf27dokkhh2lqcNhr+jJ9+qxcZMe6V/tU7DQp0JahJdlsPnLfXzO7pQd4hdQem5qtEuqeaf
2pCilBvPcj8Q6jkWCTCzkYTi52XBVo7mUQdbWu0gv9bOcQmUlrLz7vIesOWzRvYHGvHwIGBGzuf9
mDcMkM7cBDLv+KPYmCZKNIyRpvEGNwlncOrGBg4MAA/M1FJJ/0zHhxLrp62TELIKL73QL4GP4AFh
QGOxFZfEHnITGAW1qXM61mCGHTpBCh76FVZkXWD040184oD7wSGkI2c/w0aKlwyh7UeZc0LmFFz0
lsuP9nGreha45U42rFDtqnUfIam27m+0iUUgEgMTuPFjdFkdyzg3roouRVFBh5Hzf2kg3wSfEQba
loJSa6n2XpaNFyixPMI3hufkuZpWPklbMqYC7abFxHpb1O9YZC0yfyiIzBRVH2g3OraTli3BAo7a
5uWrMyD8SouCTaO8sKl/PnHQWTtZsZ5W+pRVRVrp4TOVlcatlyQN+NYaRQdxHMRcM9lZ9Wbr1HK4
FbpdFHVozY2DlEeIXJY40O1vbgF9iP8slbQuGbbk2c1CYwAx3FE3w6VbmF3HC1+I54NBdlSHK+wa
cFkVAXEAMX7G3Q5UQp/SlpJVgRLbCD9wdSe3TITEpajh0pP9jGm6g6iebH44srOWDrnZHrkPOete
SGUuXJEC4Q5bpqwK8IgRQ2HFFUeFlEpm0emmtX4k1OZbl8qMxXA36aQud/sNfsA6+o1M12DDmD+4
f1xqXUDWhdO7WFY30wc/WaXWwYM3PYD6EKFfg7F0vQ/vPXNIdWLgKpqDOKLvIh4pGnwJ42cB8l8s
tVMnCAFAg7G4QOY1BaKcprG7xYl+ALyIR3lf7x4Jy1FXyRhKM96LaLMF9mVH18yCkD3JX0KBb4qr
qHpR6AruCOKPMfr0jPNl67cHxk+Mo/eEPQB/doMYgwcyjOFMPjMa0Dn498ECwytlaO24El4rMtks
oCwuVr1zHoQ+xizpyV04hDLsQixVDWMk+L0fseMG7qVMH//JGVBS/FDbeqM9q5yB05PWbdNYTuAQ
BMomeBlTIBLQ5EA4979J8DuqH6YJrAlaiPl18fr1kQH3G3PuNgpOaT6+6+simDnMPiQs8l+gYnVX
jdnIUDczaLLI/M9TeDV6KEEDfP9ocHpfLf5WiQQh5jDHWM+3/H7K5TGXsoriGHDZH4zXMLO1EDxV
4O65827e24Q3fFZIQumWU7O/6FP1L7LLwxFBbm4hU612pCuPf3zyQCGmMiSfWVcv8D+VATk3FXe0
TmejUwGPSXg/3h8+AQ6iGu64Kd7kHFkSu825hp1A641szwd9mMbj0fezzmkhOCkWFzq8vgoFbfCN
KKvtbGpSQpTWKfC/s8k9lXq++LYXLUsVgU13hh4RP/u4we9xkXNBu8rgjIZ9HK9SfAqcbXoKP57a
+eKPT+pw4lU7IBdwr1YyoSusS805heeSoa3KV7vD9bJ1NoOmRqz7q26rwYeg+z/YV6tKTyElTIOS
hos7tnRed8jD99HU4SdVGA8Hqt+e6V1xYnSCfQeCtbQB6OV8GbEH4TAHvch0LuNbiMkRuHtYFQLk
LMaHHSRlqpOvmYSUK/kX5lDK33wGf+0KRsuMBcyciI8fqeqvwDmk0Q3VOE4NcE2VyhWsG9kmCxfr
ambj2/XcrO3g1AvQe1wWGwON4gJfSn4vIjzqUQIugmi6y7HSRY3h2FtqnYxNbhaK4vYBV2Wenesp
Mq/Lluz6lx6PL75T+YyN47r/h6s40mRFxVOSZDLf9tKpc2bDV/fx/4DobCa+e4dc/IIE5bpHrFQB
soxGuGKxtAlIG3gD/q4E76xJ7VmaDVW2F/1qRdYpRMJ4+TWZ7l8OOEnuOY75S2H1ttDf8Rz+8NSr
nQqp4qYvjaeTeC+L4UTJT6ZRpEifp8PCQwJTWxWe4DUg5XOg8FCn2QW9A4pv4SttqidGlrDg/7TV
pJq/4w72xYpjULcvbkvuXBIGZd+uF9DNFgLmfU+ABwK9evzj620WnYatcKxByndUoV0bzO6fWXAt
gBOkrWVixZ4GDtc2QYlnXDzRkXIu4hULbZg2qcf2Gzb8Vlchv2xRUAsuiUqt4VKizVp4FkUEvVKE
Qfz3ns2xTr4kXyNV2ZSpdS38mtO48ssQpfnJlhIn6X9OEdC7tEWpccNqK9kfD2sbXhs8fJcGvgkn
EnD2ZKaOubWzBlcZk/dSGM3Q2QTrtynjENM8wC8yRxnABPubuy6Cm5ew8tUTWVnlHEgjJWhi+PHe
newYvAxO6GWHNJ4A2scXH6iSOcQ2pJ+Gm5QnyufrlWTrGM8ZS9TUMwWdnjpMmPlk7UZg+t/x+u73
MofZPBepuzK9nTdOqvKaD8+Yjzk1YQPd2odyZ79yfHS+o8qCjQQ44Tb01SnxdRXMKYycZGGp863x
rTi2hFEgs/L9UHjfb3rnb//o6rNCgUYqv17osgxKW2QCtZPAkMxAQ5osmXu4ITGIlaDVqTopLnhK
yHCIpkx9v4bxnrZ7hFbb4Bft9rxw3QzD8cNgcC9AI+RoqPUryQ6waTUTi1D7AkoLaG1S6CEGvbbO
Q2+1biyWhNlgm24riU81I9rbpv6ms0giW/5e8oFY3HK7FcMt7Kh5v4p2bC1MLeS+fQFpFPNGLHr2
rUQzTkM+D5aOl6vcvL8UKp6U0N1cDKHryOw3bonVVfwMofw43vEov1QvqMDmYelQKM67bch8sDLi
rrtnurbslRmpBJTeNDVygtcE8RH330Mms6Px3s0O5CxEWFmndyPYhllDssvhhVlhcqXKS4bIJIlm
hilaa9hfdr7t+ekjXovsi8f+jW/J8KZu4kKY2DOIQUw6LeSCDTaIWU/BwXAzVv1FcvCHRc7zAf83
314TcrA77pyTQptlmFgm4etC2chyvOLYw1C70XQqrr0TK0RHYH25OldMo5BEYKSEK0qgysIEO3Tc
r+aqxuC1VUdWy/0EXwhkosqjYUfE8ZBS60f64QRB+RJF3658FWM3t2FO95gkPXjxNdbFxuqcuTjV
K/l90dx5CIWyY6QLEfdF4PLeFuddZjfKoz/t0aE2ikrTX89g4Y1WfMlflH5mazOMSBzbTn7O0N4w
a8pFoGTigw==
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
