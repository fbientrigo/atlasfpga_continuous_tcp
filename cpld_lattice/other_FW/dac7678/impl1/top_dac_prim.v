// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sat Jan 15 18:26:14 2022
//
// Verilog Description of module top_dac
//

module top_dac (SDA_T, SCL_O, nCLR_O, rstn, Addr_O, nLDAC_O, DIPSW, 
            LED);   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(10[8:15])
    inout SDA_T;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(12[2:7])
    output SCL_O;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(13[2:7])
    output nCLR_O;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(14[2:8])
    input rstn;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(16[2:6])
    output Addr_O;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(17[2:8])
    output nLDAC_O;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(18[2:9])
    input [3:0]DIPSW;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(19[2:7])
    output [7:0]LED;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    
    wire osc_int /* synthesis SET_AS_NETWORK=osc_int, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(66[8:15])
    
    wire GND_net, VCC_net, SCL_O_c, nCLR_O_c, rstn_c, DIPSW_c_3, 
        DIPSW_c_2, DIPSW_c_1, DIPSW_c_0, LED_c_0;
    wire [11:0]DAC_byte;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(69[8:16])
    wire [11:0]DAC_byte_11__N_13;
    
    wire SDA_W, sda_ena_r, n1104, n1434, n1098, SDA_T_out, n3483;
    
    VHI i2 (.Z(VCC_net));
    OSCJ OSCInst0 (.STDBY(GND_net), .OSC(osc_int)) /* synthesis NOM_FREQ="14.00", syn_instantiated=1 */ ;
    defparam OSCInst0.NOM_FREQ = "14.00";
    LUT4 i1087_2_lut (.A(rstn_c), .B(DIPSW_c_0), .Z(n1434)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(112[2] 134[9])
    defparam i1087_2_lut.init = 16'h2222;
    OB Addr_O_pad (.I(GND_net), .O(Addr_O));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(17[2:8])
    OB nCLR_O_pad (.I(nCLR_O_c), .O(nCLR_O));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(14[2:8])
    IB DIPSW_pad_0 (.I(DIPSW[0]), .O(DIPSW_c_0));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(19[2:7])
    IB DIPSW_pad_1 (.I(DIPSW[1]), .O(DIPSW_c_1));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(19[2:7])
    IB DIPSW_pad_2 (.I(DIPSW[2]), .O(DIPSW_c_2));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(19[2:7])
    IB DIPSW_pad_3 (.I(DIPSW[3]), .O(DIPSW_c_3));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(19[2:7])
    IB rstn_pad (.I(rstn), .O(rstn_c));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(16[2:6])
    OB LED_pad_0 (.I(LED_c_0), .O(LED[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    OB LED_pad_1 (.I(VCC_net), .O(LED[1]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    OB LED_pad_2 (.I(VCC_net), .O(LED[2]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    OB LED_pad_3 (.I(VCC_net), .O(LED[3]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    OB LED_pad_4 (.I(VCC_net), .O(LED[4]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    OB LED_pad_5 (.I(VCC_net), .O(LED[5]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    OB LED_pad_6 (.I(VCC_net), .O(LED[6]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    OB LED_pad_7 (.I(VCC_net), .O(LED[7]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(20[2:5])
    OB nLDAC_O_pad (.I(GND_net), .O(nLDAC_O));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(18[2:9])
    FD1P3AX DAC_byte__i5 (.D(DAC_byte_11__N_13[9]), .SP(rstn_c), .CK(osc_int), 
            .Q(DAC_byte[11]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(112[2] 134[9])
    defparam DAC_byte__i5.GSR = "DISABLED";
    FD1P3AX DAC_byte__i4 (.D(DAC_byte_11__N_13[6]), .SP(rstn_c), .CK(osc_int), 
            .Q(DAC_byte[6]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(112[2] 134[9])
    defparam DAC_byte__i4.GSR = "DISABLED";
    FD1P3AX DAC_byte__i3 (.D(DAC_byte_11__N_13[4]), .SP(rstn_c), .CK(osc_int), 
            .Q(DAC_byte[4]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(112[2] 134[9])
    defparam DAC_byte__i3.GSR = "DISABLED";
    FD1P3IX DAC_byte__i2 (.D(n1098), .SP(rstn_c), .CD(n1434), .CK(osc_int), 
            .Q(DAC_byte[3]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(112[2] 134[9])
    defparam DAC_byte__i2.GSR = "DISABLED";
    LUT4 i761_3_lut_3_lut (.A(DIPSW_c_1), .B(DIPSW_c_2), .C(DIPSW_c_3), 
         .Z(n1104)) /* synthesis lut_function=(A (C)+!A !(B+(C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(120[3] 133[12])
    defparam i761_3_lut_3_lut.init = 16'ha1a1;
    OB SCL_O_pad (.I(SCL_O_c), .O(SCL_O));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(13[2:7])
    LUT4 i755_3_lut_4_lut_3_lut (.A(DIPSW_c_1), .B(DIPSW_c_2), .C(DIPSW_c_3), 
         .Z(n1098)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(120[3] 133[12])
    defparam i755_3_lut_4_lut_3_lut.init = 16'h8181;
    LUT4 i1896_2_lut_3_lut (.A(DIPSW_c_1), .B(DIPSW_c_2), .C(DIPSW_c_0), 
         .Z(DAC_byte_11__N_13[4])) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(120[3] 133[12])
    defparam i1896_2_lut_3_lut.init = 16'h8080;
    FD1P3IX DAC_byte__i1 (.D(n1104), .SP(rstn_c), .CD(n1434), .CK(osc_int), 
            .Q(DAC_byte[2]));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(112[2] 134[9])
    defparam DAC_byte__i1.GSR = "DISABLED";
    BB SDA_T_pad (.I(SDA_W), .T(sda_ena_r), .B(SDA_T), .O(SDA_T_out));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(78[1:6])
    FD1S3AX nCLR_O_20 (.D(n3483), .CK(osc_int), .Q(nCLR_O_c));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(112[2] 134[9])
    defparam nCLR_O_20.GSR = "ENABLED";
    GSR GSR_INST (.GSR(rstn_c));
    LUT4 DIPSW_c_0_bdd_4_lut (.A(DIPSW_c_0), .B(DIPSW_c_3), .C(DIPSW_c_1), 
         .D(DIPSW_c_2), .Z(DAC_byte_11__N_13[6])) /* synthesis lut_function=(A (C (D))+!A !(B+((D)+!C))) */ ;
    defparam DIPSW_c_0_bdd_4_lut.init = 16'ha010;
    LUT4 DIPSW_c_1_bdd_4_lut (.A(DIPSW_c_1), .B(DIPSW_c_2), .C(DIPSW_c_0), 
         .D(DIPSW_c_3), .Z(DAC_byte_11__N_13[9])) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B+((D)+!C))) */ ;
    defparam DIPSW_c_1_bdd_4_lut.init = 16'hdfed;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n3483)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    \dac7678_i2c(14000000,200000)  dac_inst (.osc_int(osc_int), .\DAC_byte[6] (DAC_byte[6]), 
            .DIPSW_c_1(DIPSW_c_1), .\DAC_byte[4] (DAC_byte[4]), .SCL_O_c(SCL_O_c), 
            .rstn_c(rstn_c), .GND_net(GND_net), .DIPSW_c_0(DIPSW_c_0), 
            .\DAC_byte[11] (DAC_byte[11]), .LED_c_0(LED_c_0), .\DAC_byte[2] (DAC_byte[2]), 
            .sda_ena_r(sda_ena_r), .\DAC_byte[3] (DAC_byte[3]), .SDA_W(SDA_W), 
            .SDA_T_out(SDA_T_out));   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(87[11:33])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \dac7678_i2c(14000000,200000) 
//

module \dac7678_i2c(14000000,200000)  (osc_int, \DAC_byte[6] , DIPSW_c_1, 
            \DAC_byte[4] , SCL_O_c, rstn_c, GND_net, DIPSW_c_0, \DAC_byte[11] , 
            LED_c_0, \DAC_byte[2] , sda_ena_r, \DAC_byte[3] , SDA_W, 
            SDA_T_out);
    input osc_int;
    input \DAC_byte[6] ;
    input DIPSW_c_1;
    input \DAC_byte[4] ;
    output SCL_O_c;
    input rstn_c;
    input GND_net;
    input DIPSW_c_0;
    input \DAC_byte[11] ;
    output LED_c_0;
    input \DAC_byte[2] ;
    output sda_ena_r;
    input \DAC_byte[3] ;
    output SDA_W;
    input SDA_T_out;
    
    wire osc_int /* synthesis SET_AS_NETWORK=osc_int, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/top_dac.vhd(66[8:15])
    wire [3:0]SCLK_c_test;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(27[2:13])
    
    wire n3053, n3332, n3325, n3083;
    wire [7:0]Data_byte_1;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(57[8:19])
    
    wire osc_int_enable_39, n927, update_2, update_1, update_pulse, 
        update_pulse_N_276, init_1, init_2, init_pulse, init_pulse_N_279;
    wire [15:0]n181;
    
    wire n3342;
    wire [7:0]Data_byte_2;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(58[8:19])
    
    wire n3313, n58, n2882, n3329, n2536, osc_int_enable_48, n1423;
    wire [7:0]n37;
    
    wire rec_ack_ok, osc_int_enable_20, n2928, rec_ack_ok_N_212;
    wire [7:0]ack_counter;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(65[8:19])
    
    wire osc_int_enable_47;
    wire [7:0]n37_adj_328;
    wire [7:0]SCLK_counter;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(60[8:20])
    wire [7:0]freq_counter;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(59[8:20])
    
    wire osc_int_enable_44, n1414;
    wire [7:0]n37_adj_329;
    
    wire n2544, n3343, n4, n3322, repeat_comm_N_292, n2877;
    wire [7:0]ack_fail_counter;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(68[8:24])
    
    wire osc_int_enable_46, n2543;
    wire [7:0]n37_adj_330;
    
    wire osc_int_enable_11, SCL_o_N_219, repeat_comm, osc_int_enable_12, 
        n3327, n20, n3323, n3333, SCL_o_N_228, n1391;
    wire [3:0]n476;
    
    wire n22, n1053, osc_int_enable_33, n2860, SDA_W_N_270, n3084, 
        n21, n26, n20_adj_295, n9, n17, n2853, n2854, n1073, 
        n1129, n3079, n1071, osc_int_enable_18, Fail_ACK_N_236, SDA_R, 
        n446;
    wire [7:0]ca_byte;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(62[8:15])
    
    wire n3344, n3147, n2850, n2851, n2859, n1069, clk_delay1, 
        n3318, n15, n3319, initialize_dac, n1067, n3062, n1063, 
        n1061, n1059, n3087, n3340, n1057, n2892, n2300, n2326, 
        n3145;
    wire [3:0]n800;
    
    wire n3317, n83, osc_int_enable_30, sda_ena_r_N_205, n929, n2, 
        n164, n3199, n26_adj_313, n2302, osc_int_enable_40, SDA_W_N_239, 
        n3336, n573, n3064, n28, n3252, n8, n3328, n3321, n3330, 
        n2897, n208, n3093, n1054, n3334, n3326, n3315, n3320, 
        n2169, n3338, n3130, n3339, n1207, n4_adj_320, n18, n3337, 
        n23, n4_adj_321, n3331, n3316, n2849, n7, n3124, n15_adj_322, 
        n4_adj_323, n3314, n3341, n4_adj_324, n3136, n2858, n2864, 
        n2863, n2857, n2862, n2852, n3076, n64, n3335, n16, 
        n15_adj_325, n2856, n3156, n2861, n3103, n15_adj_326, n2855, 
        n2895, n6, n6_adj_327;
    
    LUT4 i1_2_lut_4_lut (.A(SCLK_c_test[3]), .B(n3053), .C(n3332), .D(n3325), 
         .Z(n3083)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_2_lut_4_lut.init = 16'h0004;
    FD1P3IX Data_byte_1__i2 (.D(\DAC_byte[6] ), .SP(osc_int_enable_39), 
            .CD(n927), .CK(osc_int), .Q(Data_byte_1[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam Data_byte_1__i2.GSR = "DISABLED";
    FD1S3AX update_2_429 (.D(update_1), .CK(osc_int), .Q(update_2)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(84[2] 108[9])
    defparam update_2_429.GSR = "ENABLED";
    FD1S3AX update_pulse_430 (.D(update_pulse_N_276), .CK(osc_int), .Q(update_pulse)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(84[2] 108[9])
    defparam update_pulse_430.GSR = "ENABLED";
    FD1S3AX init_1_434 (.D(DIPSW_c_1), .CK(osc_int), .Q(init_1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(84[2] 108[9])
    defparam init_1_434.GSR = "ENABLED";
    FD1S3AX init_2_435 (.D(init_1), .CK(osc_int), .Q(init_2)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(84[2] 108[9])
    defparam init_2_435.GSR = "ENABLED";
    FD1S3AX init_pulse_436 (.D(init_pulse_N_279), .CK(osc_int), .Q(init_pulse)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(84[2] 108[9])
    defparam init_pulse_436.GSR = "ENABLED";
    FD1P3IX Data_byte_1__i0 (.D(\DAC_byte[4] ), .SP(osc_int_enable_39), 
            .CD(n927), .CK(osc_int), .Q(Data_byte_1[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam Data_byte_1__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_54 (.A(n181[12]), .B(n181[13]), .Z(n3342)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_54.init = 16'heeee;
    LUT4 Data_byte_2_4__bdd_3_lut_2889 (.A(Data_byte_2[4]), .B(SCLK_c_test[0]), 
         .C(Data_byte_2[6]), .Z(n3313)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam Data_byte_2_4__bdd_3_lut_2889.init = 16'hb8b8;
    PFUMX i2200 (.BLUT(n58), .ALUT(n2882), .C0(n3329), .Z(n2536));
    FD1P3IX SCLK_counter_550__i4 (.D(n37[3]), .SP(osc_int_enable_48), .CD(n1423), 
            .CK(osc_int), .Q(SCLK_c_test[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550__i4.GSR = "DISABLED";
    FD1P3IX rec_ack_ok_447 (.D(rec_ack_ok_N_212), .SP(osc_int_enable_20), 
            .CD(n2928), .CK(osc_int), .Q(rec_ack_ok)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam rec_ack_ok_447.GSR = "DISABLED";
    FD1P3IX ack_counter_554__i1 (.D(n37_adj_328[1]), .SP(osc_int_enable_47), 
            .CD(n2536), .CK(osc_int), .Q(ack_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554__i1.GSR = "DISABLED";
    FD1P3IX SCLK_counter_550__i5 (.D(n37[4]), .SP(osc_int_enable_48), .CD(n1423), 
            .CK(osc_int), .Q(SCLK_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550__i5.GSR = "DISABLED";
    FD1P3IX freq_counter_551__i6 (.D(n37_adj_329[6]), .SP(osc_int_enable_44), 
            .CD(n1414), .CK(osc_int), .Q(freq_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551__i6.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n181[12]), .B(n181[13]), .C(n2544), 
         .D(n3343), .Z(n4)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e0;
    FD1P3IX freq_counter_551__i7 (.D(n37_adj_329[7]), .SP(osc_int_enable_44), 
            .CD(n1414), .CK(osc_int), .Q(freq_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551__i7.GSR = "DISABLED";
    FD1P3IX ack_counter_554__i2 (.D(n37_adj_328[2]), .SP(osc_int_enable_47), 
            .CD(n2536), .CK(osc_int), .Q(ack_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554__i2.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(n3322), .B(repeat_comm_N_292), .C(n3342), 
         .D(n181[14]), .Z(n2877)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(311[7] 330[14])
    defparam i1_3_lut_4_lut.init = 16'h2220;
    FD1P3IX ack_fail_counter_553__i6 (.D(n37_adj_330[6]), .SP(osc_int_enable_46), 
            .CD(n2543), .CK(osc_int), .Q(ack_fail_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553__i6.GSR = "DISABLED";
    FD1P3AX o_sclk_444 (.D(SCL_o_N_219), .SP(osc_int_enable_11), .CK(osc_int), 
            .Q(SCL_O_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam o_sclk_444.GSR = "DISABLED";
    FD1P3AX repeat_comm_449 (.D(n3327), .SP(osc_int_enable_12), .CK(osc_int), 
            .Q(repeat_comm)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam repeat_comm_449.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(n181[12]), .B(n181[13]), .C(rec_ack_ok), 
         .D(n3343), .Z(n20)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h0f0e;
    FD1P3IX SCLK_counter_550__i6 (.D(n37[5]), .SP(osc_int_enable_48), .CD(n1423), 
            .CK(osc_int), .Q(SCLK_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550__i6.GSR = "DISABLED";
    LUT4 i762_3_lut_4_lut (.A(SCL_O_c), .B(n3323), .C(n3333), .D(SCL_o_N_228), 
         .Z(n1391)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i762_3_lut_4_lut.init = 16'h9f90;
    LUT4 i23_4_lut (.A(n476[1]), .B(n476[2]), .C(n181[9]), .D(n3083), 
         .Z(n22)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23_4_lut.init = 16'hca00;
    FD1S3AY i2c_states_FSM_i1 (.D(n1053), .CK(osc_int), .Q(n181[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i1.GSR = "ENABLED";
    LUT4 i692_2_lut (.A(n181[0]), .B(rstn_c), .Z(osc_int_enable_33)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i692_2_lut.init = 16'h8888;
    CCU2D freq_counter_551_add_4_9 (.A0(freq_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2860), .S0(n37_adj_329[7]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551_add_4_9.INIT0 = 16'hfaaa;
    defparam freq_counter_551_add_4_9.INIT1 = 16'h0000;
    defparam freq_counter_551_add_4_9.INJECT1_0 = "NO";
    defparam freq_counter_551_add_4_9.INJECT1_1 = "NO";
    PFUMX i22 (.BLUT(SDA_W_N_270), .ALUT(n3084), .C0(n181[7]), .Z(n21));
    LUT4 i43_3_lut (.A(n21), .B(n26), .C(n181[11]), .Z(n20_adj_295)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i43_3_lut.init = 16'hcaca;
    LUT4 i2825_3_lut (.A(n22), .B(n9), .C(n181[10]), .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2825_3_lut.init = 16'hcaca;
    FD1P3IX SCLK_counter_550__i7 (.D(n37[6]), .SP(osc_int_enable_48), .CD(n1423), 
            .CK(osc_int), .Q(SCLK_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550__i7.GSR = "DISABLED";
    FD1S3AX update_1_428 (.D(DIPSW_c_0), .CK(osc_int), .Q(update_1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(84[2] 108[9])
    defparam update_1_428.GSR = "ENABLED";
    CCU2D SCLK_counter_550_add_4_3 (.A0(SCLK_c_test[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(SCLK_c_test[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2853), .COUT(n2854), .S0(n37[1]), .S1(n37[2]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550_add_4_3.INIT0 = 16'hfaaa;
    defparam SCLK_counter_550_add_4_3.INIT1 = 16'hfaaa;
    defparam SCLK_counter_550_add_4_3.INJECT1_0 = "NO";
    defparam SCLK_counter_550_add_4_3.INJECT1_1 = "NO";
    LUT4 i730_4_lut (.A(n181[15]), .B(n181[10]), .C(n3322), .D(n3325), 
         .Z(n1073)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i730_4_lut.init = 16'hce0a;
    FD1P3IX ack_fail_counter_553__i4 (.D(n37_adj_330[4]), .SP(osc_int_enable_46), 
            .CD(n2543), .CK(osc_int), .Q(ack_fail_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553__i4.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_24 (.A(n181[12]), .B(n181[13]), .C(n1129), 
         .D(n3343), .Z(n3079)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_24.init = 16'h0010;
    FD1P3IX Data_byte_1__i4 (.D(\DAC_byte[11] ), .SP(osc_int_enable_39), 
            .CD(n927), .CK(osc_int), .Q(Data_byte_1[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam Data_byte_1__i4.GSR = "DISABLED";
    LUT4 i728_4_lut (.A(n181[14]), .B(n181[9]), .C(n3322), .D(n3325), 
         .Z(n1071)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i728_4_lut.init = 16'hce0a;
    FD1P3IX ack_counter_554__i7 (.D(n37_adj_328[7]), .SP(osc_int_enable_47), 
            .CD(n2536), .CK(osc_int), .Q(ack_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554__i7.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_39_3_lut_4_lut (.A(n181[12]), .B(n181[13]), .C(n181[11]), 
         .D(n3343), .Z(n3327)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1_2_lut_rep_39_3_lut_4_lut.init = 16'h0f0e;
    FD1P3AX Fail_ACK_450 (.D(Fail_ACK_N_236), .SP(osc_int_enable_18), .CK(osc_int), 
            .Q(LED_c_0)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam Fail_ACK_450.GSR = "DISABLED";
    FD1P3IX SCLK_counter_550__i8 (.D(n37[7]), .SP(osc_int_enable_48), .CD(n1423), 
            .CK(osc_int), .Q(SCLK_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550__i8.GSR = "DISABLED";
    FD1P3IX SDA_R_445 (.D(n446), .SP(osc_int_enable_20), .CD(n2928), .CK(osc_int), 
            .Q(SDA_R)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam SDA_R_445.GSR = "DISABLED";
    FD1P3AX ca_byte__i1 (.D(n3344), .SP(osc_int_enable_39), .CK(osc_int), 
            .Q(ca_byte[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam ca_byte__i1.GSR = "DISABLED";
    LUT4 i2849_2_lut_3_lut_4_lut (.A(n181[12]), .B(n181[13]), .C(n181[11]), 
         .D(n3343), .Z(n3147)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2849_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2848_3_lut_4_lut (.A(n3343), .B(n3342), .C(rstn_c), .D(n181[0]), 
         .Z(n2543)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2848_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_55 (.A(n181[15]), .B(n181[14]), .Z(n3343)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_2_lut_rep_55.init = 16'heeee;
    LUT4 i1_2_lut_rep_41_3_lut_4_lut (.A(n181[15]), .B(n181[14]), .C(n181[13]), 
         .D(n181[12]), .Z(n3329)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_2_lut_rep_41_3_lut_4_lut.init = 16'hfffe;
    CCU2D ack_counter_554_add_4_5 (.A0(ack_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ack_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2850), .COUT(n2851), .S0(n37_adj_328[3]), 
          .S1(n37_adj_328[4]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554_add_4_5.INIT0 = 16'hfaaa;
    defparam ack_counter_554_add_4_5.INIT1 = 16'hfaaa;
    defparam ack_counter_554_add_4_5.INJECT1_0 = "NO";
    defparam ack_counter_554_add_4_5.INJECT1_1 = "NO";
    FD1P3IX freq_counter_551__i1 (.D(n37_adj_329[1]), .SP(osc_int_enable_44), 
            .CD(n1414), .CK(osc_int), .Q(freq_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551__i1.GSR = "DISABLED";
    CCU2D freq_counter_551_add_4_7 (.A0(freq_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(freq_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2859), .COUT(n2860), .S0(n37_adj_329[5]), 
          .S1(n37_adj_329[6]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551_add_4_7.INIT0 = 16'hfaaa;
    defparam freq_counter_551_add_4_7.INIT1 = 16'hfaaa;
    defparam freq_counter_551_add_4_7.INJECT1_0 = "NO";
    defparam freq_counter_551_add_4_7.INJECT1_1 = "NO";
    LUT4 i726_4_lut (.A(n181[13]), .B(n3325), .C(n3322), .D(n181[8]), 
         .Z(n1069)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i726_4_lut.init = 16'hce0a;
    FD1P3IX clk_delay1_439 (.D(SCL_O_c), .SP(rstn_c), .CD(osc_int_enable_33), 
            .CK(osc_int), .Q(clk_delay1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam clk_delay1_439.GSR = "DISABLED";
    LUT4 i109_4_lut (.A(rstn_c), .B(n3318), .C(n15), .D(n3329), .Z(osc_int_enable_47)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i109_4_lut.init = 16'ha088;
    FD1P3IX ack_counter_554__i3 (.D(n37_adj_328[3]), .SP(osc_int_enable_47), 
            .CD(n2536), .CK(osc_int), .Q(ack_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554__i3.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_25 (.A(n3343), .B(n3342), .C(rstn_c), .D(n181[0]), 
         .Z(osc_int_enable_20)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_25.init = 16'hf0e0;
    FD1P3IX ack_fail_counter_553__i5 (.D(n37_adj_330[5]), .SP(osc_int_enable_46), 
            .CD(n2543), .CK(osc_int), .Q(ack_fail_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553__i5.GSR = "DISABLED";
    LUT4 i2218_4_lut (.A(SCL_O_c), .B(n181[12]), .C(rec_ack_ok), .D(n3319), 
         .Z(n15)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (C (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(64[8:18])
    defparam i2218_4_lut.init = 16'hfa2a;
    FD1P3AX ca_byte__i2 (.D(initialize_dac), .SP(osc_int_enable_39), .CK(osc_int), 
            .Q(ca_byte[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam ca_byte__i2.GSR = "DISABLED";
    FD1S3AX i2c_states_FSM_i11 (.D(n1073), .CK(osc_int), .Q(n181[15]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i11.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i10 (.D(n1071), .CK(osc_int), .Q(n181[14]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i10.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i9 (.D(n1069), .CK(osc_int), .Q(n181[13]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i9.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i8 (.D(n1067), .CK(osc_int), .Q(n181[12]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i8.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i7 (.D(n3062), .CK(osc_int), .Q(n181[11]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i7.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i6 (.D(n1063), .CK(osc_int), .Q(n181[10]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i6.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i5 (.D(n1061), .CK(osc_int), .Q(n181[9]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i5.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i4 (.D(n1059), .CK(osc_int), .Q(n181[8]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_26 (.A(n3087), .B(n3340), .C(rstn_c), 
         .D(n3333), .Z(n58)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam i1_2_lut_3_lut_4_lut_adj_26.init = 16'h8000;
    FD1P3IX freq_counter_551__i2 (.D(n37_adj_329[2]), .SP(osc_int_enable_44), 
            .CD(n1414), .CK(osc_int), .Q(freq_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551__i2.GSR = "DISABLED";
    FD1S3AX i2c_states_FSM_i3 (.D(n1057), .CK(osc_int), .Q(n181[7]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i3.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i2 (.D(n2892), .CK(osc_int), .Q(n181[1]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2c_states_FSM_i2.GSR = "ENABLED";
    PFUMX mux_454_i1 (.BLUT(n1391), .ALUT(n2300), .C0(n3147), .Z(n2326));
    CCU2D SCLK_counter_550_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n3340), .B1(n3145), .C1(SCLK_c_test[0]), 
          .D1(GND_net), .COUT(n2853), .S1(n37[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550_add_4_1.INIT0 = 16'hF000;
    defparam SCLK_counter_550_add_4_1.INIT1 = 16'hd2d2;
    defparam SCLK_counter_550_add_4_1.INJECT1_0 = "NO";
    defparam SCLK_counter_550_add_4_1.INJECT1_1 = "NO";
    FD1P3IX ack_counter_554__i4 (.D(n37_adj_328[4]), .SP(osc_int_enable_47), 
            .CD(n2536), .CK(osc_int), .Q(ack_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554__i4.GSR = "DISABLED";
    FD1P3IX ack_counter_554__i0 (.D(n37_adj_328[0]), .SP(osc_int_enable_47), 
            .CD(n2536), .CK(osc_int), .Q(ack_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554__i0.GSR = "DISABLED";
    LUT4 i724_4_lut (.A(n181[12]), .B(n181[7]), .C(n3322), .D(n3325), 
         .Z(n1067)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i724_4_lut.init = 16'hce0a;
    LUT4 i477_1_lut_rep_56 (.A(initialize_dac), .Z(n3344)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(159[7] 170[14])
    defparam i477_1_lut_rep_56.init = 16'h5555;
    LUT4 i1866_2_lut_2_lut (.A(initialize_dac), .B(\DAC_byte[2] ), .Z(n800[2])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(159[7] 170[14])
    defparam i1866_2_lut_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_4_lut (.A(n3343), .B(n3342), .C(n181[0]), .D(rstn_c), 
         .Z(n2928)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_4_lut (.A(n3317), .B(n2877), .C(n181[11]), .D(n3323), .Z(n3062)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_4_lut.init = 16'heefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(n3343), .B(n3342), .C(n2544), 
         .D(rec_ack_ok), .Z(n83)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'he0ee;
    FD1P3AX Data_byte_2__i3 (.D(n800[2]), .SP(osc_int_enable_39), .CK(osc_int), 
            .Q(Data_byte_2[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam Data_byte_2__i3.GSR = "DISABLED";
    FD1P3AX sda_ena_r_442 (.D(sda_ena_r_N_205), .SP(osc_int_enable_30), 
            .CK(osc_int), .Q(sda_ena_r)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam sda_ena_r_442.GSR = "DISABLED";
    FD1P3IX ack_fail_counter_553__i0 (.D(n37_adj_330[0]), .SP(osc_int_enable_46), 
            .CD(n2543), .CK(osc_int), .Q(ack_fail_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553__i0.GSR = "DISABLED";
    FD1P3IX freq_counter_551__i3 (.D(n37_adj_329[3]), .SP(osc_int_enable_44), 
            .CD(n1414), .CK(osc_int), .Q(freq_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551__i3.GSR = "DISABLED";
    FD1P3IX initialize_dac_448 (.D(init_pulse), .SP(osc_int_enable_33), 
            .CD(n929), .CK(osc_int), .Q(initialize_dac)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam initialize_dac_448.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(Data_byte_2[7]), .B(n181[15]), .Z(n2)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_2_lut.init = 16'h2222;
    FD1P3IX freq_counter_551__i0 (.D(n37_adj_329[0]), .SP(osc_int_enable_44), 
            .CD(n1414), .CK(osc_int), .Q(freq_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551__i0.GSR = "DISABLED";
    FD1P3IX freq_counter_551__i4 (.D(n37_adj_329[4]), .SP(osc_int_enable_44), 
            .CD(n1414), .CK(osc_int), .Q(freq_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551__i4.GSR = "DISABLED";
    LUT4 i720_4_lut (.A(n181[10]), .B(n164), .C(n3325), .D(n181[14]), 
         .Z(n1063)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i720_4_lut.init = 16'hce0a;
    LUT4 i2_4_lut (.A(n3199), .B(n181[0]), .C(n26_adj_313), .D(rstn_c), 
         .Z(n1414)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i2_4_lut.init = 16'h1000;
    LUT4 i718_4_lut (.A(n181[9]), .B(n164), .C(n3325), .D(n181[13]), 
         .Z(n1061)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i718_4_lut.init = 16'hce0a;
    LUT4 i1_rep_10_2_lut (.A(n181[1]), .B(n2302), .Z(n3199)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_rep_10_2_lut.init = 16'h8888;
    FD1P3IX ack_counter_554__i5 (.D(n37_adj_328[5]), .SP(osc_int_enable_47), 
            .CD(n2536), .CK(osc_int), .Q(ack_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554__i5.GSR = "DISABLED";
    FD1P3JX Data_byte_2__i1 (.D(\DAC_byte[2] ), .SP(osc_int_enable_39), 
            .PD(n927), .CK(osc_int), .Q(Data_byte_2[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam Data_byte_2__i1.GSR = "DISABLED";
    FD1P3IX ack_fail_counter_553__i1 (.D(n37_adj_330[1]), .SP(osc_int_enable_46), 
            .CD(n2543), .CK(osc_int), .Q(ack_fail_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553__i1.GSR = "DISABLED";
    FD1P3IX Data_byte_2__i4 (.D(\DAC_byte[3] ), .SP(osc_int_enable_39), 
            .CD(n927), .CK(osc_int), .Q(Data_byte_2[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam Data_byte_2__i4.GSR = "DISABLED";
    FD1P3AX SDA_W_441 (.D(SDA_W_N_239), .SP(osc_int_enable_40), .CK(osc_int), 
            .Q(SDA_W)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=33, LSE_LLINE=87, LSE_RLINE=87 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam SDA_W_441.GSR = "DISABLED";
    FD1P3IX SCLK_counter_550__i1 (.D(n37[0]), .SP(osc_int_enable_48), .CD(n1423), 
            .CK(osc_int), .Q(SCLK_c_test[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550__i1.GSR = "DISABLED";
    LUT4 i2840_4_lut_4_lut (.A(n181[11]), .B(n3336), .C(n573), .D(rstn_c), 
         .Z(osc_int_enable_48)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i2840_4_lut_4_lut.init = 16'hcd00;
    FD1P3IX SCLK_counter_550__i2 (.D(n37[1]), .SP(osc_int_enable_48), .CD(n1423), 
            .CK(osc_int), .Q(SCLK_c_test[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550__i2.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_28 (.A(rstn_c), .B(n3064), .C(n28), .D(n3323), 
         .Z(n26_adj_313)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_4_lut_adj_28.init = 16'ha888;
    LUT4 i716_4_lut (.A(n181[8]), .B(n164), .C(n3325), .D(n181[12]), 
         .Z(n1059)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i716_4_lut.init = 16'hce0a;
    LUT4 Data_byte_1_4__bdd_3_lut_2881_4_lut (.A(Data_byte_1[4]), .B(n3252), 
         .C(SCLK_c_test[2]), .D(SCLK_c_test[0]), .Z(n476[2])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam Data_byte_1_4__bdd_3_lut_2881_4_lut.init = 16'hcaaa;
    LUT4 i1_4_lut_adj_29 (.A(n3318), .B(n8), .C(rec_ack_ok), .D(n4), 
         .Z(n3064)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_4_lut_adj_29.init = 16'hfeee;
    FD1P3IX ack_fail_counter_553__i7 (.D(n37_adj_330[7]), .SP(osc_int_enable_46), 
            .CD(n2543), .CK(osc_int), .Q(ack_fail_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553__i7.GSR = "DISABLED";
    FD1P3IX freq_counter_551__i5 (.D(n37_adj_329[5]), .SP(osc_int_enable_44), 
            .CD(n1414), .CK(osc_int), .Q(freq_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551__i5.GSR = "DISABLED";
    LUT4 i714_4_lut (.A(n181[7]), .B(SCL_o_N_228), .C(n3325), .D(n3328), 
         .Z(n1057)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i714_4_lut.init = 16'hce0a;
    FD1P3IX ack_fail_counter_553__i2 (.D(n37_adj_330[2]), .SP(osc_int_enable_46), 
            .CD(n2543), .CK(osc_int), .Q(ack_fail_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553__i2.GSR = "DISABLED";
    FD1P3IX ack_fail_counter_553__i3 (.D(n37_adj_330[3]), .SP(osc_int_enable_46), 
            .CD(n2543), .CK(osc_int), .Q(ack_fail_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553__i3.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(n181[1]), .B(n2302), .C(rstn_c), .D(n181[0]), 
         .Z(osc_int_enable_18)) /* synthesis lut_function=(A (B (C))+!A (C (D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_4_lut_4_lut.init = 16'hd080;
    FD1P3IX ack_counter_554__i6 (.D(n37_adj_328[6]), .SP(osc_int_enable_47), 
            .CD(n2536), .CK(osc_int), .Q(ack_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554__i6.GSR = "DISABLED";
    FD1P3IX SCLK_counter_550__i3 (.D(n37[2]), .SP(osc_int_enable_48), .CD(n1423), 
            .CK(osc_int), .Q(SCLK_c_test[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550__i3.GSR = "DISABLED";
    LUT4 i2838_3_lut_4_lut (.A(n181[1]), .B(n2302), .C(rstn_c), .D(n181[0]), 
         .Z(osc_int_enable_44)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2838_3_lut_4_lut.init = 16'h0070;
    LUT4 i1_2_lut_rep_33 (.A(n3053), .B(n3087), .Z(n3321)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_2_lut_rep_33.init = 16'h8888;
    LUT4 i2_4_lut_adj_30 (.A(n3325), .B(n181[11]), .C(n3333), .D(n20), 
         .Z(n28)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i2_4_lut_adj_30.init = 16'hffdc;
    LUT4 i2_3_lut_4_lut_adj_31 (.A(n3053), .B(n3087), .C(n3330), .D(n3329), 
         .Z(n2897)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i2_3_lut_4_lut_adj_31.init = 16'hfff8;
    LUT4 i3_2_lut_rep_44_3_lut_4_lut (.A(SCLK_counter[6]), .B(SCLK_counter[7]), 
         .C(SCLK_counter[4]), .D(SCLK_counter[5]), .Z(n3332)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_2_lut_rep_44_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_32 (.A(repeat_comm), .B(n208), .C(n3093), .D(n1054), 
         .Z(n2892)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2_4_lut_adj_32.init = 16'hffec;
    LUT4 i1907_3_lut_rep_38_4_lut (.A(freq_counter[2]), .B(n3334), .C(freq_counter[5]), 
         .D(freq_counter[1]), .Z(n3326)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1907_3_lut_rep_38_4_lut.init = 16'hf0e0;
    LUT4 i2_3_lut_3_lut (.A(SCLK_c_test[2]), .B(n3315), .C(n3320), .Z(n9)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(437[28:29])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_52 (.A(SCL_O_c), .B(clk_delay1), .Z(n3340)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(439[13:71])
    defparam i1_2_lut_rep_52.init = 16'h2222;
    LUT4 i1_2_lut_rep_34 (.A(rec_ack_ok), .B(n2544), .Z(n3322)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i1_2_lut_rep_34.init = 16'h8888;
    LUT4 i2_3_lut (.A(n2302), .B(SCL_o_N_228), .C(n181[1]), .Z(n8)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i1_3_lut (.A(n181[1]), .B(SCL_o_N_228), .C(n2302), .Z(n1054)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'ha2a2;
    LUT4 i1_4_lut_adj_33 (.A(SCLK_c_test[3]), .B(n3332), .C(SCLK_c_test[0]), 
         .D(n2169), .Z(n3087)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_4_lut_adj_33.init = 16'h0002;
    LUT4 i2796_4_lut (.A(n3338), .B(n3130), .C(n3339), .D(SCLK_c_test[3]), 
         .Z(n3145)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2796_4_lut.init = 16'hfefa;
    LUT4 i2782_3_lut (.A(SCLK_c_test[2]), .B(SCLK_c_test[0]), .C(SCLK_c_test[1]), 
         .Z(n3130)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2782_3_lut.init = 16'hfefe;
    LUT4 update_1_I_0_2_lut (.A(update_1), .B(update_2), .Z(update_pulse_N_276)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(97[19:46])
    defparam update_1_I_0_2_lut.init = 16'h2222;
    LUT4 i1962_4_lut (.A(ack_fail_counter[3]), .B(n1207), .C(ack_fail_counter[2]), 
         .D(n4_adj_320), .Z(n2302)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1962_4_lut.init = 16'heeec;
    LUT4 i1894_2_lut_3_lut_4_lut (.A(rec_ack_ok), .B(n2544), .C(SDA_T_out), 
         .D(n181[15]), .Z(n446)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i1894_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i763_4_lut_4_lut (.A(SCL_O_c), .B(n3323), .C(rec_ack_ok), .D(n3329), 
         .Z(n2300)) /* synthesis lut_function=(A (B+(C (D)))+!A (B (C+!(D))+!B (D))) */ ;
    defparam i763_4_lut_4_lut.init = 16'hf9cc;
    LUT4 i33_4_lut (.A(n181[12]), .B(Data_byte_1[4]), .C(n181[13]), .D(ca_byte[7]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i33_4_lut.init = 16'hcac0;
    LUT4 init_1_I_0_2_lut (.A(init_1), .B(init_2), .Z(init_pulse_N_279)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(105[17:40])
    defparam init_1_I_0_2_lut.init = 16'h2222;
    LUT4 i2_4_lut_adj_34 (.A(freq_counter[4]), .B(n3337), .C(n23), .D(freq_counter[5]), 
         .Z(n26)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2_4_lut_adj_34.init = 16'hffec;
    LUT4 i510_3_lut_4_lut (.A(rec_ack_ok), .B(n2544), .C(n3329), .D(n3320), 
         .Z(n573)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i510_3_lut_4_lut.init = 16'h7f70;
    LUT4 i3_4_lut (.A(ack_fail_counter[6]), .B(ack_fail_counter[4]), .C(ack_fail_counter[5]), 
         .D(ack_fail_counter[7]), .Z(n1207)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(158[9:40])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_rep_37_3_lut (.A(SCL_O_c), .B(clk_delay1), .C(n3087), 
         .Z(n3325)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(439[13:71])
    defparam i2_2_lut_rep_37_3_lut.init = 16'h2020;
    LUT4 i2830_4_lut (.A(rstn_c), .B(n2897), .C(n3336), .D(n181[11]), 
         .Z(osc_int_enable_30)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i2830_4_lut.init = 16'h8088;
    LUT4 i1042_1_lut (.A(n181[1]), .Z(Fail_ACK_N_236)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1042_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_35 (.A(rstn_c), .B(n181[0]), .C(n4_adj_321), .D(n181[1]), 
         .Z(n1423)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam i1_4_lut_adj_35.init = 16'haaa8;
    LUT4 i1_2_lut_adj_36 (.A(ack_fail_counter[1]), .B(ack_fail_counter[0]), 
         .Z(n4_adj_320)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_36.init = 16'h8888;
    LUT4 i608_4_lut (.A(freq_counter[5]), .B(freq_counter[7]), .C(freq_counter[6]), 
         .D(n3331), .Z(SCL_o_N_228)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i608_4_lut.init = 16'hfcec;
    LUT4 i2791_4_lut (.A(rstn_c), .B(n181[0]), .C(n3316), .D(n3329), 
         .Z(osc_int_enable_46)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i2791_4_lut.init = 16'ha088;
    LUT4 i1865_4_lut (.A(n3321), .B(n3330), .C(n3322), .D(n3329), .Z(sda_ena_r_N_205)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1865_4_lut.init = 16'h0322;
    CCU2D ack_counter_554_add_4_3 (.A0(ack_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ack_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2849), .COUT(n2850), .S0(n37_adj_328[1]), 
          .S1(n37_adj_328[2]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554_add_4_3.INIT0 = 16'hfaaa;
    defparam ack_counter_554_add_4_3.INIT1 = 16'hfaaa;
    defparam ack_counter_554_add_4_3.INJECT1_0 = "NO";
    defparam ack_counter_554_add_4_3.INJECT1_1 = "NO";
    LUT4 i136_2_lut_rep_29_3_lut (.A(rec_ack_ok), .B(n2544), .C(n181[15]), 
         .Z(n3317)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i136_2_lut_rep_29_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_28_3_lut (.A(rec_ack_ok), .B(n2544), .C(repeat_comm_N_292), 
         .Z(n3316)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i1_2_lut_rep_28_3_lut.init = 16'h0808;
    LUT4 i5_4_lut (.A(freq_counter[1]), .B(n7), .C(freq_counter[0]), .D(n3124), 
         .Z(n3053)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i5_4_lut.init = 16'h0040;
    LUT4 i1831_2_lut (.A(SCLK_c_test[2]), .B(SCLK_c_test[1]), .Z(n2169)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1831_2_lut.init = 16'heeee;
    LUT4 SCLK_c_test_2__bdd_3_lut (.A(SCLK_c_test[1]), .B(Data_byte_1[0]), 
         .C(Data_byte_1[2]), .Z(n3252)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam SCLK_c_test_2__bdd_3_lut.init = 16'hd8d8;
    LUT4 i2833_3_lut (.A(rstn_c), .B(n181[0]), .C(n15_adj_322), .Z(osc_int_enable_11)) /* synthesis lut_function=(A (B+!(C))) */ ;
    defparam i2833_3_lut.init = 16'h8a8a;
    LUT4 i28_4_lut (.A(n2302), .B(n3322), .C(n3329), .D(n4_adj_323), 
         .Z(n15_adj_322)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i28_4_lut.init = 16'hc0ca;
    LUT4 i1911_2_lut_rep_35_4_lut (.A(freq_counter[1]), .B(freq_counter[5]), 
         .C(n3331), .D(n3337), .Z(n3323)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1911_2_lut_rep_35_4_lut.init = 16'hffc8;
    LUT4 i89_2_lut_3_lut (.A(rec_ack_ok), .B(n2544), .C(repeat_comm_N_292), 
         .Z(n164)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i89_2_lut_3_lut.init = 16'h8080;
    LUT4 Data_byte_2_4__bdd_3_lut (.A(SCLK_c_test[0]), .B(Data_byte_2[7]), 
         .C(Data_byte_2[6]), .Z(n3314)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam Data_byte_2_4__bdd_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_rep_30_3_lut_4_lut (.A(SCL_O_c), .B(clk_delay1), .C(n3333), 
         .D(n3087), .Z(n3318)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(439[13:71])
    defparam i1_2_lut_rep_30_3_lut_4_lut.init = 16'h2000;
    LUT4 i2763_2_lut_rep_53 (.A(n181[9]), .B(n181[8]), .Z(n3341)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2763_2_lut_rep_53.init = 16'heeee;
    LUT4 i1_3_lut_rep_32_4_lut (.A(n3339), .B(n3338), .C(n3053), .D(SCLK_c_test[3]), 
         .Z(n3320)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_rep_32_4_lut.init = 16'h0010;
    LUT4 i2788_4_lut (.A(n181[14]), .B(n181[15]), .C(n3342), .D(n4_adj_324), 
         .Z(n3136)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i2788_4_lut.init = 16'hcdcc;
    LUT4 i3_2_lut_3_lut_4_lut (.A(n3329), .B(n181[11]), .C(n2544), .D(rec_ack_ok), 
         .Z(n4_adj_321)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam i3_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i2_3_lut_rep_45_4_lut (.A(n181[9]), .B(n181[8]), .C(n181[10]), 
         .D(n181[7]), .Z(n3333)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_45_4_lut.init = 16'hfffe;
    CCU2D freq_counter_551_add_4_5 (.A0(freq_counter[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(freq_counter[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2858), .COUT(n2859), .S0(n37_adj_329[3]), 
          .S1(n37_adj_329[4]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551_add_4_5.INIT0 = 16'hfaaa;
    defparam freq_counter_551_add_4_5.INIT1 = 16'hfaaa;
    defparam freq_counter_551_add_4_5.INJECT1_0 = "NO";
    defparam freq_counter_551_add_4_5.INJECT1_1 = "NO";
    CCU2D ack_fail_counter_553_add_4_9 (.A0(ack_fail_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2864), .S0(n37_adj_330[7]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553_add_4_9.INIT0 = 16'hfaaa;
    defparam ack_fail_counter_553_add_4_9.INIT1 = 16'h0000;
    defparam ack_fail_counter_553_add_4_9.INJECT1_0 = "NO";
    defparam ack_fail_counter_553_add_4_9.INJECT1_1 = "NO";
    CCU2D ack_fail_counter_553_add_4_7 (.A0(ack_fail_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(ack_fail_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2863), .COUT(n2864), .S0(n37_adj_330[5]), 
          .S1(n37_adj_330[6]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553_add_4_7.INIT0 = 16'hfaaa;
    defparam ack_fail_counter_553_add_4_7.INIT1 = 16'hfaaa;
    defparam ack_fail_counter_553_add_4_7.INJECT1_0 = "NO";
    defparam ack_fail_counter_553_add_4_7.INJECT1_1 = "NO";
    CCU2D freq_counter_551_add_4_3 (.A0(freq_counter[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(freq_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2857), .COUT(n2858), .S0(n37_adj_329[1]), 
          .S1(n37_adj_329[2]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551_add_4_3.INIT0 = 16'hfaaa;
    defparam freq_counter_551_add_4_3.INIT1 = 16'hfaaa;
    defparam freq_counter_551_add_4_3.INJECT1_0 = "NO";
    defparam freq_counter_551_add_4_3.INJECT1_1 = "NO";
    CCU2D ack_fail_counter_553_add_4_5 (.A0(ack_fail_counter[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(ack_fail_counter[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2862), .COUT(n2863), .S0(n37_adj_330[3]), 
          .S1(n37_adj_330[4]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553_add_4_5.INIT0 = 16'hfaaa;
    defparam ack_fail_counter_553_add_4_5.INIT1 = 16'hfaaa;
    defparam ack_fail_counter_553_add_4_5.INJECT1_0 = "NO";
    defparam ack_fail_counter_553_add_4_5.INJECT1_1 = "NO";
    CCU2D ack_counter_554_add_4_9 (.A0(ack_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2852), .S0(n37_adj_328[7]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554_add_4_9.INIT0 = 16'hfaaa;
    defparam ack_counter_554_add_4_9.INIT1 = 16'h0000;
    defparam ack_counter_554_add_4_9.INJECT1_0 = "NO";
    defparam ack_counter_554_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_37 (.A(freq_counter[4]), .B(freq_counter[2]), .Z(n7)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_2_lut_adj_37.init = 16'h2222;
    CCU2D freq_counter_551_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freq_counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2857), .S1(n37_adj_329[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam freq_counter_551_add_4_1.INIT0 = 16'hF000;
    defparam freq_counter_551_add_4_1.INIT1 = 16'h0555;
    defparam freq_counter_551_add_4_1.INJECT1_0 = "NO";
    defparam freq_counter_551_add_4_1.INJECT1_1 = "NO";
    LUT4 i2776_4_lut (.A(n3337), .B(SCL_O_c), .C(freq_counter[5]), .D(freq_counter[3]), 
         .Z(n3124)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2776_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_38 (.A(n181[11]), .B(n3076), .C(n3320), .D(n64), 
         .Z(n4_adj_324)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_38.init = 16'h4544;
    LUT4 i1_4_lut_adj_39 (.A(n2302), .B(n181[10]), .C(n3341), .D(n181[7]), 
         .Z(n3076)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_39.init = 16'h0002;
    LUT4 i2835_4_lut (.A(rstn_c), .B(n181[0]), .C(n83), .D(n3136), .Z(osc_int_enable_40)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam i2835_4_lut.init = 16'h888a;
    LUT4 i1_4_lut_adj_40 (.A(n181[10]), .B(n3325), .C(n3341), .D(n181[7]), 
         .Z(n64)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_40.init = 16'hbbba;
    LUT4 mux_400_i1_4_lut (.A(n3079), .B(n3335), .C(n181[0]), .D(n16), 
         .Z(SDA_W_N_239)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam mux_400_i1_4_lut.init = 16'hcfca;
    CCU2D ack_counter_554_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(SDA_R), .B1(ack_counter[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2849), .S1(n37_adj_328[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554_add_4_1.INIT0 = 16'hF000;
    defparam ack_counter_554_add_4_1.INIT1 = 16'ha999;
    defparam ack_counter_554_add_4_1.INJECT1_0 = "NO";
    defparam ack_counter_554_add_4_1.INJECT1_1 = "NO";
    LUT4 i2845_2_lut (.A(n2326), .B(n181[0]), .Z(SCL_o_N_219)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2845_2_lut.init = 16'h1111;
    LUT4 i2_3_lut_adj_41 (.A(n15_adj_325), .B(rec_ack_ok), .C(n2544), 
         .Z(n16)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2_3_lut_adj_41.init = 16'h0808;
    LUT4 i1_2_lut_4_lut_adj_42 (.A(n181[7]), .B(n181[10]), .C(n3341), 
         .D(n181[11]), .Z(n4_adj_323)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_42.init = 16'hfffe;
    CCU2D SCLK_counter_550_add_4_9 (.A0(SCLK_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2856), .S0(n37[7]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550_add_4_9.INIT0 = 16'hfaaa;
    defparam SCLK_counter_550_add_4_9.INIT1 = 16'h0000;
    defparam SCLK_counter_550_add_4_9.INJECT1_0 = "NO";
    defparam SCLK_counter_550_add_4_9.INJECT1_1 = "NO";
    PFUMX i42 (.BLUT(n17), .ALUT(n20_adj_295), .C0(n3156), .Z(n1129));
    CCU2D ack_fail_counter_553_add_4_3 (.A0(ack_fail_counter[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(ack_fail_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2861), .COUT(n2862), .S0(n37_adj_330[1]), 
          .S1(n37_adj_330[2]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553_add_4_3.INIT0 = 16'hfaaa;
    defparam ack_fail_counter_553_add_4_3.INIT1 = 16'hfaaa;
    defparam ack_fail_counter_553_add_4_3.INJECT1_0 = "NO";
    defparam ack_fail_counter_553_add_4_3.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_43 (.A(freq_counter[1]), .B(freq_counter[3]), .C(freq_counter[0]), 
         .D(freq_counter[2]), .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i3_4_lut_adj_43.init = 16'hfffe;
    LUT4 i1_2_lut_rep_31 (.A(n2544), .B(repeat_comm_N_292), .Z(n3319)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(59[8:20])
    defparam i1_2_lut_rep_31.init = 16'h8888;
    LUT4 i2842_4_lut (.A(n181[11]), .B(n181[10]), .C(n181[9]), .D(n181[8]), 
         .Z(n3156)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2842_4_lut.init = 16'haaab;
    LUT4 i1_4_lut_adj_44 (.A(freq_counter[7]), .B(freq_counter[6]), .C(n3103), 
         .D(freq_counter[5]), .Z(n2544)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_44.init = 16'heaaa;
    LUT4 i1_2_lut_rep_46 (.A(freq_counter[3]), .B(freq_counter[4]), .Z(n3334)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_2_lut_rep_46.init = 16'heeee;
    LUT4 i1_2_lut_rep_40 (.A(n181[1]), .B(n2302), .Z(n3328)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_2_lut_rep_40.init = 16'h2222;
    LUT4 i1_2_lut_rep_43_3_lut (.A(freq_counter[3]), .B(freq_counter[4]), 
         .C(freq_counter[2]), .Z(n3331)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_2_lut_rep_43_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_45 (.A(rstn_c), .B(n15_adj_326), .C(n3323), .D(n181[11]), 
         .Z(osc_int_enable_12)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_45.init = 16'ha088;
    LUT4 i592_2_lut (.A(n181[11]), .B(rstn_c), .Z(n929)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i592_2_lut.init = 16'h8888;
    PFUMX i32 (.BLUT(n18), .ALUT(n2), .C0(n3343), .Z(n15_adj_325));
    LUT4 i31_4_lut (.A(n181[0]), .B(n3322), .C(n3329), .D(repeat_comm_N_292), 
         .Z(n15_adj_326)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i31_4_lut.init = 16'h0aca;
    CCU2D SCLK_counter_550_add_4_7 (.A0(SCLK_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(SCLK_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2855), .COUT(n2856), .S0(n37[5]), 
          .S1(n37[6]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550_add_4_7.INIT0 = 16'hfaaa;
    defparam SCLK_counter_550_add_4_7.INIT1 = 16'hfaaa;
    defparam SCLK_counter_550_add_4_7.INJECT1_0 = "NO";
    defparam SCLK_counter_550_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_46 (.A(n3083), .B(SCLK_c_test[0]), .C(SCLK_c_test[2]), 
         .D(SCLK_c_test[1]), .Z(n3084)) /* synthesis lut_function=(!((B (C+!(D))+!B (C+(D)))+!A)) */ ;
    defparam i2_4_lut_adj_46.init = 16'h0802;
    LUT4 i1_3_lut_4_lut_adj_47 (.A(freq_counter[3]), .B(freq_counter[4]), 
         .C(freq_counter[1]), .D(freq_counter[2]), .Z(n3103)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(464[24:36])
    defparam i1_3_lut_4_lut_adj_47.init = 16'hfeee;
    LUT4 i39_2_lut_rep_47 (.A(init_pulse), .B(update_pulse), .Z(n3335)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(140[6] 151[13])
    defparam i39_2_lut_rep_47.init = 16'heeee;
    LUT4 i3_4_lut_adj_48 (.A(n2895), .B(n6), .C(ack_counter[6]), .D(ack_counter[4]), 
         .Z(repeat_comm_N_292)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_48.init = 16'hfefc;
    LUT4 i115_2_lut_3_lut (.A(init_pulse), .B(update_pulse), .C(n181[0]), 
         .Z(n208)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(140[6] 151[13])
    defparam i115_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_48 (.A(n181[0]), .B(n181[1]), .Z(n3336)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_2_lut_rep_48.init = 16'heeee;
    LUT4 i2_2_lut_rep_42_3_lut (.A(n181[0]), .B(n181[1]), .C(n181[11]), 
         .Z(n3330)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i2_2_lut_rep_42_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut_adj_49 (.A(ack_counter[0]), .B(ack_counter[3]), .C(ack_counter[2]), 
         .D(ack_counter[1]), .Z(n2895)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_49.init = 16'hfffe;
    LUT4 i1_2_lut_rep_49 (.A(freq_counter[7]), .B(freq_counter[6]), .Z(n3337)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_49.init = 16'heeee;
    LUT4 i1083_2_lut_3_lut_4_lut (.A(n181[1]), .B(n2302), .C(initialize_dac), 
         .D(rstn_c), .Z(n927)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1083_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_36_3_lut (.A(n181[1]), .B(n2302), .C(rstn_c), .Z(osc_int_enable_39)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i1_2_lut_rep_36_3_lut.init = 16'h2020;
    LUT4 i710_4_lut (.A(n181[0]), .B(repeat_comm), .C(n3335), .D(n3093), 
         .Z(n1053)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(126[4] 530[13])
    defparam i710_4_lut.init = 16'h3b0a;
    CCU2D ack_counter_554_add_4_7 (.A0(ack_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ack_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2851), .COUT(n2852), .S0(n37_adj_328[5]), 
          .S1(n37_adj_328[6]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(489[24:35])
    defparam ack_counter_554_add_4_7.INIT0 = 16'hfaaa;
    defparam ack_counter_554_add_4_7.INIT1 = 16'hfaaa;
    defparam ack_counter_554_add_4_7.INJECT1_0 = "NO";
    defparam ack_counter_554_add_4_7.INJECT1_1 = "NO";
    LUT4 i1965_3_lut_4_lut (.A(freq_counter[7]), .B(freq_counter[6]), .C(n2302), 
         .D(n3326), .Z(SDA_W_N_270)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1965_3_lut_4_lut.init = 16'h0001;
    LUT4 i2_2_lut (.A(ack_counter[7]), .B(ack_counter[5]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i759_4_lut (.A(ca_byte[7]), .B(ca_byte[5]), .C(n2169), .D(SCLK_c_test[0]), 
         .Z(n476[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i759_4_lut.init = 16'hc0ca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_50 (.A(freq_counter[7]), .B(freq_counter[6]), 
         .C(n181[11]), .D(n3326), .Z(n3093)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_50.init = 16'hf0e0;
    PFUMX i2890 (.BLUT(n3314), .ALUT(n3313), .C0(SCLK_c_test[1]), .Z(n3315));
    LUT4 i100_3_lut_4_lut_4_lut (.A(SCL_O_c), .B(clk_delay1), .C(n2544), 
         .D(rec_ack_ok), .Z(rec_ack_ok_N_212)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i100_3_lut_4_lut_4_lut.init = 16'h4f44;
    LUT4 i3_4_lut_4_lut (.A(SCL_O_c), .B(rec_ack_ok), .C(n6_adj_327), 
         .D(n181[12]), .Z(n2882)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(119[3] 533[10])
    defparam i3_4_lut_4_lut.init = 16'hc040;
    CCU2D SCLK_counter_550_add_4_5 (.A0(SCLK_c_test[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(SCLK_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2854), .COUT(n2855), .S0(n37[3]), .S1(n37[4]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(440[23:35])
    defparam SCLK_counter_550_add_4_5.INIT0 = 16'hfaaa;
    defparam SCLK_counter_550_add_4_5.INIT1 = 16'hfaaa;
    defparam SCLK_counter_550_add_4_5.INJECT1_0 = "NO";
    defparam SCLK_counter_550_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_2_lut_rep_50 (.A(SCLK_counter[5]), .B(SCLK_counter[4]), .Z(n3338)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_50.init = 16'heeee;
    CCU2D ack_fail_counter_553_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ack_fail_counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2861), .S1(n37_adj_330[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(480[29:45])
    defparam ack_fail_counter_553_add_4_1.INIT0 = 16'hF000;
    defparam ack_fail_counter_553_add_4_1.INIT1 = 16'h0555;
    defparam ack_fail_counter_553_add_4_1.INJECT1_0 = "NO";
    defparam ack_fail_counter_553_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut (.A(n2544), .B(repeat_comm_N_292), .C(rstn_c), 
         .Z(n6_adj_327)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/dac7678_i2c.vhd(59[8:20])
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i2770_2_lut_rep_51 (.A(SCLK_counter[6]), .B(SCLK_counter[7]), .Z(n3339)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2770_2_lut_rep_51.init = 16'heeee;
    
endmodule
