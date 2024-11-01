// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue May 24 11:44:21 2022
//
// Verilog Description of module i2c_dac
//

module i2c_dac (clk_i, rst_i, SDA_t, SDA_o, SDA_i, SCL_o, ena_read, 
            ena_write, update_i, nLDAC_o, ADDR0_o, ADDR1_o, ADDR0_sel_i, 
            data_byte_i, read_byte_o, SCLK_c_test, Fail_ACK);   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(6[8:15])
    input clk_i;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(13[2:7])
    input rst_i;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(14[2:7])
    output SDA_t;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(15[2:7])
    output SDA_o;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(16[2:7])
    input SDA_i;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(17[2:7])
    output SCL_o;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(18[2:7])
    input ena_read;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(19[2:10])
    input ena_write;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(20[2:11])
    input update_i;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(21[2:10])
    output nLDAC_o;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(22[2:9])
    output ADDR0_o;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(23[2:9])
    output ADDR1_o;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(24[2:9])
    input ADDR0_sel_i;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(25[2:13])
    input [7:0]data_byte_i;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(26[2:13])
    output [7:0]read_byte_o;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    output [3:0]SCLK_c_test;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(28[2:13])
    output Fail_ACK;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(29[2:10])
    
    wire clk_i_c /* synthesis SET_AS_NETWORK=clk_i_c, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(13[2:7])
    
    wire GND_net, VCC_net, rst_i_c, SDA_i_c, SCL_o_c, ena_write_c, 
        update_i_c, n1120, n34, SCLK_c_test_c_3, SCLK_c_test_c_2, 
        SCLK_c_test_c_1, SCLK_c_test_c_0, n41, SDA_R, update_1, update_2;
    wire [7:0]freq_counter;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(56[8:20])
    wire [7:0]SCLK_counter;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(57[8:20])
    
    wire rec_ack_ok;
    wire [7:0]ack_counter;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(62[8:19])
    
    wire clk_delay1, repeat_comm, update_pulse_N_103;
    wire [2:0]i2c_states_2__N_40;
    
    wire SCL_o_N_98, n2309, n2416, n4, n2268, clk_i_c_enable_17, 
        SDA_t_N_70, n2274, n45, n1778, n40, n43, n1862, repeat_comm_N_111, 
        n44, n43_adj_1, n42, n41_adj_2, n40_adj_3, n39, n38, clk_i_c_enable_15, 
        n2273, n38_adj_4, n42_adj_5, clk_i_c_enable_27, n1217, n39_adj_6, 
        n39_adj_7, n2056, rec_ack_ok_N_88, SCL_o_N_95, n45_adj_8, 
        clk_i_c_enable_29, clk_i_c_enable_21, SCL_o_N_78, n1118, n2293, 
        n42_adj_9, n41_adj_10, n5, n2059, n1112, n2277, n38_adj_11, 
        repeat_comm_N_107, n2272, n45_adj_12, n44_adj_13, n43_adj_14, 
        n1281, n1265, n40_adj_15, n44_adj_16, n695, n696, n697, 
        n699, n700, n1868, n1113, n709, n2408, n2306, n1121, 
        n1116, n6, n2424, n20, n2271, n4_adj_17, n1487, n41_adj_18, 
        n18, n2553, n2552, n2551, n2288, n6_adj_19, n16, n2328, 
        n2550, n1882, n2266, n2267, n34_adj_20, n2395, n2276, 
        n2469, n2275, n2380, n2270, n2301, clk_i_c_enable_16, n2269, 
        n2557, n2446, n2556, n2452, clk_i_c_enable_25, n2554;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1849_2_lut_rep_16 (.A(rst_i_c), .B(n695), .Z(n2556)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1849_2_lut_rep_16.init = 16'heeee;
    FD1S3AX update_pulse_168 (.D(update_pulse_N_103), .CK(clk_i_c), .Q(i2c_states_2__N_40[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(86[2] 98[9])
    defparam update_pulse_168.GSR = "ENABLED";
    LUT4 mux_393_i1_3_lut_4_lut (.A(SCL_o_c), .B(SCL_o_N_95), .C(n697), 
         .D(SCL_o_N_98), .Z(n1265)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam mux_393_i1_3_lut_4_lut.init = 16'h9f90;
    OB read_byte_o_pad_2 (.I(GND_net), .O(read_byte_o[2]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    LUT4 i3_4_lut (.A(ack_counter[0]), .B(ack_counter[3]), .C(ack_counter[2]), 
         .D(ack_counter[1]), .Z(n2288)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(ack_counter[7]), .B(ack_counter[5]), .Z(n6_adj_19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1206_4_lut (.A(rec_ack_ok), .B(clk_delay1), .C(n1882), .D(SCL_o_c), 
         .Z(rec_ack_ok_N_88)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(238[6] 240[13])
    defparam i1206_4_lut.init = 16'h0ace;
    FD1P3IX freq_counter_451__i2 (.D(n43_adj_14), .SP(clk_i_c_enable_15), 
            .CD(n1487), .CK(clk_i_c), .Q(freq_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451__i2.GSR = "DISABLED";
    LUT4 i1217_2_lut_4_lut (.A(rec_ack_ok), .B(n1882), .C(repeat_comm_N_111), 
         .D(n695), .Z(repeat_comm_N_107)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(199[6] 226[13])
    defparam i1217_2_lut_4_lut.init = 16'h0800;
    FD1P3IX SCLK_counter_450__i8 (.D(n38), .SP(clk_i_c_enable_27), .CD(n2056), 
            .CK(clk_i_c), .Q(SCLK_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450__i8.GSR = "DISABLED";
    FD1S3AY i2c_states_FSM_i1 (.D(n1112), .CK(clk_i_c), .Q(n700));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i2c_states_FSM_i1.GSR = "ENABLED";
    OB read_byte_o_pad_3 (.I(GND_net), .O(read_byte_o[3]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    FD1P3IX SDA_R_176 (.D(SDA_i_c), .SP(clk_i_c_enable_17), .CD(n2306), 
            .CK(clk_i_c), .Q(SDA_R));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam SDA_R_176.GSR = "DISABLED";
    FD1P3IX SCLK_counter_450__i5 (.D(n41_adj_2), .SP(clk_i_c_enable_27), 
            .CD(n2056), .CK(clk_i_c), .Q(SCLK_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450__i5.GSR = "DISABLED";
    FD1P3IX freq_counter_451__i0 (.D(n45_adj_12), .SP(clk_i_c_enable_15), 
            .CD(n1487), .CK(clk_i_c), .Q(freq_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451__i0.GSR = "DISABLED";
    OB read_byte_o_pad_4 (.I(GND_net), .O(read_byte_o[4]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    LUT4 i534_4_lut_4_lut (.A(SCL_o_c), .B(SCL_o_N_95), .C(rec_ack_ok), 
         .D(n695), .Z(n1862)) /* synthesis lut_function=(A (B+(C (D)))+!A (B (C+!(D))+!B (D))) */ ;
    defparam i534_4_lut_4_lut.init = 16'hf9cc;
    CCU2D ack_counter_453_add_4_7 (.A0(ack_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ack_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2272), .COUT(n2273), .S0(n40), .S1(n39_adj_7));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453_add_4_7.INIT0 = 16'hfaaa;
    defparam ack_counter_453_add_4_7.INIT1 = 16'hfaaa;
    defparam ack_counter_453_add_4_7.INJECT1_0 = "NO";
    defparam ack_counter_453_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(rst_i_c), .B(n2059), .C(n1778), .D(n695), .Z(clk_i_c_enable_29)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i1_4_lut.init = 16'h5044;
    FD1S3AX update_1_166 (.D(update_i_c), .CK(clk_i_c), .Q(update_1));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(86[2] 98[9])
    defparam update_1_166.GSR = "ENABLED";
    OB read_byte_o_pad_5 (.I(GND_net), .O(read_byte_o[5]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    OB read_byte_o_pad_6 (.I(GND_net), .O(read_byte_o[6]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    OB read_byte_o_pad_7 (.I(GND_net), .O(read_byte_o[7]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    OB ADDR1_o_pad (.I(VCC_net), .O(ADDR1_o));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(24[2:9])
    OB ADDR0_o_pad (.I(GND_net), .O(ADDR0_o));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(23[2:9])
    LUT4 i7_4_lut (.A(freq_counter[0]), .B(SCL_o_c), .C(freq_counter[4]), 
         .D(freq_counter[5]), .Z(n18)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i7_4_lut.init = 16'hffdf;
    FD1P3IX SCLK_counter_450__i3 (.D(n43_adj_1), .SP(clk_i_c_enable_27), 
            .CD(n2056), .CK(clk_i_c), .Q(SCLK_c_test_c_2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_17 (.A(freq_counter[4]), .B(freq_counter[3]), .Z(n2557)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_17.init = 16'heeee;
    OB nLDAC_o_pad (.I(GND_net), .O(nLDAC_o));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(22[2:9])
    LUT4 i1_2_lut (.A(SCL_o_c), .B(clk_delay1), .Z(n1217)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(178[13:71])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i2_3_lut (.A(SCLK_c_test_c_2), .B(SCLK_c_test_c_0), .C(SCLK_c_test_c_1), 
         .Z(n2301)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    FD1P3IX SCLK_counter_450__i6 (.D(n40_adj_3), .SP(clk_i_c_enable_27), 
            .CD(n2056), .CK(clk_i_c), .Q(SCLK_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450__i6.GSR = "DISABLED";
    LUT4 i1865_4_lut (.A(SCLK_counter[4]), .B(SCLK_counter[7]), .C(SCLK_counter[6]), 
         .D(SCLK_counter[5]), .Z(n2446)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1865_4_lut.init = 16'hfffe;
    FD1P3IX freq_counter_451__i1 (.D(n44_adj_13), .SP(clk_i_c_enable_15), 
            .CD(n1487), .CK(clk_i_c), .Q(freq_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451__i1.GSR = "DISABLED";
    FD1P3IX freq_counter_451__i3 (.D(n42_adj_9), .SP(clk_i_c_enable_15), 
            .CD(n1487), .CK(clk_i_c), .Q(freq_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451__i3.GSR = "DISABLED";
    CCU2D freq_counter_451_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freq_counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2266), .S1(n45_adj_12));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451_add_4_1.INIT0 = 16'hF000;
    defparam freq_counter_451_add_4_1.INIT1 = 16'h0555;
    defparam freq_counter_451_add_4_1.INJECT1_0 = "NO";
    defparam freq_counter_451_add_4_1.INJECT1_1 = "NO";
    FD1P3IX SCLK_counter_450__i7 (.D(n39), .SP(clk_i_c_enable_27), .CD(n2056), 
            .CK(clk_i_c), .Q(SCLK_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450__i7.GSR = "DISABLED";
    OB SCL_o_pad (.I(SCL_o_c), .O(SCL_o));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(18[2:7])
    OB SDA_o_pad (.I(GND_net), .O(SDA_o));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(16[2:7])
    OB SDA_t_pad (.I(VCC_net), .O(SDA_t));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(15[2:7])
    LUT4 i1_4_lut_adj_1 (.A(rst_i_c), .B(n5), .C(n2552), .D(n695), .Z(n2056)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i1_4_lut_adj_1.init = 16'h5044;
    FD1P3IX freq_counter_451__i4 (.D(n41_adj_10), .SP(clk_i_c_enable_15), 
            .CD(n1487), .CK(clk_i_c), .Q(freq_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451__i4.GSR = "DISABLED";
    FD1P3IX freq_counter_451__i5 (.D(n40_adj_15), .SP(clk_i_c_enable_15), 
            .CD(n1487), .CK(clk_i_c), .Q(freq_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451__i5.GSR = "DISABLED";
    OB read_byte_o_pad_1 (.I(GND_net), .O(read_byte_o[1]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    LUT4 i1_2_lut_rep_14 (.A(SCL_o_N_98), .B(n699), .Z(n2554)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam i1_2_lut_rep_14.init = 16'h8888;
    FD1P3IX SCLK_counter_450__i2 (.D(n44), .SP(clk_i_c_enable_27), .CD(n2056), 
            .CK(clk_i_c), .Q(SCLK_c_test_c_1)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450__i2.GSR = "DISABLED";
    LUT4 i1880_3_lut (.A(rst_i_c), .B(n700), .C(n34), .Z(clk_i_c_enable_21)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;
    defparam i1880_3_lut.init = 16'h4545;
    FD1P3IX freq_counter_451__i6 (.D(n39_adj_6), .SP(clk_i_c_enable_15), 
            .CD(n1487), .CK(clk_i_c), .Q(freq_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451__i6.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_2 (.A(freq_counter[4]), .B(freq_counter[2]), .C(freq_counter[3]), 
         .Z(n2380)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam i2_3_lut_adj_2.init = 16'hfefe;
    FD1P3IX freq_counter_451__i7 (.D(n38_adj_11), .SP(clk_i_c_enable_15), 
            .CD(n1487), .CK(clk_i_c), .Q(freq_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451__i7.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_3 (.A(ena_write_c), .B(SCL_o_N_98), .C(n696), .D(n697), 
         .Z(n2328)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_3.init = 16'h0004;
    LUT4 i1888_2_lut (.A(n1868), .B(n700), .Z(SCL_o_N_78)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1888_2_lut.init = 16'h1111;
    FD1P3AX repeat_comm_184 (.D(repeat_comm_N_107), .SP(clk_i_c_enable_16), 
            .CK(clk_i_c), .Q(repeat_comm));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam repeat_comm_184.GSR = "DISABLED";
    FD1P3IX rec_ack_ok_178 (.D(rec_ack_ok_N_88), .SP(clk_i_c_enable_17), 
            .CD(n2306), .CK(clk_i_c), .Q(rec_ack_ok));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam rec_ack_ok_178.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_11_3_lut (.A(SCL_o_N_98), .B(n699), .C(ena_write_c), 
         .Z(n2551)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam i1_2_lut_rep_11_3_lut.init = 16'h8080;
    FD1P3IX ack_counter_453__i1 (.D(n44_adj_16), .SP(clk_i_c_enable_29), 
            .CD(n1281), .CK(clk_i_c), .Q(ack_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453__i1.GSR = "DISABLED";
    LUT4 i549_3_lut_4_lut (.A(n695), .B(n2552), .C(SCL_o_N_95), .D(n696), 
         .Z(n1118)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(199[6] 226[13])
    defparam i549_3_lut_4_lut.init = 16'h8f88;
    LUT4 i1_3_lut (.A(n697), .B(n700), .C(n699), .Z(n5)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i1_3_lut.init = 16'h5454;
    CCU2D freq_counter_451_add_4_5 (.A0(freq_counter[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(freq_counter[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2267), .COUT(n2268), .S0(n42_adj_9), 
          .S1(n41_adj_10));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451_add_4_5.INIT0 = 16'hfaaa;
    defparam freq_counter_451_add_4_5.INIT1 = 16'hfaaa;
    defparam freq_counter_451_add_4_5.INJECT1_0 = "NO";
    defparam freq_counter_451_add_4_5.INJECT1_1 = "NO";
    FD1P3IX ack_counter_453__i2 (.D(n43), .SP(clk_i_c_enable_29), .CD(n1281), 
            .CK(clk_i_c), .Q(ack_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453__i2.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_4 (.A(n2556), .B(n2056), .C(n697), .D(n2416), 
         .Z(clk_i_c_enable_27)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i1_4_lut_adj_4.init = 16'hdccc;
    FD1P3IX ack_counter_453__i3 (.D(n42_adj_5), .SP(clk_i_c_enable_29), 
            .CD(n1281), .CK(clk_i_c), .Q(ack_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453__i3.GSR = "DISABLED";
    LUT4 i10_4_lut (.A(SCLK_c_test_c_3), .B(n20), .C(n16), .D(freq_counter[3]), 
         .Z(n2416)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    FD1P3AX o_sclk_175 (.D(SCL_o_N_78), .SP(clk_i_c_enable_21), .CK(clk_i_c), 
            .Q(SCL_o_c));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam o_sclk_175.GSR = "DISABLED";
    FD1P3IX ack_counter_453__i4 (.D(n41), .SP(clk_i_c_enable_29), .CD(n1281), 
            .CK(clk_i_c), .Q(ack_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453__i4.GSR = "DISABLED";
    FD1S3AX i2c_states_FSM_i5 (.D(n1120), .CK(clk_i_c), .Q(n695));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i2c_states_FSM_i5.GSR = "ENABLED";
    CCU2D SCLK_counter_450_add_4_9 (.A0(SCLK_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2277), .S0(n38));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450_add_4_9.INIT0 = 16'hfaaa;
    defparam SCLK_counter_450_add_4_9.INIT1 = 16'h0000;
    defparam SCLK_counter_450_add_4_9.INJECT1_0 = "NO";
    defparam SCLK_counter_450_add_4_9.INJECT1_1 = "NO";
    FD1P3IX ack_counter_453__i5 (.D(n40), .SP(clk_i_c_enable_29), .CD(n1281), 
            .CK(clk_i_c), .Q(ack_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453__i5.GSR = "DISABLED";
    CCU2D SCLK_counter_450_add_4_7 (.A0(SCLK_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(SCLK_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2276), .COUT(n2277), .S0(n40_adj_3), 
          .S1(n39));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450_add_4_7.INIT0 = 16'hfaaa;
    defparam SCLK_counter_450_add_4_7.INIT1 = 16'hfaaa;
    defparam SCLK_counter_450_add_4_7.INJECT1_0 = "NO";
    defparam SCLK_counter_450_add_4_7.INJECT1_1 = "NO";
    LUT4 i1495_1_lut_rep_15 (.A(rst_i_c), .Z(clk_i_c_enable_25)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(14[2:7])
    defparam i1495_1_lut_rep_15.init = 16'h5555;
    FD1P3IX ack_counter_453__i6 (.D(n39_adj_7), .SP(clk_i_c_enable_29), 
            .CD(n1281), .CK(clk_i_c), .Q(ack_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453__i6.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(repeat_comm), .B(n709), .C(n1121), .D(n1113), 
         .Z(n2293)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i2_4_lut.init = 16'hffec;
    FD1S3AX i2c_states_FSM_i4 (.D(n1118), .CK(clk_i_c), .Q(n696));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i2c_states_FSM_i4.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i3 (.D(n1116), .CK(clk_i_c), .Q(n697));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i2c_states_FSM_i3.GSR = "ENABLED";
    FD1S3AX i2c_states_FSM_i2 (.D(n2293), .CK(clk_i_c), .Q(n699));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i2c_states_FSM_i2.GSR = "ENABLED";
    CCU2D ack_counter_453_add_4_5 (.A0(ack_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ack_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2271), .COUT(n2272), .S0(n42_adj_5), .S1(n41));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453_add_4_5.INIT0 = 16'hfaaa;
    defparam ack_counter_453_add_4_5.INIT1 = 16'hfaaa;
    defparam ack_counter_453_add_4_5.INJECT1_0 = "NO";
    defparam ack_counter_453_add_4_5.INJECT1_1 = "NO";
    LUT4 i543_4_lut (.A(n700), .B(repeat_comm), .C(i2c_states_2__N_40[0]), 
         .D(n1121), .Z(n1112)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i543_4_lut.init = 16'h3b0a;
    LUT4 i1_2_lut_2_lut (.A(rst_i_c), .B(n700), .Z(n41_adj_18)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(14[2:7])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i552_2_lut (.A(SCL_o_N_95), .B(n696), .Z(n1121)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i552_2_lut.init = 16'h8888;
    FD1P3IX clk_delay1_170 (.D(SCL_o_c), .SP(clk_i_c_enable_25), .CD(n41_adj_18), 
            .CK(clk_i_c), .Q(clk_delay1));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam clk_delay1_170.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_5 (.A(n697), .B(SDA_t_N_70), .Z(n2059)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i1_2_lut_adj_5.init = 16'h8888;
    LUT4 i1_3_lut_adj_6 (.A(n699), .B(SCL_o_N_98), .C(ena_write_c), .Z(n1113)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i1_3_lut_adj_6.init = 16'h2a2a;
    OB read_byte_o_pad_0 (.I(GND_net), .O(read_byte_o[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(27[2:13])
    OB SCLK_c_test_pad_3 (.I(SCLK_c_test_c_3), .O(SCLK_c_test[3]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(28[2:13])
    OB SCLK_c_test_pad_2 (.I(SCLK_c_test_c_2), .O(SCLK_c_test[2]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(28[2:13])
    OB SCLK_c_test_pad_1 (.I(SCLK_c_test_c_1), .O(SCLK_c_test[1]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(28[2:13])
    OB SCLK_c_test_pad_0 (.I(SCLK_c_test_c_0), .O(SCLK_c_test[0]));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(28[2:13])
    OB Fail_ACK_pad (.I(GND_net), .O(Fail_ACK));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(29[2:10])
    IB clk_i_pad (.I(clk_i), .O(clk_i_c));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(13[2:7])
    IB rst_i_pad (.I(rst_i), .O(rst_i_c));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(14[2:7])
    IB SDA_i_pad (.I(SDA_i), .O(SDA_i_c));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(17[2:7])
    IB ena_write_pad (.I(ena_write), .O(ena_write_c));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(20[2:11])
    IB update_i_pad (.I(update_i), .O(update_i_c));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(21[2:10])
    FD1P3IX SCLK_counter_450__i4 (.D(n42), .SP(clk_i_c_enable_27), .CD(n2056), 
            .CK(clk_i_c), .Q(SCLK_c_test_c_3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450__i4.GSR = "DISABLED";
    FD1S3AX update_2_167 (.D(update_1), .CK(clk_i_c), .Q(update_2));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(86[2] 98[9])
    defparam update_2_167.GSR = "ENABLED";
    CCU2D SCLK_counter_450_add_4_5 (.A0(SCLK_c_test_c_3), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(SCLK_counter[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2275), .COUT(n2276), .S0(n42), 
          .S1(n41_adj_2));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450_add_4_5.INIT0 = 16'hfaaa;
    defparam SCLK_counter_450_add_4_5.INIT1 = 16'hfaaa;
    defparam SCLK_counter_450_add_4_5.INJECT1_0 = "NO";
    defparam SCLK_counter_450_add_4_5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(clk_i_c_enable_25));
    FD1P3IX SCLK_counter_450__i1 (.D(n45), .SP(clk_i_c_enable_27), .CD(n2056), 
            .CK(clk_i_c), .Q(SCLK_c_test_c_0)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450__i1.GSR = "DISABLED";
    FD1P3IX ack_counter_453__i0 (.D(n45_adj_8), .SP(clk_i_c_enable_29), 
            .CD(n1281), .CK(clk_i_c), .Q(ack_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453__i0.GSR = "DISABLED";
    FD1P3IX ack_counter_453__i7 (.D(n38_adj_4), .SP(clk_i_c_enable_29), 
            .CD(n1281), .CK(clk_i_c), .Q(ack_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453__i7.GSR = "DISABLED";
    CCU2D ack_counter_453_add_4_3 (.A0(ack_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ack_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2270), .COUT(n2271), .S0(n44_adj_16), 
          .S1(n43));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453_add_4_3.INIT0 = 16'hfaaa;
    defparam ack_counter_453_add_4_3.INIT1 = 16'hfaaa;
    defparam ack_counter_453_add_4_3.INJECT1_0 = "NO";
    defparam ack_counter_453_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(rst_i_c), .B(n695), .C(n700), .Z(n2306)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i256_2_lut (.A(i2c_states_2__N_40[0]), .B(n700), .Z(n709)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i256_2_lut.init = 16'h8888;
    LUT4 update_1_I_0_2_lut (.A(update_1), .B(update_2), .Z(update_pulse_N_103)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(94[19:46])
    defparam update_1_I_0_2_lut.init = 16'h2222;
    CCU2D SCLK_counter_450_add_4_3 (.A0(SCLK_c_test_c_1), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(SCLK_c_test_c_2), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2274), .COUT(n2275), .S0(n44), 
          .S1(n43_adj_1));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450_add_4_3.INIT0 = 16'hfaaa;
    defparam SCLK_counter_450_add_4_3.INIT1 = 16'hfaaa;
    defparam SCLK_counter_450_add_4_3.INJECT1_0 = "NO";
    defparam SCLK_counter_450_add_4_3.INJECT1_1 = "NO";
    CCU2D SCLK_counter_450_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1217), .B1(n2309), .C1(SCLK_c_test_c_0), 
          .D1(GND_net), .COUT(n2274), .S1(n45));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(179[23:35])
    defparam SCLK_counter_450_add_4_1.INIT0 = 16'hF000;
    defparam SCLK_counter_450_add_4_1.INIT1 = 16'hd2d2;
    defparam SCLK_counter_450_add_4_1.INJECT1_0 = "NO";
    defparam SCLK_counter_450_add_4_1.INJECT1_1 = "NO";
    CCU2D ack_counter_453_add_4_9 (.A0(ack_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2273), .S0(n38_adj_4));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453_add_4_9.INIT0 = 16'hfaaa;
    defparam ack_counter_453_add_4_9.INIT1 = 16'h0000;
    defparam ack_counter_453_add_4_9.INJECT1_0 = "NO";
    defparam ack_counter_453_add_4_9.INJECT1_1 = "NO";
    CCU2D ack_counter_453_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(SDA_R), .B1(ack_counter[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2270), .S1(n45_adj_8));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(231[24:35])
    defparam ack_counter_453_add_4_1.INIT0 = 16'hF000;
    defparam ack_counter_453_add_4_1.INIT1 = 16'ha999;
    defparam ack_counter_453_add_4_1.INJECT1_0 = "NO";
    defparam ack_counter_453_add_4_1.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(n1217), .B(n2301), .C(n2446), .D(SCLK_c_test_c_3), 
         .Z(SDA_t_N_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h0200;
    LUT4 i4_4_lut_adj_7 (.A(SCLK_counter[6]), .B(SCLK_counter[5]), .C(SCLK_counter[7]), 
         .D(n6), .Z(n2309)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(175[63:80])
    defparam i4_4_lut_adj_7.init = 16'hfffe;
    LUT4 i9_4_lut (.A(freq_counter[2]), .B(n18), .C(freq_counter[6]), 
         .D(freq_counter[1]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i5_2_lut (.A(freq_counter[7]), .B(n2446), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1882_2_lut_2_lut_3_lut_4_lut (.A(SCL_o_c), .B(rec_ack_ok), .C(clk_i_c_enable_29), 
         .D(n695), .Z(n1281)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(228[10:43])
    defparam i1882_2_lut_2_lut_3_lut_4_lut.init = 16'hd0f0;
    CCU2D freq_counter_451_add_4_3 (.A0(freq_counter[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(freq_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2266), .COUT(n2267), .S0(n44_adj_13), 
          .S1(n43_adj_14));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451_add_4_3.INIT0 = 16'hfaaa;
    defparam freq_counter_451_add_4_3.INIT1 = 16'hfaaa;
    defparam freq_counter_451_add_4_3.INJECT1_0 = "NO";
    defparam freq_counter_451_add_4_3.INJECT1_1 = "NO";
    CCU2D freq_counter_451_add_4_9 (.A0(freq_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2269), .S0(n38_adj_11));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451_add_4_9.INIT0 = 16'hfaaa;
    defparam freq_counter_451_add_4_9.INIT1 = 16'h0000;
    defparam freq_counter_451_add_4_9.INJECT1_0 = "NO";
    defparam freq_counter_451_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(ena_write_c), .B(n2554), .C(SDA_t_N_70), .D(n697), 
         .Z(n1116)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8f88;
    CCU2D freq_counter_451_add_4_7 (.A0(freq_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(freq_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2268), .COUT(n2269), .S0(n40_adj_15), 
          .S1(n39_adj_6));   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(208[24:36])
    defparam freq_counter_451_add_4_7.INIT0 = 16'hfaaa;
    defparam freq_counter_451_add_4_7.INIT1 = 16'hfaaa;
    defparam freq_counter_451_add_4_7.INJECT1_0 = "NO";
    defparam freq_counter_451_add_4_7.INJECT1_1 = "NO";
    LUT4 i1854_2_lut_rep_12 (.A(n1882), .B(rec_ack_ok), .Z(n2552)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(56[8:20])
    defparam i1854_2_lut_rep_12.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_8 (.A(freq_counter[4]), .B(freq_counter[3]), 
         .C(freq_counter[1]), .D(freq_counter[2]), .Z(n4_adj_17)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_8.init = 16'hfeee;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1890_2_lut (.A(clk_i_c_enable_15), .B(n2469), .Z(n1487)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam i1890_2_lut.init = 16'h8888;
    VLO i1 (.Z(GND_net));
    LUT4 i1889_4_lut (.A(n34_adj_20), .B(n2550), .C(n697), .D(SDA_t_N_70), 
         .Z(n2469)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam i1889_4_lut.init = 16'hfddd;
    LUT4 i1_2_lut_rep_10_3_lut (.A(n1882), .B(rec_ack_ok), .C(n695), .Z(n2550)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(56[8:20])
    defparam i1_2_lut_rep_10_3_lut.init = 16'h8080;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_4_lut_adj_9 (.A(n2551), .B(n696), .C(n2424), .D(n2395), 
         .Z(n34_adj_20)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam i1_4_lut_adj_9.init = 16'h1505;
    LUT4 i1_2_lut_adj_10 (.A(freq_counter[1]), .B(freq_counter[2]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_10.init = 16'heeee;
    LUT4 i1_2_lut_adj_11 (.A(freq_counter[7]), .B(freq_counter[6]), .Z(n2408)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'heeee;
    LUT4 i1_3_lut_adj_12 (.A(n2301), .B(SCLK_counter[4]), .C(SCLK_c_test_c_3), 
         .Z(n6)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(175[63:80])
    defparam i1_3_lut_adj_12.init = 16'hecec;
    LUT4 i1843_4_lut (.A(freq_counter[5]), .B(n2408), .C(n2380), .D(freq_counter[1]), 
         .Z(n2424)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1843_4_lut.init = 16'heeec;
    LUT4 i51_3_lut_4_lut (.A(n1882), .B(rec_ack_ok), .C(n695), .D(n2328), 
         .Z(n34)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(56[8:20])
    defparam i51_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_3_lut_adj_13 (.A(n700), .B(rst_i_c), .C(n695), .Z(clk_i_c_enable_17)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i1_3_lut_adj_13.init = 16'h3232;
    LUT4 i1885_4_lut (.A(rst_i_c), .B(n2553), .C(n1121), .D(n695), .Z(clk_i_c_enable_16)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1885_4_lut.init = 16'h1150;
    LUT4 i1_3_lut_4_lut_adj_14 (.A(n1882), .B(rec_ack_ok), .C(n2059), 
         .D(n695), .Z(n1120)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(56[8:20])
    defparam i1_3_lut_4_lut_adj_14.init = 16'hf7f0;
    LUT4 i1211_3_lut_4_lut_4_lut (.A(SCL_o_c), .B(rec_ack_ok), .C(repeat_comm_N_111), 
         .D(n1882), .Z(n1778)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B (C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(228[10:43])
    defparam i1211_3_lut_4_lut_4_lut.init = 16'he222;
    LUT4 i1_4_lut_adj_15 (.A(rec_ack_ok), .B(n697), .C(n695), .D(SDA_t_N_70), 
         .Z(n2395)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_15.init = 16'haf23;
    LUT4 i1_4_lut_adj_16 (.A(freq_counter[7]), .B(freq_counter[5]), .C(freq_counter[6]), 
         .D(n4_adj_17), .Z(n1882)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_16.init = 16'heaaa;
    LUT4 i1877_4_lut (.A(ena_write_c), .B(rst_i_c), .C(n2554), .D(n700), 
         .Z(clk_i_c_enable_15)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(109[3] 273[10])
    defparam i1877_4_lut.init = 16'h0023;
    PFUMX i535 (.BLUT(n1265), .ALUT(n1862), .C0(n2452), .Z(n1868));
    LUT4 i2_3_lut_rep_13 (.A(rec_ack_ok), .B(n1882), .C(repeat_comm_N_111), 
         .Z(n2553)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(199[6] 226[13])
    defparam i2_3_lut_rep_13.init = 16'hf7f7;
    LUT4 i1_4_lut_adj_17 (.A(n2557), .B(n2408), .C(freq_counter[5]), .D(n4), 
         .Z(SCL_o_N_95)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_17.init = 16'hfcec;
    LUT4 i1_4_lut_adj_18 (.A(freq_counter[7]), .B(freq_counter[6]), .C(n2380), 
         .D(freq_counter[5]), .Z(SCL_o_N_98)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'heeea;
    LUT4 i3_4_lut_adj_19 (.A(n2288), .B(n6_adj_19), .C(ack_counter[6]), 
         .D(ack_counter[4]), .Z(repeat_comm_N_111)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_19.init = 16'hfefc;
    LUT4 i1891_2_lut (.A(n695), .B(n696), .Z(n2452)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/dac7678/i2c_dac.vhd(116[4] 270[13])
    defparam i1891_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

