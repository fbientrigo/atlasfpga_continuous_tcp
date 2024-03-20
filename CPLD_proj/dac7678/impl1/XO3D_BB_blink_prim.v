// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Mon Dec 27 12:22:47 2021
//
// Verilog Description of module XO3D_BB_blink
//

module XO3D_BB_blink (clk_x1, rstn, DIPSW, LED) /* synthesis syn_module_defined=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(71[8:21])
    input clk_x1;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(73[29:35])
    input rstn;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(74[29:33])
    input [3:0]DIPSW;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(75[29:34])
    output [7:0]LED;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    
    wire clk12M /* synthesis SET_AS_NETWORK=clk12M, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(94[15:21])
    
    wire GND_net, VCC_net, clk_x1_c, rstn_c, DIPSW_c_3, DIPSW_c_2, 
        DIPSW_c_1, DIPSW_c_0, osc_clk;
    wire [7:0]LED_array;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(96[15:24])
    wire [7:0]LED_i;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(100[15:20])
    
    wire n505;
    wire [7:0]LED_i_7__N_21;
    
    wire n503, n509, n296, n508;
    
    VHI i254 (.Z(VCC_net));
    OB LED_pad_5 (.I(LED_i[5]), .O(LED[5]));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    LUT4 LED_i_7__N_21_6__bdd_3_lut (.A(LED_i_7__N_21[6]), .B(n505), .C(DIPSW_c_0), 
         .Z(LED_i[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam LED_i_7__N_21_6__bdd_3_lut.init = 16'hcaca;
    OSCJ OSCJ_inst (.STDBY(GND_net), .OSC(osc_clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCJ_inst.NOM_FREQ = "12.09";
    OB LED_pad_6 (.I(LED_i[6]), .O(LED[6]));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    LUT4 clk_x1_I_0_3_lut (.A(clk_x1_c), .B(osc_clk), .C(DIPSW_c_3), .Z(clk12M)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(107[17:44])
    defparam clk_x1_I_0_3_lut.init = 16'hcaca;
    LUT4 mux_45_i8_4_lut (.A(LED_i_7__N_21[6]), .B(LED_array[7]), .C(n509), 
         .D(n508), .Z(LED_i[7])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(119[13] 132[20])
    defparam mux_45_i8_4_lut.init = 16'h5a3a;
    GSR GSR_INST (.GSR(rstn_c));
    OB LED_pad_7 (.I(LED_i[7]), .O(LED[7]));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    LUT4 LED_i_7__N_21_6__bdd_4_lut_252 (.A(LED_i_7__N_21[6]), .B(LED_array[3]), 
         .C(DIPSW_c_2), .D(DIPSW_c_1), .Z(n503)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam LED_i_7__N_21_6__bdd_4_lut_252.init = 16'h5aa3;
    OB LED_pad_4 (.I(LED_i[4]), .O(LED[4]));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    LUT4 i120_4_lut (.A(LED_array[2]), .B(LED_i_7__N_21[6]), .C(n296), 
         .D(DIPSW_c_1), .Z(LED_i[2])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A (B (C)+!B !(C+!(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(119[13] 132[20])
    defparam i120_4_lut.init = 16'h3c35;
    LUT4 i132_3_lut_4_lut (.A(n509), .B(n508), .C(LED_i_7__N_21[6]), .D(LED_array[6]), 
         .Z(LED_i[6])) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (C))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(119[13] 132[20])
    defparam i132_3_lut_4_lut.init = 16'h0d2f;
    LUT4 i114_4_lut (.A(LED_array[0]), .B(LED_i_7__N_21[6]), .C(n296), 
         .D(DIPSW_c_1), .Z(LED_i[0])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A (B (C)+!B !(C+!(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(119[13] 132[20])
    defparam i114_4_lut.init = 16'h3c35;
    LUT4 i130_3_lut_4_lut (.A(n509), .B(n508), .C(LED_i_7__N_21[6]), .D(LED_array[4]), 
         .Z(LED_i[4])) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (C))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(119[13] 132[20])
    defparam i130_3_lut_4_lut.init = 16'h0d2f;
    LUT4 LED_i_7__N_21_6__bdd_3_lut_253 (.A(LED_i_7__N_21[6]), .B(n503), 
         .C(DIPSW_c_0), .Z(LED_i[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam LED_i_7__N_21_6__bdd_3_lut_253.init = 16'hcaca;
    LUT4 i125_2_lut_rep_9 (.A(DIPSW_c_1), .B(DIPSW_c_2), .Z(n508)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(119[13] 132[20])
    defparam i125_2_lut_rep_9.init = 16'heeee;
    \heartbeat(clk_freq=12000000)  heartbeat_inst (.GND_net(GND_net), .\LED_i_7__N_21[6] (LED_i_7__N_21[6]), 
            .clk12M(clk12M)) /* synthesis syn_module_defined=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(147[5] 151[10])
    OB LED_pad_3 (.I(LED_i[3]), .O(LED[3]));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    OB LED_pad_2 (.I(LED_i[2]), .O(LED[2]));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    OB LED_pad_1 (.I(LED_i[1]), .O(LED[1]));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    OB LED_pad_0 (.I(LED_i[0]), .O(LED[0]));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(78[29:32])
    IB clk_x1_pad (.I(clk_x1), .O(clk_x1_c));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(73[29:35])
    IB rstn_pad (.I(rstn), .O(rstn_c));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(74[29:33])
    IB DIPSW_pad_3 (.I(DIPSW[3]), .O(DIPSW_c_3));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(75[29:34])
    IB DIPSW_pad_2 (.I(DIPSW[2]), .O(DIPSW_c_2));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(75[29:34])
    IB DIPSW_pad_1 (.I(DIPSW[1]), .O(DIPSW_c_1));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(75[29:34])
    IB DIPSW_pad_0 (.I(DIPSW[0]), .O(DIPSW_c_0));   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(75[29:34])
    LUT4 i1_3_lut_rep_10 (.A(DIPSW_c_0), .B(DIPSW_c_2), .C(DIPSW_c_1), 
         .Z(n509)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i1_3_lut_rep_10.init = 16'ha2a2;
    LUT4 i119_2_lut_2_lut (.A(DIPSW_c_0), .B(DIPSW_c_2), .Z(n296)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i119_2_lut_2_lut.init = 16'hdddd;
    LUT4 LED_i_7__N_21_6__bdd_4_lut (.A(LED_i_7__N_21[6]), .B(LED_array[1]), 
         .C(DIPSW_c_2), .D(DIPSW_c_1), .Z(n505)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam LED_i_7__N_21_6__bdd_4_lut.init = 16'h5aa3;
    LUT4 mux_45_i6_4_lut (.A(LED_i_7__N_21[6]), .B(LED_array[5]), .C(n509), 
         .D(n508), .Z(LED_i[5])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(119[13] 132[20])
    defparam mux_45_i6_4_lut.init = 16'h5a3a;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    \kitcar(clk_freq=12000000)  kitcar_inst (.clk12M(clk12M), .LED_array({LED_array}), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(154[5] 158[10])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module \heartbeat(clk_freq=12000000) 
//

module \heartbeat(clk_freq=12000000)  (GND_net, \LED_i_7__N_21[6] , clk12M) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output \LED_i_7__N_21[6] ;
    input clk12M;
    
    wire clk12M /* synthesis SET_AS_NETWORK=clk12M, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(94[15:21])
    
    wire n388;
    wire [26:0]count;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(95[13:18])
    wire [26:0]n113;
    
    wire n389, heartbeat_N_85;
    wire [26:0]n198;
    
    wire count_26__N_84, n390, n432, n431, n430, n429, n428, n427, 
        n426, n425, n424, n386, n387, n396, n395, n394, n393, 
        n392, n391, n385, n384;
    
    CCU2D count_70_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n388), .COUT(n389), .S0(n113[9]), .S1(n113[10]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_11.INIT0 = 16'hfaaa;
    defparam count_70_add_4_11.INIT1 = 16'hfaaa;
    defparam count_70_add_4_11.INJECT1_0 = "NO";
    defparam count_70_add_4_11.INJECT1_1 = "NO";
    FD1S3AX heartbeat_12 (.D(heartbeat_N_85), .CK(clk12M), .Q(\LED_i_7__N_21[6] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=147, LSE_RLINE=151 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(113[11] 119[8])
    defparam heartbeat_12.GSR = "ENABLED";
    FD1S3IX count_70__i0 (.D(n113[0]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(n198[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i0.GSR = "ENABLED";
    LUT4 heartbeat_I_0_2_lut (.A(\LED_i_7__N_21[6] ), .B(count_26__N_84), 
         .Z(heartbeat_N_85)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[13:32])
    defparam heartbeat_I_0_2_lut.init = 16'h6666;
    CCU2D count_70_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n389), .COUT(n390), .S0(n113[11]), .S1(n113[12]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_13.INIT0 = 16'hfaaa;
    defparam count_70_add_4_13.INIT1 = 16'hfaaa;
    defparam count_70_add_4_13.INJECT1_0 = "NO";
    defparam count_70_add_4_13.INJECT1_1 = "NO";
    CCU2D add_156_20 (.A0(count[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n432), 
          .S1(count_26__N_84));
    defparam add_156_20.INIT0 = 16'h5555;
    defparam add_156_20.INIT1 = 16'h0000;
    defparam add_156_20.INJECT1_0 = "NO";
    defparam add_156_20.INJECT1_1 = "NO";
    CCU2D add_156_18 (.A0(count[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n431), .COUT(n432));
    defparam add_156_18.INIT0 = 16'h5555;
    defparam add_156_18.INIT1 = 16'h5555;
    defparam add_156_18.INJECT1_0 = "NO";
    defparam add_156_18.INJECT1_1 = "NO";
    CCU2D add_156_16 (.A0(count[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n430), .COUT(n431));
    defparam add_156_16.INIT0 = 16'h5aaa;
    defparam add_156_16.INIT1 = 16'h5555;
    defparam add_156_16.INJECT1_0 = "NO";
    defparam add_156_16.INJECT1_1 = "NO";
    CCU2D add_156_14 (.A0(count[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n429), .COUT(n430));
    defparam add_156_14.INIT0 = 16'h5aaa;
    defparam add_156_14.INIT1 = 16'h5555;
    defparam add_156_14.INJECT1_0 = "NO";
    defparam add_156_14.INJECT1_1 = "NO";
    CCU2D add_156_12 (.A0(count[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n428), .COUT(n429));
    defparam add_156_12.INIT0 = 16'h5555;
    defparam add_156_12.INIT1 = 16'h5aaa;
    defparam add_156_12.INJECT1_0 = "NO";
    defparam add_156_12.INJECT1_1 = "NO";
    CCU2D add_156_10 (.A0(count[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n427), .COUT(n428));
    defparam add_156_10.INIT0 = 16'h5aaa;
    defparam add_156_10.INIT1 = 16'h5aaa;
    defparam add_156_10.INJECT1_0 = "NO";
    defparam add_156_10.INJECT1_1 = "NO";
    CCU2D add_156_8 (.A0(count[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n426), .COUT(n427));
    defparam add_156_8.INIT0 = 16'h5555;
    defparam add_156_8.INIT1 = 16'h5aaa;
    defparam add_156_8.INJECT1_0 = "NO";
    defparam add_156_8.INJECT1_1 = "NO";
    CCU2D add_156_6 (.A0(count[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n425), .COUT(n426));
    defparam add_156_6.INIT0 = 16'h5555;
    defparam add_156_6.INIT1 = 16'h5555;
    defparam add_156_6.INJECT1_0 = "NO";
    defparam add_156_6.INJECT1_1 = "NO";
    CCU2D add_156_4 (.A0(count[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n424), .COUT(n425));
    defparam add_156_4.INIT0 = 16'h5aaa;
    defparam add_156_4.INIT1 = 16'h5aaa;
    defparam add_156_4.INJECT1_0 = "NO";
    defparam add_156_4.INJECT1_1 = "NO";
    CCU2D add_156_2 (.A0(count[8]), .B0(count[7]), .C0(GND_net), .D0(GND_net), 
          .A1(count[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n424));
    defparam add_156_2.INIT0 = 16'h7000;
    defparam add_156_2.INIT1 = 16'h5555;
    defparam add_156_2.INJECT1_0 = "NO";
    defparam add_156_2.INJECT1_1 = "NO";
    CCU2D count_70_add_4_7 (.A0(n198[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n198[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n386), .COUT(n387), .S0(n113[5]), .S1(n113[6]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_7.INIT0 = 16'hfaaa;
    defparam count_70_add_4_7.INIT1 = 16'hfaaa;
    defparam count_70_add_4_7.INJECT1_0 = "NO";
    defparam count_70_add_4_7.INJECT1_1 = "NO";
    FD1S3IX count_70__i26 (.D(n113[26]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i26.GSR = "ENABLED";
    CCU2D count_70_add_4_27 (.A0(count[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n396), .S0(n113[25]), .S1(n113[26]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_27.INIT0 = 16'hfaaa;
    defparam count_70_add_4_27.INIT1 = 16'hfaaa;
    defparam count_70_add_4_27.INJECT1_0 = "NO";
    defparam count_70_add_4_27.INJECT1_1 = "NO";
    CCU2D count_70_add_4_25 (.A0(count[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n395), .COUT(n396), .S0(n113[23]), .S1(n113[24]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_25.INIT0 = 16'hfaaa;
    defparam count_70_add_4_25.INIT1 = 16'hfaaa;
    defparam count_70_add_4_25.INJECT1_0 = "NO";
    defparam count_70_add_4_25.INJECT1_1 = "NO";
    CCU2D count_70_add_4_23 (.A0(count[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n394), .COUT(n395), .S0(n113[21]), .S1(n113[22]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_23.INIT0 = 16'hfaaa;
    defparam count_70_add_4_23.INIT1 = 16'hfaaa;
    defparam count_70_add_4_23.INJECT1_0 = "NO";
    defparam count_70_add_4_23.INJECT1_1 = "NO";
    CCU2D count_70_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n393), .COUT(n394), .S0(n113[19]), .S1(n113[20]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_21.INIT0 = 16'hfaaa;
    defparam count_70_add_4_21.INIT1 = 16'hfaaa;
    defparam count_70_add_4_21.INJECT1_0 = "NO";
    defparam count_70_add_4_21.INJECT1_1 = "NO";
    CCU2D count_70_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n392), .COUT(n393), .S0(n113[17]), .S1(n113[18]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_19.INIT0 = 16'hfaaa;
    defparam count_70_add_4_19.INIT1 = 16'hfaaa;
    defparam count_70_add_4_19.INJECT1_0 = "NO";
    defparam count_70_add_4_19.INJECT1_1 = "NO";
    CCU2D count_70_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n391), .COUT(n392), .S0(n113[15]), .S1(n113[16]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_17.INIT0 = 16'hfaaa;
    defparam count_70_add_4_17.INIT1 = 16'hfaaa;
    defparam count_70_add_4_17.INJECT1_0 = "NO";
    defparam count_70_add_4_17.INJECT1_1 = "NO";
    CCU2D count_70_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n390), .COUT(n391), .S0(n113[13]), .S1(n113[14]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_15.INIT0 = 16'hfaaa;
    defparam count_70_add_4_15.INIT1 = 16'hfaaa;
    defparam count_70_add_4_15.INJECT1_0 = "NO";
    defparam count_70_add_4_15.INJECT1_1 = "NO";
    CCU2D count_70_add_4_5 (.A0(n198[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n198[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n385), .COUT(n386), .S0(n113[3]), .S1(n113[4]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_5.INIT0 = 16'hfaaa;
    defparam count_70_add_4_5.INIT1 = 16'hfaaa;
    defparam count_70_add_4_5.INJECT1_0 = "NO";
    defparam count_70_add_4_5.INJECT1_1 = "NO";
    CCU2D count_70_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n387), .COUT(n388), .S0(n113[7]), .S1(n113[8]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_9.INIT0 = 16'hfaaa;
    defparam count_70_add_4_9.INIT1 = 16'hfaaa;
    defparam count_70_add_4_9.INJECT1_0 = "NO";
    defparam count_70_add_4_9.INJECT1_1 = "NO";
    CCU2D count_70_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n198[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n384), .S1(n113[0]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_1.INIT0 = 16'hF000;
    defparam count_70_add_4_1.INIT1 = 16'h0555;
    defparam count_70_add_4_1.INJECT1_0 = "NO";
    defparam count_70_add_4_1.INJECT1_1 = "NO";
    CCU2D count_70_add_4_3 (.A0(n198[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n198[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n384), .COUT(n385), .S0(n113[1]), .S1(n113[2]));   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70_add_4_3.INIT0 = 16'hfaaa;
    defparam count_70_add_4_3.INIT1 = 16'hfaaa;
    defparam count_70_add_4_3.INJECT1_0 = "NO";
    defparam count_70_add_4_3.INJECT1_1 = "NO";
    FD1S3IX count_70__i25 (.D(n113[25]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i25.GSR = "ENABLED";
    FD1S3IX count_70__i24 (.D(n113[24]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i24.GSR = "ENABLED";
    FD1S3IX count_70__i23 (.D(n113[23]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i23.GSR = "ENABLED";
    FD1S3IX count_70__i22 (.D(n113[22]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i22.GSR = "ENABLED";
    FD1S3IX count_70__i21 (.D(n113[21]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i21.GSR = "ENABLED";
    FD1S3IX count_70__i20 (.D(n113[20]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i20.GSR = "ENABLED";
    FD1S3IX count_70__i19 (.D(n113[19]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i19.GSR = "ENABLED";
    FD1S3IX count_70__i18 (.D(n113[18]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i18.GSR = "ENABLED";
    FD1S3IX count_70__i17 (.D(n113[17]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i17.GSR = "ENABLED";
    FD1S3IX count_70__i16 (.D(n113[16]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i16.GSR = "ENABLED";
    FD1S3IX count_70__i15 (.D(n113[15]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i15.GSR = "ENABLED";
    FD1S3IX count_70__i14 (.D(n113[14]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i14.GSR = "ENABLED";
    FD1S3IX count_70__i13 (.D(n113[13]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i13.GSR = "ENABLED";
    FD1S3IX count_70__i12 (.D(n113[12]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i12.GSR = "ENABLED";
    FD1S3IX count_70__i11 (.D(n113[11]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i11.GSR = "ENABLED";
    FD1S3IX count_70__i10 (.D(n113[10]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i10.GSR = "ENABLED";
    FD1S3IX count_70__i9 (.D(n113[9]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i9.GSR = "ENABLED";
    FD1S3IX count_70__i8 (.D(n113[8]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i8.GSR = "ENABLED";
    FD1S3IX count_70__i7 (.D(n113[7]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i7.GSR = "ENABLED";
    FD1S3IX count_70__i6 (.D(n113[6]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(n198[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i6.GSR = "ENABLED";
    FD1S3IX count_70__i5 (.D(n113[5]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(n198[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i5.GSR = "ENABLED";
    FD1S3IX count_70__i4 (.D(n113[4]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(n198[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i4.GSR = "ENABLED";
    FD1S3IX count_70__i3 (.D(n113[3]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(n198[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i3.GSR = "ENABLED";
    FD1S3IX count_70__i2 (.D(n113[2]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(n198[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i2.GSR = "ENABLED";
    FD1S3IX count_70__i1 (.D(n113[1]), .CK(clk12M), .CD(count_26__N_84), 
            .Q(n198[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/heartbeat.v(118[22:31])
    defparam count_70__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \kitcar(clk_freq=12000000) 
//

module \kitcar(clk_freq=12000000)  (clk12M, LED_array, GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk12M;
    output [7:0]LED_array;
    input GND_net;
    
    wire clk12M /* synthesis SET_AS_NETWORK=clk12M, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/xo3d_bb_blink.v(94[15:21])
    wire [3:0]count;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(97[12:17])
    
    wire n434, enable, clk_div_25__N_150, n323;
    wire [3:0]n21;
    
    wire n281, n287, n311, n5, n4, n283, n507, n265;
    wire [25:0]clk_div;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(96[16:23])
    wire [25:0]n109;
    
    wire n286, n423, n422, n421, n420, n419, n418, n417, n416, 
        n415, n414, n413, n412, n411, n410, n409, n408, n407, 
        n406, n405, n404, n403, n402, n401, n400, n399, n398;
    
    LUT4 i2_2_lut_3_lut (.A(count[1]), .B(count[2]), .C(count[3]), .Z(n434)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i2_2_lut_3_lut.init = 16'h0808;
    FD1S3AX enable_17 (.D(clk_div_25__N_150), .CK(clk12M), .Q(enable)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(116[11] 124[8])
    defparam enable_17.GSR = "ENABLED";
    FD1P3IX count_71__i3 (.D(n21[3]), .SP(enable), .CD(n323), .CK(clk12M), 
            .Q(count[3]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(136[42:51])
    defparam count_71__i3.GSR = "ENABLED";
    LUT4 i174_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(136[42:51])
    defparam i174_2_lut_3_lut.init = 16'h7878;
    LUT4 i105_3_lut_4_lut_3_lut (.A(count[1]), .B(count[2]), .C(count[3]), 
         .Z(n281)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i105_3_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 i245_2_lut_3_lut (.A(count[1]), .B(count[2]), .C(count[3]), .Z(n287)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i245_2_lut_3_lut.init = 16'h0101;
    LUT4 i251_3_lut (.A(count[1]), .B(count[2]), .C(count[3]), .Z(n311)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i251_3_lut.init = 16'h1414;
    FD1S3IX LED_array_i0 (.D(n434), .CK(clk12M), .CD(n5), .Q(LED_array[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(145[11] 163[8])
    defparam LED_array_i0.GSR = "ENABLED";
    FD1P3IX count_71__i2 (.D(n21[2]), .SP(enable), .CD(n323), .CK(clk12M), 
            .Q(count[2]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(136[42:51])
    defparam count_71__i2.GSR = "ENABLED";
    LUT4 i146_4_lut (.A(enable), .B(count[3]), .C(count[2]), .D(n4), 
         .Z(n323)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(136[42:51])
    defparam i146_4_lut.init = 16'h8000;
    LUT4 i77_2_lut (.A(count[0]), .B(count[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i77_2_lut.init = 16'heeee;
    LUT4 i248_3_lut (.A(count[1]), .B(count[2]), .C(count[3]), .Z(n283)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i248_3_lut.init = 16'h4141;
    FD1P3IX count_71__i0 (.D(n5), .SP(enable), .CD(n323), .CK(clk12M), 
            .Q(count[0]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(136[42:51])
    defparam count_71__i0.GSR = "ENABLED";
    LUT4 i84_2_lut_rep_8 (.A(count[1]), .B(count[2]), .Z(n507)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i84_2_lut_rep_8.init = 16'h2222;
    LUT4 i167_2_lut (.A(count[1]), .B(count[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(136[42:51])
    defparam i167_2_lut.init = 16'h6666;
    LUT4 i54_1_lut (.A(count[0]), .Z(n5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i54_1_lut.init = 16'h5555;
    LUT4 i89_3_lut_4_lut_3_lut (.A(count[1]), .B(count[2]), .C(count[3]), 
         .Z(n265)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i89_3_lut_4_lut_3_lut.init = 16'h4242;
    FD1S3IX clk_div_72__i25 (.D(n109[25]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i25.GSR = "ENABLED";
    LUT4 i109_3_lut_4_lut_3_lut (.A(count[1]), .B(count[2]), .C(count[3]), 
         .Z(n286)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(146[9] 162[16])
    defparam i109_3_lut_4_lut_3_lut.init = 16'h2424;
    FD1S3IX clk_div_72__i24 (.D(n109[24]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i24.GSR = "ENABLED";
    FD1S3IX clk_div_72__i23 (.D(n109[23]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i23.GSR = "ENABLED";
    FD1S3IX clk_div_72__i22 (.D(n109[22]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i22.GSR = "ENABLED";
    FD1S3IX clk_div_72__i21 (.D(n109[21]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i21.GSR = "ENABLED";
    FD1S3IX clk_div_72__i20 (.D(n109[20]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i20.GSR = "ENABLED";
    FD1S3IX clk_div_72__i19 (.D(n109[19]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i19.GSR = "ENABLED";
    FD1S3IX clk_div_72__i18 (.D(n109[18]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i18.GSR = "ENABLED";
    FD1S3IX clk_div_72__i17 (.D(n109[17]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i17.GSR = "ENABLED";
    FD1S3IX clk_div_72__i16 (.D(n109[16]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i16.GSR = "ENABLED";
    FD1S3IX clk_div_72__i15 (.D(n109[15]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i15.GSR = "ENABLED";
    FD1S3IX clk_div_72__i14 (.D(n109[14]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i14.GSR = "ENABLED";
    FD1S3IX clk_div_72__i13 (.D(n109[13]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i13.GSR = "ENABLED";
    FD1S3IX clk_div_72__i12 (.D(n109[12]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i12.GSR = "ENABLED";
    FD1S3IX clk_div_72__i11 (.D(n109[11]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i11.GSR = "ENABLED";
    FD1S3IX clk_div_72__i10 (.D(n109[10]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i10.GSR = "ENABLED";
    FD1S3IX clk_div_72__i9 (.D(n109[9]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i9.GSR = "ENABLED";
    FD1S3IX clk_div_72__i8 (.D(n109[8]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i8.GSR = "ENABLED";
    FD1S3IX clk_div_72__i7 (.D(n109[7]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i7.GSR = "ENABLED";
    FD1S3IX clk_div_72__i6 (.D(n109[6]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i6.GSR = "ENABLED";
    FD1S3IX clk_div_72__i5 (.D(n109[5]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i5.GSR = "ENABLED";
    FD1S3IX clk_div_72__i4 (.D(n109[4]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i4.GSR = "ENABLED";
    FD1S3IX clk_div_72__i3 (.D(n109[3]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i3.GSR = "ENABLED";
    FD1S3IX clk_div_72__i2 (.D(n109[2]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i2.GSR = "ENABLED";
    FD1S3IX clk_div_72__i1 (.D(n109[1]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i1.GSR = "ENABLED";
    FD1S3IX clk_div_72__i0 (.D(n109[0]), .CK(clk12M), .CD(clk_div_25__N_150), 
            .Q(clk_div[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72__i0.GSR = "ENABLED";
    LUT4 i181_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), .D(count[3]), 
         .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(136[42:51])
    defparam i181_3_lut_4_lut.init = 16'h7f80;
    CCU2D clk_div_72_add_4_27 (.A0(clk_div[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n423), .S0(n109[25]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_27.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_27.INIT1 = 16'h0000;
    defparam clk_div_72_add_4_27.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_27.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_25 (.A0(clk_div[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n422), .COUT(n423), .S0(n109[23]), .S1(n109[24]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_25.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_25.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_25.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_25.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_23 (.A0(clk_div[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n421), .COUT(n422), .S0(n109[21]), .S1(n109[22]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_23.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_23.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_23.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_23.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_21 (.A0(clk_div[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n420), .COUT(n421), .S0(n109[19]), .S1(n109[20]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_21.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_21.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_21.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_21.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_19 (.A0(clk_div[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n419), .COUT(n420), .S0(n109[17]), .S1(n109[18]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_19.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_19.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_19.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_19.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_17 (.A0(clk_div[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n418), .COUT(n419), .S0(n109[15]), .S1(n109[16]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_17.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_17.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_17.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_17.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_15 (.A0(clk_div[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n417), .COUT(n418), .S0(n109[13]), .S1(n109[14]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_15.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_15.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_15.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_15.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_13 (.A0(clk_div[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n416), .COUT(n417), .S0(n109[11]), .S1(n109[12]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_13.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_13.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_13.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_13.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_11 (.A0(clk_div[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n415), .COUT(n416), .S0(n109[9]), .S1(n109[10]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_11.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_11.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_11.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_11.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_9 (.A0(clk_div[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n414), .COUT(n415), .S0(n109[7]), .S1(n109[8]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_9.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_9.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_9.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_9.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_7 (.A0(clk_div[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n413), .COUT(n414), .S0(n109[5]), .S1(n109[6]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_7.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_7.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_7.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_7.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_5 (.A0(clk_div[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n412), .COUT(n413), .S0(n109[3]), .S1(n109[4]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_5.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_5.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_5.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_5.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_3 (.A0(clk_div[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n411), .COUT(n412), .S0(n109[1]), .S1(n109[2]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_3.INIT0 = 16'hfaaa;
    defparam clk_div_72_add_4_3.INIT1 = 16'hfaaa;
    defparam clk_div_72_add_4_3.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_3.INJECT1_1 = "NO";
    CCU2D clk_div_72_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n411), .S1(n109[0]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(121[24:35])
    defparam clk_div_72_add_4_1.INIT0 = 16'hF000;
    defparam clk_div_72_add_4_1.INIT1 = 16'h0555;
    defparam clk_div_72_add_4_1.INJECT1_0 = "NO";
    defparam clk_div_72_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n410), .S0(clk_div_25__N_150));
    defparam sub_49_add_2_cout.INIT0 = 16'h0000;
    defparam sub_49_add_2_cout.INIT1 = 16'h0000;
    defparam sub_49_add_2_cout.INJECT1_0 = "NO";
    defparam sub_49_add_2_cout.INJECT1_1 = "NO";
    FD1S3IX LED_array_i2 (.D(n311), .CK(clk12M), .CD(n5), .Q(LED_array[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(145[11] 163[8])
    defparam LED_array_i2.GSR = "ENABLED";
    CCU2D sub_49_add_2_26 (.A0(clk_div[24]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[25]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n409), .COUT(n410));
    defparam sub_49_add_2_26.INIT0 = 16'h5555;
    defparam sub_49_add_2_26.INIT1 = 16'h5555;
    defparam sub_49_add_2_26.INJECT1_0 = "NO";
    defparam sub_49_add_2_26.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_24 (.A0(clk_div[22]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[23]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n408), .COUT(n409));
    defparam sub_49_add_2_24.INIT0 = 16'h5555;
    defparam sub_49_add_2_24.INIT1 = 16'h5555;
    defparam sub_49_add_2_24.INJECT1_0 = "NO";
    defparam sub_49_add_2_24.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_22 (.A0(clk_div[20]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[21]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n407), .COUT(n408));
    defparam sub_49_add_2_22.INIT0 = 16'h5555;
    defparam sub_49_add_2_22.INIT1 = 16'h5555;
    defparam sub_49_add_2_22.INJECT1_0 = "NO";
    defparam sub_49_add_2_22.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_20 (.A0(clk_div[18]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[19]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n406), .COUT(n407));
    defparam sub_49_add_2_20.INIT0 = 16'h5aaa;
    defparam sub_49_add_2_20.INIT1 = 16'h5aaa;
    defparam sub_49_add_2_20.INJECT1_0 = "NO";
    defparam sub_49_add_2_20.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_18 (.A0(clk_div[16]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[17]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n405), .COUT(n406));
    defparam sub_49_add_2_18.INIT0 = 16'h5aaa;
    defparam sub_49_add_2_18.INIT1 = 16'h5555;
    defparam sub_49_add_2_18.INJECT1_0 = "NO";
    defparam sub_49_add_2_18.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_16 (.A0(clk_div[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[15]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n404), .COUT(n405));
    defparam sub_49_add_2_16.INIT0 = 16'h5555;
    defparam sub_49_add_2_16.INIT1 = 16'h5555;
    defparam sub_49_add_2_16.INJECT1_0 = "NO";
    defparam sub_49_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_14 (.A0(clk_div[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n403), .COUT(n404));
    defparam sub_49_add_2_14.INIT0 = 16'h5aaa;
    defparam sub_49_add_2_14.INIT1 = 16'h5555;
    defparam sub_49_add_2_14.INJECT1_0 = "NO";
    defparam sub_49_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_12 (.A0(clk_div[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n402), .COUT(n403));
    defparam sub_49_add_2_12.INIT0 = 16'h5aaa;
    defparam sub_49_add_2_12.INIT1 = 16'h5555;
    defparam sub_49_add_2_12.INJECT1_0 = "NO";
    defparam sub_49_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_10 (.A0(clk_div[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n401), .COUT(n402));
    defparam sub_49_add_2_10.INIT0 = 16'h5555;
    defparam sub_49_add_2_10.INIT1 = 16'h5555;
    defparam sub_49_add_2_10.INJECT1_0 = "NO";
    defparam sub_49_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_8 (.A0(clk_div[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n400), .COUT(n401));
    defparam sub_49_add_2_8.INIT0 = 16'h5555;
    defparam sub_49_add_2_8.INIT1 = 16'h5555;
    defparam sub_49_add_2_8.INJECT1_0 = "NO";
    defparam sub_49_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_6 (.A0(clk_div[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n399), .COUT(n400));
    defparam sub_49_add_2_6.INIT0 = 16'h5aaa;
    defparam sub_49_add_2_6.INIT1 = 16'h5aaa;
    defparam sub_49_add_2_6.INJECT1_0 = "NO";
    defparam sub_49_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_4 (.A0(clk_div[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_div[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n398), .COUT(n399));
    defparam sub_49_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_49_add_2_4.INIT1 = 16'h5555;
    defparam sub_49_add_2_4.INJECT1_0 = "NO";
    defparam sub_49_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_49_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_div[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n398));
    defparam sub_49_add_2_2.INIT0 = 16'h0000;
    defparam sub_49_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_49_add_2_2.INJECT1_0 = "NO";
    defparam sub_49_add_2_2.INJECT1_1 = "NO";
    FD1S3IX LED_array_i5 (.D(n265), .CK(clk12M), .CD(count[0]), .Q(LED_array[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(145[11] 163[8])
    defparam LED_array_i5.GSR = "ENABLED";
    FD1S3IX LED_array_i4 (.D(n507), .CK(clk12M), .CD(n5), .Q(LED_array[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(145[11] 163[8])
    defparam LED_array_i4.GSR = "ENABLED";
    FD1S3IX LED_array_i1 (.D(n281), .CK(clk12M), .CD(count[0]), .Q(LED_array[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(145[11] 163[8])
    defparam LED_array_i1.GSR = "ENABLED";
    FD1S3IX LED_array_i3 (.D(n286), .CK(clk12M), .CD(count[0]), .Q(LED_array[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(145[11] 163[8])
    defparam LED_array_i3.GSR = "ENABLED";
    FD1S3IX LED_array_i6 (.D(n283), .CK(clk12M), .CD(n5), .Q(LED_array[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(145[11] 163[8])
    defparam LED_array_i6.GSR = "ENABLED";
    FD1S3IX LED_array_i7 (.D(n287), .CK(clk12M), .CD(count[0]), .Q(LED_array[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=5, LSE_RCOL=10, LSE_LLINE=154, LSE_RLINE=158 */ ;   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(145[11] 163[8])
    defparam LED_array_i7.GSR = "ENABLED";
    FD1P3IX count_71__i1 (.D(n21[1]), .SP(enable), .CD(n323), .CK(clk12M), 
            .Q(count[1]));   // c:/users/victo/desktop/lattice_proj/blink/source/kitcar.v(136[42:51])
    defparam count_71__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

