// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Wed Aug 31 17:21:27 2022
//
// Verilog Description of module uart_top
//

module uart_top (uart_tx);   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(10[8:16])
    output uart_tx;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(16[1:8])
    
    wire WrClock /* synthesis SET_AS_NETWORK=WrClock, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(51[9:16])
    
    wire GND_net, VCC_net, uart_tx_c, RdEn, Empty, Full, rst;
    wire [7:0]i_ascii;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(110[9:16])
    wire [7:0]i_fifo_dout;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(119[9:20])
    wire [2:0]ST_fifo_handler;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(129[9:24])
    wire [15:0]b13_conv_hexa;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(130[9:22])
    wire [15:0]TMR_comparator_hex;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(131[9:27])
    wire [2:0]count_N_unis;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(132[9:21])
    wire [10:0]rst_counter;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(192[10:21])
    
    wire n195, n201, n328, n6, WrClock_enable_46;
    wire [2:0]count_N_91;
    wire [2:0]ST_fifo_handler_2__N_9;
    wire [7:0]i_ascii_7__N_94;
    
    wire WrClock_enable_11, invout_1, n3035, o_fifo_full_N_168, n3034, 
        n60, n59, n58, n57, n56, n55, n54, n53, n52, n51, 
        n50, n11, n10, n9, n2379, WrClock_enable_64, n2613, WrClock_enable_12, 
        n2378, WrClock_enable_44, n1482, n2377, n2095, n1176, n2961, 
        n1192, n2986, WrClock_enable_59, n2983, n2992, n2376, n2595, 
        n2990, n2957, n2975, n2956, n2954, n2605, n2031, n2953, 
        n2375, n2982, n2974, n2411, n2577, WrClock_enable_22, WrClock_enable_32, 
        n2988, n1367;
    
    VHI i2 (.Z(VCC_net));
    b13fifo fifo (.WrClock(WrClock), .rst(rst), .n3035(n3035), .RdEn(RdEn), 
            .i_fifo_dout({i_fifo_dout}), .Empty(Empty), .Full(Full), .VCC_net(VCC_net), 
            .GND_net(GND_net), .\i_ascii[6] (i_ascii[6]), .\i_ascii[5] (i_ascii[5]), 
            .\i_ascii[4] (i_ascii[4]), .invout_1(invout_1), .o_fifo_full_N_168(o_fifo_full_N_168), 
            .n3034(n3034), .\i_ascii[3] (i_ascii[3]), .\i_ascii[2] (i_ascii[2]), 
            .\i_ascii[1] (i_ascii[1]), .\i_ascii[0] (i_ascii[0]), .ST_fifo_handler({ST_fifo_handler}), 
            .WrClock_enable_11(WrClock_enable_11), .\ST_fifo_handler_2__N_9[0] (ST_fifo_handler_2__N_9[0]), 
            .WrClock_enable_64(WrClock_enable_64), .n2605(n2605), .WrClock_enable_44(WrClock_enable_44), 
            .\TMR_comparator_hex[13] (TMR_comparator_hex[13]), .\i_ascii_7__N_94[0] (i_ascii_7__N_94[0])) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    LUT4 ST_fifo_handler_2__I_0_125_Mux_2_i7_4_lut (.A(ST_fifo_handler[0]), 
         .B(n2986), .C(ST_fifo_handler[2]), .D(ST_fifo_handler[1]), .Z(ST_fifo_handler_2__N_9[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(212[3] 266[12])
    defparam ST_fifo_handler_2__I_0_125_Mux_2_i7_4_lut.init = 16'h1af0;
    OSCJ OSCInst0 (.STDBY(GND_net), .OSC(WrClock)) /* synthesis NOM_FREQ="14.00", syn_instantiated=1 */ ;
    defparam OSCInst0.NOM_FREQ = "14.00";
    LUT4 i21_4_lut (.A(ST_fifo_handler[0]), .B(ST_fifo_handler[2]), .C(ST_fifo_handler[1]), 
         .D(n2986), .Z(ST_fifo_handler_2__N_9[1])) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(212[3] 266[12])
    defparam i21_4_lut.init = 16'h1a5a;
    FD1S3AX rst_116 (.D(WrClock_enable_59), .CK(WrClock), .Q(rst));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(194[1] 201[8])
    defparam rst_116.GSR = "ENABLED";
    FD1P3AX count_N_unis_i0_i0 (.D(count_N_91[0]), .SP(WrClock_enable_32), 
            .CK(WrClock), .Q(count_N_unis[0]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam count_N_unis_i0_i0.GSR = "ENABLED";
    LUT4 i2476_2_lut (.A(count_N_unis[1]), .B(count_N_unis[2]), .Z(n2095)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2476_2_lut.init = 16'h1111;
    LUT4 i1_3_lut_4_lut (.A(count_N_unis[0]), .B(n2983), .C(n2577), .D(count_N_unis[1]), 
         .Z(count_N_91[1])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (C (D))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(250[6] 257[13])
    defparam i1_3_lut_4_lut.init = 16'hd020;
    LUT4 i1_4_lut (.A(count_N_unis[2]), .B(n2577), .C(count_N_unis[1]), 
         .D(n2982), .Z(count_N_91[2])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h4888;
    FD1P3AX i_ascii_i0_i0 (.D(i_ascii_7__N_94[0]), .SP(WrClock_enable_44), 
            .CK(WrClock), .Q(i_ascii[0]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam i_ascii_i0_i0.GSR = "ENABLED";
    OB uart_tx_pad (.I(uart_tx_c), .O(uart_tx));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(16[1:8])
    FD1P3AX rst_counter_284__i0 (.D(n60), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(rst_counter[6]), .B(rst_counter[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3DX ST_fifo_handler_i2 (.D(ST_fifo_handler_2__N_9[2]), .SP(WrClock_enable_11), 
            .CK(WrClock), .CD(rst), .Q(ST_fifo_handler[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam ST_fifo_handler_i2.GSR = "ENABLED";
    FD1P3DX ST_fifo_handler_i1 (.D(ST_fifo_handler_2__N_9[1]), .SP(WrClock_enable_12), 
            .CK(WrClock), .CD(n3035), .Q(ST_fifo_handler[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam ST_fifo_handler_i1.GSR = "ENABLED";
    FD1P3AX b13_conv_hexa_i0_i1 (.D(n2992), .SP(WrClock_enable_22), .CK(WrClock), 
            .Q(b13_conv_hexa[1]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam b13_conv_hexa_i0_i1.GSR = "ENABLED";
    FD1P3AX b13_conv_hexa_i0_i2 (.D(n2031), .SP(WrClock_enable_22), .CK(WrClock), 
            .Q(b13_conv_hexa[2]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam b13_conv_hexa_i0_i2.GSR = "ENABLED";
    FD1P3AX b13_conv_hexa_i0_i9 (.D(n201), .SP(WrClock_enable_22), .CK(WrClock), 
            .Q(b13_conv_hexa[9]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam b13_conv_hexa_i0_i9.GSR = "ENABLED";
    FD1P3AX b13_conv_hexa_i0_i10 (.D(n2095), .SP(WrClock_enable_22), .CK(WrClock), 
            .Q(b13_conv_hexa[10]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam b13_conv_hexa_i0_i10.GSR = "ENABLED";
    FD1P3AX TMR_comparator_hex_i0_i1 (.D(n1482), .SP(WrClock_enable_22), 
            .CK(WrClock), .Q(TMR_comparator_hex[1]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam TMR_comparator_hex_i0_i1.GSR = "ENABLED";
    FD1P3AX TMR_comparator_hex_i0_i2 (.D(n2595), .SP(WrClock_enable_22), 
            .CK(WrClock), .Q(TMR_comparator_hex[2]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam TMR_comparator_hex_i0_i2.GSR = "ENABLED";
    FD1P3AX TMR_comparator_hex_i0_i5 (.D(n195), .SP(WrClock_enable_22), 
            .CK(WrClock), .Q(TMR_comparator_hex[5]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam TMR_comparator_hex_i0_i5.GSR = "ENABLED";
    FD1P3AX TMR_comparator_hex_i0_i6 (.D(n2988), .SP(WrClock_enable_22), 
            .CK(WrClock), .Q(TMR_comparator_hex[6]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam TMR_comparator_hex_i0_i6.GSR = "ENABLED";
    FD1P3AX TMR_comparator_hex_i0_i13 (.D(n328), .SP(WrClock_enable_22), 
            .CK(WrClock), .Q(TMR_comparator_hex[13]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam TMR_comparator_hex_i0_i13.GSR = "ENABLED";
    FD1P3AX TMR_comparator_hex_i0_i14 (.D(n2986), .SP(WrClock_enable_22), 
            .CK(WrClock), .Q(TMR_comparator_hex[14]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam TMR_comparator_hex_i0_i14.GSR = "ENABLED";
    FD1P3AX count_N_unis_i0_i1 (.D(count_N_91[1]), .SP(WrClock_enable_32), 
            .CK(WrClock), .Q(count_N_unis[1]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam count_N_unis_i0_i1.GSR = "ENABLED";
    LUT4 i842_2_lut_2_lut (.A(WrClock_enable_59), .B(n50), .Z(n1367)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(195[2] 200[9])
    defparam i842_2_lut_2_lut.init = 16'hdddd;
    PFUMX i2518 (.BLUT(n2957), .ALUT(n2956), .C0(ST_fifo_handler[0]), 
          .Z(i_ascii_7__N_94[2]));
    LUT4 ST_fifo_handler_2__bdd_4_lut_2517 (.A(ST_fifo_handler[2]), .B(TMR_comparator_hex[2]), 
         .C(b13_conv_hexa[2]), .D(ST_fifo_handler[1]), .Z(n2956)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C (D)))) */ ;
    defparam ST_fifo_handler_2__bdd_4_lut_2517.init = 16'h5088;
    LUT4 i2_3_lut_3_lut (.A(ST_fifo_handler[1]), .B(n1176), .C(ST_fifo_handler[2]), 
         .Z(i_ascii_7__N_94[6])) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 mux_100_Mux_4_i7_4_lut_3_lut (.A(ST_fifo_handler[1]), .B(ST_fifo_handler[2]), 
         .C(n1192), .Z(i_ascii_7__N_94[4])) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;
    defparam mux_100_Mux_4_i7_4_lut_3_lut.init = 16'h6262;
    FD1P3AX count_N_unis_i0_i2 (.D(count_N_91[2]), .SP(WrClock_enable_32), 
            .CK(WrClock), .Q(count_N_unis[2]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam count_N_unis_i0_i2.GSR = "ENABLED";
    LUT4 i2473_4_lut_rep_24 (.A(n2411), .B(rst_counter[10]), .C(rst_counter[9]), 
         .D(rst_counter[8]), .Z(WrClock_enable_59)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(195[2] 200[9])
    defparam i2473_4_lut_rep_24.init = 16'h373f;
    LUT4 i2_4_lut (.A(Full), .B(n2613), .C(ST_fifo_handler[1]), .D(ST_fifo_handler[2]), 
         .Z(WrClock_enable_32)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam i2_4_lut.init = 16'h3001;
    LUT4 i1_2_lut_rep_32 (.A(count_N_unis[2]), .B(count_N_unis[0]), .Z(n2992)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(250[9:37])
    defparam i1_2_lut_rep_32.init = 16'heeee;
    LUT4 ST_fifo_handler_1__bdd_4_lut_2514 (.A(ST_fifo_handler[1]), .B(TMR_comparator_hex[1]), 
         .C(ST_fifo_handler[2]), .D(b13_conv_hexa[1]), .Z(n2953)) /* synthesis lut_function=(A (C+(D))+!A (B+!(C))) */ ;
    defparam ST_fifo_handler_1__bdd_4_lut_2514.init = 16'hefe5;
    LUT4 equal_259_i6_1_lut_2_lut_3_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), 
         .C(count_N_unis[1]), .Z(n195)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(250[9:37])
    defparam equal_259_i6_1_lut_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_rep_28_3_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), 
         .C(count_N_unis[1]), .Z(n2988)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(250[9:37])
    defparam i1_2_lut_rep_28_3_lut.init = 16'hfefe;
    LUT4 i2077_2_lut (.A(ST_fifo_handler[0]), .B(n3034), .Z(n2613)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2077_2_lut.init = 16'heeee;
    LUT4 i1506_1_lut_2_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), .Z(n201)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(250[9:37])
    defparam i1506_1_lut_2_lut.init = 16'h1111;
    LUT4 i2480_2_lut_3_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), .C(count_N_unis[1]), 
         .Z(n1482)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(250[9:37])
    defparam i2480_2_lut_3_lut.init = 16'h1010;
    LUT4 i1507_2_lut_3_lut_3_lut_4_lut_3_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), 
         .C(count_N_unis[1]), .Z(n2031)) /* synthesis lut_function=(A+!(B (C)+!B !(C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(250[9:37])
    defparam i1507_2_lut_3_lut_3_lut_4_lut_3_lut.init = 16'hbebe;
    LUT4 i1_2_lut_4_lut (.A(ST_fifo_handler[1]), .B(ST_fifo_handler[0]), 
         .C(ST_fifo_handler[2]), .D(invout_1), .Z(WrClock_enable_12)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hff04;
    CCU2D rst_counter_284_add_4_9 (.A0(rst_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2378), .COUT(n2379), .S0(n53), .S1(n52));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284_add_4_9.INIT0 = 16'hfaaa;
    defparam rst_counter_284_add_4_9.INIT1 = 16'hfaaa;
    defparam rst_counter_284_add_4_9.INJECT1_0 = "NO";
    defparam rst_counter_284_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_4 (.A(ST_fifo_handler[1]), .B(ST_fifo_handler[0]), 
         .C(ST_fifo_handler[2]), .D(n3034), .Z(WrClock_enable_22)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_4.init = 16'h0004;
    LUT4 i2488_4_lut (.A(ST_fifo_handler[2]), .B(count_N_unis[0]), .C(n2990), 
         .D(n2983), .Z(count_N_91[0])) /* synthesis lut_function=(!((B (C+!(D))+!B (C+(D)))+!A)) */ ;
    defparam i2488_4_lut.init = 16'h0802;
    LUT4 ST_fifo_handler_2__bdd_4_lut_2520 (.A(ST_fifo_handler[2]), .B(n2986), 
         .C(b13_conv_hexa[10]), .D(ST_fifo_handler[1]), .Z(n2957)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (C (D))) */ ;
    defparam ST_fifo_handler_2__bdd_4_lut_2520.init = 16'hd8a0;
    LUT4 i667_3_lut (.A(TMR_comparator_hex[13]), .B(TMR_comparator_hex[5]), 
         .C(ST_fifo_handler[0]), .Z(n1192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(212[3] 266[12])
    defparam i667_3_lut.init = 16'hcaca;
    PFUMX i2531 (.BLUT(n2975), .ALUT(n2974), .C0(ST_fifo_handler[0]), 
          .Z(i_ascii_7__N_94[3]));
    CCU2D rst_counter_284_add_4_7 (.A0(rst_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2377), .COUT(n2378), .S0(n55), .S1(n54));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284_add_4_7.INIT0 = 16'hfaaa;
    defparam rst_counter_284_add_4_7.INIT1 = 16'hfaaa;
    defparam rst_counter_284_add_4_7.INJECT1_0 = "NO";
    defparam rst_counter_284_add_4_7.INJECT1_1 = "NO";
    LUT4 i651_3_lut (.A(TMR_comparator_hex[14]), .B(TMR_comparator_hex[6]), 
         .C(ST_fifo_handler[0]), .Z(n1176)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(212[3] 266[12])
    defparam i651_3_lut.init = 16'hcaca;
    LUT4 i161_2_lut_rep_23_3_lut_4_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), 
         .C(Full), .D(count_N_unis[1]), .Z(n2983)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam i161_2_lut_rep_23_3_lut_4_lut.init = 16'hf4f0;
    LUT4 ST_fifo_handler_0__bdd_3_lut_2530 (.A(TMR_comparator_hex[5]), .B(ST_fifo_handler[2]), 
         .C(ST_fifo_handler[1]), .Z(n2974)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam ST_fifo_handler_0__bdd_3_lut_2530.init = 16'he0e0;
    LUT4 i1_2_lut_rep_26_3_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), 
         .C(count_N_unis[1]), .Z(n2986)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_26_3_lut.init = 16'hbfbf;
    CCU2D rst_counter_284_add_4_5 (.A0(rst_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2376), .COUT(n2377), .S0(n57), .S1(n56));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284_add_4_5.INIT0 = 16'hfaaa;
    defparam rst_counter_284_add_4_5.INIT1 = 16'hfaaa;
    defparam rst_counter_284_add_4_5.INJECT1_0 = "NO";
    defparam rst_counter_284_add_4_5.INJECT1_1 = "NO";
    LUT4 ST_fifo_handler_0__bdd_3_lut (.A(ST_fifo_handler[2]), .B(TMR_comparator_hex[13]), 
         .C(ST_fifo_handler[1]), .Z(n2975)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam ST_fifo_handler_0__bdd_3_lut.init = 16'ha8a8;
    LUT4 i2483_2_lut_3_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), .C(count_N_unis[1]), 
         .Z(n2595)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2483_2_lut_3_lut.init = 16'h0404;
    FD1P3AX i_ascii_i0_i1 (.D(i_ascii_7__N_94[1]), .SP(WrClock_enable_44), 
            .CK(WrClock), .Q(i_ascii[1]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam i_ascii_i0_i1.GSR = "ENABLED";
    FD1P3AX i_ascii_i0_i2 (.D(i_ascii_7__N_94[2]), .SP(WrClock_enable_44), 
            .CK(WrClock), .Q(i_ascii[2]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam i_ascii_i0_i2.GSR = "ENABLED";
    FD1P3AX i_ascii_i0_i3 (.D(i_ascii_7__N_94[3]), .SP(WrClock_enable_44), 
            .CK(WrClock), .Q(i_ascii[3]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam i_ascii_i0_i3.GSR = "ENABLED";
    FD1P3AX i_ascii_i0_i4 (.D(i_ascii_7__N_94[4]), .SP(WrClock_enable_44), 
            .CK(WrClock), .Q(i_ascii[4]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam i_ascii_i0_i4.GSR = "ENABLED";
    FD1P3AX i_ascii_i0_i5 (.D(i_ascii_7__N_94[5]), .SP(WrClock_enable_46), 
            .CK(WrClock), .Q(i_ascii[5]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam i_ascii_i0_i5.GSR = "ENABLED";
    FD1P3AX i_ascii_i0_i6 (.D(i_ascii_7__N_94[6]), .SP(WrClock_enable_46), 
            .CK(WrClock), .Q(i_ascii[6]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam i_ascii_i0_i6.GSR = "ENABLED";
    FD1P3AX rst_counter_284__i1 (.D(n59), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(n10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i1.GSR = "ENABLED";
    LUT4 TMR_comparator_hex_13__bdd_4_lut (.A(TMR_comparator_hex[13]), .B(ST_fifo_handler[1]), 
         .C(ST_fifo_handler[0]), .D(TMR_comparator_hex[5]), .Z(n2961)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C (D))))) */ ;
    defparam TMR_comparator_hex_13__bdd_4_lut.init = 16'h3e0e;
    LUT4 i384_2_lut_rep_22_3_lut_4_lut_4_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), 
         .C(Full), .D(count_N_unis[1]), .Z(n2982)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;
    defparam i384_2_lut_rep_22_3_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 i2_1_lut (.A(Full), .Z(o_fifo_full_N_168)) /* synthesis lut_function=(!(A)) */ ;
    defparam i2_1_lut.init = 16'h5555;
    LUT4 equal_87_i6_1_lut_2_lut_3_lut (.A(count_N_unis[2]), .B(count_N_unis[0]), 
         .C(count_N_unis[1]), .Z(n328)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam equal_87_i6_1_lut_2_lut_3_lut.init = 16'h4040;
    LUT4 pwr_bdd_2_lut_2533 (.A(n2961), .B(ST_fifo_handler[2]), .Z(i_ascii_7__N_94[5])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam pwr_bdd_2_lut_2533.init = 16'hbbbb;
    LUT4 i739_2_lut_rep_30 (.A(ST_fifo_handler[0]), .B(ST_fifo_handler[1]), 
         .Z(n2990)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(212[3] 266[12])
    defparam i739_2_lut_rep_30.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut (.A(ST_fifo_handler[0]), .B(ST_fifo_handler[1]), 
         .C(ST_fifo_handler[2]), .Z(n2577)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(212[3] 266[12])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    FD1P3AX rst_counter_284__i2 (.D(n58), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i2.GSR = "ENABLED";
    FD1P3AX rst_counter_284__i3 (.D(n57), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(rst_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i3.GSR = "ENABLED";
    FD1P3AX rst_counter_284__i4 (.D(n56), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(rst_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i4.GSR = "ENABLED";
    FD1P3AX rst_counter_284__i5 (.D(n55), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(rst_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i5.GSR = "ENABLED";
    FD1P3AX rst_counter_284__i6 (.D(n54), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(rst_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i6.GSR = "ENABLED";
    FD1P3AX rst_counter_284__i7 (.D(n53), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(rst_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i7.GSR = "ENABLED";
    FD1P3AX rst_counter_284__i8 (.D(n52), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(rst_counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i8.GSR = "ENABLED";
    FD1P3AX rst_counter_284__i9 (.D(n51), .SP(WrClock_enable_59), .CK(WrClock), 
            .Q(rst_counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i9.GSR = "ENABLED";
    FD1S3AX rst_counter_284__i10 (.D(n1367), .CK(WrClock), .Q(rst_counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284__i10.GSR = "ENABLED";
    PFUMX i2515 (.BLUT(n2954), .ALUT(n2953), .C0(ST_fifo_handler[0]), 
          .Z(i_ascii_7__N_94[1]));
    CCU2D rst_counter_284_add_4_3 (.A0(n10), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n9), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2375), .COUT(n2376), .S0(n59), .S1(n58));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284_add_4_3.INIT0 = 16'hfaaa;
    defparam rst_counter_284_add_4_3.INIT1 = 16'hfaaa;
    defparam rst_counter_284_add_4_3.INJECT1_0 = "NO";
    defparam rst_counter_284_add_4_3.INJECT1_1 = "NO";
    FD1S3AX rst_116_rep_54 (.D(WrClock_enable_59), .CK(WrClock), .Q(n3035));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(194[1] 201[8])
    defparam rst_116_rep_54.GSR = "ENABLED";
    FD1S3AX rst_116_rep_53 (.D(WrClock_enable_59), .CK(WrClock), .Q(n3034));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(194[1] 201[8])
    defparam rst_116_rep_53.GSR = "ENABLED";
    CCU2D rst_counter_284_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n11), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2375), .S1(n60));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284_add_4_1.INIT0 = 16'hF000;
    defparam rst_counter_284_add_4_1.INIT1 = 16'h0555;
    defparam rst_counter_284_add_4_1.INJECT1_0 = "NO";
    defparam rst_counter_284_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(ST_fifo_handler[1]), .B(ST_fifo_handler[0]), 
         .C(n2605), .D(ST_fifo_handler[2]), .Z(WrClock_enable_46)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0f0b;
    VLO i1 (.Z(GND_net));
    CCU2D rst_counter_284_add_4_11 (.A0(rst_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(rst_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2379), .S0(n51), .S1(n50));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(199[18:29])
    defparam rst_counter_284_add_4_11.INIT0 = 16'hfaaa;
    defparam rst_counter_284_add_4_11.INIT1 = 16'hfaaa;
    defparam rst_counter_284_add_4_11.INJECT1_0 = "NO";
    defparam rst_counter_284_add_4_11.INJECT1_1 = "NO";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1P3DX ST_fifo_handler_i0 (.D(ST_fifo_handler_2__N_9[0]), .SP(WrClock_enable_64), 
            .CK(WrClock), .CD(rst), .Q(ST_fifo_handler[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(207[1] 267[8])
    defparam ST_fifo_handler_i0.GSR = "ENABLED";
    \fifo2Uart(115200,14000000)  fifoUart (.WrClock(WrClock), .n3035(n3035), 
            .rst(rst), .n3034(n3034), .Empty(Empty), .RdEn(RdEn), .uart_tx_c(uart_tx_c), 
            .i_fifo_dout({i_fifo_dout}), .GND_net(GND_net));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(168[11:20])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 ST_fifo_handler_1__bdd_4_lut_2521 (.A(ST_fifo_handler[1]), .B(n2986), 
         .C(ST_fifo_handler[2]), .D(b13_conv_hexa[9]), .Z(n2954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !((D)+!C))) */ ;
    defparam ST_fifo_handler_1__bdd_4_lut_2521.init = 16'h7f25;
    LUT4 i4_4_lut (.A(rst_counter[5]), .B(rst_counter[7]), .C(rst_counter[3]), 
         .D(n6), .Z(n2411)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module b13fifo
//

module b13fifo (WrClock, rst, n3035, RdEn, i_fifo_dout, Empty, Full, 
            VCC_net, GND_net, \i_ascii[6] , \i_ascii[5] , \i_ascii[4] , 
            invout_1, o_fifo_full_N_168, n3034, \i_ascii[3] , \i_ascii[2] , 
            \i_ascii[1] , \i_ascii[0] , ST_fifo_handler, WrClock_enable_11, 
            \ST_fifo_handler_2__N_9[0] , WrClock_enable_64, n2605, WrClock_enable_44, 
            \TMR_comparator_hex[13] , \i_ascii_7__N_94[0] ) /* synthesis NGD_DRC_MASK=1 */ ;
    input WrClock;
    input rst;
    input n3035;
    input RdEn;
    output [7:0]i_fifo_dout;
    output Empty;
    output Full;
    input VCC_net;
    input GND_net;
    input \i_ascii[6] ;
    input \i_ascii[5] ;
    input \i_ascii[4] ;
    output invout_1;
    input o_fifo_full_N_168;
    input n3034;
    input \i_ascii[3] ;
    input \i_ascii[2] ;
    input \i_ascii[1] ;
    input \i_ascii[0] ;
    input [2:0]ST_fifo_handler;
    output WrClock_enable_11;
    output \ST_fifo_handler_2__N_9[0] ;
    output WrClock_enable_64;
    output n2605;
    output WrClock_enable_44;
    input \TMR_comparator_hex[13] ;
    output \i_ascii_7__N_94[0] ;
    
    wire WrClock /* synthesis SET_AS_NETWORK=WrClock, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(51[9:16])
    
    wire iwcount_2, wren_i, wcount_2, iwcount_1, wcount_1, n3028, 
        mdL0_14_0, mdL0_15_0, rptr_4, n2847, n2726, n2727, rptr_5, 
        n2737, mdL0_20_7, mdL0_21_7, n2633, mdL0_12_0, mdL0_13_0, 
        n2846, n2868, n2869, rptr_8, rdataout0, n2747, n2748, 
        n2763, n2728, n2729, n2738, n2625, n2626, n2640, iwcount_3, 
        wcount_3, iwcount_4, wcount_4, iwcount_5, wcount_5, iwcount_6, 
        wcount_6, iwcount_7, wcount_7, iwcount_8, wcount_8, iwcount_9, 
        wcount_9, w_gdata_0, w_gcount_0, w_gdata_1, w_gcount_1, w_gdata_2, 
        w_gcount_2, w_gdata_3, w_gcount_3, w_gdata_4, w_gcount_4, 
        w_gdata_5, w_gcount_5, w_gdata_6, w_gcount_6, w_gdata_7, w_gcount_7, 
        w_gdata_8, w_gcount_8, w_gcount_9, wcount_0, wptr_0, wptr_1, 
        wptr_2, wptr_3, wptr_4, wptr_5, wptr_6, wptr_7, wptr_8, 
        wptr_9, rRst, ircount_0, rden_i, rcount_0, ircount_1, rcount_1, 
        ircount_2, rcount_2, ircount_3, rcount_3, ircount_4, rcount_4, 
        ircount_5, rcount_5, ircount_6, rcount_6, ircount_7, rcount_7, 
        ircount_8, rcount_8, ircount_9, rcount_9, r_gdata_0, r_gcount_0, 
        r_gdata_1, r_gcount_1, r_gdata_2, r_gcount_2, r_gdata_3, r_gcount_3, 
        r_gdata_4, r_gcount_4, r_gdata_5, r_gcount_5, r_gdata_6, r_gcount_6, 
        r_gdata_7, r_gcount_7, r_gdata_8, r_gcount_8, r_gcount_9, 
        rptr_0, rptr_1, rptr_2, rptr_3, rptr_6, rptr_7, rptr_9, 
        edataout0, edataout1, rdataout1, edataout2, rdataout2, edataout3, 
        rdataout3, edataout4, rdataout4, edataout5, rdataout5, edataout6, 
        rdataout6, edataout7, rdataout7, w_gcount_r0, w_gcount_r1, 
        w_gcount_r2, w_gcount_r3, w_gcount_r4, w_gcount_r5, w_gcount_r6, 
        w_gcount_r7, w_gcount_r8, w_gcount_r9, r_gcount_w0, r_gcount_w1, 
        r_gcount_w2, r_gcount_w3, r_gcount_w4, r_gcount_w5, r_gcount_w6, 
        r_gcount_w7, r_gcount_w8, r_gcount_w9, w_gcount_r20, w_gcount_r21, 
        w_gcount_r22, w_gcount_r23, w_gcount_r24, w_gcount_r25, w_gcount_r26, 
        w_gcount_r27, w_gcount_r28, w_gcount_r29, r_gcount_w20, r_gcount_w21, 
        r_gcount_w22, r_gcount_w23, r_gcount_w24, r_gcount_w25, r_gcount_w26, 
        r_gcount_w27, r_gcount_w28, r_gcount_w29, empty_d, full_d, 
        w_gctr_ci, iwcount_0, co0, co1, co2, co3, r_gctr_ci, co0_1, 
        co1_1, co2_1, co3_1, cmp_ci, wcount_r0, wcount_r1, co0_2, 
        wcount_r2, wcount_r3, co1_2, wcount_r4, wcount_r5, co2_2, 
        w_g2b_xor_cluster_0, wcount_r7, co3_2, wcount_r8, empty_cmp_clr, 
        empty_cmp_set, empty_d_c, cmp_ci_1, rcount_w0, rcount_w1, 
        co0_3, rcount_w2, rcount_w3, co1_3, rcount_w4, rcount_w5, 
        co2_3, r_g2b_xor_cluster_0, rcount_w7, co3_3, rcount_w8, full_cmp_clr, 
        full_cmp_set, full_d_c, mdL0_0_7, mdL0_0_6, mdL0_0_5, mdL0_0_4, 
        dec0_wre3, invout_0, wptr_4_inv, wptr_5_inv, wptr_6_inv, wptr_7_inv, 
        wptr_8_inv, func_and_inet, func_and_inet_1, dec1_wre7, func_and_inet_2, 
        dec2_wre11, func_and_inet_3, dec3_wre15, func_and_inet_4, dec4_wre19, 
        func_and_inet_5, dec5_wre23, func_and_inet_6, dec6_wre27, func_and_inet_7, 
        dec7_wre31, func_and_inet_8, dec8_wre35, func_and_inet_9, dec9_wre39, 
        func_and_inet_10, dec10_wre43, func_and_inet_11, dec11_wre47, 
        func_and_inet_12, dec12_wre51, func_and_inet_13, dec13_wre55, 
        func_and_inet_14, dec14_wre59, func_and_inet_15, dec15_wre63, 
        func_and_inet_16, dec16_wre67, func_and_inet_17, dec17_wre71, 
        func_and_inet_18, dec18_wre75, func_and_inet_19, dec19_wre79, 
        func_and_inet_20, dec20_wre83, func_and_inet_21, dec21_wre87, 
        func_and_inet_22, dec22_wre91, func_and_inet_23, dec23_wre95, 
        func_and_inet_24, dec24_wre99, func_and_inet_25, dec25_wre103, 
        func_and_inet_26, dec26_wre107, func_and_inet_27, dec27_wre111, 
        func_and_inet_28, dec28_wre115, func_and_inet_29, dec29_wre119, 
        func_and_inet_30, dec30_wre123, func_and_inet_31, dec31_wre127, 
        w_g2b_xor_cluster_1, r_g2b_xor_cluster_1, mdL0_0_3, mdL0_0_2, 
        mdL0_0_1, mdL0_0_0, mdL0_1_7, mdL0_1_6, mdL0_1_5, mdL0_1_4, 
        mdL0_1_3, mdL0_1_2, mdL0_1_1, mdL0_1_0, mdL0_2_7, mdL0_2_6, 
        mdL0_2_5, mdL0_2_4, mdL0_2_3, mdL0_2_2, mdL0_2_1, mdL0_2_0, 
        mdL0_3_7, mdL0_3_6, mdL0_3_5, mdL0_3_4, n3018, n3020, n3022, 
        n3024, n3026, n3030, n3032, mdL0_3_3, mdL0_3_2, mdL0_3_1, 
        mdL0_3_0, mdL0_4_7, mdL0_4_6, mdL0_4_5, mdL0_4_4, mdL0_4_3, 
        mdL0_4_2, mdL0_4_1, mdL0_4_0, mdL0_5_7, mdL0_5_6, mdL0_5_5, 
        mdL0_5_4, mdL0_5_3, mdL0_5_2, mdL0_5_1, mdL0_5_0, mdL0_6_7, 
        mdL0_6_6, mdL0_6_5, mdL0_6_4, mdL0_6_3, mdL0_6_2, mdL0_6_1, 
        mdL0_6_0, mdL0_7_7, mdL0_7_6, mdL0_7_5, mdL0_7_4, mdL0_7_3, 
        mdL0_7_2, mdL0_7_1, mdL0_7_0, mdL0_8_7, mdL0_8_6, mdL0_8_5, 
        mdL0_8_4, mdL0_8_3, mdL0_8_2, mdL0_8_1, mdL0_8_0, mdL0_9_7, 
        mdL0_9_6, mdL0_9_5, mdL0_9_4, mdL0_9_3, mdL0_9_2, mdL0_9_1, 
        mdL0_9_0, mdL0_10_7, mdL0_10_6, mdL0_10_5, mdL0_10_4, mdL0_10_3, 
        mdL0_10_2, mdL0_10_1, mdL0_10_0, mdL0_11_7, mdL0_11_6, mdL0_11_5, 
        mdL0_11_4, mdL0_11_3, mdL0_11_2, mdL0_11_1, mdL0_11_0, mdL0_12_7, 
        mdL0_12_6, mdL0_12_5, mdL0_12_4, mdL0_12_3, mdL0_12_2, mdL0_12_1, 
        mdL0_13_7, mdL0_13_6, mdL0_13_5, mdL0_13_4, mdL0_13_3, mdL0_13_2, 
        mdL0_13_1, mdL0_14_7, mdL0_14_6, mdL0_14_5, mdL0_14_4, mdL0_14_3, 
        mdL0_14_2, mdL0_14_1, mdL0_15_7, mdL0_15_6, mdL0_15_5, mdL0_15_4, 
        mdL0_15_3, mdL0_15_2, mdL0_15_1, mdL0_16_7, mdL0_16_6, mdL0_16_5, 
        mdL0_16_4, mdL0_16_3, mdL0_16_2, mdL0_16_1, mdL0_16_0, mdL0_17_7, 
        mdL0_17_6, mdL0_17_5, mdL0_17_4, mdL0_17_3, mdL0_17_2, mdL0_17_1, 
        mdL0_17_0, mdL0_18_7, mdL0_18_6, mdL0_18_5, mdL0_18_4, mdL0_18_3, 
        mdL0_18_2, mdL0_18_1, mdL0_18_0, mdL0_19_7, mdL0_19_6, mdL0_19_5, 
        mdL0_19_4, mdL0_19_3, mdL0_19_2, mdL0_19_1, mdL0_19_0, mdL0_20_6, 
        mdL0_20_5, mdL0_20_4, mdL0_20_3, mdL0_20_2, mdL0_20_1, mdL0_20_0, 
        mdL0_21_6, mdL0_21_5, mdL0_21_4, mdL0_21_3, mdL0_21_2, mdL0_21_1, 
        mdL0_21_0, mdL0_22_7, mdL0_22_6, mdL0_22_5, mdL0_22_4, mdL0_22_3, 
        mdL0_22_2, mdL0_22_1, mdL0_22_0, mdL0_23_7, mdL0_23_6, mdL0_23_5, 
        mdL0_23_4, mdL0_23_3, mdL0_23_2, mdL0_23_1, mdL0_23_0, mdL0_24_7, 
        mdL0_24_6, mdL0_24_5, mdL0_24_4, mdL0_24_3, mdL0_24_2, mdL0_24_1, 
        mdL0_24_0, mdL0_25_7, mdL0_25_6, mdL0_25_5, mdL0_25_4, mdL0_25_3, 
        mdL0_25_2, mdL0_25_1, mdL0_25_0, mdL0_26_7, mdL0_26_6, mdL0_26_5, 
        mdL0_26_4, mdL0_26_3, mdL0_26_2, mdL0_26_1, mdL0_26_0, mdL0_27_7, 
        mdL0_27_6, mdL0_27_5, mdL0_27_4, mdL0_27_3, mdL0_27_2, mdL0_27_1, 
        mdL0_27_0, mdL0_28_7, mdL0_28_6, mdL0_28_5, mdL0_28_4, mdL0_28_3, 
        mdL0_28_2, mdL0_28_1, mdL0_28_0, mdL0_29_7, mdL0_29_6, mdL0_29_5, 
        mdL0_29_4, mdL0_29_3, mdL0_29_2, mdL0_29_1, mdL0_29_0, mdL0_30_7, 
        mdL0_30_6, mdL0_30_5, mdL0_30_4, mdL0_30_3, mdL0_30_2, mdL0_30_1, 
        mdL0_30_0, mdL0_31_7, mdL0_31_6, mdL0_31_5, mdL0_31_4, mdL0_31_3, 
        mdL0_31_2, mdL0_31_1, mdL0_31_0, n2730, n2731, n2739, n2845, 
        n2654, n2655, n2670, n2758, n2749, n2750, n2764, n2656, 
        n2657, n2671, n2658, n2659, n2672, n2837, n2838, n2806, 
        n2807, n2844, n2660, n2661, n2673, n2694, n2662, n2663, 
        n2674, n2693, n2809, n2810, n2825, n2751, n2752, n2765, 
        n2775, n2776, n2623, n2692, n2757, n2664, n2665, n2675, 
        n2811, n2812, n2826, n2691, n2753, n2754, n2766, n2632, 
        n2666, n2667, n2676, n2668, n2669, n2677, n2813, n2814, 
        n2827, n2755, n2756, n2767, n2815, n2816, n2828, n2817, 
        n2818, n2829, n2819, n2820, n2830, n2627, n2628, n2641, 
        n2629, n2630, n2642, n2821, n2822, n2831, n2823, n2824, 
        n2832, n2779, n2624, n2639, n2690, n2631, n2643, n2744, 
        n2745, n2768, n2778, n2724, n2634, n2644, n2759, n2760, 
        n2769, n2761, n2762, n2770, n2700, n2635, n2636, n2645, 
        n2689, n2843, n2699, n2794, n2637, n2638, n2646, n2842, 
        n2698, n2841, n2685, n2686, n2701, n2687, n2688, n2702, 
        n2840, n2723, n2697, n2722, n2713, n2714, n2682, n2683, 
        n2651, n2652, n2696, n2709, n2710, n2711, n2712, n2856, 
        n2647, n2648, n2649, n2650, n2802, n2803, n2804, n2805, 
        n2740, n2741, n2857, n2742, n2743, n2703, n2678, n2679, 
        n2680, n2681, n2833, n2834, n2835, n2836, n2771, n2772, 
        n2773, n2774, n2864, n2865, n2866, n2867, n2704, n2705, 
        n2706, n2721, n2720, n2707, n2708, n2795, n2796, n2797, 
        n2798, n2799, n2800, n2801, n2719, n2732, n2733, n2734, 
        n2735, n2736, n2695, n2718, n2717, n2858, n2716, n2859, 
        n2860, n2861, n2855, n2854, n2862, n2863, n2853, n2848, 
        n2849, n2852, n2850, n2851, n2793, n2792, n2780, n2781, 
        n2782, n2783, n2784, n2785, n2791, n2786, n2787, n2788, 
        n2789, n2790, n2725;
    
    FD1P3DX FF_115 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(rst), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1505[13:20])
    defparam FF_115.GSR = "ENABLED";
    FD1P3DX FF_116 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(rst), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1501[13:20])
    defparam FF_116.GSR = "ENABLED";
    FD1P3DX FF_95_rep_47 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(rst), 
            .Q(n3028)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1585[12:19])
    defparam FF_95_rep_47.GSR = "ENABLED";
    LUT4 i2311_3_lut (.A(mdL0_14_0), .B(mdL0_15_0), .C(rptr_4), .Z(n2847)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2311_3_lut.init = 16'hcaca;
    PFUMX i2201 (.BLUT(n2726), .ALUT(n2727), .C0(rptr_5), .Z(n2737));
    LUT4 i2097_3_lut (.A(mdL0_20_7), .B(mdL0_21_7), .C(rptr_4), .Z(n2633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2097_3_lut.init = 16'hcaca;
    LUT4 i2310_3_lut (.A(mdL0_12_0), .B(mdL0_13_0), .C(rptr_4), .Z(n2846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2310_3_lut.init = 16'hcaca;
    LUT4 i2334_3_lut (.A(n2868), .B(n2869), .C(rptr_8), .Z(rdataout0)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2334_3_lut.init = 16'hcaca;
    PFUMX i2227 (.BLUT(n2747), .ALUT(n2748), .C0(rptr_5), .Z(n2763));
    PFUMX i2202 (.BLUT(n2728), .ALUT(n2729), .C0(rptr_5), .Z(n2738));
    PFUMX i2104 (.BLUT(n2625), .ALUT(n2626), .C0(rptr_5), .Z(n2640));
    FD1P3DX FF_114 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(rst), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1509[13:20])
    defparam FF_114.GSR = "ENABLED";
    FD1P3DX FF_113 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(rst), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1513[13:20])
    defparam FF_113.GSR = "ENABLED";
    FD1P3DX FF_112 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1517[13:20])
    defparam FF_112.GSR = "ENABLED";
    FD1P3DX FF_111 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1521[13:20])
    defparam FF_111.GSR = "ENABLED";
    FD1P3DX FF_110 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1525[13:20])
    defparam FF_110.GSR = "ENABLED";
    FD1P3DX FF_109 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1529[13:20])
    defparam FF_109.GSR = "ENABLED";
    FD1P3DX FF_108 (.D(iwcount_9), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1533[13:20])
    defparam FF_108.GSR = "ENABLED";
    FD1P3DX FF_107 (.D(w_gdata_0), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1537[13:20])
    defparam FF_107.GSR = "ENABLED";
    FD1P3DX FF_106 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1541[13:20])
    defparam FF_106.GSR = "ENABLED";
    FD1P3DX FF_105 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1545[13:20])
    defparam FF_105.GSR = "ENABLED";
    FD1P3DX FF_104 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1549[13:20])
    defparam FF_104.GSR = "ENABLED";
    FD1P3DX FF_103 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1553[13:20])
    defparam FF_103.GSR = "ENABLED";
    FD1P3DX FF_102 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1557[13:20])
    defparam FF_102.GSR = "ENABLED";
    FD1P3DX FF_101 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1561[13:20])
    defparam FF_101.GSR = "ENABLED";
    FD1P3DX FF_100 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1565[13:20])
    defparam FF_100.GSR = "ENABLED";
    FD1P3DX FF_99 (.D(w_gdata_8), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1569[12:19])
    defparam FF_99.GSR = "ENABLED";
    FD1P3DX FF_98 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(w_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1573[12:19])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1577[12:19])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1581[12:19])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1585[12:19])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1589[12:19])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1593[12:19])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1597[12:19])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1601[12:19])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1605[12:19])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1609[12:19])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(wcount_9), .SP(wren_i), .CK(WrClock), .CD(n3035), 
            .Q(wptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1613[12:19])
    defparam FF_88.GSR = "ENABLED";
    FD1P3BX FF_87 (.D(ircount_0), .SP(rden_i), .CK(WrClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1617[12:19])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(ircount_1), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1621[12:19])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(ircount_2), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1625[12:19])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(ircount_3), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1629[12:19])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(ircount_4), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1633[12:19])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(ircount_5), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1637[12:19])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(ircount_6), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1641[12:19])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(ircount_7), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1645[12:19])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(ircount_8), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1649[12:19])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(ircount_9), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1653[12:19])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(r_gdata_0), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1657[12:19])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(r_gdata_1), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1661[12:19])
    defparam FF_76.GSR = "ENABLED";
    FD1P3DX FF_75 (.D(r_gdata_2), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1665[12:19])
    defparam FF_75.GSR = "ENABLED";
    FD1P3DX FF_74 (.D(r_gdata_3), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1669[12:19])
    defparam FF_74.GSR = "ENABLED";
    FD1P3DX FF_73 (.D(r_gdata_4), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1673[12:19])
    defparam FF_73.GSR = "ENABLED";
    FD1P3DX FF_72 (.D(r_gdata_5), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1677[12:19])
    defparam FF_72.GSR = "ENABLED";
    FD1P3DX FF_71 (.D(r_gdata_6), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1681[12:19])
    defparam FF_71.GSR = "ENABLED";
    FD1P3DX FF_70 (.D(r_gdata_7), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1685[12:19])
    defparam FF_70.GSR = "ENABLED";
    FD1P3DX FF_69 (.D(r_gdata_8), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1689[12:19])
    defparam FF_69.GSR = "ENABLED";
    FD1P3DX FF_68 (.D(rcount_9), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(r_gcount_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1693[12:19])
    defparam FF_68.GSR = "ENABLED";
    FD1P3DX FF_67 (.D(rcount_0), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1697[12:19])
    defparam FF_67.GSR = "ENABLED";
    FD1P3DX FF_66 (.D(rcount_1), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1701[12:19])
    defparam FF_66.GSR = "ENABLED";
    FD1P3DX FF_65 (.D(rcount_2), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1705[12:19])
    defparam FF_65.GSR = "ENABLED";
    FD1P3DX FF_64 (.D(rcount_3), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1709[12:19])
    defparam FF_64.GSR = "ENABLED";
    FD1P3DX FF_63 (.D(rcount_4), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1713[12:19])
    defparam FF_63.GSR = "ENABLED";
    FD1P3DX FF_62 (.D(rcount_5), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1717[12:19])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(rcount_6), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1721[12:19])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(rcount_7), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1725[12:19])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(rcount_8), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1729[12:19])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(rcount_9), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(rptr_9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1733[12:19])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(edataout0), .SP(RdEn), .CK(WrClock), .CD(rRst), 
            .Q(i_fifo_dout[0])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1737[12:19])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(rdataout0), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(edataout0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1740[12:19])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(edataout1), .SP(RdEn), .CK(WrClock), .CD(rRst), 
            .Q(i_fifo_dout[1])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1744[12:19])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(rdataout1), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(edataout1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1747[12:19])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(edataout2), .SP(RdEn), .CK(WrClock), .CD(rRst), 
            .Q(i_fifo_dout[2])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1751[12:19])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(rdataout2), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(edataout2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1754[12:19])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(edataout3), .SP(RdEn), .CK(WrClock), .CD(rRst), 
            .Q(i_fifo_dout[3])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1758[12:19])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(rdataout3), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(edataout3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1761[12:19])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(edataout4), .SP(RdEn), .CK(WrClock), .CD(rRst), 
            .Q(i_fifo_dout[4])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1765[12:19])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(rdataout4), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(edataout4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1768[12:19])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(edataout5), .SP(RdEn), .CK(WrClock), .CD(rRst), 
            .Q(i_fifo_dout[5])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1772[12:19])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(rdataout5), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(edataout5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1775[12:19])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(edataout6), .SP(RdEn), .CK(WrClock), .CD(rRst), 
            .Q(i_fifo_dout[6])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1779[12:19])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(rdataout6), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(edataout6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1782[12:19])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(edataout7), .SP(RdEn), .CK(WrClock), .CD(rRst), 
            .Q(i_fifo_dout[7])) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1786[12:19])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(rdataout7), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(edataout7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1789[12:19])
    defparam FF_42.GSR = "ENABLED";
    FD1S3DX FF_41 (.D(w_gcount_0), .CK(WrClock), .CD(n3035), .Q(w_gcount_r0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1793[12:19])
    defparam FF_41.GSR = "ENABLED";
    FD1S3DX FF_40 (.D(w_gcount_1), .CK(WrClock), .CD(n3035), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1796[12:19])
    defparam FF_40.GSR = "ENABLED";
    FD1S3DX FF_39 (.D(w_gcount_2), .CK(WrClock), .CD(n3035), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1799[12:19])
    defparam FF_39.GSR = "ENABLED";
    FD1S3DX FF_38 (.D(w_gcount_3), .CK(WrClock), .CD(n3035), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1802[12:19])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_37 (.D(w_gcount_4), .CK(WrClock), .CD(n3035), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1805[12:19])
    defparam FF_37.GSR = "ENABLED";
    FD1S3DX FF_36 (.D(w_gcount_5), .CK(WrClock), .CD(n3035), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1808[12:19])
    defparam FF_36.GSR = "ENABLED";
    FD1S3DX FF_35 (.D(w_gcount_6), .CK(WrClock), .CD(n3035), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1811[12:19])
    defparam FF_35.GSR = "ENABLED";
    FD1S3DX FF_34 (.D(w_gcount_7), .CK(WrClock), .CD(n3035), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1814[12:19])
    defparam FF_34.GSR = "ENABLED";
    FD1S3DX FF_33 (.D(w_gcount_8), .CK(WrClock), .CD(n3035), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1817[12:19])
    defparam FF_33.GSR = "ENABLED";
    FD1S3DX FF_32 (.D(w_gcount_9), .CK(WrClock), .CD(n3035), .Q(w_gcount_r9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1820[12:19])
    defparam FF_32.GSR = "ENABLED";
    FD1S3DX FF_31 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1823[12:19])
    defparam FF_31.GSR = "ENABLED";
    FD1S3DX FF_30 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1826[12:19])
    defparam FF_30.GSR = "ENABLED";
    FD1S3DX FF_29 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1829[12:19])
    defparam FF_29.GSR = "ENABLED";
    FD1S3DX FF_28 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1832[12:19])
    defparam FF_28.GSR = "ENABLED";
    FD1S3DX FF_27 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1835[12:19])
    defparam FF_27.GSR = "ENABLED";
    FD1S3DX FF_26 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1838[12:19])
    defparam FF_26.GSR = "ENABLED";
    FD1S3DX FF_25 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1841[12:19])
    defparam FF_25.GSR = "ENABLED";
    FD1S3DX FF_24 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1844[12:19])
    defparam FF_24.GSR = "ENABLED";
    FD1S3DX FF_23 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1847[12:19])
    defparam FF_23.GSR = "ENABLED";
    FD1S3DX FF_22 (.D(r_gcount_9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w9)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1850[12:19])
    defparam FF_22.GSR = "ENABLED";
    FD1S3DX FF_21 (.D(w_gcount_r0), .CK(WrClock), .CD(n3035), .Q(w_gcount_r20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1853[12:19])
    defparam FF_21.GSR = "ENABLED";
    FD1S3DX FF_20 (.D(w_gcount_r1), .CK(WrClock), .CD(n3035), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1857[12:19])
    defparam FF_20.GSR = "ENABLED";
    FD1S3DX FF_19 (.D(w_gcount_r2), .CK(WrClock), .CD(n3035), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1861[12:19])
    defparam FF_19.GSR = "ENABLED";
    FD1S3DX FF_18 (.D(w_gcount_r3), .CK(WrClock), .CD(n3035), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1865[12:19])
    defparam FF_18.GSR = "ENABLED";
    FD1S3DX FF_17 (.D(w_gcount_r4), .CK(WrClock), .CD(n3035), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1869[12:19])
    defparam FF_17.GSR = "ENABLED";
    FD1S3DX FF_16 (.D(w_gcount_r5), .CK(WrClock), .CD(n3035), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1873[12:19])
    defparam FF_16.GSR = "ENABLED";
    FD1S3DX FF_15 (.D(w_gcount_r6), .CK(WrClock), .CD(n3035), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1877[12:19])
    defparam FF_15.GSR = "ENABLED";
    FD1S3DX FF_14 (.D(w_gcount_r7), .CK(WrClock), .CD(n3035), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1881[12:19])
    defparam FF_14.GSR = "ENABLED";
    FD1S3DX FF_13 (.D(w_gcount_r8), .CK(WrClock), .CD(n3035), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1885[12:19])
    defparam FF_13.GSR = "ENABLED";
    FD1S3DX FF_12 (.D(w_gcount_r9), .CK(WrClock), .CD(n3035), .Q(w_gcount_r29)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1889[12:19])
    defparam FF_12.GSR = "ENABLED";
    FD1S3DX FF_11 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1893[12:19])
    defparam FF_11.GSR = "ENABLED";
    FD1S3DX FF_10 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1896[12:19])
    defparam FF_10.GSR = "ENABLED";
    FD1S3DX FF_9 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1899[11:18])
    defparam FF_9.GSR = "ENABLED";
    FD1S3DX FF_8 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1902[11:18])
    defparam FF_8.GSR = "ENABLED";
    FD1S3DX FF_7 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1905[11:18])
    defparam FF_7.GSR = "ENABLED";
    FD1S3DX FF_6 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1908[11:18])
    defparam FF_6.GSR = "ENABLED";
    FD1S3DX FF_5 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1911[11:18])
    defparam FF_5.GSR = "ENABLED";
    FD1S3DX FF_4 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1914[11:18])
    defparam FF_4.GSR = "ENABLED";
    FD1S3DX FF_3 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1917[11:18])
    defparam FF_3.GSR = "ENABLED";
    FD1S3DX FF_2 (.D(r_gcount_w9), .CK(WrClock), .CD(rRst), .Q(r_gcount_w29)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1920[11:18])
    defparam FF_2.GSR = "ENABLED";
    FD1S3BX FF_1 (.D(empty_d), .CK(WrClock), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1923[11:18])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(full_d), .CK(WrClock), .CD(n3035), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1926[11:18])
    defparam FF_0.GSR = "ENABLED";
    FADD2B w_gctr_cia (.A0(GND_net), .A1(VCC_net), .B0(GND_net), .B1(VCC_net), 
           .CI(GND_net), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 w_gctr_0 (.CI(w_gctr_ci), .PC0(wcount_0), .PC1(wcount_1), .CO(co0), 
        .NC0(iwcount_0), .NC1(iwcount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 w_gctr_1 (.CI(co0), .PC0(wcount_2), .PC1(wcount_3), .CO(co1), 
        .NC0(iwcount_2), .NC1(iwcount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 w_gctr_2 (.CI(co1), .PC0(wcount_4), .PC1(wcount_5), .CO(co2), 
        .NC0(iwcount_4), .NC1(iwcount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 w_gctr_3 (.CI(co2), .PC0(wcount_6), .PC1(wcount_7), .CO(co3), 
        .NC0(iwcount_6), .NC1(iwcount_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 w_gctr_4 (.CI(co3), .PC0(wcount_8), .PC1(wcount_9), .NC0(iwcount_8), 
        .NC1(iwcount_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    FADD2B r_gctr_cia (.A0(GND_net), .A1(VCC_net), .B0(GND_net), .B1(VCC_net), 
           .CI(GND_net), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 r_gctr_0 (.CI(r_gctr_ci), .PC0(rcount_0), .PC1(rcount_1), .CO(co0_1), 
        .NC0(ircount_0), .NC1(ircount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 r_gctr_1 (.CI(co0_1), .PC0(rcount_2), .PC1(rcount_3), .CO(co1_1), 
        .NC0(ircount_2), .NC1(ircount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 r_gctr_2 (.CI(co1_1), .PC0(rcount_4), .PC1(rcount_5), .CO(co2_1), 
        .NC0(ircount_4), .NC1(ircount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 r_gctr_3 (.CI(co2_1), .PC0(rcount_6), .PC1(rcount_7), .CO(co3_1), 
        .NC0(ircount_6), .NC1(ircount_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    CU2 r_gctr_4 (.CI(co3_1), .PC0(rcount_8), .PC1(rcount_9), .NC0(ircount_8), 
        .NC1(ircount_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 empty_cmp_0 (.A0(rcount_0), .A1(rcount_1), .B0(wcount_r0), .B1(wcount_r1), 
          .CI(cmp_ci), .GE(co0_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 empty_cmp_1 (.A0(rcount_2), .A1(rcount_3), .B0(wcount_r2), .B1(wcount_r3), 
          .CI(co0_2), .GE(co1_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 empty_cmp_2 (.A0(rcount_4), .A1(rcount_5), .B0(wcount_r4), .B1(wcount_r5), 
          .CI(co1_2), .GE(co2_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 empty_cmp_3 (.A0(rcount_6), .A1(rcount_7), .B0(w_g2b_xor_cluster_0), 
          .B1(wcount_r7), .CI(co2_2), .GE(co3_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 empty_cmp_4 (.A0(rcount_8), .A1(empty_cmp_set), .B0(wcount_r8), 
          .B1(empty_cmp_clr), .CI(co3_2), .GE(empty_d_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    FADD2B a0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), .B1(GND_net), 
           .CI(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    FADD2B full_cmp_ci_a (.A0(GND_net), .A1(wren_i), .B0(GND_net), .B1(wren_i), 
           .CI(GND_net), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 full_cmp_0 (.A0(wcount_0), .A1(wcount_1), .B0(rcount_w0), .B1(rcount_w1), 
          .CI(cmp_ci_1), .GE(co0_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 full_cmp_1 (.A0(wcount_2), .A1(wcount_3), .B0(rcount_w2), .B1(rcount_w3), 
          .CI(co0_3), .GE(co1_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 full_cmp_2 (.A0(wcount_4), .A1(wcount_5), .B0(rcount_w4), .B1(rcount_w5), 
          .CI(co1_3), .GE(co2_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 full_cmp_3 (.A0(wcount_6), .A1(wcount_7), .B0(r_g2b_xor_cluster_0), 
          .B1(rcount_w7), .CI(co2_3), .GE(co3_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AGEB2 full_cmp_4 (.A0(wcount_8), .A1(full_cmp_set), .B0(rcount_w8), 
          .B1(full_cmp_clr), .CI(co3_3), .GE(full_d_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    FADD2B a1 (.A0(GND_net), .A1(GND_net), .B0(GND_net), .B1(GND_net), 
           .CI(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    DPR16X4C fifo_pfu_0_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec0_wre3), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_0_4), 
            .DO1(mdL0_0_5), .DO2(mdL0_0_6), .DO3(mdL0_0_7)) /* synthesis MEM_INIT_FILE="(0-15)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_0_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_0_0.initval = "0x0000000000000000";
    INV INV_6 (.A(Full), .Z(invout_1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    AND2 AND2_t20 (.A(o_fifo_full_N_168), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(969[15:19])
    AND2 AND2_t19 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(975[15:19])
    INV INV_5 (.A(Empty), .Z(invout_0)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    OR2 OR2_t18 (.A(n3034), .B(GND_net), .Z(rRst)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(981[14:17])
    XOR2 XOR2_t17 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(984[15:19])
    XOR2 XOR2_t16 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(987[15:19])
    XOR2 XOR2_t15 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(990[15:19])
    XOR2 XOR2_t14 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(993[15:19])
    XOR2 XOR2_t13 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(996[15:19])
    XOR2 XOR2_t12 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(999[15:19])
    XOR2 XOR2_t11 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1002[15:19])
    XOR2 XOR2_t10 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1005[15:19])
    XOR2 XOR2_t9 (.A(wcount_8), .B(wcount_9), .Z(w_gdata_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1008[14:18])
    XOR2 XOR2_t8 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1011[14:18])
    XOR2 XOR2_t7 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1014[14:18])
    XOR2 XOR2_t6 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1017[14:18])
    XOR2 XOR2_t5 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1020[14:18])
    XOR2 XOR2_t4 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1023[14:18])
    XOR2 XOR2_t3 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1026[14:18])
    XOR2 XOR2_t2 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1029[14:18])
    XOR2 XOR2_t1 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1032[14:18])
    XOR2 XOR2_t0 (.A(rcount_8), .B(rcount_9), .Z(r_gdata_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1035[14:18])
    INV INV_4 (.A(wptr_4), .Z(wptr_4_inv)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    INV INV_3 (.A(wptr_5), .Z(wptr_5_inv)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    INV INV_2 (.A(wptr_6), .Z(wptr_6_inv)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    INV INV_1 (.A(wptr_7), .Z(wptr_7_inv)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    INV INV_0 (.A(wptr_8), .Z(wptr_8_inv)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    ROM16X1A LUT4_87 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(VCC_net), .DO0(func_and_inet)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_87.initval = 16'b1000000000000000;
    ROM16X1A LUT4_86 (.AD0(wptr_8_inv), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet), .DO0(dec0_wre3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_86.initval = 16'b1000000000000000;
    ROM16X1A LUT4_85 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_85.initval = 16'b1000000000000000;
    ROM16X1A LUT4_84 (.AD0(wptr_8_inv), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_1), .DO0(dec1_wre7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_84.initval = 16'b1000000000000000;
    ROM16X1A LUT4_83 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_83.initval = 16'b1000000000000000;
    ROM16X1A LUT4_82 (.AD0(wptr_8_inv), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_2), .DO0(dec2_wre11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_82.initval = 16'b1000000000000000;
    ROM16X1A LUT4_81 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_81.initval = 16'b1000000000000000;
    ROM16X1A LUT4_80 (.AD0(wptr_8_inv), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_3), .DO0(dec3_wre15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_80.initval = 16'b1000000000000000;
    ROM16X1A LUT4_79 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(VCC_net), .DO0(func_and_inet_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_79.initval = 16'b1000000000000000;
    ROM16X1A LUT4_78 (.AD0(wptr_8_inv), .AD1(wptr_7_inv), .AD2(wptr_6), 
            .AD3(func_and_inet_4), .DO0(dec4_wre19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_78.initval = 16'b1000000000000000;
    ROM16X1A LUT4_77 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_77.initval = 16'b1000000000000000;
    ROM16X1A LUT4_76 (.AD0(wptr_8_inv), .AD1(wptr_7_inv), .AD2(wptr_6), 
            .AD3(func_and_inet_5), .DO0(dec5_wre23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_76.initval = 16'b1000000000000000;
    ROM16X1A LUT4_75 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_75.initval = 16'b1000000000000000;
    ROM16X1A LUT4_74 (.AD0(wptr_8_inv), .AD1(wptr_7_inv), .AD2(wptr_6), 
            .AD3(func_and_inet_6), .DO0(dec6_wre27)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_74.initval = 16'b1000000000000000;
    ROM16X1A LUT4_73 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_73.initval = 16'b1000000000000000;
    ROM16X1A LUT4_72 (.AD0(wptr_8_inv), .AD1(wptr_7_inv), .AD2(wptr_6), 
            .AD3(func_and_inet_7), .DO0(dec7_wre31)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_72.initval = 16'b1000000000000000;
    ROM16X1A LUT4_71 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(VCC_net), .DO0(func_and_inet_8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_71.initval = 16'b1000000000000000;
    ROM16X1A LUT4_70 (.AD0(wptr_8_inv), .AD1(wptr_7), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_8), .DO0(dec8_wre35)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_70.initval = 16'b1000000000000000;
    ROM16X1A LUT4_69 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_69.initval = 16'b1000000000000000;
    ROM16X1A LUT4_68 (.AD0(wptr_8_inv), .AD1(wptr_7), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_9), .DO0(dec9_wre39)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_68.initval = 16'b1000000000000000;
    ROM16X1A LUT4_67 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_67.initval = 16'b1000000000000000;
    ROM16X1A LUT4_66 (.AD0(wptr_8_inv), .AD1(wptr_7), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_10), .DO0(dec10_wre43)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_66.initval = 16'b1000000000000000;
    ROM16X1A LUT4_65 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_65.initval = 16'b1000000000000000;
    ROM16X1A LUT4_64 (.AD0(wptr_8_inv), .AD1(wptr_7), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_11), .DO0(dec11_wre47)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_64.initval = 16'b1000000000000000;
    ROM16X1A LUT4_63 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(VCC_net), .DO0(func_and_inet_12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_63.initval = 16'b1000000000000000;
    ROM16X1A LUT4_62 (.AD0(wptr_8_inv), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_12), 
            .DO0(dec12_wre51)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_62.initval = 16'b1000000000000000;
    ROM16X1A LUT4_61 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_61.initval = 16'b1000000000000000;
    ROM16X1A LUT4_60 (.AD0(wptr_8_inv), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_13), 
            .DO0(dec13_wre55)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_60.initval = 16'b1000000000000000;
    ROM16X1A LUT4_59 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_59.initval = 16'b1000000000000000;
    ROM16X1A LUT4_58 (.AD0(wptr_8_inv), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_14), 
            .DO0(dec14_wre59)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_58.initval = 16'b1000000000000000;
    ROM16X1A LUT4_57 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_57.initval = 16'b1000000000000000;
    ROM16X1A LUT4_56 (.AD0(wptr_8_inv), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_15), 
            .DO0(dec15_wre63)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_56.initval = 16'b1000000000000000;
    ROM16X1A LUT4_55 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(VCC_net), .DO0(func_and_inet_16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_55.initval = 16'b1000000000000000;
    ROM16X1A LUT4_54 (.AD0(wptr_8), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_16), .DO0(dec16_wre67)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_54.initval = 16'b1000000000000000;
    ROM16X1A LUT4_53 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_17)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_53.initval = 16'b1000000000000000;
    ROM16X1A LUT4_52 (.AD0(wptr_8), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_17), .DO0(dec17_wre71)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_52.initval = 16'b1000000000000000;
    ROM16X1A LUT4_51 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_18)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_51.initval = 16'b1000000000000000;
    ROM16X1A LUT4_50 (.AD0(wptr_8), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_18), .DO0(dec18_wre75)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_50.initval = 16'b1000000000000000;
    ROM16X1A LUT4_49 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_19)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_49.initval = 16'b1000000000000000;
    ROM16X1A LUT4_48 (.AD0(wptr_8), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_19), .DO0(dec19_wre79)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_48.initval = 16'b1000000000000000;
    ROM16X1A LUT4_47 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(VCC_net), .DO0(func_and_inet_20)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_47.initval = 16'b1000000000000000;
    ROM16X1A LUT4_46 (.AD0(wptr_8), .AD1(wptr_7_inv), .AD2(wptr_6), .AD3(func_and_inet_20), 
            .DO0(dec20_wre83)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_46.initval = 16'b1000000000000000;
    ROM16X1A LUT4_45 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_21)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_45.initval = 16'b1000000000000000;
    ROM16X1A LUT4_44 (.AD0(wptr_8), .AD1(wptr_7_inv), .AD2(wptr_6), .AD3(func_and_inet_21), 
            .DO0(dec21_wre87)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_44.initval = 16'b1000000000000000;
    ROM16X1A LUT4_43 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_22)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_43.initval = 16'b1000000000000000;
    ROM16X1A LUT4_42 (.AD0(wptr_8), .AD1(wptr_7_inv), .AD2(wptr_6), .AD3(func_and_inet_22), 
            .DO0(dec22_wre91)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_42.initval = 16'b1000000000000000;
    ROM16X1A LUT4_41 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_23)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_41.initval = 16'b1000000000000000;
    ROM16X1A LUT4_40 (.AD0(wptr_8), .AD1(wptr_7_inv), .AD2(wptr_6), .AD3(func_and_inet_23), 
            .DO0(dec23_wre95)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_40.initval = 16'b1000000000000000;
    ROM16X1A LUT4_39 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(VCC_net), .DO0(func_and_inet_24)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_39.initval = 16'b1000000000000000;
    ROM16X1A LUT4_38 (.AD0(wptr_8), .AD1(wptr_7), .AD2(wptr_6_inv), .AD3(func_and_inet_24), 
            .DO0(dec24_wre99)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_38.initval = 16'b1000000000000000;
    ROM16X1A LUT4_37 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_25)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_37.initval = 16'b1000000000000000;
    ROM16X1A LUT4_36 (.AD0(wptr_8), .AD1(wptr_7), .AD2(wptr_6_inv), .AD3(func_and_inet_25), 
            .DO0(dec25_wre103)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_36.initval = 16'b1000000000000000;
    ROM16X1A LUT4_35 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_26)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_35.initval = 16'b1000000000000000;
    ROM16X1A LUT4_34 (.AD0(wptr_8), .AD1(wptr_7), .AD2(wptr_6_inv), .AD3(func_and_inet_26), 
            .DO0(dec26_wre107)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_34.initval = 16'b1000000000000000;
    ROM16X1A LUT4_33 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_27)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_33.initval = 16'b1000000000000000;
    ROM16X1A LUT4_32 (.AD0(wptr_8), .AD1(wptr_7), .AD2(wptr_6_inv), .AD3(func_and_inet_27), 
            .DO0(dec27_wre111)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_32.initval = 16'b1000000000000000;
    ROM16X1A LUT4_31 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(VCC_net), .DO0(func_and_inet_28)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_31.initval = 16'b1000000000000000;
    ROM16X1A LUT4_30 (.AD0(wptr_8), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_28), 
            .DO0(dec28_wre115)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_30.initval = 16'b1000000000000000;
    ROM16X1A LUT4_29 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_29)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_29.initval = 16'b1000000000000000;
    ROM16X1A LUT4_28 (.AD0(wptr_8), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_29), 
            .DO0(dec29_wre119)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_28.initval = 16'b1000000000000000;
    ROM16X1A LUT4_27 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_30)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_27.initval = 16'b1000000000000000;
    ROM16X1A LUT4_26 (.AD0(wptr_8), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_30), 
            .DO0(dec30_wre123)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_26.initval = 16'b1000000000000000;
    ROM16X1A LUT4_25 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(VCC_net), 
            .DO0(func_and_inet_31)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_25.initval = 16'b1000000000000000;
    ROM16X1A LUT4_24 (.AD0(wptr_8), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_31), 
            .DO0(dec31_wre127)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_24.initval = 16'b1000000000000000;
    ROM16X1A LUT4_23 (.AD0(w_gcount_r29), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_23.initval = 16'b0110100110010110;
    ROM16X1A LUT4_22 (.AD0(w_gcount_r25), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_22.initval = 16'b0110100110010110;
    ROM16X1A LUT4_21 (.AD0(GND_net), .AD1(GND_net), .AD2(w_gcount_r29), 
            .AD3(w_gcount_r28), .DO0(wcount_r8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(GND_net), .AD1(w_gcount_r29), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(wcount_r8), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(wcount_r5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(wcount_r7), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(wcount_r4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(wcount_r3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(GND_net), .AD1(GND_net), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(GND_net), .AD1(w_gcount_r21), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(w_gcount_r21), .AD1(w_gcount_r20), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(r_gcount_w29), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_13.initval = 16'b0110100110010110;
    ROM16X1A LUT4_12 (.AD0(r_gcount_w25), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_12.initval = 16'b0110100110010110;
    ROM16X1A LUT4_11 (.AD0(GND_net), .AD1(GND_net), .AD2(r_gcount_w29), 
            .AD3(r_gcount_w28), .DO0(rcount_w8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_11.initval = 16'b0110100110010110;
    ROM16X1A LUT4_10 (.AD0(GND_net), .AD1(r_gcount_w29), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_10.initval = 16'b0110100110010110;
    ROM16X1A LUT4_9 (.AD0(rcount_w8), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(rcount_w5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_9.initval = 16'b0110100110010110;
    ROM16X1A LUT4_8 (.AD0(rcount_w7), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_8.initval = 16'b0110100110010110;
    ROM16X1A LUT4_7 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(rcount_w3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_7.initval = 16'b0110100110010110;
    ROM16X1A LUT4_6 (.AD0(GND_net), .AD1(GND_net), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_6.initval = 16'b0110100110010110;
    ROM16X1A LUT4_5 (.AD0(GND_net), .AD1(r_gcount_w21), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_5.initval = 16'b0110100110010110;
    ROM16X1A LUT4_4 (.AD0(r_gcount_w21), .AD1(r_gcount_w20), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_4.initval = 16'b0110100110010110;
    ROM16X1A LUT4_3 (.AD0(GND_net), .AD1(w_gcount_r29), .AD2(rcount_9), 
            .AD3(rptr_9), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_3.initval = 16'b0000010000010000;
    ROM16X1A LUT4_2 (.AD0(GND_net), .AD1(w_gcount_r29), .AD2(rcount_9), 
            .AD3(rptr_9), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_2.initval = 16'b0001000000000100;
    ROM16X1A LUT4_1 (.AD0(GND_net), .AD1(r_gcount_w29), .AD2(wcount_9), 
            .AD3(wptr_9), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_1.initval = 16'b0000000101000000;
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(r_gcount_w29), .AD2(wcount_9), 
            .AD3(wptr_9), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam LUT4_0.initval = 16'b0100000000000001;
    FD1P3BX FF_117 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(rst), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1497[13:20])
    defparam FF_117.GSR = "ENABLED";
    FADD2B empty_cmp_ci_a (.A0(GND_net), .A1(rden_i), .B0(GND_net), .B1(rden_i), 
           .CI(GND_net), .COUT(cmp_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    DPR16X4C fifo_pfu_0_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec0_wre3), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_0_0), 
            .DO1(mdL0_0_1), .DO2(mdL0_0_2), .DO3(mdL0_0_3)) /* synthesis MEM_INIT_FILE="(0-15)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_0_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_0_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_1_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec1_wre7), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_1_4), 
            .DO1(mdL0_1_5), .DO2(mdL0_1_6), .DO3(mdL0_1_7)) /* synthesis MEM_INIT_FILE="(16-31)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_1_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_1_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_1_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec1_wre7), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_1_0), 
            .DO1(mdL0_1_1), .DO2(mdL0_1_2), .DO3(mdL0_1_3)) /* synthesis MEM_INIT_FILE="(16-31)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_1_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_1_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_2_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec2_wre11), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_2_4), 
            .DO1(mdL0_2_5), .DO2(mdL0_2_6), .DO3(mdL0_2_7)) /* synthesis MEM_INIT_FILE="(32-47)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_2_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_2_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_2_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec2_wre11), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_2_0), 
            .DO1(mdL0_2_1), .DO2(mdL0_2_2), .DO3(mdL0_2_3)) /* synthesis MEM_INIT_FILE="(32-47)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_2_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_2_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_3_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec3_wre15), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_3_4), 
            .DO1(mdL0_3_5), .DO2(mdL0_3_6), .DO3(mdL0_3_7)) /* synthesis MEM_INIT_FILE="(48-63)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_3_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_3_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_3_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec3_wre15), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_3_0), 
            .DO1(mdL0_3_1), .DO2(mdL0_3_2), .DO3(mdL0_3_3)) /* synthesis MEM_INIT_FILE="(48-63)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_3_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_3_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_4_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec4_wre19), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_4_4), 
            .DO1(mdL0_4_5), .DO2(mdL0_4_6), .DO3(mdL0_4_7)) /* synthesis MEM_INIT_FILE="(64-79)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_4_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_4_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_4_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec4_wre19), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_4_0), 
            .DO1(mdL0_4_1), .DO2(mdL0_4_2), .DO3(mdL0_4_3)) /* synthesis MEM_INIT_FILE="(64-79)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_4_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_4_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_5_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec5_wre23), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_5_4), 
            .DO1(mdL0_5_5), .DO2(mdL0_5_6), .DO3(mdL0_5_7)) /* synthesis MEM_INIT_FILE="(80-95)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_5_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_5_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_5_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec5_wre23), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_5_0), 
            .DO1(mdL0_5_1), .DO2(mdL0_5_2), .DO3(mdL0_5_3)) /* synthesis MEM_INIT_FILE="(80-95)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_5_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_5_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_6_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec6_wre27), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_6_4), 
            .DO1(mdL0_6_5), .DO2(mdL0_6_6), .DO3(mdL0_6_7)) /* synthesis MEM_INIT_FILE="(96-111)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_6_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_6_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_6_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec6_wre27), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_6_0), 
            .DO1(mdL0_6_1), .DO2(mdL0_6_2), .DO3(mdL0_6_3)) /* synthesis MEM_INIT_FILE="(96-111)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_6_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_6_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_7_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec7_wre31), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_7_4), 
            .DO1(mdL0_7_5), .DO2(mdL0_7_6), .DO3(mdL0_7_7)) /* synthesis MEM_INIT_FILE="(112-127)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_7_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_7_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_7_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec7_wre31), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_7_0), 
            .DO1(mdL0_7_1), .DO2(mdL0_7_2), .DO3(mdL0_7_3)) /* synthesis MEM_INIT_FILE="(112-127)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_7_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_7_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_8_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec8_wre35), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_8_4), 
            .DO1(mdL0_8_5), .DO2(mdL0_8_6), .DO3(mdL0_8_7)) /* synthesis MEM_INIT_FILE="(128-143)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_8_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_8_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_8_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec8_wre35), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_8_0), 
            .DO1(mdL0_8_1), .DO2(mdL0_8_2), .DO3(mdL0_8_3)) /* synthesis MEM_INIT_FILE="(128-143)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_8_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_8_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_9_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec9_wre39), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_9_4), 
            .DO1(mdL0_9_5), .DO2(mdL0_9_6), .DO3(mdL0_9_7)) /* synthesis MEM_INIT_FILE="(144-159)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_9_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_9_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_9_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec9_wre39), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_9_0), 
            .DO1(mdL0_9_1), .DO2(mdL0_9_2), .DO3(mdL0_9_3)) /* synthesis MEM_INIT_FILE="(144-159)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_9_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_9_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_10_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec10_wre43), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_10_4), 
            .DO1(mdL0_10_5), .DO2(mdL0_10_6), .DO3(mdL0_10_7)) /* synthesis MEM_INIT_FILE="(160-175)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_10_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_10_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_10_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec10_wre43), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_10_0), 
            .DO1(mdL0_10_1), .DO2(mdL0_10_2), .DO3(mdL0_10_3)) /* synthesis MEM_INIT_FILE="(160-175)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_10_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_10_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_11_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec11_wre47), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_11_4), 
            .DO1(mdL0_11_5), .DO2(mdL0_11_6), .DO3(mdL0_11_7)) /* synthesis MEM_INIT_FILE="(176-191)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_11_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_11_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_11_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec11_wre47), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_11_0), 
            .DO1(mdL0_11_1), .DO2(mdL0_11_2), .DO3(mdL0_11_3)) /* synthesis MEM_INIT_FILE="(176-191)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_11_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_11_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_12_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec12_wre51), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_12_4), 
            .DO1(mdL0_12_5), .DO2(mdL0_12_6), .DO3(mdL0_12_7)) /* synthesis MEM_INIT_FILE="(192-207)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_12_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_12_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_12_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec12_wre51), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_12_0), 
            .DO1(mdL0_12_1), .DO2(mdL0_12_2), .DO3(mdL0_12_3)) /* synthesis MEM_INIT_FILE="(192-207)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_12_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_12_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_13_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec13_wre55), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_13_4), 
            .DO1(mdL0_13_5), .DO2(mdL0_13_6), .DO3(mdL0_13_7)) /* synthesis MEM_INIT_FILE="(208-223)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_13_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_13_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_13_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec13_wre55), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_13_0), 
            .DO1(mdL0_13_1), .DO2(mdL0_13_2), .DO3(mdL0_13_3)) /* synthesis MEM_INIT_FILE="(208-223)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_13_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_13_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_14_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec14_wre59), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_14_4), 
            .DO1(mdL0_14_5), .DO2(mdL0_14_6), .DO3(mdL0_14_7)) /* synthesis MEM_INIT_FILE="(224-239)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_14_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_14_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_14_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec14_wre59), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_14_0), 
            .DO1(mdL0_14_1), .DO2(mdL0_14_2), .DO3(mdL0_14_3)) /* synthesis MEM_INIT_FILE="(224-239)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_14_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_14_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_15_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec15_wre63), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_15_4), 
            .DO1(mdL0_15_5), .DO2(mdL0_15_6), .DO3(mdL0_15_7)) /* synthesis MEM_INIT_FILE="(240-255)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_15_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_15_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_15_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec15_wre63), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_15_0), 
            .DO1(mdL0_15_1), .DO2(mdL0_15_2), .DO3(mdL0_15_3)) /* synthesis MEM_INIT_FILE="(240-255)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_15_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_15_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_16_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec16_wre67), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_16_4), 
            .DO1(mdL0_16_5), .DO2(mdL0_16_6), .DO3(mdL0_16_7)) /* synthesis MEM_INIT_FILE="(256-271)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_16_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_16_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_16_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec16_wre67), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_16_0), 
            .DO1(mdL0_16_1), .DO2(mdL0_16_2), .DO3(mdL0_16_3)) /* synthesis MEM_INIT_FILE="(256-271)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_16_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_16_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_17_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec17_wre71), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_17_4), 
            .DO1(mdL0_17_5), .DO2(mdL0_17_6), .DO3(mdL0_17_7)) /* synthesis MEM_INIT_FILE="(272-287)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_17_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_17_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_17_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec17_wre71), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_17_0), 
            .DO1(mdL0_17_1), .DO2(mdL0_17_2), .DO3(mdL0_17_3)) /* synthesis MEM_INIT_FILE="(272-287)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_17_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_17_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_18_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec18_wre75), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_18_4), 
            .DO1(mdL0_18_5), .DO2(mdL0_18_6), .DO3(mdL0_18_7)) /* synthesis MEM_INIT_FILE="(288-303)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_18_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_18_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_18_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec18_wre75), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_18_0), 
            .DO1(mdL0_18_1), .DO2(mdL0_18_2), .DO3(mdL0_18_3)) /* synthesis MEM_INIT_FILE="(288-303)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_18_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_18_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_19_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec19_wre79), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_19_4), 
            .DO1(mdL0_19_5), .DO2(mdL0_19_6), .DO3(mdL0_19_7)) /* synthesis MEM_INIT_FILE="(304-319)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_19_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_19_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_19_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec19_wre79), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_19_0), 
            .DO1(mdL0_19_1), .DO2(mdL0_19_2), .DO3(mdL0_19_3)) /* synthesis MEM_INIT_FILE="(304-319)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_19_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_19_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_20_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec20_wre83), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_20_4), 
            .DO1(mdL0_20_5), .DO2(mdL0_20_6), .DO3(mdL0_20_7)) /* synthesis MEM_INIT_FILE="(320-335)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_20_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_20_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_20_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec20_wre83), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_20_0), 
            .DO1(mdL0_20_1), .DO2(mdL0_20_2), .DO3(mdL0_20_3)) /* synthesis MEM_INIT_FILE="(320-335)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_20_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_20_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_21_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec21_wre87), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_21_4), 
            .DO1(mdL0_21_5), .DO2(mdL0_21_6), .DO3(mdL0_21_7)) /* synthesis MEM_INIT_FILE="(336-351)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_21_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_21_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_21_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec21_wre87), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_21_0), 
            .DO1(mdL0_21_1), .DO2(mdL0_21_2), .DO3(mdL0_21_3)) /* synthesis MEM_INIT_FILE="(336-351)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_21_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_21_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_22_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec22_wre91), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_22_4), 
            .DO1(mdL0_22_5), .DO2(mdL0_22_6), .DO3(mdL0_22_7)) /* synthesis MEM_INIT_FILE="(352-367)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_22_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_22_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_22_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec22_wre91), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_22_0), 
            .DO1(mdL0_22_1), .DO2(mdL0_22_2), .DO3(mdL0_22_3)) /* synthesis MEM_INIT_FILE="(352-367)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_22_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_22_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_23_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec23_wre95), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_23_4), 
            .DO1(mdL0_23_5), .DO2(mdL0_23_6), .DO3(mdL0_23_7)) /* synthesis MEM_INIT_FILE="(368-383)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_23_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_23_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_23_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec23_wre95), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_23_0), 
            .DO1(mdL0_23_1), .DO2(mdL0_23_2), .DO3(mdL0_23_3)) /* synthesis MEM_INIT_FILE="(368-383)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_23_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_23_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_24_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec24_wre99), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_24_4), 
            .DO1(mdL0_24_5), .DO2(mdL0_24_6), .DO3(mdL0_24_7)) /* synthesis MEM_INIT_FILE="(384-399)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_24_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_24_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_24_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec24_wre99), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_24_0), 
            .DO1(mdL0_24_1), .DO2(mdL0_24_2), .DO3(mdL0_24_3)) /* synthesis MEM_INIT_FILE="(384-399)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_24_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_24_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_25_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec25_wre103), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_25_4), 
            .DO1(mdL0_25_5), .DO2(mdL0_25_6), .DO3(mdL0_25_7)) /* synthesis MEM_INIT_FILE="(400-415)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_25_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_25_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_25_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec25_wre103), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_25_0), 
            .DO1(mdL0_25_1), .DO2(mdL0_25_2), .DO3(mdL0_25_3)) /* synthesis MEM_INIT_FILE="(400-415)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_25_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_25_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_26_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec26_wre107), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_26_4), 
            .DO1(mdL0_26_5), .DO2(mdL0_26_6), .DO3(mdL0_26_7)) /* synthesis MEM_INIT_FILE="(416-431)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_26_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_26_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_26_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec26_wre107), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_26_0), 
            .DO1(mdL0_26_1), .DO2(mdL0_26_2), .DO3(mdL0_26_3)) /* synthesis MEM_INIT_FILE="(416-431)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_26_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_26_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_27_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec27_wre111), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_27_4), 
            .DO1(mdL0_27_5), .DO2(mdL0_27_6), .DO3(mdL0_27_7)) /* synthesis MEM_INIT_FILE="(432-447)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_27_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_27_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_27_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec27_wre111), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_27_0), 
            .DO1(mdL0_27_1), .DO2(mdL0_27_2), .DO3(mdL0_27_3)) /* synthesis MEM_INIT_FILE="(432-447)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_27_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_27_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_28_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec28_wre115), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_28_4), 
            .DO1(mdL0_28_5), .DO2(mdL0_28_6), .DO3(mdL0_28_7)) /* synthesis MEM_INIT_FILE="(448-463)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_28_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_28_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_28_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec28_wre115), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_28_0), 
            .DO1(mdL0_28_1), .DO2(mdL0_28_2), .DO3(mdL0_28_3)) /* synthesis MEM_INIT_FILE="(448-463)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_28_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_28_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_29_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec29_wre119), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_29_4), 
            .DO1(mdL0_29_5), .DO2(mdL0_29_6), .DO3(mdL0_29_7)) /* synthesis MEM_INIT_FILE="(464-479)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_29_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_29_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_29_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec29_wre119), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_29_0), 
            .DO1(mdL0_29_1), .DO2(mdL0_29_2), .DO3(mdL0_29_3)) /* synthesis MEM_INIT_FILE="(464-479)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_29_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_29_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_30_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec30_wre123), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_30_4), 
            .DO1(mdL0_30_5), .DO2(mdL0_30_6), .DO3(mdL0_30_7)) /* synthesis MEM_INIT_FILE="(480-495)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_30_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_30_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_30_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock), .WRE(dec30_wre123), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_30_0), 
            .DO1(mdL0_30_1), .DO2(mdL0_30_2), .DO3(mdL0_30_3)) /* synthesis MEM_INIT_FILE="(480-495)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_30_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_30_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_31_0 (.DI0(\i_ascii[4] ), .DI1(\i_ascii[5] ), .DI2(\i_ascii[6] ), 
            .DI3(GND_net), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec31_wre127), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_31_4), 
            .DO1(mdL0_31_5), .DO2(mdL0_31_6), .DO3(mdL0_31_7)) /* synthesis MEM_INIT_FILE="(496-511)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_31_0", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_31_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_31_1 (.DI0(\i_ascii[0] ), .DI1(\i_ascii[1] ), .DI2(\i_ascii[2] ), 
            .DI3(\i_ascii[3] ), .WAD0(n3032), .WAD1(n3030), .WAD2(n3028), 
            .WAD3(n3026), .WCK(WrClock), .WRE(dec31_wre127), .RAD0(n3024), 
            .RAD1(n3022), .RAD2(n3020), .RAD3(n3018), .DO0(mdL0_31_0), 
            .DO1(mdL0_31_1), .DO2(mdL0_31_2), .DO3(mdL0_31_3)) /* synthesis MEM_INIT_FILE="(496-511)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_31_1", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam fifo_pfu_31_1.initval = "0x0000000000000000";
    PFUMX i2203 (.BLUT(n2730), .ALUT(n2731), .C0(rptr_5), .Z(n2739));
    LUT4 i2309_3_lut (.A(mdL0_10_0), .B(mdL0_11_0), .C(rptr_4), .Z(n2845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2309_3_lut.init = 16'hcaca;
    PFUMX i2134 (.BLUT(n2654), .ALUT(n2655), .C0(rptr_5), .Z(n2670));
    LUT4 i2222_3_lut (.A(mdL0_22_3), .B(mdL0_23_3), .C(rptr_4), .Z(n2758)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2222_3_lut.init = 16'hcaca;
    PFUMX i2228 (.BLUT(n2749), .ALUT(n2750), .C0(rptr_5), .Z(n2764));
    PFUMX i2135 (.BLUT(n2656), .ALUT(n2657), .C0(rptr_5), .Z(n2671));
    PFUMX i2136 (.BLUT(n2658), .ALUT(n2659), .C0(rptr_5), .Z(n2672));
    LUT4 i2303_3_lut (.A(n2837), .B(n2838), .C(rptr_8), .Z(rdataout1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2303_3_lut.init = 16'hcaca;
    LUT4 i2272_3_lut (.A(n2806), .B(n2807), .C(rptr_8), .Z(rdataout2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2272_3_lut.init = 16'hcaca;
    LUT4 i2308_3_lut (.A(mdL0_8_0), .B(mdL0_9_0), .C(rptr_4), .Z(n2844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2308_3_lut.init = 16'hcaca;
    PFUMX i2137 (.BLUT(n2660), .ALUT(n2661), .C0(rptr_5), .Z(n2673));
    LUT4 i2158_3_lut (.A(mdL0_18_5), .B(mdL0_19_5), .C(rptr_4), .Z(n2694)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2158_3_lut.init = 16'hcaca;
    PFUMX i2138 (.BLUT(n2662), .ALUT(n2663), .C0(rptr_5), .Z(n2674));
    LUT4 i2157_3_lut (.A(mdL0_16_5), .B(mdL0_17_5), .C(rptr_4), .Z(n2693)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2157_3_lut.init = 16'hcaca;
    PFUMX i2289 (.BLUT(n2809), .ALUT(n2810), .C0(rptr_5), .Z(n2825));
    PFUMX i2229 (.BLUT(n2751), .ALUT(n2752), .C0(rptr_5), .Z(n2765));
    LUT4 i2241_3_lut (.A(n2775), .B(n2776), .C(rptr_8), .Z(rdataout3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2241_3_lut.init = 16'hcaca;
    LUT4 i2087_3_lut (.A(mdL0_0_7), .B(mdL0_1_7), .C(rptr_4), .Z(n2623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2087_3_lut.init = 16'hcaca;
    LUT4 i2156_3_lut (.A(mdL0_14_5), .B(mdL0_15_5), .C(rptr_4), .Z(n2692)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2156_3_lut.init = 16'hcaca;
    LUT4 i2221_3_lut (.A(mdL0_20_3), .B(mdL0_21_3), .C(rptr_4), .Z(n2757)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2221_3_lut.init = 16'hcaca;
    PFUMX i2139 (.BLUT(n2664), .ALUT(n2665), .C0(rptr_5), .Z(n2675));
    PFUMX i2290 (.BLUT(n2811), .ALUT(n2812), .C0(rptr_5), .Z(n2826));
    LUT4 i2155_3_lut (.A(mdL0_12_5), .B(mdL0_13_5), .C(rptr_4), .Z(n2691)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2155_3_lut.init = 16'hcaca;
    PFUMX i2230 (.BLUT(n2753), .ALUT(n2754), .C0(rptr_5), .Z(n2766));
    LUT4 i2096_3_lut (.A(mdL0_18_7), .B(mdL0_19_7), .C(rptr_4), .Z(n2632)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2096_3_lut.init = 16'hcaca;
    PFUMX i2140 (.BLUT(n2666), .ALUT(n2667), .C0(rptr_5), .Z(n2676));
    PFUMX i2141 (.BLUT(n2668), .ALUT(n2669), .C0(rptr_5), .Z(n2677));
    PFUMX i2291 (.BLUT(n2813), .ALUT(n2814), .C0(rptr_5), .Z(n2827));
    PFUMX i2231 (.BLUT(n2755), .ALUT(n2756), .C0(rptr_5), .Z(n2767));
    PFUMX i2292 (.BLUT(n2815), .ALUT(n2816), .C0(rptr_5), .Z(n2828));
    PFUMX i2293 (.BLUT(n2817), .ALUT(n2818), .C0(rptr_5), .Z(n2829));
    PFUMX i2294 (.BLUT(n2819), .ALUT(n2820), .C0(rptr_5), .Z(n2830));
    PFUMX i2105 (.BLUT(n2627), .ALUT(n2628), .C0(rptr_5), .Z(n2641));
    PFUMX i2106 (.BLUT(n2629), .ALUT(n2630), .C0(rptr_5), .Z(n2642));
    PFUMX i2295 (.BLUT(n2821), .ALUT(n2822), .C0(rptr_5), .Z(n2831));
    PFUMX i2296 (.BLUT(n2823), .ALUT(n2824), .C0(rptr_5), .Z(n2832));
    LUT4 i2243_3_lut (.A(mdL0_2_2), .B(mdL0_3_2), .C(rptr_4), .Z(n2779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2243_3_lut.init = 16'hcaca;
    PFUMX i2103 (.BLUT(n2623), .ALUT(n2624), .C0(rptr_5), .Z(n2639));
    LUT4 i2154_3_lut (.A(mdL0_10_5), .B(mdL0_11_5), .C(rptr_4), .Z(n2690)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2154_3_lut.init = 16'hcaca;
    PFUMX i2107 (.BLUT(n2631), .ALUT(n2632), .C0(rptr_5), .Z(n2643));
    LUT4 i2210_3_lut (.A(n2744), .B(n2745), .C(rptr_8), .Z(rdataout4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2210_3_lut.init = 16'hcaca;
    PFUMX i2232 (.BLUT(n2757), .ALUT(n2758), .C0(rptr_5), .Z(n2768));
    LUT4 i2242_3_lut (.A(mdL0_0_2), .B(mdL0_1_2), .C(rptr_4), .Z(n2778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2242_3_lut.init = 16'hcaca;
    LUT4 i2188_3_lut (.A(mdL0_16_4), .B(mdL0_17_4), .C(rptr_4), .Z(n2724)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2188_3_lut.init = 16'hcaca;
    PFUMX i2108 (.BLUT(n2633), .ALUT(n2634), .C0(rptr_5), .Z(n2644));
    PFUMX i2233 (.BLUT(n2759), .ALUT(n2760), .C0(rptr_5), .Z(n2769));
    PFUMX i2234 (.BLUT(n2761), .ALUT(n2762), .C0(rptr_5), .Z(n2770));
    FD1P3DX FF_64_rep_37 (.D(rcount_3), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(n3018)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1709[12:19])
    defparam FF_64_rep_37.GSR = "ENABLED";
    LUT4 i2164_3_lut (.A(mdL0_30_5), .B(mdL0_31_5), .C(rptr_4), .Z(n2700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2164_3_lut.init = 16'hcaca;
    PFUMX i2109 (.BLUT(n2635), .ALUT(n2636), .C0(rptr_5), .Z(n2645));
    LUT4 i2153_3_lut (.A(mdL0_8_5), .B(mdL0_9_5), .C(rptr_4), .Z(n2689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2153_3_lut.init = 16'hcaca;
    LUT4 i2307_3_lut (.A(mdL0_6_0), .B(mdL0_7_0), .C(rptr_4), .Z(n2843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2307_3_lut.init = 16'hcaca;
    LUT4 i2095_3_lut (.A(mdL0_16_7), .B(mdL0_17_7), .C(rptr_4), .Z(n2631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2095_3_lut.init = 16'hcaca;
    LUT4 i2163_3_lut (.A(mdL0_28_5), .B(mdL0_29_5), .C(rptr_4), .Z(n2699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2163_3_lut.init = 16'hcaca;
    PFUMX i2258 (.BLUT(n2778), .ALUT(n2779), .C0(rptr_5), .Z(n2794));
    PFUMX i2110 (.BLUT(n2637), .ALUT(n2638), .C0(rptr_5), .Z(n2646));
    LUT4 i2306_3_lut (.A(mdL0_4_0), .B(mdL0_5_0), .C(rptr_4), .Z(n2842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2306_3_lut.init = 16'hcaca;
    LUT4 i2288_3_lut (.A(mdL0_30_1), .B(mdL0_31_1), .C(rptr_4), .Z(n2824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2288_3_lut.init = 16'hcaca;
    LUT4 i2162_3_lut (.A(mdL0_26_5), .B(mdL0_27_5), .C(rptr_4), .Z(n2698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2162_3_lut.init = 16'hcaca;
    LUT4 i2506_3_lut_4_lut (.A(ST_fifo_handler[2]), .B(ST_fifo_handler[1]), 
         .C(Full), .D(ST_fifo_handler[0]), .Z(WrClock_enable_11)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(129[9:24])
    defparam i2506_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i2305_3_lut (.A(mdL0_2_0), .B(mdL0_3_0), .C(rptr_4), .Z(n2841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2305_3_lut.init = 16'hcaca;
    LUT4 i2287_3_lut (.A(mdL0_28_1), .B(mdL0_29_1), .C(rptr_4), .Z(n2823)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2287_3_lut.init = 16'hcaca;
    LUT4 i963_4_lut_3_lut_4_lut (.A(ST_fifo_handler[2]), .B(ST_fifo_handler[1]), 
         .C(Full), .D(ST_fifo_handler[0]), .Z(\ST_fifo_handler_2__N_9[0] )) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(129[9:24])
    defparam i963_4_lut_3_lut_4_lut.init = 16'he01f;
    LUT4 i2_3_lut_4_lut (.A(ST_fifo_handler[2]), .B(ST_fifo_handler[1]), 
         .C(invout_1), .D(ST_fifo_handler[0]), .Z(WrClock_enable_64)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(129[9:24])
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    PFUMX i2165 (.BLUT(n2685), .ALUT(n2686), .C0(rptr_5), .Z(n2701));
    PFUMX i2166 (.BLUT(n2687), .ALUT(n2688), .C0(rptr_5), .Z(n2702));
    LUT4 i2304_3_lut (.A(mdL0_0_0), .B(mdL0_1_0), .C(rptr_4), .Z(n2840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2304_3_lut.init = 16'hcaca;
    LUT4 i2187_3_lut (.A(mdL0_14_4), .B(mdL0_15_4), .C(rptr_4), .Z(n2723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2187_3_lut.init = 16'hcaca;
    LUT4 i2161_3_lut (.A(mdL0_24_5), .B(mdL0_25_5), .C(rptr_4), .Z(n2697)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2161_3_lut.init = 16'hcaca;
    LUT4 i2094_3_lut (.A(mdL0_14_7), .B(mdL0_15_7), .C(rptr_4), .Z(n2630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2094_3_lut.init = 16'hcaca;
    LUT4 i2186_3_lut (.A(mdL0_12_4), .B(mdL0_13_4), .C(rptr_4), .Z(n2722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2186_3_lut.init = 16'hcaca;
    LUT4 i2093_3_lut (.A(mdL0_12_7), .B(mdL0_13_7), .C(rptr_4), .Z(n2629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2093_3_lut.init = 16'hcaca;
    LUT4 i2286_3_lut (.A(mdL0_26_1), .B(mdL0_27_1), .C(rptr_4), .Z(n2822)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2286_3_lut.init = 16'hcaca;
    LUT4 i2179_3_lut (.A(n2713), .B(n2714), .C(rptr_8), .Z(rdataout5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2179_3_lut.init = 16'hcaca;
    LUT4 i2285_3_lut (.A(mdL0_24_1), .B(mdL0_25_1), .C(rptr_4), .Z(n2821)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2285_3_lut.init = 16'hcaca;
    LUT4 i2148_3_lut (.A(n2682), .B(n2683), .C(rptr_8), .Z(rdataout6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2148_3_lut.init = 16'hcaca;
    LUT4 i2284_3_lut (.A(mdL0_22_1), .B(mdL0_23_1), .C(rptr_4), .Z(n2820)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2284_3_lut.init = 16'hcaca;
    LUT4 i2117_3_lut (.A(n2651), .B(n2652), .C(rptr_8), .Z(rdataout7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2117_3_lut.init = 16'hcaca;
    LUT4 i2092_3_lut (.A(mdL0_10_7), .B(mdL0_11_7), .C(rptr_4), .Z(n2628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2092_3_lut.init = 16'hcaca;
    LUT4 i2091_3_lut (.A(mdL0_8_7), .B(mdL0_9_7), .C(rptr_4), .Z(n2627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2091_3_lut.init = 16'hcaca;
    LUT4 i2283_3_lut (.A(mdL0_20_1), .B(mdL0_21_1), .C(rptr_4), .Z(n2819)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2283_3_lut.init = 16'hcaca;
    LUT4 i2160_3_lut (.A(mdL0_22_5), .B(mdL0_23_5), .C(rptr_4), .Z(n2696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2160_3_lut.init = 16'hcaca;
    LUT4 i2282_3_lut (.A(mdL0_18_1), .B(mdL0_19_1), .C(rptr_4), .Z(n2818)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2282_3_lut.init = 16'hcaca;
    LUT4 i2281_3_lut (.A(mdL0_16_1), .B(mdL0_17_1), .C(rptr_4), .Z(n2817)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2281_3_lut.init = 16'hcaca;
    LUT4 i2280_3_lut (.A(mdL0_14_1), .B(mdL0_15_1), .C(rptr_4), .Z(n2816)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2280_3_lut.init = 16'hcaca;
    L6MUX21 i2177 (.D0(n2709), .D1(n2710), .SD(rptr_7), .Z(n2713));
    L6MUX21 i2178 (.D0(n2711), .D1(n2712), .SD(rptr_7), .Z(n2714));
    LUT4 i2220_3_lut (.A(mdL0_18_3), .B(mdL0_19_3), .C(rptr_4), .Z(n2756)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2220_3_lut.init = 16'hcaca;
    LUT4 i2279_3_lut (.A(mdL0_12_1), .B(mdL0_13_1), .C(rptr_4), .Z(n2815)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2279_3_lut.init = 16'hcaca;
    PFUMX i2320 (.BLUT(n2840), .ALUT(n2841), .C0(rptr_5), .Z(n2856));
    LUT4 i2219_3_lut (.A(mdL0_16_3), .B(mdL0_17_3), .C(rptr_4), .Z(n2755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2219_3_lut.init = 16'hcaca;
    L6MUX21 i2115 (.D0(n2647), .D1(n2648), .SD(rptr_7), .Z(n2651));
    L6MUX21 i2116 (.D0(n2649), .D1(n2650), .SD(rptr_7), .Z(n2652));
    L6MUX21 i2270 (.D0(n2802), .D1(n2803), .SD(rptr_7), .Z(n2806));
    L6MUX21 i2271 (.D0(n2804), .D1(n2805), .SD(rptr_7), .Z(n2807));
    LUT4 i2278_3_lut (.A(mdL0_10_1), .B(mdL0_11_1), .C(rptr_4), .Z(n2814)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2278_3_lut.init = 16'hcaca;
    L6MUX21 i2208 (.D0(n2740), .D1(n2741), .SD(rptr_7), .Z(n2744));
    LUT4 i2277_3_lut (.A(mdL0_8_1), .B(mdL0_9_1), .C(rptr_4), .Z(n2813)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2277_3_lut.init = 16'hcaca;
    PFUMX i2321 (.BLUT(n2842), .ALUT(n2843), .C0(rptr_5), .Z(n2857));
    L6MUX21 i2209 (.D0(n2742), .D1(n2743), .SD(rptr_7), .Z(n2745));
    LUT4 i2218_3_lut (.A(mdL0_14_3), .B(mdL0_15_3), .C(rptr_4), .Z(n2754)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2218_3_lut.init = 16'hcaca;
    LUT4 i2133_3_lut (.A(mdL0_30_6), .B(mdL0_31_6), .C(rptr_4), .Z(n2669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2133_3_lut.init = 16'hcaca;
    LUT4 i2132_3_lut (.A(mdL0_28_6), .B(mdL0_29_6), .C(rptr_4), .Z(n2668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2132_3_lut.init = 16'hcaca;
    PFUMX i2167 (.BLUT(n2689), .ALUT(n2690), .C0(rptr_5), .Z(n2703));
    LUT4 i2152_3_lut (.A(mdL0_6_5), .B(mdL0_7_5), .C(rptr_4), .Z(n2688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2152_3_lut.init = 16'hcaca;
    L6MUX21 i2146 (.D0(n2678), .D1(n2679), .SD(rptr_7), .Z(n2682));
    LUT4 i2131_3_lut (.A(mdL0_26_6), .B(mdL0_27_6), .C(rptr_4), .Z(n2667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2131_3_lut.init = 16'hcaca;
    L6MUX21 i2147 (.D0(n2680), .D1(n2681), .SD(rptr_7), .Z(n2683));
    LUT4 i2190_3_lut (.A(mdL0_20_4), .B(mdL0_21_4), .C(rptr_4), .Z(n2726)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2190_3_lut.init = 16'hcaca;
    LUT4 i2130_3_lut (.A(mdL0_24_6), .B(mdL0_25_6), .C(rptr_4), .Z(n2666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2130_3_lut.init = 16'hcaca;
    LUT4 i2276_3_lut (.A(mdL0_6_1), .B(mdL0_7_1), .C(rptr_4), .Z(n2812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2276_3_lut.init = 16'hcaca;
    L6MUX21 i2301 (.D0(n2833), .D1(n2834), .SD(rptr_7), .Z(n2837));
    L6MUX21 i2302 (.D0(n2835), .D1(n2836), .SD(rptr_7), .Z(n2838));
    L6MUX21 i2239 (.D0(n2771), .D1(n2772), .SD(rptr_7), .Z(n2775));
    L6MUX21 i2240 (.D0(n2773), .D1(n2774), .SD(rptr_7), .Z(n2776));
    L6MUX21 i2332 (.D0(n2864), .D1(n2865), .SD(rptr_7), .Z(n2868));
    L6MUX21 i2333 (.D0(n2866), .D1(n2867), .SD(rptr_7), .Z(n2869));
    L6MUX21 i2173 (.D0(n2701), .D1(n2702), .SD(rptr_6), .Z(n2709));
    L6MUX21 i2174 (.D0(n2703), .D1(n2704), .SD(rptr_6), .Z(n2710));
    L6MUX21 i2175 (.D0(n2705), .D1(n2706), .SD(rptr_6), .Z(n2711));
    LUT4 i2217_3_lut (.A(mdL0_12_3), .B(mdL0_13_3), .C(rptr_4), .Z(n2753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2217_3_lut.init = 16'hcaca;
    LUT4 i2185_3_lut (.A(mdL0_10_4), .B(mdL0_11_4), .C(rptr_4), .Z(n2721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2185_3_lut.init = 16'hcaca;
    LUT4 i2184_3_lut (.A(mdL0_8_4), .B(mdL0_9_4), .C(rptr_4), .Z(n2720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2184_3_lut.init = 16'hcaca;
    LUT4 i2216_3_lut (.A(mdL0_10_3), .B(mdL0_11_3), .C(rptr_4), .Z(n2752)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2216_3_lut.init = 16'hcaca;
    LUT4 i2151_3_lut (.A(mdL0_4_5), .B(mdL0_5_5), .C(rptr_4), .Z(n2687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2151_3_lut.init = 16'hcaca;
    L6MUX21 i2176 (.D0(n2707), .D1(n2708), .SD(rptr_6), .Z(n2712));
    LUT4 i2275_3_lut (.A(mdL0_4_1), .B(mdL0_5_1), .C(rptr_4), .Z(n2811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2275_3_lut.init = 16'hcaca;
    L6MUX21 i2266 (.D0(n2794), .D1(n2795), .SD(rptr_6), .Z(n2802));
    LUT4 i2129_3_lut (.A(mdL0_22_6), .B(mdL0_23_6), .C(rptr_4), .Z(n2665)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2129_3_lut.init = 16'hcaca;
    LUT4 i2128_3_lut (.A(mdL0_20_6), .B(mdL0_21_6), .C(rptr_4), .Z(n2664)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2128_3_lut.init = 16'hcaca;
    L6MUX21 i2267 (.D0(n2796), .D1(n2797), .SD(rptr_6), .Z(n2803));
    LUT4 i2150_3_lut (.A(mdL0_2_5), .B(mdL0_3_5), .C(rptr_4), .Z(n2686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2150_3_lut.init = 16'hcaca;
    L6MUX21 i2268 (.D0(n2798), .D1(n2799), .SD(rptr_6), .Z(n2804));
    L6MUX21 i2269 (.D0(n2800), .D1(n2801), .SD(rptr_6), .Z(n2805));
    LUT4 i2183_3_lut (.A(mdL0_6_4), .B(mdL0_7_4), .C(rptr_4), .Z(n2719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2183_3_lut.init = 16'hcaca;
    L6MUX21 i2204 (.D0(n2732), .D1(n2733), .SD(rptr_6), .Z(n2740));
    L6MUX21 i2205 (.D0(n2734), .D1(n2735), .SD(rptr_6), .Z(n2741));
    PFUMX i2168 (.BLUT(n2691), .ALUT(n2692), .C0(rptr_5), .Z(n2704));
    LUT4 i2149_3_lut (.A(mdL0_0_5), .B(mdL0_1_5), .C(rptr_4), .Z(n2685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2149_3_lut.init = 16'hcaca;
    L6MUX21 i2206 (.D0(n2736), .D1(n2737), .SD(rptr_6), .Z(n2742));
    LUT4 i2274_3_lut (.A(mdL0_2_1), .B(mdL0_3_1), .C(rptr_4), .Z(n2810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2274_3_lut.init = 16'hcaca;
    L6MUX21 i2207 (.D0(n2738), .D1(n2739), .SD(rptr_6), .Z(n2743));
    LUT4 i2215_3_lut (.A(mdL0_8_3), .B(mdL0_9_3), .C(rptr_4), .Z(n2751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2215_3_lut.init = 16'hcaca;
    L6MUX21 i2142 (.D0(n2670), .D1(n2671), .SD(rptr_6), .Z(n2678));
    LUT4 i2273_3_lut (.A(mdL0_0_1), .B(mdL0_1_1), .C(rptr_4), .Z(n2809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2273_3_lut.init = 16'hcaca;
    L6MUX21 i2143 (.D0(n2672), .D1(n2673), .SD(rptr_6), .Z(n2679));
    LUT4 i2159_3_lut (.A(mdL0_20_5), .B(mdL0_21_5), .C(rptr_4), .Z(n2695)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2159_3_lut.init = 16'hcaca;
    L6MUX21 i2144 (.D0(n2674), .D1(n2675), .SD(rptr_6), .Z(n2680));
    LUT4 i2127_3_lut (.A(mdL0_18_6), .B(mdL0_19_6), .C(rptr_4), .Z(n2663)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2127_3_lut.init = 16'hcaca;
    LUT4 i2214_3_lut (.A(mdL0_6_3), .B(mdL0_7_3), .C(rptr_4), .Z(n2750)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2214_3_lut.init = 16'hcaca;
    L6MUX21 i2145 (.D0(n2676), .D1(n2677), .SD(rptr_6), .Z(n2681));
    LUT4 i2126_3_lut (.A(mdL0_16_6), .B(mdL0_17_6), .C(rptr_4), .Z(n2662)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2126_3_lut.init = 16'hcaca;
    LUT4 i2182_3_lut (.A(mdL0_4_4), .B(mdL0_5_4), .C(rptr_4), .Z(n2718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2182_3_lut.init = 16'hcaca;
    PFUMX i2169 (.BLUT(n2693), .ALUT(n2694), .C0(rptr_5), .Z(n2705));
    LUT4 i2125_3_lut (.A(mdL0_14_6), .B(mdL0_15_6), .C(rptr_4), .Z(n2661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2125_3_lut.init = 16'hcaca;
    LUT4 i2124_3_lut (.A(mdL0_12_6), .B(mdL0_13_6), .C(rptr_4), .Z(n2660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2124_3_lut.init = 16'hcaca;
    LUT4 i2213_3_lut (.A(mdL0_4_3), .B(mdL0_5_3), .C(rptr_4), .Z(n2749)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2213_3_lut.init = 16'hcaca;
    LUT4 i2102_3_lut (.A(mdL0_30_7), .B(mdL0_31_7), .C(rptr_4), .Z(n2638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2102_3_lut.init = 16'hcaca;
    LUT4 i2181_3_lut (.A(mdL0_2_4), .B(mdL0_3_4), .C(rptr_4), .Z(n2717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2181_3_lut.init = 16'hcaca;
    L6MUX21 i2297 (.D0(n2825), .D1(n2826), .SD(rptr_6), .Z(n2833));
    LUT4 i2123_3_lut (.A(mdL0_10_6), .B(mdL0_11_6), .C(rptr_4), .Z(n2659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2123_3_lut.init = 16'hcaca;
    PFUMX i2322 (.BLUT(n2844), .ALUT(n2845), .C0(rptr_5), .Z(n2858));
    L6MUX21 i2298 (.D0(n2827), .D1(n2828), .SD(rptr_6), .Z(n2834));
    L6MUX21 i2299 (.D0(n2829), .D1(n2830), .SD(rptr_6), .Z(n2835));
    L6MUX21 i2300 (.D0(n2831), .D1(n2832), .SD(rptr_6), .Z(n2836));
    LUT4 i2122_3_lut (.A(mdL0_8_6), .B(mdL0_9_6), .C(rptr_4), .Z(n2658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2122_3_lut.init = 16'hcaca;
    LUT4 i2121_3_lut (.A(mdL0_6_6), .B(mdL0_7_6), .C(rptr_4), .Z(n2657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2121_3_lut.init = 16'hcaca;
    L6MUX21 i2235 (.D0(n2763), .D1(n2764), .SD(rptr_6), .Z(n2771));
    LUT4 i2120_3_lut (.A(mdL0_4_6), .B(mdL0_5_6), .C(rptr_4), .Z(n2656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2120_3_lut.init = 16'hcaca;
    L6MUX21 i2236 (.D0(n2765), .D1(n2766), .SD(rptr_6), .Z(n2772));
    L6MUX21 i2237 (.D0(n2767), .D1(n2768), .SD(rptr_6), .Z(n2773));
    L6MUX21 i2238 (.D0(n2769), .D1(n2770), .SD(rptr_6), .Z(n2774));
    L6MUX21 i2111 (.D0(n2639), .D1(n2640), .SD(rptr_6), .Z(n2647));
    LUT4 i2119_3_lut (.A(mdL0_2_6), .B(mdL0_3_6), .C(rptr_4), .Z(n2655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2119_3_lut.init = 16'hcaca;
    L6MUX21 i2112 (.D0(n2641), .D1(n2642), .SD(rptr_6), .Z(n2648));
    LUT4 i2118_3_lut (.A(mdL0_0_6), .B(mdL0_1_6), .C(rptr_4), .Z(n2654)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2118_3_lut.init = 16'hcaca;
    L6MUX21 i2113 (.D0(n2643), .D1(n2644), .SD(rptr_6), .Z(n2649));
    L6MUX21 i2328 (.D0(n2856), .D1(n2857), .SD(rptr_6), .Z(n2864));
    LUT4 i2180_3_lut (.A(mdL0_0_4), .B(mdL0_1_4), .C(rptr_4), .Z(n2716)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2180_3_lut.init = 16'hcaca;
    LUT4 i2195_3_lut (.A(mdL0_30_4), .B(mdL0_31_4), .C(rptr_4), .Z(n2731)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2195_3_lut.init = 16'hcaca;
    L6MUX21 i2114 (.D0(n2645), .D1(n2646), .SD(rptr_6), .Z(n2650));
    L6MUX21 i2329 (.D0(n2858), .D1(n2859), .SD(rptr_6), .Z(n2865));
    LUT4 i2090_3_lut (.A(mdL0_6_7), .B(mdL0_7_7), .C(rptr_4), .Z(n2626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2090_3_lut.init = 16'hcaca;
    LUT4 i2089_3_lut (.A(mdL0_4_7), .B(mdL0_5_7), .C(rptr_4), .Z(n2625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2089_3_lut.init = 16'hcaca;
    L6MUX21 i2330 (.D0(n2860), .D1(n2861), .SD(rptr_6), .Z(n2866));
    LUT4 i2101_3_lut (.A(mdL0_28_7), .B(mdL0_29_7), .C(rptr_4), .Z(n2637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2101_3_lut.init = 16'hcaca;
    LUT4 i2194_3_lut (.A(mdL0_28_4), .B(mdL0_29_4), .C(rptr_4), .Z(n2730)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2194_3_lut.init = 16'hcaca;
    LUT4 i2193_3_lut (.A(mdL0_26_4), .B(mdL0_27_4), .C(rptr_4), .Z(n2729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2193_3_lut.init = 16'hcaca;
    LUT4 i2319_3_lut (.A(mdL0_30_0), .B(mdL0_31_0), .C(rptr_4), .Z(n2855)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2319_3_lut.init = 16'hcaca;
    LUT4 i2318_3_lut (.A(mdL0_28_0), .B(mdL0_29_0), .C(rptr_4), .Z(n2854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2318_3_lut.init = 16'hcaca;
    PFUMX i2323 (.BLUT(n2846), .ALUT(n2847), .C0(rptr_5), .Z(n2859));
    LUT4 i2100_3_lut (.A(mdL0_26_7), .B(mdL0_27_7), .C(rptr_4), .Z(n2636)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2100_3_lut.init = 16'hcaca;
    LUT4 i2192_3_lut (.A(mdL0_24_4), .B(mdL0_25_4), .C(rptr_4), .Z(n2728)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2192_3_lut.init = 16'hcaca;
    LUT4 i2212_3_lut (.A(mdL0_2_3), .B(mdL0_3_3), .C(rptr_4), .Z(n2748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2212_3_lut.init = 16'hcaca;
    L6MUX21 i2331 (.D0(n2862), .D1(n2863), .SD(rptr_6), .Z(n2867));
    LUT4 i2211_3_lut (.A(mdL0_0_3), .B(mdL0_1_3), .C(rptr_4), .Z(n2747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2211_3_lut.init = 16'hcaca;
    LUT4 i2317_3_lut (.A(mdL0_26_0), .B(mdL0_27_0), .C(rptr_4), .Z(n2853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2317_3_lut.init = 16'hcaca;
    LUT4 i2191_3_lut (.A(mdL0_22_4), .B(mdL0_23_4), .C(rptr_4), .Z(n2727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2191_3_lut.init = 16'hcaca;
    LUT4 i2099_3_lut (.A(mdL0_24_7), .B(mdL0_25_7), .C(rptr_4), .Z(n2635)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2099_3_lut.init = 16'hcaca;
    PFUMX i2324 (.BLUT(n2848), .ALUT(n2849), .C0(rptr_5), .Z(n2860));
    LUT4 i2226_3_lut (.A(mdL0_30_3), .B(mdL0_31_3), .C(rptr_4), .Z(n2762)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2226_3_lut.init = 16'hcaca;
    LUT4 i2316_3_lut (.A(mdL0_24_0), .B(mdL0_25_0), .C(rptr_4), .Z(n2852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2316_3_lut.init = 16'hcaca;
    PFUMX i2325 (.BLUT(n2850), .ALUT(n2851), .C0(rptr_5), .Z(n2861));
    LUT4 i2257_3_lut (.A(mdL0_30_2), .B(mdL0_31_2), .C(rptr_4), .Z(n2793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2257_3_lut.init = 16'hcaca;
    LUT4 i2256_3_lut (.A(mdL0_28_2), .B(mdL0_29_2), .C(rptr_4), .Z(n2792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2256_3_lut.init = 16'hcaca;
    PFUMX i2259 (.BLUT(n2780), .ALUT(n2781), .C0(rptr_5), .Z(n2795));
    PFUMX i2260 (.BLUT(n2782), .ALUT(n2783), .C0(rptr_5), .Z(n2796));
    LUT4 i2225_3_lut (.A(mdL0_28_3), .B(mdL0_29_3), .C(rptr_4), .Z(n2761)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2225_3_lut.init = 16'hcaca;
    PFUMX i2261 (.BLUT(n2784), .ALUT(n2785), .C0(rptr_5), .Z(n2797));
    FD1P3DX FF_97_rep_51 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(rst), 
            .Q(n3032)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1577[12:19])
    defparam FF_97_rep_51.GSR = "ENABLED";
    LUT4 i2255_3_lut (.A(mdL0_26_2), .B(mdL0_27_2), .C(rptr_4), .Z(n2791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2255_3_lut.init = 16'hcaca;
    PFUMX i2262 (.BLUT(n2786), .ALUT(n2787), .C0(rptr_5), .Z(n2798));
    LUT4 i2224_3_lut (.A(mdL0_26_3), .B(mdL0_27_3), .C(rptr_4), .Z(n2760)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2224_3_lut.init = 16'hcaca;
    PFUMX i2263 (.BLUT(n2788), .ALUT(n2789), .C0(rptr_5), .Z(n2799));
    PFUMX i2264 (.BLUT(n2790), .ALUT(n2791), .C0(rptr_5), .Z(n2800));
    PFUMX i2326 (.BLUT(n2852), .ALUT(n2853), .C0(rptr_5), .Z(n2862));
    FD1P3DX FF_96_rep_49 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(rst), 
            .Q(n3030)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1581[12:19])
    defparam FF_96_rep_49.GSR = "ENABLED";
    LUT4 i2223_3_lut (.A(mdL0_24_3), .B(mdL0_25_3), .C(rptr_4), .Z(n2759)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2223_3_lut.init = 16'hcaca;
    LUT4 i2088_3_lut (.A(mdL0_2_7), .B(mdL0_3_7), .C(rptr_4), .Z(n2624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2088_3_lut.init = 16'hcaca;
    FD1P3DX FF_94_rep_45 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(rst), 
            .Q(n3026)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1589[12:19])
    defparam FF_94_rep_45.GSR = "ENABLED";
    LUT4 i2098_3_lut (.A(mdL0_22_7), .B(mdL0_23_7), .C(rptr_4), .Z(n2634)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2098_3_lut.init = 16'hcaca;
    PFUMX i2265 (.BLUT(n2792), .ALUT(n2793), .C0(rptr_5), .Z(n2801));
    LUT4 i2189_3_lut (.A(mdL0_18_4), .B(mdL0_19_4), .C(rptr_4), .Z(n2725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2189_3_lut.init = 16'hcaca;
    LUT4 i2254_3_lut (.A(mdL0_24_2), .B(mdL0_25_2), .C(rptr_4), .Z(n2790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2254_3_lut.init = 16'hcaca;
    PFUMX i2327 (.BLUT(n2854), .ALUT(n2855), .C0(rptr_5), .Z(n2863));
    LUT4 i2315_3_lut (.A(mdL0_22_0), .B(mdL0_23_0), .C(rptr_4), .Z(n2851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2315_3_lut.init = 16'hcaca;
    LUT4 i2253_3_lut (.A(mdL0_22_2), .B(mdL0_23_2), .C(rptr_4), .Z(n2789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2253_3_lut.init = 16'hcaca;
    PFUMX i2170 (.BLUT(n2695), .ALUT(n2696), .C0(rptr_5), .Z(n2706));
    LUT4 i2252_3_lut (.A(mdL0_20_2), .B(mdL0_21_2), .C(rptr_4), .Z(n2788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2252_3_lut.init = 16'hcaca;
    FD1P3DX FF_66_rep_41 (.D(rcount_1), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(n3022)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1701[12:19])
    defparam FF_66_rep_41.GSR = "ENABLED";
    PFUMX i2196 (.BLUT(n2716), .ALUT(n2717), .C0(rptr_5), .Z(n2732));
    PFUMX i2197 (.BLUT(n2718), .ALUT(n2719), .C0(rptr_5), .Z(n2733));
    LUT4 i2251_3_lut (.A(mdL0_18_2), .B(mdL0_19_2), .C(rptr_4), .Z(n2787)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2251_3_lut.init = 16'hcaca;
    LUT4 i2250_3_lut (.A(mdL0_16_2), .B(mdL0_17_2), .C(rptr_4), .Z(n2786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2250_3_lut.init = 16'hcaca;
    PFUMX i2198 (.BLUT(n2720), .ALUT(n2721), .C0(rptr_5), .Z(n2734));
    PFUMX i2199 (.BLUT(n2722), .ALUT(n2723), .C0(rptr_5), .Z(n2735));
    LUT4 i2314_3_lut (.A(mdL0_20_0), .B(mdL0_21_0), .C(rptr_4), .Z(n2850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2314_3_lut.init = 16'hcaca;
    PFUMX i2171 (.BLUT(n2697), .ALUT(n2698), .C0(rptr_5), .Z(n2707));
    LUT4 i2249_3_lut (.A(mdL0_14_2), .B(mdL0_15_2), .C(rptr_4), .Z(n2785)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2249_3_lut.init = 16'hcaca;
    PFUMX i2200 (.BLUT(n2724), .ALUT(n2725), .C0(rptr_5), .Z(n2736));
    LUT4 i2248_3_lut (.A(mdL0_12_2), .B(mdL0_13_2), .C(rptr_4), .Z(n2784)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2248_3_lut.init = 16'hcaca;
    PFUMX i2172 (.BLUT(n2699), .ALUT(n2700), .C0(rptr_5), .Z(n2708));
    LUT4 i2247_3_lut (.A(mdL0_10_2), .B(mdL0_11_2), .C(rptr_4), .Z(n2783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2247_3_lut.init = 16'hcaca;
    LUT4 i2246_3_lut (.A(mdL0_8_2), .B(mdL0_9_2), .C(rptr_4), .Z(n2782)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2246_3_lut.init = 16'hcaca;
    FD1P3DX FF_65_rep_39 (.D(rcount_2), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(n3020)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1705[12:19])
    defparam FF_65_rep_39.GSR = "ENABLED";
    LUT4 i2245_3_lut (.A(mdL0_6_2), .B(mdL0_7_2), .C(rptr_4), .Z(n2781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2245_3_lut.init = 16'hcaca;
    LUT4 i2244_3_lut (.A(mdL0_4_2), .B(mdL0_5_2), .C(rptr_4), .Z(n2780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2244_3_lut.init = 16'hcaca;
    LUT4 i2313_3_lut (.A(mdL0_18_0), .B(mdL0_19_0), .C(rptr_4), .Z(n2849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2313_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(ST_fifo_handler[1]), .B(n2605), .C(ST_fifo_handler[2]), 
         .D(ST_fifo_handler[0]), .Z(WrClock_enable_44)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(129[9:24])
    defparam i1_4_lut.init = 16'h3233;
    LUT4 i2312_3_lut (.A(mdL0_16_0), .B(mdL0_17_0), .C(rptr_4), .Z(n2848)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(155[7:14])
    defparam i2312_3_lut.init = 16'hcaca;
    LUT4 i1492_4_lut (.A(ST_fifo_handler[1]), .B(ST_fifo_handler[0]), .C(ST_fifo_handler[2]), 
         .D(\TMR_comparator_hex[13] ), .Z(\i_ascii_7__N_94[0] )) /* synthesis lut_function=(!(A (B+(C))+!A !(B+((D)+!C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(129[9:24])
    defparam i1492_4_lut.init = 16'h5747;
    FD1P3DX FF_67_rep_43 (.D(rcount_0), .SP(rden_i), .CK(WrClock), .CD(rRst), 
            .Q(n3024)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=14, LSE_LLINE=155, LSE_RLINE=155 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/b13fifo.vhd(1697[12:19])
    defparam FF_67_rep_43.GSR = "ENABLED";
    LUT4 i2069_2_lut (.A(n3034), .B(Full), .Z(n2605)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2069_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \fifo2Uart(115200,14000000) 
//

module \fifo2Uart(115200,14000000)  (WrClock, n3035, rst, n3034, Empty, 
            RdEn, uart_tx_c, i_fifo_dout, GND_net);
    input WrClock;
    input n3035;
    input rst;
    input n3034;
    input Empty;
    output RdEn;
    output uart_tx_c;
    input [7:0]i_fifo_dout;
    input GND_net;
    
    wire WrClock /* synthesis SET_AS_NETWORK=WrClock, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(51[9:16])
    wire [5:0]counter_delay_tx;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(99[8:24])
    
    wire WrClock_enable_40;
    wire [5:0]counter_delay_tx_5__N_159;
    
    wire n2985;
    wire [2:0]States_tx;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(97[8:17])
    wire [2:0]States_tx_2__N_138;
    
    wire WrClock_enable_4, U_tx_active, WrClock_enable_33, n2981, n849, 
        n3015, n2994, n2951, n2536, n3002, n3000, U_tx_dv_N_179, 
        WrClock_enable_35, n2609, n2972, n2971, WrClock_enable_48, 
        o_fifo_rd_en_N_170;
    wire [2:0]r_SM_Main_2__N_228;
    
    wire n2996, n3003, WrClock_enable_63, n2999, n2997;
    
    FD1P3AX counter_delay_tx_i0_i0 (.D(counter_delay_tx_5__N_159[0]), .SP(WrClock_enable_40), 
            .CK(WrClock), .Q(counter_delay_tx[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam counter_delay_tx_i0_i0.GSR = "ENABLED";
    LUT4 n11_bdd_4_lut (.A(n2985), .B(States_tx[2]), .C(States_tx[0]), 
         .D(States_tx[1]), .Z(States_tx_2__N_138[2])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam n11_bdd_4_lut.init = 16'h3004;
    FD1P3DX States_tx_i0 (.D(States_tx_2__N_138[0]), .SP(WrClock_enable_4), 
            .CK(WrClock), .CD(n3035), .Q(States_tx[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam States_tx_i0.GSR = "ENABLED";
    LUT4 i1153_4_lut (.A(States_tx[1]), .B(States_tx[0]), .C(States_tx[2]), 
         .D(U_tx_active), .Z(WrClock_enable_33)) /* synthesis lut_function=((B (C+!(D))+!B (C+(D)))+!A) */ ;
    defparam i1153_4_lut.init = 16'hf7fd;
    LUT4 i13_3_lut (.A(States_tx[2]), .B(States_tx[1]), .C(States_tx[0]), 
         .Z(States_tx_2__N_138[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(154[5] 196[14])
    defparam i13_3_lut.init = 16'h1c1c;
    LUT4 i1_4_lut (.A(counter_delay_tx[5]), .B(n2981), .C(counter_delay_tx[4]), 
         .D(n849), .Z(counter_delay_tx_5__N_159[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h4888;
    LUT4 i1_2_lut_rep_36 (.A(States_tx[2]), .B(States_tx[1]), .Z(n3015)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_36.init = 16'h2222;
    LUT4 States_tx_0__bdd_4_lut (.A(States_tx[0]), .B(States_tx[1]), .C(n2994), 
         .D(States_tx[2]), .Z(n2951)) /* synthesis lut_function=(A (B+!(D))+!A !(B+(C+(D)))) */ ;
    defparam States_tx_0__bdd_4_lut.init = 16'h88ab;
    FD1P3DX States_tx_i1 (.D(States_tx_2__N_138[1]), .SP(WrClock_enable_33), 
            .CK(WrClock), .CD(n3035), .Q(States_tx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam States_tx_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(n2985), .B(n3015), .C(n849), .D(counter_delay_tx[4]), 
         .Z(counter_delay_tx_5__N_159[4])) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0880;
    LUT4 i1_3_lut_4_lut_else_4_lut_4_lut (.A(States_tx[2]), .B(States_tx[1]), 
         .C(n2536), .D(counter_delay_tx[3]), .Z(n3002)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_else_4_lut_4_lut.init = 16'h2000;
    LUT4 i342_2_lut_3_lut_4_lut (.A(counter_delay_tx[1]), .B(counter_delay_tx[0]), 
         .C(counter_delay_tx[3]), .D(counter_delay_tx[2]), .Z(n849)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(188[37:53])
    defparam i342_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_then_3_lut_4_lut (.A(States_tx[2]), .B(States_tx[1]), 
         .C(counter_delay_tx[2]), .D(counter_delay_tx[1]), .Z(n3000)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_then_3_lut_4_lut.init = 16'h0220;
    LUT4 i2491_2_lut_3_lut (.A(States_tx[0]), .B(States_tx[1]), .C(States_tx[2]), 
         .Z(U_tx_dv_N_179)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i2491_2_lut_3_lut.init = 16'h0707;
    FD1P3DX States_tx_i2 (.D(States_tx_2__N_138[2]), .SP(WrClock_enable_35), 
            .CK(WrClock), .CD(rst), .Q(States_tx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam States_tx_i2.GSR = "ENABLED";
    FD1P3AX counter_delay_tx_i0_i5 (.D(counter_delay_tx_5__N_159[5]), .SP(WrClock_enable_40), 
            .CK(WrClock), .Q(counter_delay_tx[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam counter_delay_tx_i0_i5.GSR = "ENABLED";
    FD1P3AX counter_delay_tx_i0_i4 (.D(counter_delay_tx_5__N_159[4]), .SP(WrClock_enable_40), 
            .CK(WrClock), .Q(counter_delay_tx[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam counter_delay_tx_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_25 (.A(counter_delay_tx[0]), .B(n2536), .Z(n2985)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_25.init = 16'heeee;
    FD1P3AX counter_delay_tx_i0_i3 (.D(counter_delay_tx_5__N_159[3]), .SP(WrClock_enable_40), 
            .CK(WrClock), .Q(counter_delay_tx[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam counter_delay_tx_i0_i3.GSR = "ENABLED";
    FD1P3AX counter_delay_tx_i0_i2 (.D(counter_delay_tx_5__N_159[2]), .SP(WrClock_enable_40), 
            .CK(WrClock), .Q(counter_delay_tx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam counter_delay_tx_i0_i2.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(counter_delay_tx[4]), .B(counter_delay_tx[2]), .C(n2609), 
         .D(counter_delay_tx[3]), .Z(n2536)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i1_3_lut_4_lut_4_lut (.A(counter_delay_tx[0]), .B(n2536), .C(counter_delay_tx[1]), 
         .D(n3015), .Z(counter_delay_tx_5__N_159[1])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C (D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h4a00;
    FD1P3AX counter_delay_tx_i0_i1 (.D(counter_delay_tx_5__N_159[1]), .SP(WrClock_enable_40), 
            .CK(WrClock), .Q(counter_delay_tx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam counter_delay_tx_i0_i1.GSR = "ENABLED";
    LUT4 n11_bdd_3_lut_4_lut (.A(counter_delay_tx[0]), .B(n2536), .C(States_tx[2]), 
         .D(States_tx[0]), .Z(n2972)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;
    defparam n11_bdd_3_lut_4_lut.init = 16'hff1f;
    PFUMX i2528 (.BLUT(n2972), .ALUT(n2971), .C0(States_tx[1]), .Z(WrClock_enable_35));
    LUT4 States_tx_1__bdd_4_lut (.A(States_tx[1]), .B(States_tx[0]), .C(n3034), 
         .D(States_tx[2]), .Z(WrClock_enable_48)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam States_tx_1__bdd_4_lut.init = 16'h080e;
    LUT4 i2510_2_lut_3_lut_3_lut_4_lut (.A(States_tx[2]), .B(States_tx[0]), 
         .C(n2994), .D(States_tx[1]), .Z(o_fifo_rd_en_N_170)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2510_2_lut_3_lut_3_lut_4_lut.init = 16'h0001;
    FD1P3AX U_tx_dv_43 (.D(U_tx_dv_N_179), .SP(WrClock_enable_48), .CK(WrClock), 
            .Q(r_SM_Main_2__N_228[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam U_tx_dv_43.GSR = "ENABLED";
    LUT4 i26_4_lut_else_4_lut (.A(States_tx[0]), .B(States_tx[2]), .C(States_tx[1]), 
         .D(U_tx_active), .Z(n2996)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+((D)+!C))) */ ;
    defparam i26_4_lut_else_4_lut.init = 16'hdfef;
    LUT4 i1511_2_lut_rep_34 (.A(Empty), .B(U_tx_active), .Z(n2994)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1511_2_lut_rep_34.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(n3015), .B(counter_delay_tx[2]), 
         .C(counter_delay_tx[1]), .D(counter_delay_tx[3]), .Z(n3003)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(D))+!A)) */ ;
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h2a80;
    LUT4 i2_3_lut_4_lut (.A(States_tx[2]), .B(States_tx[1]), .C(n2536), 
         .D(counter_delay_tx[0]), .Z(counter_delay_tx_5__N_159[0])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_21_3_lut_4_lut (.A(States_tx[2]), .B(States_tx[1]), 
         .C(n2536), .D(counter_delay_tx[0]), .Z(n2981)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_21_3_lut_4_lut.init = 16'h2220;
    LUT4 n2951_bdd_2_lut (.A(n2951), .B(n3034), .Z(WrClock_enable_63)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n2951_bdd_2_lut.init = 16'h2222;
    LUT4 i2500_4_lut (.A(States_tx[0]), .B(States_tx[1]), .C(States_tx[2]), 
         .D(n2994), .Z(States_tx_2__N_138[0])) /* synthesis lut_function=(!(A+(B (C)+!B !(C+!(D))))) */ ;
    defparam i2500_4_lut.init = 16'h1415;
    LUT4 i1_3_lut_4_lut_else_3_lut_4_lut (.A(States_tx[2]), .B(States_tx[1]), 
         .C(n2536), .D(counter_delay_tx[2]), .Z(n2999)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_else_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_3 (.A(n3034), .B(States_tx[0]), .C(States_tx[1]), 
         .D(States_tx[2]), .Z(WrClock_enable_40)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam i1_4_lut_adj_3.init = 16'h4104;
    PFUMX i2538 (.BLUT(n3002), .ALUT(n3003), .C0(counter_delay_tx[0]), 
          .Z(counter_delay_tx_5__N_159[3]));
    LUT4 i2073_2_lut (.A(counter_delay_tx[5]), .B(counter_delay_tx[1]), 
         .Z(n2609)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2073_2_lut.init = 16'h8888;
    PFUMX i2536 (.BLUT(n2999), .ALUT(n3000), .C0(counter_delay_tx[0]), 
          .Z(counter_delay_tx_5__N_159[2]));
    LUT4 i26_4_lut_then_4_lut (.A(States_tx[0]), .B(States_tx[2]), .C(States_tx[1]), 
         .D(U_tx_active), .Z(n2997)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B ((D)+!C))) */ ;
    defparam i26_4_lut_then_4_lut.init = 16'hdbeb;
    FD1P3AX o_fifo_rd_en_41 (.D(o_fifo_rd_en_N_170), .SP(WrClock_enable_63), 
            .CK(WrClock), .Q(RdEn)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=11, LSE_RCOL=20, LSE_LLINE=168, LSE_RLINE=168 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(150[1] 198[8])
    defparam o_fifo_rd_en_41.GSR = "ENABLED";
    PFUMX i2534 (.BLUT(n2996), .ALUT(n2997), .C0(n2985), .Z(WrClock_enable_4));
    LUT4 n11_bdd_3_lut_2527 (.A(States_tx[0]), .B(States_tx[2]), .C(U_tx_active), 
         .Z(n2971)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;
    defparam n11_bdd_3_lut_2527.init = 16'h9a9a;
    \UART_TX(115200,14000000)  uart_tx_inst (.WrClock(WrClock), .U_tx_active(U_tx_active), 
            .uart_tx_c(uart_tx_c), .i_fifo_dout({i_fifo_dout}), .GND_net(GND_net), 
            .\r_SM_Main_2__N_228[0] (r_SM_Main_2__N_228[0]));   // c:/users/victo/desktop/lattice_proj/bench_uart/fifo2uart.vhd(105[17:24])
    
endmodule
//
// Verilog Description of module \UART_TX(115200,14000000) 
//

module \UART_TX(115200,14000000)  (WrClock, U_tx_active, uart_tx_c, i_fifo_dout, 
            GND_net, \r_SM_Main_2__N_228[0] );
    input WrClock;
    output U_tx_active;
    output uart_tx_c;
    input [7:0]i_fifo_dout;
    input GND_net;
    input \r_SM_Main_2__N_228[0] ;
    
    wire WrClock /* synthesis SET_AS_NETWORK=WrClock, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_top.vhd(51[9:16])
    wire [6:0]n58;
    
    wire WrClock_enable_62, n1789;
    wire [6:0]n33;
    wire [2:0]r_SM_Main;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(39[10:19])
    
    wire n2576;
    wire [2:0]r_SM_Main_2__N_225;
    
    wire WrClock_enable_6, o_TX_Serial_N_232;
    wire [2:0]r_Bit_Index;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(42[10:21])
    
    wire WrClock_enable_34;
    wire [2:0]r_Bit_Index_2__N_190;
    
    wire n1172, n1782;
    wire [7:0]r_TX_Data;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(43[10:19])
    
    wire WrClock_enable_61, n3, n2989, n2993, n2371, n2875, n2876, 
        o_TX_Serial_N_233;
    wire [6:0]r_Clk_Count;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(41[10:21])
    
    wire n2372, n2373, n2871, n2872, n2873, n2874, n1171;
    
    FD1P3IX r_Clk_Count_286__i2 (.D(n33[2]), .SP(WrClock_enable_62), .CD(n1789), 
            .CK(WrClock), .Q(n58[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286__i2.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_286__i1 (.D(n33[1]), .SP(WrClock_enable_62), .CD(n1789), 
            .CK(WrClock), .Q(n58[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286__i1.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i2 (.D(r_SM_Main_2__N_225[1]), .CK(WrClock), .CD(n2576), 
            .Q(r_SM_Main[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_SM_Main_i2.GSR = "ENABLED";
    FD1P3AX o_TX_Active_50 (.D(r_SM_Main[0]), .SP(WrClock_enable_6), .CK(WrClock), 
            .Q(U_tx_active)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam o_TX_Active_50.GSR = "ENABLED";
    FD1P3AX o_TX_Serial_51 (.D(o_TX_Serial_N_232), .SP(WrClock_enable_62), 
            .CK(WrClock), .Q(uart_tx_c)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam o_TX_Serial_51.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i0 (.D(r_Bit_Index_2__N_190[0]), .SP(WrClock_enable_34), 
            .CK(WrClock), .Q(r_Bit_Index[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_Bit_Index_i0.GSR = "ENABLED";
    FD1S3IX r_SM_Main_i0 (.D(n1172), .CK(WrClock), .CD(r_SM_Main[2]), 
            .Q(r_SM_Main[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_SM_Main_i0.GSR = "ENABLED";
    LUT4 i2067_2_lut_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .Z(n1782)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i2067_2_lut_3_lut.init = 16'he0e0;
    FD1P3IX r_TX_Data_i7 (.D(i_fifo_dout[7]), .SP(WrClock_enable_61), .CD(n1782), 
            .CK(WrClock), .Q(r_TX_Data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_TX_Data_i7.GSR = "ENABLED";
    FD1P3IX r_TX_Data_i6 (.D(i_fifo_dout[6]), .SP(WrClock_enable_61), .CD(n1782), 
            .CK(WrClock), .Q(r_TX_Data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_TX_Data_i6.GSR = "ENABLED";
    FD1P3IX r_TX_Data_i5 (.D(i_fifo_dout[5]), .SP(WrClock_enable_61), .CD(n1782), 
            .CK(WrClock), .Q(r_TX_Data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_TX_Data_i5.GSR = "ENABLED";
    FD1P3IX r_TX_Data_i4 (.D(i_fifo_dout[4]), .SP(WrClock_enable_61), .CD(n1782), 
            .CK(WrClock), .Q(r_TX_Data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_TX_Data_i4.GSR = "ENABLED";
    FD1P3IX r_TX_Data_i3 (.D(i_fifo_dout[3]), .SP(WrClock_enable_61), .CD(n1782), 
            .CK(WrClock), .Q(r_TX_Data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_TX_Data_i3.GSR = "ENABLED";
    FD1P3IX r_TX_Data_i2 (.D(i_fifo_dout[2]), .SP(WrClock_enable_61), .CD(n1782), 
            .CK(WrClock), .Q(r_TX_Data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_TX_Data_i2.GSR = "ENABLED";
    FD1P3IX r_TX_Data_i1 (.D(i_fifo_dout[1]), .SP(WrClock_enable_61), .CD(n1782), 
            .CK(WrClock), .Q(r_TX_Data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_TX_Data_i1.GSR = "ENABLED";
    LUT4 i22_4_lut_4_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main_2__N_225[1]), 
         .D(r_SM_Main[2]), .Z(WrClock_enable_34)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B !(D))) */ ;
    defparam i22_4_lut_4_lut_4_lut.init = 16'hee51;
    LUT4 i2068_3_lut (.A(r_SM_Main_2__N_225[1]), .B(r_SM_Main[1]), .C(r_SM_Main[0]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(54[7] 132[16])
    defparam i2068_3_lut.init = 16'h6c6c;
    FD1P3AX r_Bit_Index_i2 (.D(r_Bit_Index_2__N_190[2]), .SP(WrClock_enable_34), 
            .CK(WrClock), .Q(r_Bit_Index[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_Bit_Index_i2.GSR = "ENABLED";
    FD1P3AX r_Bit_Index_i1 (.D(r_Bit_Index_2__N_190[1]), .SP(WrClock_enable_34), 
            .CK(WrClock), .Q(r_Bit_Index[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_Bit_Index_i1.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_29_3_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), 
         .C(r_Bit_Index[2]), .Z(n2989)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(98[30:41])
    defparam i2_2_lut_rep_29_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_3_lut_4_lut (.A(r_Bit_Index[1]), .B(r_Bit_Index[0]), .C(n2993), 
         .D(r_Bit_Index[2]), .Z(r_Bit_Index_2__N_190[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(98[30:41])
    defparam i1_4_lut_3_lut_4_lut.init = 16'h7080;
    FD1S3IX r_SM_Main_i1 (.D(n3), .CK(WrClock), .CD(r_SM_Main[2]), .Q(r_SM_Main[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_SM_Main_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_33 (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .Z(n2993)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(54[7] 132[16])
    defparam i1_2_lut_rep_33.init = 16'h2222;
    LUT4 i2503_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_SM_Main[0]), 
         .Z(n2576)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(54[7] 132[16])
    defparam i2503_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_3_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_Bit_Index[0]), 
         .Z(r_Bit_Index_2__N_190[0])) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(54[7] 132[16])
    defparam i1_2_lut_3_lut.init = 16'h0202;
    CCU2D r_Clk_Count_286_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n58[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2371), .S1(n33[0]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286_add_4_1.INIT0 = 16'hF000;
    defparam r_Clk_Count_286_add_4_1.INIT1 = 16'h0555;
    defparam r_Clk_Count_286_add_4_1.INJECT1_0 = "NO";
    defparam r_Clk_Count_286_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(r_SM_Main[1]), .B(r_SM_Main[2]), .C(r_Bit_Index[1]), 
         .D(r_Bit_Index[0]), .Z(r_Bit_Index_2__N_190[1])) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(54[7] 132[16])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    L6MUX21 i2341 (.D0(n2875), .D1(n2876), .SD(r_Bit_Index[2]), .Z(o_TX_Serial_N_233));
    FD1P3IX r_Clk_Count_286__i6 (.D(n33[6]), .SP(WrClock_enable_62), .CD(n1789), 
            .CK(WrClock), .Q(r_Clk_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286__i6.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_286__i5 (.D(n33[5]), .SP(WrClock_enable_62), .CD(n1789), 
            .CK(WrClock), .Q(r_Clk_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286__i5.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_286__i4 (.D(n33[4]), .SP(WrClock_enable_62), .CD(n1789), 
            .CK(WrClock), .Q(r_Clk_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286__i4.GSR = "ENABLED";
    CCU2D r_Clk_Count_286_add_4_5 (.A0(r_Clk_Count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2372), .COUT(n2373), .S0(n33[3]), .S1(n33[4]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286_add_4_5.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_286_add_4_5.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_286_add_4_5.INJECT1_0 = "NO";
    defparam r_Clk_Count_286_add_4_5.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(r_Clk_Count[3]), .B(r_Clk_Count[4]), .C(r_Clk_Count[6]), 
         .D(r_Clk_Count[5]), .Z(r_SM_Main_2__N_225[1])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    PFUMX i2339 (.BLUT(n2871), .ALUT(n2872), .C0(r_Bit_Index[1]), .Z(n2875));
    PFUMX i2340 (.BLUT(n2873), .ALUT(n2874), .C0(r_Bit_Index[1]), .Z(n2876));
    LUT4 i12_3_lut_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(r_SM_Main_2__N_225[1]), .Z(n1789)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C))) */ ;
    defparam i12_3_lut_4_lut.init = 16'hefe1;
    LUT4 i2497_2_lut_3_lut (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .Z(WrClock_enable_62)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2497_2_lut_3_lut.init = 16'hefef;
    LUT4 i1_1_lut (.A(r_SM_Main[1]), .Z(WrClock_enable_6)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    FD1P3IX r_Clk_Count_286__i0 (.D(n33[0]), .SP(WrClock_enable_62), .CD(n1789), 
            .CK(WrClock), .Q(n58[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286__i0.GSR = "ENABLED";
    LUT4 i12_3_lut_4_lut_adj_2 (.A(r_SM_Main[0]), .B(r_SM_Main[1]), .C(r_SM_Main[2]), 
         .D(\r_SM_Main_2__N_228[0] ), .Z(WrClock_enable_61)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam i12_3_lut_4_lut_adj_2.init = 16'he1e0;
    CCU2D r_Clk_Count_286_add_4_3 (.A0(n58[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n58[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2371), .COUT(n2372), .S0(n33[1]), .S1(n33[2]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286_add_4_3.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_286_add_4_3.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_286_add_4_3.INJECT1_0 = "NO";
    defparam r_Clk_Count_286_add_4_3.INJECT1_1 = "NO";
    CCU2D r_Clk_Count_286_add_4_7 (.A0(r_Clk_Count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(r_Clk_Count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2373), .S0(n33[5]), .S1(n33[6]));   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286_add_4_7.INIT0 = 16'hfaaa;
    defparam r_Clk_Count_286_add_4_7.INIT1 = 16'hfaaa;
    defparam r_Clk_Count_286_add_4_7.INJECT1_0 = "NO";
    defparam r_Clk_Count_286_add_4_7.INJECT1_1 = "NO";
    LUT4 i1543_4_lut (.A(r_SM_Main[0]), .B(r_SM_Main[2]), .C(o_TX_Serial_N_233), 
         .D(r_SM_Main[1]), .Z(o_TX_Serial_N_232)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C+!(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(54[7] 132[16])
    defparam i1543_4_lut.init = 16'h3211;
    FD1P3IX r_TX_Data_i0 (.D(i_fifo_dout[0]), .SP(WrClock_enable_61), .CD(n1782), 
            .CK(WrClock), .Q(r_TX_Data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=17, LSE_RCOL=24, LSE_LLINE=105, LSE_RLINE=105 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(50[5] 133[12])
    defparam r_TX_Data_i0.GSR = "ENABLED";
    FD1P3IX r_Clk_Count_286__i3 (.D(n33[3]), .SP(WrClock_enable_62), .CD(n1789), 
            .CK(WrClock), .Q(r_Clk_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(113[28:39])
    defparam r_Clk_Count_286__i3.GSR = "ENABLED";
    LUT4 i2338_3_lut (.A(r_TX_Data[6]), .B(r_TX_Data[7]), .C(r_Bit_Index[0]), 
         .Z(n2874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2338_3_lut.init = 16'hcaca;
    LUT4 i2337_3_lut (.A(r_TX_Data[4]), .B(r_TX_Data[5]), .C(r_Bit_Index[0]), 
         .Z(n2873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2337_3_lut.init = 16'hcaca;
    LUT4 i647_3_lut (.A(n1171), .B(r_SM_Main_2__N_225[1]), .C(r_SM_Main[0]), 
         .Z(n1172)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(54[7] 132[16])
    defparam i647_3_lut.init = 16'h3a3a;
    LUT4 i2336_3_lut (.A(r_TX_Data[2]), .B(r_TX_Data[3]), .C(r_Bit_Index[0]), 
         .Z(n2872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2336_3_lut.init = 16'hcaca;
    LUT4 i2335_3_lut (.A(r_TX_Data[0]), .B(r_TX_Data[1]), .C(r_Bit_Index[0]), 
         .Z(n2871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2335_3_lut.init = 16'hcaca;
    LUT4 i646_4_lut (.A(\r_SM_Main_2__N_228[0] ), .B(n2989), .C(r_SM_Main[1]), 
         .D(r_SM_Main_2__N_225[1]), .Z(n1171)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/victo/desktop/lattice_proj/bench_uart/uart_tx.vhd(54[7] 132[16])
    defparam i646_4_lut.init = 16'hca0a;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

