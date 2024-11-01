// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Oct 24 20:58:17 2024
//
// Verilog Description of module uart
//

module uart (clk, rst, rx, tx, data_in, data_out, tx_start, tx_busy);   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(5[8:12])
    input clk;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(11[9:12])
    input rst;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(12[9:12])
    input rx;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(13[9:11])
    output tx;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(14[9:11])
    input [7:0]data_in;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    output [7:0]data_out;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    input tx_start;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(17[9:17])
    output tx_busy;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(18[9:16])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(11[9:12])
    
    wire rst_c, tx_c, data_in_c_7, data_in_c_6, data_in_c_5, data_in_c_4, 
        data_in_c_3, data_in_c_2, data_in_c_1, data_in_c_0, n54, tx_start_c, 
        tx_busy_c;
    wire [31:0]baud_counter;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(28[12:24])
    
    wire baud_tick;
    wire [9:0]tx_shift_reg;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(32[12:24])
    
    wire tx_state, baud_counter_31__N_75, n55, n446, n53, n52, n50, 
        n48, n46, n44, n40, n36, n32, n588, GND_net, n587, 
        clk_c_enable_4, clk_c_enable_2, n586, n134, n135, n136, 
        n137, n138, n139, n140, n141, n142, n143, n144, n145, 
        n146, n147, n148, n149, n150, n151, n152, n153, n154, 
        n155, n156, n157, n158, n159, n160, n161, n162, n163, 
        n164, n165, clk_c_enable_3, clk_c_enable_1, n585, n584, 
        n583, n582, n581, n580, n593, n592, n682, VCC_net, n5, 
        n595, n591, n594, n590, n589, n642;
    
    LUT4 i2_3_lut_4_lut (.A(tx_start_c), .B(tx_state), .C(rst_c), .D(baud_tick), 
         .Z(clk_c_enable_3)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(17[9:17])
    defparam i2_3_lut_4_lut.init = 16'h0e00;
    OB tx_pad (.I(tx_c), .O(tx));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(14[9:11])
    VHI i318 (.Z(VCC_net));
    CCU2D baud_counter_127_add_4_27 (.A0(baud_counter[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n592), .COUT(n593), .S0(n140), 
          .S1(n139));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_27.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_27.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_27.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_27.INJECT1_1 = "NO";
    FD1P3AX tx_state_85 (.D(n682), .SP(clk_c_enable_1), .CK(clk_c), .Q(tx_state)) /* synthesis lse_init_val=0 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(60[9] 89[16])
    defparam tx_state_85.GSR = "ENABLED";
    FD1P3AX tx_busy_86 (.D(n682), .SP(clk_c_enable_2), .CK(clk_c), .Q(tx_busy_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(60[9] 89[16])
    defparam tx_busy_86.GSR = "ENABLED";
    FD1S3AX baud_tick_81 (.D(baud_counter_31__N_75), .CK(clk_c), .Q(baud_tick)) /* synthesis lse_init_val=0 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(46[9] 54[16])
    defparam baud_tick_81.GSR = "DISABLED";
    LUT4 i26_4_lut (.A(baud_counter[14]), .B(n52), .C(n44), .D(baud_counter[5]), 
         .Z(n55)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i26_4_lut.init = 16'hfffe;
    CCU2D baud_counter_127_add_4_25 (.A0(baud_counter[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n591), .COUT(n592), .S0(n142), 
          .S1(n141));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_25.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_25.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_25.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_25.INJECT1_1 = "NO";
    FD1S3IX baud_counter_127__i0 (.D(n165), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i0.GSR = "DISABLED";
    LUT4 i24_4_lut (.A(baud_counter[20]), .B(n48), .C(n36), .D(baud_counter[8]), 
         .Z(n53)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i25_4_lut (.A(baud_counter[25]), .B(n50), .C(n40), .D(baud_counter[6]), 
         .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i25_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut (.A(tx_start_c), .B(tx_state), .C(baud_tick), 
         .Z(clk_c_enable_1)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(17[9:17])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i23_4_lut (.A(baud_counter[24]), .B(n46), .C(n32), .D(baud_counter[0]), 
         .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i23_4_lut.init = 16'hfffe;
    LUT4 m1_lut (.Z(n682)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i15_3_lut (.A(baud_counter[15]), .B(baud_counter[31]), .C(baud_counter[3]), 
         .Z(n44)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i15_3_lut.init = 16'hfefe;
    LUT4 i17_4_lut (.A(baud_counter[26]), .B(baud_counter[12]), .C(baud_counter[28]), 
         .D(baud_counter[18]), .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(baud_counter[13]), .B(baud_counter[22]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i3_2_lut.init = 16'heeee;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2_2_lut_3_lut (.A(tx_state), .B(tx_start_c), .C(baud_tick), 
         .Z(clk_c_enable_2)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(17[9:17])
    defparam i2_2_lut_3_lut.init = 16'h4040;
    LUT4 i19_4_lut (.A(baud_counter[7]), .B(baud_counter[19]), .C(baud_counter[11]), 
         .D(baud_counter[21]), .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(baud_counter[16]), .B(baud_counter[29]), .Z(n36)) /* synthesis lut_function=(A+(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i7_2_lut.init = 16'heeee;
    CCU2D baud_counter_127_add_4_33 (.A0(baud_counter[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n595), .S0(n134));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_33.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_33.INIT1 = 16'h0000;
    defparam baud_counter_127_add_4_33.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_33.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_2 (.A(tx_state), .B(tx_start_c), .Z(n642)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(17[9:17])
    defparam i1_2_lut_rep_2.init = 16'h4444;
    LUT4 i21_4_lut (.A(baud_counter[1]), .B(baud_counter[27]), .C(baud_counter[23]), 
         .D(baud_counter[30]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(baud_tick), .B(tx_state), .Z(clk_c_enable_4)) /* synthesis lut_function=(A (B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(46[9] 54[16])
    defparam i1_2_lut.init = 16'h8888;
    FD1S3IX baud_counter_127__i31 (.D(n134), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i31.GSR = "DISABLED";
    OB data_out_pad_7 (.I(GND_net), .O(data_out[7]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    FD1S3IX baud_counter_127__i30 (.D(n135), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i30.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i29 (.D(n136), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i29.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i28 (.D(n137), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i28.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i27 (.D(n138), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i27.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i26 (.D(n139), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i26.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i25 (.D(n140), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i25.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i24 (.D(n141), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i24.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i23 (.D(n142), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i23.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i22 (.D(n143), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i22.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i21 (.D(n144), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i21.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i20 (.D(n145), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i20.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i19 (.D(n146), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i19.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i18 (.D(n147), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i18.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i17 (.D(n148), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i17.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i16 (.D(n149), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i16.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i15 (.D(n150), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i15.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i14 (.D(n151), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i14.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i13 (.D(n152), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i13.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i12 (.D(n153), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i12.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i11 (.D(n154), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i11.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i10 (.D(n155), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i10.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i9 (.D(n156), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i9.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i8 (.D(n157), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i8.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i7 (.D(n158), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i7.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i6 (.D(n159), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i6.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i5 (.D(n160), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i5.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i4 (.D(n161), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i4.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i3 (.D(n162), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i3.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i2 (.D(n163), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i2.GSR = "DISABLED";
    FD1S3IX baud_counter_127__i1 (.D(n164), .CK(clk_c), .CD(baud_counter_31__N_75), 
            .Q(baud_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127__i1.GSR = "DISABLED";
    LUT4 i162_1_lut (.A(rst_c), .Z(n446)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(12[9:12])
    defparam i162_1_lut.init = 16'h5555;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1_4_lut (.A(n55), .B(baud_counter[9]), .C(n53), .D(n54), .Z(n5)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i313_3_lut (.A(n5), .B(baud_counter[4]), .C(baud_counter[2]), 
         .Z(baud_counter_31__N_75)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i313_3_lut.init = 16'h4040;
    CCU2D baud_counter_127_add_4_11 (.A0(baud_counter[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n584), .COUT(n585), .S0(n156), 
          .S1(n155));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_11.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_11.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_11.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_11.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_9 (.A0(baud_counter[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n583), .COUT(n584), .S0(n158), 
          .S1(n157));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_9.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_9.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_9.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_9.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_7 (.A0(baud_counter[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n582), .COUT(n583), .S0(n160), 
          .S1(n159));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_7.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_7.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_7.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_7.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_5 (.A0(baud_counter[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n581), .COUT(n582), .S0(n162), 
          .S1(n161));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_5.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_5.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_5.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_5.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_3 (.A0(baud_counter[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n580), .COUT(n581), .S0(n164), 
          .S1(n163));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_3.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_3.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_3.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_3.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(baud_counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n580), .S1(n165));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_1.INIT0 = 16'hF000;
    defparam baud_counter_127_add_4_1.INIT1 = 16'h0555;
    defparam baud_counter_127_add_4_1.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_1.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_23 (.A0(baud_counter[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n590), .COUT(n591), .S0(n144), 
          .S1(n143));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_23.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_23.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_23.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_23.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_21 (.A0(baud_counter[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n589), .COUT(n590), .S0(n146), 
          .S1(n145));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_21.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_21.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_21.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_21.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_31 (.A0(baud_counter[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n594), .COUT(n595), .S0(n136), 
          .S1(n135));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_31.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_31.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_31.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_31.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_29 (.A0(baud_counter[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n593), .COUT(n594), .S0(n138), 
          .S1(n137));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_29.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_29.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_29.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_29.INJECT1_1 = "NO";
    VLO i83 (.Z(GND_net));
    LUT4 i11_2_lut (.A(baud_counter[10]), .B(baud_counter[17]), .Z(n40)) /* synthesis lut_function=(A+(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(47[16:43])
    defparam i11_2_lut.init = 16'heeee;
    CCU2D baud_counter_127_add_4_17 (.A0(baud_counter[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n587), .COUT(n588), .S0(n150), 
          .S1(n149));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_17.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_17.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_17.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_17.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_15 (.A0(baud_counter[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n586), .COUT(n587), .S0(n152), 
          .S1(n151));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_15.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_15.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_15.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_15.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_13 (.A0(baud_counter[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n585), .COUT(n586), .S0(n154), 
          .S1(n153));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_13.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_13.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_13.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_13.INJECT1_1 = "NO";
    CCU2D baud_counter_127_add_4_19 (.A0(baud_counter[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(baud_counter[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n588), .COUT(n589), .S0(n148), 
          .S1(n147));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(52[33:45])
    defparam baud_counter_127_add_4_19.INIT0 = 16'hfaaa;
    defparam baud_counter_127_add_4_19.INIT1 = 16'hfaaa;
    defparam baud_counter_127_add_4_19.INJECT1_0 = "NO";
    defparam baud_counter_127_add_4_19.INJECT1_1 = "NO";
    FD1P3AX tx_shift_reg_i0_i0 (.D(n642), .SP(clk_c_enable_3), .CK(clk_c), 
            .Q(tx_shift_reg[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(60[9] 89[16])
    defparam tx_shift_reg_i0_i0.GSR = "DISABLED";
    FD1P3AY tx_84 (.D(tx_shift_reg[0]), .SP(clk_c_enable_4), .CK(clk_c), 
            .Q(tx_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(60[9] 89[16])
    defparam tx_84.GSR = "ENABLED";
    GSR GSR_INST (.GSR(n446));
    OB data_out_pad_6 (.I(GND_net), .O(data_out[6]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    OB data_out_pad_5 (.I(GND_net), .O(data_out[5]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    OB data_out_pad_4 (.I(GND_net), .O(data_out[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    OB data_out_pad_3 (.I(GND_net), .O(data_out[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    OB data_out_pad_2 (.I(GND_net), .O(data_out[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    OB data_out_pad_1 (.I(GND_net), .O(data_out[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    OB data_out_pad_0 (.I(GND_net), .O(data_out[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(16[9:17])
    OB tx_busy_pad (.I(tx_busy_c), .O(tx_busy));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(18[9:16])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(11[9:12])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(12[9:12])
    IB data_in_pad_7 (.I(data_in[7]), .O(data_in_c_7));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    IB data_in_pad_6 (.I(data_in[6]), .O(data_in_c_6));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    IB data_in_pad_5 (.I(data_in[5]), .O(data_in_c_5));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    IB data_in_pad_4 (.I(data_in[4]), .O(data_in_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    IB data_in_pad_3 (.I(data_in[3]), .O(data_in_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    IB data_in_pad_2 (.I(data_in[2]), .O(data_in_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    IB data_in_pad_1 (.I(data_in[1]), .O(data_in_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    IB data_in_pad_0 (.I(data_in[0]), .O(data_in_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(15[9:16])
    IB tx_start_pad (.I(tx_start), .O(tx_start_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/uart_module.vhd(17[9:17])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

