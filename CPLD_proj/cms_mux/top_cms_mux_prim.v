// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Fri Jul 28 13:03:28 2023
//
// Verilog Description of module top_cms_mux
//

module top_cms_mux (Mezz1_ADC_ch_i_p, Mezz1_ADC_ch_i_n, Mezz2_ADC_ch_i_p, 
            Mezz2_ADC_ch_i_n, Mezz3_ADC_ch_i_p, Mezz3_ADC_ch_i_n, Mezz4_ADC_ch_i_p, 
            Mezz4_ADC_ch_i_n, Mezz5_ADC_ch_i_p, Mezz5_ADC_ch_i_n, Mezz_ADC_LCLK_p, 
            Mezz_ADC_LCLK_n, Mezz_ADC_ADCLK_p, Mezz_ADC_ADCLK_n, Mezz_Mux0, 
            Mezz_Mux1, CPLD_ADC_ch_o_p, CPLD_ADC_ch_o_n, CPLD_ADC_LCLK_o_p, 
            CPLD_ADC_LCLK_o_n, CPLD_ADC_ADCLK_o_p, CPLD_ADC_ADCLK_o_n, 
            Mezz_DRS4_o_refclk_p, Mezz_DRS4_o_refclk_n, DRS4_i_refclk_p, 
            DRS4_i_refclk_n, Mezz1_DRS4_o_A, Mezz2_DRS4_o_A, Mezz3_DRS4_o_A, 
            Mezz4_DRS4_o_A, Mezz5_DRS4_o_A, DRS4_i_A, Mezz_DRS4_o_denable, 
            Mezz_DAC_sel0, Mezz_DAC_sel1, Mezz_ADC_nCS, Mezz_ADC_DAC_nReset, 
            Mezz_nSHDN, CSR_MOSI_P, CSR_MOSI_N, CSR_SCLK_P, CSR_SCLK_N, 
            CSR_CS_P, CSR_CS_N, rst, Mux_sel);   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(16[8:19])
    input [7:0]Mezz1_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(27[3:19])
    input [7:0]Mezz1_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(28[3:19])
    input [7:0]Mezz2_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(30[3:19])
    input [7:0]Mezz2_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(31[3:19])
    input [7:0]Mezz3_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(33[3:19])
    input [7:0]Mezz3_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(34[3:19])
    input [7:0]Mezz4_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(36[3:19])
    input [7:0]Mezz4_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(37[3:19])
    input [7:0]Mezz5_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(39[3:19])
    input [7:0]Mezz5_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(40[3:19])
    input [4:0]Mezz_ADC_LCLK_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(43[3:18])
    input [4:0]Mezz_ADC_LCLK_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(44[3:18])
    input [4:0]Mezz_ADC_ADCLK_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(46[3:19])
    input [4:0]Mezz_ADC_ADCLK_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(47[3:19])
    output [4:0]Mezz_Mux0;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(49[3:12])
    output [4:0]Mezz_Mux1;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(50[3:12])
    output [7:0]CPLD_ADC_ch_o_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(53[3:18])
    output [7:0]CPLD_ADC_ch_o_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(54[3:18])
    output CPLD_ADC_LCLK_o_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(56[3:20])
    output CPLD_ADC_LCLK_o_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(57[3:20])
    output CPLD_ADC_ADCLK_o_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(59[3:21])
    output CPLD_ADC_ADCLK_o_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(60[3:21])
    output [4:0]Mezz_DRS4_o_refclk_p;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(63[3:23])
    output [4:0]Mezz_DRS4_o_refclk_n;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(64[3:23])
    input DRS4_i_refclk_p /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(66[3:18])
    input DRS4_i_refclk_n /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(67[3:18])
    output [3:0]Mezz1_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(69[3:17])
    output [3:0]Mezz2_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(70[3:17])
    output [3:0]Mezz3_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(71[3:17])
    output [3:0]Mezz4_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(72[3:17])
    output [3:0]Mezz5_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(73[3:17])
    input [3:0]DRS4_i_A;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    output [4:0]Mezz_DRS4_o_denable;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(77[3:22])
    output [4:0]Mezz_DAC_sel0;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(80[3:16])
    output [4:0]Mezz_DAC_sel1;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(81[3:16])
    output [4:0]Mezz_ADC_nCS;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(82[3:15])
    output [4:0]Mezz_ADC_DAC_nReset;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(83[3:22])
    output [4:0]Mezz_nSHDN;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(84[3:13])
    input CSR_MOSI_P /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(89[3:13])
    input CSR_MOSI_N /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(90[3:13])
    input CSR_SCLK_P /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(91[3:13])
    input CSR_SCLK_N /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(92[3:13])
    input CSR_CS_P /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(93[3:11])
    input CSR_CS_N /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(94[3:11])
    input rst;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(96[3:6])
    input [2:0]Mux_sel;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    
    wire SCLK_buff /* synthesis is_clock=1, SET_AS_NETWORK=SCLK_buff */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(158[8:17])
    wire SPI_rdy /* synthesis is_clock=1, SET_AS_NETWORK=SPI_rdy */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(160[8:15])
    wire ADC_ch_out_sel_7__N_69 /* synthesis is_clock=1, SET_AS_NETWORK=ADC_ch_out_sel_7__N_69 */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(114[8:22])
    
    wire GND_net, Mezz_Mux0_c_4, Mezz_Mux0_c_3, Mezz_Mux0_c_2, Mezz_Mux0_c_1, 
        Mezz_Mux0_c_0, Mezz1_DRS4_o_A_c_3, Mezz1_DRS4_o_A_c_2, Mezz1_DRS4_o_A_c_1, 
        Mezz1_DRS4_o_A_c_0, Mezz2_DRS4_o_A_c_3, Mezz2_DRS4_o_A_c_2, Mezz2_DRS4_o_A_c_1, 
        Mezz2_DRS4_o_A_c_0, Mezz3_DRS4_o_A_c_3, Mezz3_DRS4_o_A_c_2, Mezz3_DRS4_o_A_c_1, 
        Mezz3_DRS4_o_A_c_0, Mezz4_DRS4_o_A_c_3, Mezz4_DRS4_o_A_c_2, Mezz4_DRS4_o_A_c_1, 
        Mezz4_DRS4_o_A_c_0, Mezz5_DRS4_o_A_c_3, Mezz5_DRS4_o_A_c_2, Mezz5_DRS4_o_A_c_1, 
        Mezz5_DRS4_o_A_c_0, DRS4_i_A_c_3, DRS4_i_A_c_2, DRS4_i_A_c_1, 
        DRS4_i_A_c_0, Mezz_DRS4_o_denable_c_4, Mezz_DRS4_o_denable_c_3, 
        Mezz_DRS4_o_denable_c_2, Mezz_DRS4_o_denable_c_1, Mezz_DRS4_o_denable_c_0, 
        Mezz_DAC_sel0_c_4, Mezz_DAC_sel0_c_3, Mezz_DAC_sel0_c_2, Mezz_DAC_sel0_c_1, 
        Mezz_DAC_sel0_c_0, Mezz_DAC_sel1_c_4, Mezz_DAC_sel1_c_3, Mezz_DAC_sel1_c_2, 
        Mezz_DAC_sel1_c_1, Mezz_DAC_sel1_c_0, Mezz_ADC_nCS_c_4, Mezz_ADC_nCS_c_3, 
        Mezz_ADC_nCS_c_2, Mezz_ADC_nCS_c_1, Mezz_ADC_nCS_c_0, Mezz_ADC_DAC_nReset_c_4, 
        Mezz_ADC_DAC_nReset_c_3, Mezz_ADC_DAC_nReset_c_2, Mezz_ADC_DAC_nReset_c_1, 
        Mezz_ADC_DAC_nReset_c_0, Mezz_nSHDN_c_4, Mezz_nSHDN_c_3, Mezz_nSHDN_c_2, 
        Mezz_nSHDN_c_1, Mezz_nSHDN_c_0, Mux_sel_c_2, Mux_sel_c_1, Mux_sel_c_0;
    wire [7:0]Mezz1_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(106[8:31])
    wire [7:0]Mezz2_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(107[8:31])
    wire [7:0]Mezz3_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(108[8:31])
    wire [7:0]Mezz4_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(109[8:31])
    wire [7:0]Mezz5_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(110[8:31])
    wire [4:0]ADC_LCLK_input_buff;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(111[8:27])
    wire [4:0]ADC_ADCLK_input_buff;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(112[8:28])
    wire [7:0]ADC_ch_out_sel;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(114[8:22])
    
    wire ADC_LCLK_out, ADC_ADCLK_out, DRS4_refclk_input_buff, MOSI_buff, 
        CS_buff_neg_N_72, CS_buff_neg;
    wire [9:0]SPI_data;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(159[8:16])
    
    wire ADC_ch_out_sel_7__N_61, ADC_ch_out_sel_7__N_62, ADC_ch_out_sel_7__N_63, 
        ADC_ch_out_sel_7__N_64, ADC_ch_out_sel_7__N_65, ADC_ch_out_sel_7__N_66, 
        ADC_ch_out_sel_7__N_67, ADC_ch_out_sel_7__N_68, ADC_LCLK_out_N_70, 
        ADC_ADCLK_out_N_71, n2126, Mezz1_DRS4_o_A_3__N_10, Mezz2_DRS4_o_A_3__N_15, 
        n59, Mezz4_DRS4_o_A_3__N_25, n2139;
    wire [3:0]count_data;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(28[8:18])
    wire [1:0]SPI_states;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(30[8:18])
    
    wire n2138, n2127, n1854, n1852, VCC_net, n2150, n2154;
    wire [3:0]count_data_3__N_103;
    
    wire n2129, SPI_rdy_enable_7, n2, n46, n2133, n2136, n4, n2_adj_134, 
        n4_adj_135, n2_adj_136, n4_adj_137, SPI_rdy_enable_26, n2132, 
        n2135, n1859, n1858, n1857, n2_adj_138, n4_adj_139, n2_adj_140, 
        n4_adj_141, n2_adj_142, n4_adj_143, n2153, n2_adj_144, n2148, 
        n4_adj_145, n2147, n2_adj_146, n2145, n4_adj_147, n2144, 
        n2_adj_148, n4_adj_149, n2_adj_150, n2151, n4_adj_151, n2130, 
        SPI_rdy_enable_34, SPI_rdy_enable_33, SCLK_buff_enable_4, Mux_sel_c_0_derived_8, 
        n1520, Mux_sel_c_0_derived_7, SPI_rdy_enable_32, n2141, n2142, 
        SPI_rdy_enable_35;
    
    FD1P3AX Mezz_nSHDN_i1 (.D(SPI_data[1]), .SP(SPI_rdy_enable_7), .CK(SPI_rdy), 
            .Q(Mezz_nSHDN_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_nSHDN_i1.GSR = "DISABLED";
    ILVDS Mosi (.A(CSR_MOSI_P), .AN(CSR_MOSI_N), .Z(MOSI_buff)) /* synthesis syn_instantiated=1 */ ;
    ILVDS CSR_SPI (.A(CSR_CS_P), .AN(CSR_CS_N), .Z(CS_buff_neg)) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz1_ADC_ch_i_0..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[0]), .AN(Mezz1_ADC_ch_i_n[0]), 
          .Z(Mezz1_ADC_ch_input_diff[0])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz1_ADC_ch_i_1..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[1]), .AN(Mezz1_ADC_ch_i_n[1]), 
          .Z(Mezz1_ADC_ch_input_diff[1])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz1_ADC_ch_i_2..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[2]), .AN(Mezz1_ADC_ch_i_n[2]), 
          .Z(Mezz1_ADC_ch_input_diff[2])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz1_ADC_ch_i_3..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[3]), .AN(Mezz1_ADC_ch_i_n[3]), 
          .Z(Mezz1_ADC_ch_input_diff[3])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz1_ADC_ch_i_4..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[4]), .AN(Mezz1_ADC_ch_i_n[4]), 
          .Z(Mezz1_ADC_ch_input_diff[4])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz1_ADC_ch_i_5..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[5]), .AN(Mezz1_ADC_ch_i_n[5]), 
          .Z(Mezz1_ADC_ch_input_diff[5])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz1_ADC_ch_i_6..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[6]), .AN(Mezz1_ADC_ch_i_n[6]), 
          .Z(Mezz1_ADC_ch_input_diff[6])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz1_ADC_ch_i_7..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[7]), .AN(Mezz1_ADC_ch_i_n[7]), 
          .Z(Mezz1_ADC_ch_input_diff[7])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz2_ADC_ch_i_0..ADC_buff2  (.A(Mezz2_ADC_ch_i_p[0]), .AN(Mezz2_ADC_ch_i_n[0]), 
          .Z(Mezz2_ADC_ch_input_diff[0])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz2_ADC_ch_i_1..ADC_buff2  (.A(Mezz2_ADC_ch_i_p[1]), .AN(Mezz2_ADC_ch_i_n[1]), 
          .Z(Mezz2_ADC_ch_input_diff[1])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz2_ADC_ch_i_2..ADC_buff2  (.A(Mezz2_ADC_ch_i_p[2]), .AN(Mezz2_ADC_ch_i_n[2]), 
          .Z(Mezz2_ADC_ch_input_diff[2])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz2_ADC_ch_i_3..ADC_buff2  (.A(Mezz2_ADC_ch_i_p[3]), .AN(Mezz2_ADC_ch_i_n[3]), 
          .Z(Mezz2_ADC_ch_input_diff[3])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz2_ADC_ch_i_4..ADC_buff2  (.A(Mezz2_ADC_ch_i_p[4]), .AN(Mezz2_ADC_ch_i_n[4]), 
          .Z(Mezz2_ADC_ch_input_diff[4])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz2_ADC_ch_i_5..ADC_buff2  (.A(Mezz2_ADC_ch_i_p[5]), .AN(Mezz2_ADC_ch_i_n[5]), 
          .Z(Mezz2_ADC_ch_input_diff[5])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz2_ADC_ch_i_6..ADC_buff2  (.A(Mezz2_ADC_ch_i_p[6]), .AN(Mezz2_ADC_ch_i_n[6]), 
          .Z(Mezz2_ADC_ch_input_diff[6])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz2_ADC_ch_i_7..ADC_buff2  (.A(Mezz2_ADC_ch_i_p[7]), .AN(Mezz2_ADC_ch_i_n[7]), 
          .Z(Mezz2_ADC_ch_input_diff[7])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz3_ADC_ch_i_0..ADC_buff3  (.A(Mezz3_ADC_ch_i_p[0]), .AN(Mezz3_ADC_ch_i_n[0]), 
          .Z(Mezz3_ADC_ch_input_diff[0])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz3_ADC_ch_i_1..ADC_buff3  (.A(Mezz3_ADC_ch_i_p[1]), .AN(Mezz3_ADC_ch_i_n[1]), 
          .Z(Mezz3_ADC_ch_input_diff[1])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz3_ADC_ch_i_2..ADC_buff3  (.A(Mezz3_ADC_ch_i_p[2]), .AN(Mezz3_ADC_ch_i_n[2]), 
          .Z(Mezz3_ADC_ch_input_diff[2])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz3_ADC_ch_i_3..ADC_buff3  (.A(Mezz3_ADC_ch_i_p[3]), .AN(Mezz3_ADC_ch_i_n[3]), 
          .Z(Mezz3_ADC_ch_input_diff[3])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz3_ADC_ch_i_4..ADC_buff3  (.A(Mezz3_ADC_ch_i_p[4]), .AN(Mezz3_ADC_ch_i_n[4]), 
          .Z(Mezz3_ADC_ch_input_diff[4])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz3_ADC_ch_i_5..ADC_buff3  (.A(Mezz3_ADC_ch_i_p[5]), .AN(Mezz3_ADC_ch_i_n[5]), 
          .Z(Mezz3_ADC_ch_input_diff[5])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz3_ADC_ch_i_6..ADC_buff3  (.A(Mezz3_ADC_ch_i_p[6]), .AN(Mezz3_ADC_ch_i_n[6]), 
          .Z(Mezz3_ADC_ch_input_diff[6])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz3_ADC_ch_i_7..ADC_buff3  (.A(Mezz3_ADC_ch_i_p[7]), .AN(Mezz3_ADC_ch_i_n[7]), 
          .Z(Mezz3_ADC_ch_input_diff[7])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz4_ADC_ch_i_0..ADC_buff4  (.A(Mezz4_ADC_ch_i_p[0]), .AN(Mezz4_ADC_ch_i_n[0]), 
          .Z(Mezz4_ADC_ch_input_diff[0])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz4_ADC_ch_i_1..ADC_buff4  (.A(Mezz4_ADC_ch_i_p[1]), .AN(Mezz4_ADC_ch_i_n[1]), 
          .Z(Mezz4_ADC_ch_input_diff[1])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz4_ADC_ch_i_2..ADC_buff4  (.A(Mezz4_ADC_ch_i_p[2]), .AN(Mezz4_ADC_ch_i_n[2]), 
          .Z(Mezz4_ADC_ch_input_diff[2])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz4_ADC_ch_i_3..ADC_buff4  (.A(Mezz4_ADC_ch_i_p[3]), .AN(Mezz4_ADC_ch_i_n[3]), 
          .Z(Mezz4_ADC_ch_input_diff[3])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz4_ADC_ch_i_4..ADC_buff4  (.A(Mezz4_ADC_ch_i_p[4]), .AN(Mezz4_ADC_ch_i_n[4]), 
          .Z(Mezz4_ADC_ch_input_diff[4])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz4_ADC_ch_i_5..ADC_buff4  (.A(Mezz4_ADC_ch_i_p[5]), .AN(Mezz4_ADC_ch_i_n[5]), 
          .Z(Mezz4_ADC_ch_input_diff[5])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz4_ADC_ch_i_6..ADC_buff4  (.A(Mezz4_ADC_ch_i_p[6]), .AN(Mezz4_ADC_ch_i_n[6]), 
          .Z(Mezz4_ADC_ch_input_diff[6])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz4_ADC_ch_i_7..ADC_buff4  (.A(Mezz4_ADC_ch_i_p[7]), .AN(Mezz4_ADC_ch_i_n[7]), 
          .Z(Mezz4_ADC_ch_input_diff[7])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz5_ADC_ch_i_0..ADC_buff5  (.A(Mezz5_ADC_ch_i_p[0]), .AN(Mezz5_ADC_ch_i_n[0]), 
          .Z(Mezz5_ADC_ch_input_diff[0])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz5_ADC_ch_i_1..ADC_buff5  (.A(Mezz5_ADC_ch_i_p[1]), .AN(Mezz5_ADC_ch_i_n[1]), 
          .Z(Mezz5_ADC_ch_input_diff[1])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz5_ADC_ch_i_2..ADC_buff5  (.A(Mezz5_ADC_ch_i_p[2]), .AN(Mezz5_ADC_ch_i_n[2]), 
          .Z(Mezz5_ADC_ch_input_diff[2])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz5_ADC_ch_i_3..ADC_buff5  (.A(Mezz5_ADC_ch_i_p[3]), .AN(Mezz5_ADC_ch_i_n[3]), 
          .Z(Mezz5_ADC_ch_input_diff[3])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz5_ADC_ch_i_4..ADC_buff5  (.A(Mezz5_ADC_ch_i_p[4]), .AN(Mezz5_ADC_ch_i_n[4]), 
          .Z(Mezz5_ADC_ch_input_diff[4])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz5_ADC_ch_i_5..ADC_buff5  (.A(Mezz5_ADC_ch_i_p[5]), .AN(Mezz5_ADC_ch_i_n[5]), 
          .Z(Mezz5_ADC_ch_input_diff[5])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz5_ADC_ch_i_6..ADC_buff5  (.A(Mezz5_ADC_ch_i_p[6]), .AN(Mezz5_ADC_ch_i_n[6]), 
          .Z(Mezz5_ADC_ch_input_diff[6])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \Mezz5_ADC_ch_i_7..ADC_buff5  (.A(Mezz5_ADC_ch_i_p[7]), .AN(Mezz5_ADC_ch_i_n[7]), 
          .Z(Mezz5_ADC_ch_input_diff[7])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_LCLK_0..ADC_LCLK  (.A(Mezz_ADC_LCLK_p[0]), .AN(Mezz_ADC_LCLK_n[0]), 
          .Z(ADC_LCLK_input_buff[0])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_LCLK_1..ADC_LCLK  (.A(Mezz_ADC_LCLK_p[1]), .AN(Mezz_ADC_LCLK_n[1]), 
          .Z(ADC_LCLK_input_buff[1])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_LCLK_2..ADC_LCLK  (.A(Mezz_ADC_LCLK_p[2]), .AN(Mezz_ADC_LCLK_n[2]), 
          .Z(ADC_LCLK_input_buff[2])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_LCLK_3..ADC_LCLK  (.A(Mezz_ADC_LCLK_p[3]), .AN(Mezz_ADC_LCLK_n[3]), 
          .Z(ADC_LCLK_input_buff[3])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_LCLK_4..ADC_LCLK  (.A(Mezz_ADC_LCLK_p[4]), .AN(Mezz_ADC_LCLK_n[4]), 
          .Z(ADC_LCLK_input_buff[4])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_ADCLK_0..ADC_ADCLK  (.A(Mezz_ADC_ADCLK_p[0]), .AN(Mezz_ADC_ADCLK_n[0]), 
          .Z(ADC_ADCLK_input_buff[0])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_ADCLK_1..ADC_ADCLK  (.A(Mezz_ADC_ADCLK_p[1]), .AN(Mezz_ADC_ADCLK_n[1]), 
          .Z(ADC_ADCLK_input_buff[1])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_ADCLK_2..ADC_ADCLK  (.A(Mezz_ADC_ADCLK_p[2]), .AN(Mezz_ADC_ADCLK_n[2]), 
          .Z(ADC_ADCLK_input_buff[2])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_ADCLK_3..ADC_ADCLK  (.A(Mezz_ADC_ADCLK_p[3]), .AN(Mezz_ADC_ADCLK_n[3]), 
          .Z(ADC_ADCLK_input_buff[3])) /* synthesis syn_instantiated=1 */ ;
    ILVDS \ADC_ADCLK_4..ADC_ADCLK  (.A(Mezz_ADC_ADCLK_p[4]), .AN(Mezz_ADC_ADCLK_n[4]), 
          .Z(ADC_ADCLK_input_buff[4])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \CPLD2SOM_ADC_ch_0..ADCobuf  (.A(ADC_ch_out_sel[0]), .Z(CPLD_ADC_ch_o_p[0]), 
          .ZN(CPLD_ADC_ch_o_n[0])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \CPLD2SOM_ADC_ch_1..ADCobuf  (.A(ADC_ch_out_sel[1]), .Z(CPLD_ADC_ch_o_p[1]), 
          .ZN(CPLD_ADC_ch_o_n[1])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \CPLD2SOM_ADC_ch_2..ADCobuf  (.A(ADC_ch_out_sel[2]), .Z(CPLD_ADC_ch_o_p[2]), 
          .ZN(CPLD_ADC_ch_o_n[2])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \CPLD2SOM_ADC_ch_3..ADCobuf  (.A(ADC_ch_out_sel[3]), .Z(CPLD_ADC_ch_o_p[3]), 
          .ZN(CPLD_ADC_ch_o_n[3])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \CPLD2SOM_ADC_ch_4..ADCobuf  (.A(ADC_ch_out_sel[4]), .Z(CPLD_ADC_ch_o_p[4]), 
          .ZN(CPLD_ADC_ch_o_n[4])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \CPLD2SOM_ADC_ch_5..ADCobuf  (.A(ADC_ch_out_sel[5]), .Z(CPLD_ADC_ch_o_p[5]), 
          .ZN(CPLD_ADC_ch_o_n[5])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \CPLD2SOM_ADC_ch_6..ADCobuf  (.A(ADC_ch_out_sel[6]), .Z(CPLD_ADC_ch_o_p[6]), 
          .ZN(CPLD_ADC_ch_o_n[6])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \CPLD2SOM_ADC_ch_7..ADCobuf  (.A(ADC_ch_out_sel[7]), .Z(CPLD_ADC_ch_o_p[7]), 
          .ZN(CPLD_ADC_ch_o_n[7])) /* synthesis syn_instantiated=1 */ ;
    OLVDS LCLKobuf (.A(ADC_LCLK_out), .Z(CPLD_ADC_LCLK_o_p), .ZN(CPLD_ADC_LCLK_o_n)) /* synthesis syn_instantiated=1 */ ;
    OLVDS ADclkobuf (.A(ADC_ADCLK_out), .Z(CPLD_ADC_ADCLK_o_p), .ZN(CPLD_ADC_ADCLK_o_n)) /* synthesis syn_instantiated=1 */ ;
    ILVDS DRS4_refclk_in (.A(DRS4_i_refclk_p), .AN(DRS4_i_refclk_n), .Z(DRS4_refclk_input_buff)) /* synthesis syn_instantiated=1 */ ;
    OLVDS \DRS4_refclk_0..DRS4_refclk_gen  (.A(DRS4_refclk_input_buff), .Z(Mezz_DRS4_o_refclk_p[0]), 
          .ZN(Mezz_DRS4_o_refclk_n[0])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \DRS4_refclk_1..DRS4_refclk_gen  (.A(DRS4_refclk_input_buff), .Z(Mezz_DRS4_o_refclk_p[1]), 
          .ZN(Mezz_DRS4_o_refclk_n[1])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \DRS4_refclk_2..DRS4_refclk_gen  (.A(DRS4_refclk_input_buff), .Z(Mezz_DRS4_o_refclk_p[2]), 
          .ZN(Mezz_DRS4_o_refclk_n[2])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \DRS4_refclk_3..DRS4_refclk_gen  (.A(DRS4_refclk_input_buff), .Z(Mezz_DRS4_o_refclk_p[3]), 
          .ZN(Mezz_DRS4_o_refclk_n[3])) /* synthesis syn_instantiated=1 */ ;
    OLVDS \DRS4_refclk_4..DRS4_refclk_gen  (.A(DRS4_refclk_input_buff), .Z(Mezz_DRS4_o_refclk_p[4]), 
          .ZN(Mezz_DRS4_o_refclk_n[4])) /* synthesis syn_instantiated=1 */ ;
    FD1P3AX Mezz_DAC_sel0_i1 (.D(SPI_data[2]), .SP(SPI_rdy_enable_7), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel0_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel0_i1.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i1 (.D(SPI_data[3]), .SP(SPI_rdy_enable_7), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel1_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel1_i1.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i1 (.D(SPI_data[4]), .SP(SPI_rdy_enable_7), 
            .CK(SPI_rdy), .Q(Mezz_ADC_DAC_nReset_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_DAC_nReset_i1.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i1 (.D(SPI_data[5]), .SP(SPI_rdy_enable_7), .CK(SPI_rdy), 
            .Q(Mezz_ADC_nCS_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_nCS_i1.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i1 (.D(SPI_data[6]), .SP(SPI_rdy_enable_7), .CK(SPI_rdy), 
            .Q(Mezz_Mux0_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_Mux0_i1.GSR = "DISABLED";
    FD1S1A ADC_LCLK_out_I_0 (.D(ADC_LCLK_out_N_70), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_LCLK_out));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_LCLK_out_I_0.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i1 (.D(DRS4_i_A_c_0), .CK(Mux_sel_c_0_derived_7), 
           .CD(n1520), .Q(Mezz3_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1A ADC_ADCLK_out_I_0 (.D(ADC_ADCLK_out_N_71), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ADCLK_out));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ADCLK_out_I_0.GSR = "DISABLED";
    LUT4 i803_1_lut_2_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .Z(n1520)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam i803_1_lut_2_lut.init = 16'h7777;
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i1 (.D(Mezz1_DRS4_o_A_3__N_10), .CK(Mezz1_DRS4_o_A_3__N_10), 
           .CD(n1854), .Q(Mezz1_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i1 (.D(SPI_data[0]), .SP(SPI_rdy_enable_7), 
            .CK(SPI_rdy), .Q(Mezz_DRS4_o_denable_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DRS4_o_denable_i1.GSR = "DISABLED";
    ILVDS SCLK_clk (.A(CSR_SCLK_P), .AN(CSR_SCLK_N), .Z(SCLK_buff)) /* synthesis syn_instantiated=1 */ ;
    LUT4 mux_313_Mux_28_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[1]), .B(Mezz5_ADC_ch_input_diff[1]), 
         .C(Mux_sel_c_0), .Z(n4_adj_151)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_28_i4_3_lut.init = 16'hcaca;
    LUT4 i1420_3_lut (.A(Mezz1_ADC_ch_input_diff[7]), .B(n2_adj_138), .C(Mux_sel_c_1), 
         .Z(n2138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1420_3_lut.init = 16'hcaca;
    OB Mezz_Mux0_pad_4 (.I(Mezz_Mux0_c_4), .O(Mezz_Mux0[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(49[3:12])
    LUT4 i1312_2_lut_rep_11 (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .Z(Mux_sel_c_0_derived_8)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam i1312_2_lut_rep_11.init = 16'h8888;
    FD1S1A ADC_ch_out_sel_7__I_0_i2 (.D(ADC_ch_out_sel_7__N_67), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ch_out_sel[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ch_out_sel_7__I_0_i2.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i3 (.D(ADC_ch_out_sel_7__N_66), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ch_out_sel[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ch_out_sel_7__I_0_i3.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i4 (.D(ADC_ch_out_sel_7__N_65), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ch_out_sel[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ch_out_sel_7__I_0_i4.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i5 (.D(ADC_ch_out_sel_7__N_64), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ch_out_sel[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ch_out_sel_7__I_0_i5.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i6 (.D(ADC_ch_out_sel_7__N_63), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ch_out_sel[5]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ch_out_sel_7__I_0_i6.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i7 (.D(ADC_ch_out_sel_7__N_62), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ch_out_sel[6]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ch_out_sel_7__I_0_i7.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i8 (.D(ADC_ch_out_sel_7__N_61), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ch_out_sel[7]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ch_out_sel_7__I_0_i8.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i2 (.D(DRS4_i_A_c_1), .CK(Mux_sel_c_0_derived_8), 
           .CD(n1852), .Q(Mezz5_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i3 (.D(DRS4_i_A_c_2), .CK(Mux_sel_c_0_derived_8), 
           .CD(n1852), .Q(Mezz5_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i4 (.D(DRS4_i_A_c_3), .CK(Mux_sel_c_0_derived_8), 
           .CD(n1852), .Q(Mezz5_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i2 (.D(DRS4_i_A_c_1), .CK(Mux_sel_c_0_derived_7), 
           .CD(n1520), .Q(Mezz3_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i3 (.D(DRS4_i_A_c_2), .CK(Mux_sel_c_0_derived_7), 
           .CD(n1520), .Q(Mezz3_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i4 (.D(DRS4_i_A_c_3), .CK(Mux_sel_c_0_derived_7), 
           .CD(n1520), .Q(Mezz3_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i2 (.D(Mezz2_DRS4_o_A_3__N_15), .CK(Mezz2_DRS4_o_A_3__N_15), 
           .CD(n1857), .Q(Mezz2_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i3 (.D(Mezz2_DRS4_o_A_3__N_15), .CK(Mezz2_DRS4_o_A_3__N_15), 
           .CD(n1858), .Q(Mezz2_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i4 (.D(Mezz2_DRS4_o_A_3__N_15), .CK(Mezz2_DRS4_o_A_3__N_15), 
           .CD(n1859), .Q(Mezz2_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i2 (.D(Mezz1_DRS4_o_A_3__N_10), .CK(Mezz1_DRS4_o_A_3__N_10), 
           .CD(n1857), .Q(Mezz1_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i3 (.D(Mezz1_DRS4_o_A_3__N_10), .CK(Mezz1_DRS4_o_A_3__N_10), 
           .CD(n1858), .Q(Mezz1_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i4 (.D(Mezz1_DRS4_o_A_3__N_10), .CK(Mezz1_DRS4_o_A_3__N_10), 
           .CD(n1859), .Q(Mezz1_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    LUT4 i1414_3_lut (.A(Mezz1_ADC_ch_input_diff[3]), .B(n2_adj_146), .C(Mux_sel_c_1), 
         .Z(n2132)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1414_3_lut.init = 16'hcaca;
    LUT4 i1488_2_lut_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .C(Mux_sel_c_1), 
         .Z(ADC_ch_out_sel_7__N_69)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam i1488_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i1111_1_lut_2_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .Z(n1852)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam i1111_1_lut_2_lut.init = 16'h7777;
    LUT4 i1408_3_lut (.A(Mezz1_ADC_ch_input_diff[6]), .B(n2_adj_140), .C(Mux_sel_c_1), 
         .Z(n2126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1408_3_lut.init = 16'hcaca;
    PFUMX i1437 (.BLUT(n2153), .ALUT(n2154), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_67));
    FD1P3AX Mezz_nSHDN_i2 (.D(SPI_data[1]), .SP(SPI_rdy_enable_32), .CK(SPI_rdy), 
            .Q(Mezz_nSHDN_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_nSHDN_i2.GSR = "DISABLED";
    LUT4 i1426_3_lut (.A(ADC_ADCLK_input_buff[0]), .B(n2_adj_136), .C(Mux_sel_c_1), 
         .Z(n2144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1426_3_lut.init = 16'hcaca;
    OB Mezz_Mux0_pad_3 (.I(Mezz_Mux0_c_3), .O(Mezz_Mux0[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(49[3:12])
    OB Mezz_Mux0_pad_2 (.I(Mezz_Mux0_c_2), .O(Mezz_Mux0[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(49[3:12])
    OB Mezz_Mux0_pad_1 (.I(Mezz_Mux0_c_1), .O(Mezz_Mux0[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(49[3:12])
    OB Mezz_Mux0_pad_0 (.I(Mezz_Mux0_c_0), .O(Mezz_Mux0[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(49[3:12])
    OB Mezz_Mux1_pad_4 (.I(GND_net), .O(Mezz_Mux1[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(50[3:12])
    OB Mezz_Mux1_pad_3 (.I(GND_net), .O(Mezz_Mux1[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(50[3:12])
    OB Mezz_Mux1_pad_2 (.I(GND_net), .O(Mezz_Mux1[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(50[3:12])
    OB Mezz_Mux1_pad_1 (.I(GND_net), .O(Mezz_Mux1[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(50[3:12])
    OB Mezz_Mux1_pad_0 (.I(GND_net), .O(Mezz_Mux1[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(50[3:12])
    OB Mezz1_DRS4_o_A_pad_3 (.I(Mezz1_DRS4_o_A_c_3), .O(Mezz1_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(69[3:17])
    OB Mezz1_DRS4_o_A_pad_2 (.I(Mezz1_DRS4_o_A_c_2), .O(Mezz1_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(69[3:17])
    OB Mezz1_DRS4_o_A_pad_1 (.I(Mezz1_DRS4_o_A_c_1), .O(Mezz1_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(69[3:17])
    OB Mezz1_DRS4_o_A_pad_0 (.I(Mezz1_DRS4_o_A_c_0), .O(Mezz1_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(69[3:17])
    OB Mezz2_DRS4_o_A_pad_3 (.I(Mezz2_DRS4_o_A_c_3), .O(Mezz2_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(70[3:17])
    OB Mezz2_DRS4_o_A_pad_2 (.I(Mezz2_DRS4_o_A_c_2), .O(Mezz2_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(70[3:17])
    OB Mezz2_DRS4_o_A_pad_1 (.I(Mezz2_DRS4_o_A_c_1), .O(Mezz2_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(70[3:17])
    OB Mezz2_DRS4_o_A_pad_0 (.I(Mezz2_DRS4_o_A_c_0), .O(Mezz2_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(70[3:17])
    OB Mezz3_DRS4_o_A_pad_3 (.I(Mezz3_DRS4_o_A_c_3), .O(Mezz3_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(71[3:17])
    OB Mezz3_DRS4_o_A_pad_2 (.I(Mezz3_DRS4_o_A_c_2), .O(Mezz3_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(71[3:17])
    OB Mezz3_DRS4_o_A_pad_1 (.I(Mezz3_DRS4_o_A_c_1), .O(Mezz3_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(71[3:17])
    OB Mezz3_DRS4_o_A_pad_0 (.I(Mezz3_DRS4_o_A_c_0), .O(Mezz3_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(71[3:17])
    OB Mezz4_DRS4_o_A_pad_3 (.I(Mezz4_DRS4_o_A_c_3), .O(Mezz4_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(72[3:17])
    OB Mezz4_DRS4_o_A_pad_2 (.I(Mezz4_DRS4_o_A_c_2), .O(Mezz4_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(72[3:17])
    OB Mezz4_DRS4_o_A_pad_1 (.I(Mezz4_DRS4_o_A_c_1), .O(Mezz4_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(72[3:17])
    OB Mezz4_DRS4_o_A_pad_0 (.I(Mezz4_DRS4_o_A_c_0), .O(Mezz4_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(72[3:17])
    OB Mezz5_DRS4_o_A_pad_3 (.I(Mezz5_DRS4_o_A_c_3), .O(Mezz5_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(73[3:17])
    OB Mezz5_DRS4_o_A_pad_2 (.I(Mezz5_DRS4_o_A_c_2), .O(Mezz5_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(73[3:17])
    OB Mezz5_DRS4_o_A_pad_1 (.I(Mezz5_DRS4_o_A_c_1), .O(Mezz5_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(73[3:17])
    OB Mezz5_DRS4_o_A_pad_0 (.I(Mezz5_DRS4_o_A_c_0), .O(Mezz5_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(73[3:17])
    OB Mezz_DRS4_o_denable_pad_4 (.I(Mezz_DRS4_o_denable_c_4), .O(Mezz_DRS4_o_denable[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(77[3:22])
    OB Mezz_DRS4_o_denable_pad_3 (.I(Mezz_DRS4_o_denable_c_3), .O(Mezz_DRS4_o_denable[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(77[3:22])
    OB Mezz_DRS4_o_denable_pad_2 (.I(Mezz_DRS4_o_denable_c_2), .O(Mezz_DRS4_o_denable[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(77[3:22])
    OB Mezz_DRS4_o_denable_pad_1 (.I(Mezz_DRS4_o_denable_c_1), .O(Mezz_DRS4_o_denable[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(77[3:22])
    OB Mezz_DRS4_o_denable_pad_0 (.I(Mezz_DRS4_o_denable_c_0), .O(Mezz_DRS4_o_denable[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(77[3:22])
    OB Mezz_DAC_sel0_pad_4 (.I(Mezz_DAC_sel0_c_4), .O(Mezz_DAC_sel0[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(80[3:16])
    OB Mezz_DAC_sel0_pad_3 (.I(Mezz_DAC_sel0_c_3), .O(Mezz_DAC_sel0[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(80[3:16])
    OB Mezz_DAC_sel0_pad_2 (.I(Mezz_DAC_sel0_c_2), .O(Mezz_DAC_sel0[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(80[3:16])
    OB Mezz_DAC_sel0_pad_1 (.I(Mezz_DAC_sel0_c_1), .O(Mezz_DAC_sel0[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(80[3:16])
    OB Mezz_DAC_sel0_pad_0 (.I(Mezz_DAC_sel0_c_0), .O(Mezz_DAC_sel0[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(80[3:16])
    OB Mezz_DAC_sel1_pad_4 (.I(Mezz_DAC_sel1_c_4), .O(Mezz_DAC_sel1[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(81[3:16])
    OB Mezz_DAC_sel1_pad_3 (.I(Mezz_DAC_sel1_c_3), .O(Mezz_DAC_sel1[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(81[3:16])
    OB Mezz_DAC_sel1_pad_2 (.I(Mezz_DAC_sel1_c_2), .O(Mezz_DAC_sel1[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(81[3:16])
    OB Mezz_DAC_sel1_pad_1 (.I(Mezz_DAC_sel1_c_1), .O(Mezz_DAC_sel1[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(81[3:16])
    OB Mezz_DAC_sel1_pad_0 (.I(Mezz_DAC_sel1_c_0), .O(Mezz_DAC_sel1[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(81[3:16])
    OB Mezz_ADC_nCS_pad_4 (.I(Mezz_ADC_nCS_c_4), .O(Mezz_ADC_nCS[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(82[3:15])
    OB Mezz_ADC_nCS_pad_3 (.I(Mezz_ADC_nCS_c_3), .O(Mezz_ADC_nCS[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(82[3:15])
    OB Mezz_ADC_nCS_pad_2 (.I(Mezz_ADC_nCS_c_2), .O(Mezz_ADC_nCS[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(82[3:15])
    OB Mezz_ADC_nCS_pad_1 (.I(Mezz_ADC_nCS_c_1), .O(Mezz_ADC_nCS[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(82[3:15])
    OB Mezz_ADC_nCS_pad_0 (.I(Mezz_ADC_nCS_c_0), .O(Mezz_ADC_nCS[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(82[3:15])
    OB Mezz_ADC_DAC_nReset_pad_4 (.I(Mezz_ADC_DAC_nReset_c_4), .O(Mezz_ADC_DAC_nReset[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(83[3:22])
    OB Mezz_ADC_DAC_nReset_pad_3 (.I(Mezz_ADC_DAC_nReset_c_3), .O(Mezz_ADC_DAC_nReset[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(83[3:22])
    OB Mezz_ADC_DAC_nReset_pad_2 (.I(Mezz_ADC_DAC_nReset_c_2), .O(Mezz_ADC_DAC_nReset[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(83[3:22])
    OB Mezz_ADC_DAC_nReset_pad_1 (.I(Mezz_ADC_DAC_nReset_c_1), .O(Mezz_ADC_DAC_nReset[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(83[3:22])
    OB Mezz_ADC_DAC_nReset_pad_0 (.I(Mezz_ADC_DAC_nReset_c_0), .O(Mezz_ADC_DAC_nReset[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(83[3:22])
    OB Mezz_nSHDN_pad_4 (.I(Mezz_nSHDN_c_4), .O(Mezz_nSHDN[4]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(84[3:13])
    OB Mezz_nSHDN_pad_3 (.I(Mezz_nSHDN_c_3), .O(Mezz_nSHDN[3]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(84[3:13])
    OB Mezz_nSHDN_pad_2 (.I(Mezz_nSHDN_c_2), .O(Mezz_nSHDN[2]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(84[3:13])
    OB Mezz_nSHDN_pad_1 (.I(Mezz_nSHDN_c_1), .O(Mezz_nSHDN[1]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(84[3:13])
    OB Mezz_nSHDN_pad_0 (.I(Mezz_nSHDN_c_0), .O(Mezz_nSHDN[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(84[3:13])
    IB DRS4_i_A_pad_3 (.I(DRS4_i_A[3]), .O(DRS4_i_A_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    IB DRS4_i_A_pad_2 (.I(DRS4_i_A[2]), .O(DRS4_i_A_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    IB DRS4_i_A_pad_1 (.I(DRS4_i_A[1]), .O(DRS4_i_A_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    IB DRS4_i_A_pad_0 (.I(DRS4_i_A[0]), .O(DRS4_i_A_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    IB Mux_sel_pad_2 (.I(Mux_sel[2]), .O(Mux_sel_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    IB Mux_sel_pad_1 (.I(Mux_sel[1]), .O(Mux_sel_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    IB Mux_sel_pad_0 (.I(Mux_sel[0]), .O(Mux_sel_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    FD1P3AX Mezz_nSHDN_i3 (.D(SPI_data[1]), .SP(SPI_rdy_enable_33), .CK(SPI_rdy), 
            .Q(Mezz_nSHDN_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_nSHDN_i3.GSR = "DISABLED";
    FD1P3AX Mezz_nSHDN_i4 (.D(SPI_data[1]), .SP(SPI_rdy_enable_26), .CK(SPI_rdy), 
            .Q(Mezz_nSHDN_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_nSHDN_i4.GSR = "DISABLED";
    FD1P3AX Mezz_nSHDN_i5 (.D(SPI_data[1]), .SP(SPI_rdy_enable_35), .CK(SPI_rdy), 
            .Q(Mezz_nSHDN_c_4));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_nSHDN_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i2 (.D(SPI_data[2]), .SP(SPI_rdy_enable_32), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel0_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel0_i2.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i3 (.D(SPI_data[2]), .SP(SPI_rdy_enable_33), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel0_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel0_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i4 (.D(SPI_data[2]), .SP(SPI_rdy_enable_26), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel0_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel0_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i5 (.D(SPI_data[2]), .SP(SPI_rdy_enable_35), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel0_c_4));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel0_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i2 (.D(SPI_data[3]), .SP(SPI_rdy_enable_32), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel1_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel1_i2.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i3 (.D(SPI_data[3]), .SP(SPI_rdy_enable_33), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel1_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel1_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i4 (.D(SPI_data[3]), .SP(SPI_rdy_enable_26), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel1_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel1_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i5 (.D(SPI_data[3]), .SP(SPI_rdy_enable_35), .CK(SPI_rdy), 
            .Q(Mezz_DAC_sel1_c_4));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DAC_sel1_i5.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i2 (.D(SPI_data[4]), .SP(SPI_rdy_enable_32), 
            .CK(SPI_rdy), .Q(Mezz_ADC_DAC_nReset_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_DAC_nReset_i2.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i3 (.D(SPI_data[4]), .SP(SPI_rdy_enable_33), 
            .CK(SPI_rdy), .Q(Mezz_ADC_DAC_nReset_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_DAC_nReset_i3.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i4 (.D(SPI_data[4]), .SP(SPI_rdy_enable_26), 
            .CK(SPI_rdy), .Q(Mezz_ADC_DAC_nReset_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_DAC_nReset_i4.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i5 (.D(SPI_data[4]), .SP(SPI_rdy_enable_35), 
            .CK(SPI_rdy), .Q(Mezz_ADC_DAC_nReset_c_4));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_DAC_nReset_i5.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i2 (.D(SPI_data[5]), .SP(SPI_rdy_enable_32), .CK(SPI_rdy), 
            .Q(Mezz_ADC_nCS_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_nCS_i2.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i3 (.D(SPI_data[5]), .SP(SPI_rdy_enable_33), .CK(SPI_rdy), 
            .Q(Mezz_ADC_nCS_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_nCS_i3.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i4 (.D(SPI_data[5]), .SP(SPI_rdy_enable_26), .CK(SPI_rdy), 
            .Q(Mezz_ADC_nCS_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_nCS_i4.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i5 (.D(SPI_data[5]), .SP(SPI_rdy_enable_35), .CK(SPI_rdy), 
            .Q(Mezz_ADC_nCS_c_4));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_ADC_nCS_i5.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i2 (.D(SPI_data[6]), .SP(SPI_rdy_enable_32), .CK(SPI_rdy), 
            .Q(Mezz_Mux0_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_Mux0_i2.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i3 (.D(SPI_data[6]), .SP(SPI_rdy_enable_33), .CK(SPI_rdy), 
            .Q(Mezz_Mux0_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_Mux0_i3.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i4 (.D(SPI_data[6]), .SP(SPI_rdy_enable_34), .CK(SPI_rdy), 
            .Q(Mezz_Mux0_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_Mux0_i4.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i5 (.D(SPI_data[6]), .SP(SPI_rdy_enable_35), .CK(SPI_rdy), 
            .Q(Mezz_Mux0_c_4));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_Mux0_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i2 (.D(SPI_data[0]), .SP(SPI_rdy_enable_32), 
            .CK(SPI_rdy), .Q(Mezz_DRS4_o_denable_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DRS4_o_denable_i2.GSR = "DISABLED";
    LUT4 mux_313_Mux_30_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[3]), .B(Mezz5_ADC_ch_input_diff[3]), 
         .C(Mux_sel_c_0), .Z(n4_adj_147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_30_i4_3_lut.init = 16'hcaca;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 mux_313_Mux_25_i4_3_lut (.A(ADC_ADCLK_input_buff[3]), .B(ADC_ADCLK_input_buff[4]), 
         .C(Mux_sel_c_0), .Z(n4_adj_137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_25_i4_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(count_data[1]), .B(count_data[0]), .C(count_data[2]), 
         .D(SPI_states[1]), .Z(count_data_3__N_103[2])) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0078;
    LUT4 i1451_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_141), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[6]), .Z(n2127)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1451_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1411_3_lut (.A(Mezz1_ADC_ch_input_diff[5]), .B(n2_adj_142), .C(Mux_sel_c_1), 
         .Z(n2129)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1411_3_lut.init = 16'hcaca;
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i4 (.D(Mezz4_DRS4_o_A_3__N_25), .CK(Mezz4_DRS4_o_A_3__N_25), 
           .CD(n1859), .Q(Mezz4_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i3 (.D(Mezz4_DRS4_o_A_3__N_25), .CK(Mezz4_DRS4_o_A_3__N_25), 
           .CD(n1858), .Q(Mezz4_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    LUT4 i1461_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_139), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[7]), .Z(n2139)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1461_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1P3AX Mezz_DRS4_o_denable_i3 (.D(SPI_data[0]), .SP(SPI_rdy_enable_33), 
            .CK(SPI_rdy), .Q(Mezz_DRS4_o_denable_c_2));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DRS4_o_denable_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i4 (.D(SPI_data[0]), .SP(SPI_rdy_enable_34), 
            .CK(SPI_rdy), .Q(Mezz_DRS4_o_denable_c_3));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DRS4_o_denable_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i5 (.D(SPI_data[0]), .SP(SPI_rdy_enable_35), 
            .CK(SPI_rdy), .Q(Mezz_DRS4_o_denable_c_4));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(324[2] 389[9])
    defparam Mezz_DRS4_o_denable_i5.GSR = "DISABLED";
    LUT4 i1455_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_149), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[2]), .Z(n2148)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1455_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i1 (.D(DRS4_i_A_c_0), .CK(Mux_sel_c_0_derived_8), 
           .CD(n1852), .Q(Mezz5_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i1 (.D(ADC_ch_out_sel_7__N_68), .CK(ADC_ch_out_sel_7__N_69), 
           .Q(ADC_ch_out_sel[0]));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam ADC_ch_out_sel_7__I_0_i1.GSR = "DISABLED";
    GSR GSR_INST (.GSR(CS_buff_neg));
    LUT4 i1457_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_151), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[1]), .Z(n2154)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1457_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1449_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_147), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[3]), .Z(n2133)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1449_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1463_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_137), .C(Mux_sel_c_1), 
         .D(ADC_ADCLK_input_buff[0]), .Z(n2145)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1463_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i2 (.D(Mezz4_DRS4_o_A_3__N_25), .CK(Mezz4_DRS4_o_A_3__N_25), 
           .CD(n1857), .Q(Mezz4_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    LUT4 i1423_3_lut (.A(ADC_LCLK_input_buff[0]), .B(n2_adj_134), .C(Mux_sel_c_1), 
         .Z(n2141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1423_3_lut.init = 16'hcaca;
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i1 (.D(Mezz2_DRS4_o_A_3__N_15), .CK(Mezz2_DRS4_o_A_3__N_15), 
           .CD(n1854), .Q(Mezz2_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    PFUMX i1419 (.BLUT(n2135), .ALUT(n2136), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_68));
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i1 (.D(Mezz4_DRS4_o_A_3__N_25), .CK(Mezz4_DRS4_o_A_3__N_25), 
           .CD(n1854), .Q(Mezz4_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(398[1] 458[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    PFUMX i1431 (.BLUT(n2147), .ALUT(n2148), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_66));
    LUT4 i1465_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_135), .C(Mux_sel_c_1), 
         .D(ADC_LCLK_input_buff[0]), .Z(n2142)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1465_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1429_3_lut (.A(Mezz1_ADC_ch_input_diff[2]), .B(n2_adj_148), .C(Mux_sel_c_1), 
         .Z(n2147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1429_3_lut.init = 16'hcaca;
    LUT4 i1467_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[0]), .Z(n2136)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1467_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 mux_313_Mux_31_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[4]), .B(Mezz3_ADC_ch_input_diff[4]), 
         .C(Mux_sel_c_0), .Z(n2_adj_144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_31_i2_3_lut.init = 16'hcaca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1309_3_lut (.A(Mux_sel_c_2), .B(Mux_sel_c_1), .C(Mux_sel_c_0), 
         .Z(Mezz2_DRS4_o_A_3__N_15)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam i1309_3_lut.init = 16'h8484;
    LUT4 i1417_3_lut (.A(Mezz1_ADC_ch_input_diff[0]), .B(n2), .C(Mux_sel_c_1), 
         .Z(n2135)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1417_3_lut.init = 16'hcaca;
    LUT4 i1116_1_lut (.A(DRS4_i_A_c_1), .Z(n1857)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    defparam i1116_1_lut.init = 16'h5555;
    LUT4 i1117_1_lut (.A(DRS4_i_A_c_2), .Z(n1858)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    defparam i1117_1_lut.init = 16'h5555;
    LUT4 i1118_1_lut (.A(DRS4_i_A_c_3), .Z(n1859)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    defparam i1118_1_lut.init = 16'h5555;
    LUT4 i1459_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_145), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[4]), .Z(n2151)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1459_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_4_lut (.A(CS_buff_neg), .B(n59), .C(n46), .D(SPI_states[0]), 
         .Z(SCLK_buff_enable_4)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'hecee;
    LUT4 i1453_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_143), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[5]), .Z(n2130)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(97[3:10])
    defparam i1453_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 CS_buff_neg_I_0_1_lut (.A(CS_buff_neg), .Z(CS_buff_neg_N_72)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(196[12:27])
    defparam CS_buff_neg_I_0_1_lut.init = 16'h5555;
    PFUMX i1425 (.BLUT(n2141), .ALUT(n2142), .C0(Mux_sel_c_2), .Z(ADC_LCLK_out_N_70));
    LUT4 mux_313_Mux_35_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[7]), .B(Mezz5_ADC_ch_input_diff[7]), 
         .C(Mux_sel_c_0), .Z(n4_adj_139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_35_i4_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_28_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[1]), .B(Mezz3_ADC_ch_input_diff[1]), 
         .C(Mux_sel_c_0), .Z(n2_adj_150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_28_i2_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_27_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[0]), .B(Mezz5_ADC_ch_input_diff[0]), 
         .C(Mux_sel_c_0), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_27_i4_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_29_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[2]), .B(Mezz3_ADC_ch_input_diff[2]), 
         .C(Mux_sel_c_0), .Z(n2_adj_148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_29_i2_3_lut.init = 16'hcaca;
    PFUMX i1413 (.BLUT(n2129), .ALUT(n2130), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_63));
    LUT4 mux_313_Mux_26_i4_3_lut (.A(ADC_LCLK_input_buff[3]), .B(ADC_LCLK_input_buff[4]), 
         .C(Mux_sel_c_0), .Z(n4_adj_135)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_26_i4_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_29_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[2]), .B(Mezz5_ADC_ch_input_diff[2]), 
         .C(Mux_sel_c_0), .Z(n4_adj_149)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_29_i4_3_lut.init = 16'hcaca;
    PFUMX i1410 (.BLUT(n2126), .ALUT(n2127), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_62));
    LUT4 mux_313_Mux_26_i2_3_lut (.A(ADC_LCLK_input_buff[1]), .B(ADC_LCLK_input_buff[2]), 
         .C(Mux_sel_c_0), .Z(n2_adj_134)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_26_i2_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_32_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[5]), .B(Mezz3_ADC_ch_input_diff[5]), 
         .C(Mux_sel_c_0), .Z(n2_adj_142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_32_i2_3_lut.init = 16'hcaca;
    PFUMX i1428 (.BLUT(n2144), .ALUT(n2145), .C0(Mux_sel_c_2), .Z(ADC_ADCLK_out_N_71));
    LUT4 mux_313_Mux_31_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[4]), .B(Mezz5_ADC_ch_input_diff[4]), 
         .C(Mux_sel_c_0), .Z(n4_adj_145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_31_i4_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_33_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[6]), .B(Mezz3_ADC_ch_input_diff[6]), 
         .C(Mux_sel_c_0), .Z(n2_adj_140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_33_i2_3_lut.init = 16'hcaca;
    LUT4 i1310_2_lut_rep_10 (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .Z(Mux_sel_c_0_derived_7)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam i1310_2_lut_rep_10.init = 16'h8888;
    LUT4 mux_313_Mux_25_i2_3_lut (.A(ADC_ADCLK_input_buff[1]), .B(ADC_ADCLK_input_buff[2]), 
         .C(Mux_sel_c_0), .Z(n2_adj_136)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_25_i2_3_lut.init = 16'hcaca;
    PFUMX i1422 (.BLUT(n2138), .ALUT(n2139), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_61));
    PFUMX i1416 (.BLUT(n2132), .ALUT(n2133), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_65));
    LUT4 i1113_1_lut (.A(DRS4_i_A_c_0), .Z(n1854)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(75[3:11])
    defparam i1113_1_lut.init = 16'h5555;
    LUT4 mux_313_Mux_32_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[5]), .B(Mezz5_ADC_ch_input_diff[5]), 
         .C(Mux_sel_c_0), .Z(n4_adj_143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_32_i4_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_35_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[7]), .B(Mezz3_ADC_ch_input_diff[7]), 
         .C(Mux_sel_c_0), .Z(n2_adj_138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_35_i2_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_30_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[3]), .B(Mezz3_ADC_ch_input_diff[3]), 
         .C(Mux_sel_c_0), .Z(n2_adj_146)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_30_i2_3_lut.init = 16'hcaca;
    LUT4 i1482_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .C(Mux_sel_c_1), 
         .Z(Mezz4_DRS4_o_A_3__N_25)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam i1482_3_lut.init = 16'h8484;
    LUT4 i1435_3_lut (.A(Mezz1_ADC_ch_input_diff[1]), .B(n2_adj_150), .C(Mux_sel_c_1), 
         .Z(n2153)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1435_3_lut.init = 16'hcaca;
    PFUMX i1434 (.BLUT(n2150), .ALUT(n2151), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_64));
    LUT4 mux_313_Mux_33_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[6]), .B(Mezz5_ADC_ch_input_diff[6]), 
         .C(Mux_sel_c_0), .Z(n4_adj_141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_33_i4_3_lut.init = 16'hcaca;
    LUT4 i927_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .C(Mux_sel_c_2), 
         .Z(Mezz1_DRS4_o_A_3__N_10)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam i927_3_lut.init = 16'h8282;
    LUT4 i1432_3_lut (.A(Mezz1_ADC_ch_input_diff[4]), .B(n2_adj_144), .C(Mux_sel_c_1), 
         .Z(n2150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1432_3_lut.init = 16'hcaca;
    LUT4 mux_313_Mux_27_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[0]), .B(Mezz3_ADC_ch_input_diff[0]), 
         .C(Mux_sel_c_0), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(400[2] 457[12])
    defparam mux_313_Mux_27_i2_3_lut.init = 16'hcaca;
    VLO i1 (.Z(GND_net));
    SPI_som SPI (.count_data({Open_0, count_data[2], Open_1, Open_2}), 
            .SCLK_buff(SCLK_buff), .\count_data[0] (count_data[0]), .SPI_rdy(SPI_rdy), 
            .SCLK_buff_enable_4(SCLK_buff_enable_4), .SPI_states({SPI_states}), 
            .CS_buff_neg_N_72(CS_buff_neg_N_72), .\count_data[1] (count_data[1]), 
            .MOSI_buff(MOSI_buff), .SPI_rdy_enable_7(SPI_rdy_enable_7), 
            .CS_buff_neg(CS_buff_neg), .\SPI_data[6] (SPI_data[6]), .\SPI_data[5] (SPI_data[5]), 
            .\SPI_data[4] (SPI_data[4]), .\SPI_data[3] (SPI_data[3]), .\SPI_data[2] (SPI_data[2]), 
            .\SPI_data[1] (SPI_data[1]), .\count_data_3__N_103[2] (count_data_3__N_103[2]), 
            .\SPI_data[0] (SPI_data[0]), .SPI_rdy_enable_33(SPI_rdy_enable_33), 
            .n46(n46), .SPI_rdy_enable_32(SPI_rdy_enable_32), .SPI_rdy_enable_26(SPI_rdy_enable_26), 
            .SPI_rdy_enable_35(SPI_rdy_enable_35), .SPI_rdy_enable_34(SPI_rdy_enable_34), 
            .n59(n59));   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(166[6:13])
    VHI i1561 (.Z(VCC_net));
    
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
// Verilog Description of module SPI_som
//

module SPI_som (count_data, SCLK_buff, \count_data[0] , SPI_rdy, SCLK_buff_enable_4, 
            SPI_states, CS_buff_neg_N_72, \count_data[1] , MOSI_buff, 
            SPI_rdy_enable_7, CS_buff_neg, \SPI_data[6] , \SPI_data[5] , 
            \SPI_data[4] , \SPI_data[3] , \SPI_data[2] , \SPI_data[1] , 
            \count_data_3__N_103[2] , \SPI_data[0] , SPI_rdy_enable_33, 
            n46, SPI_rdy_enable_32, SPI_rdy_enable_26, SPI_rdy_enable_35, 
            SPI_rdy_enable_34, n59);
    output [3:0]count_data;
    input SCLK_buff;
    output \count_data[0] ;
    output SPI_rdy;
    input SCLK_buff_enable_4;
    output [1:0]SPI_states;
    input CS_buff_neg_N_72;
    output \count_data[1] ;
    input MOSI_buff;
    output SPI_rdy_enable_7;
    input CS_buff_neg;
    output \SPI_data[6] ;
    output \SPI_data[5] ;
    output \SPI_data[4] ;
    output \SPI_data[3] ;
    output \SPI_data[2] ;
    output \SPI_data[1] ;
    input \count_data_3__N_103[2] ;
    output \SPI_data[0] ;
    output SPI_rdy_enable_33;
    output n46;
    output SPI_rdy_enable_32;
    output SPI_rdy_enable_26;
    output SPI_rdy_enable_35;
    output SPI_rdy_enable_34;
    output n59;
    
    wire SCLK_buff /* synthesis is_clock=1, SET_AS_NETWORK=SCLK_buff */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(158[8:17])
    wire SPI_rdy /* synthesis is_clock=1, SET_AS_NETWORK=SPI_rdy */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(160[8:15])
    wire [3:0]count_data_c;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(28[8:18])
    
    wire n2251;
    wire [9:0]SPI_data;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(159[8:16])
    
    wire SCLK_buff_enable_25, n1874;
    wire [9:0]data_in;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(27[8:15])
    
    wire SCLK_buff_enable_24;
    wire [3:0]count_data_3__N_103;
    
    wire data_rdy_N_128;
    wire [1:0]SPI_states_1__N_99;
    
    wire n2201, n2252, n1570, n2250;
    
    LUT4 i1_2_lut_rep_8 (.A(count_data[2]), .B(count_data_c[3]), .Z(n2251)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_2_lut_rep_8.init = 16'hbbbb;
    FD1P3IX data_rec_i0_i8 (.D(data_in[8]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(SPI_data[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i8.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i7 (.D(data_in[7]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(SPI_data[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i7.GSR = "DISABLED";
    FD1P3AX count_data_i0_i0 (.D(count_data_3__N_103[0]), .SP(SCLK_buff_enable_24), 
            .CK(SCLK_buff), .Q(\count_data[0] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam count_data_i0_i0.GSR = "ENABLED";
    FD1P3AX data_rdy_37 (.D(data_rdy_N_128), .SP(SCLK_buff_enable_4), .CK(SCLK_buff), 
            .Q(SPI_rdy)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rdy_37.GSR = "ENABLED";
    FD1S3IX SPI_states__i0 (.D(SPI_states_1__N_99[0]), .CK(SCLK_buff), .CD(CS_buff_neg_N_72), 
            .Q(SPI_states[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam SPI_states__i0.GSR = "ENABLED";
    LUT4 SPI_states_1__bdd_4_lut (.A(count_data_c[3]), .B(count_data[2]), 
         .C(\count_data[1] ), .D(\count_data[0] ), .Z(n2201)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A !(B (C (D))))) */ ;
    defparam SPI_states_1__bdd_4_lut.init = 16'h68aa;
    LUT4 i1185_3_lut_4_lut (.A(n2252), .B(n2251), .C(SPI_states[1]), .D(MOSI_buff), 
         .Z(n1570)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i1185_3_lut_4_lut.init = 16'hf101;
    LUT4 i1473_2_lut (.A(SPI_data[9]), .B(SPI_data[8]), .Z(SPI_rdy_enable_7)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/victo/desktop/lattice_proj/top_cms_mux.vhd(159[8:16])
    defparam i1473_2_lut.init = 16'h9999;
    LUT4 i1492_2_lut_rep_7 (.A(SPI_states[0]), .B(CS_buff_neg), .Z(n2250)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1492_2_lut_rep_7.init = 16'h7777;
    FD1P3IX data_rec_i0_i6 (.D(data_in[6]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(\SPI_data[6] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i6.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i5 (.D(data_in[5]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(\SPI_data[5] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i5.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i4 (.D(data_in[4]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(\SPI_data[4] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i4.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i3 (.D(data_in[3]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(\SPI_data[3] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i3.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i2 (.D(data_in[2]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(\SPI_data[2] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i2.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i1 (.D(data_in[1]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(\SPI_data[1] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i1.GSR = "DISABLED";
    FD1P3IX data_in_i0_i0 (.D(MOSI_buff), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i0.GSR = "DISABLED";
    LUT4 i1223_4_lut_3_lut (.A(SPI_states[0]), .B(MOSI_buff), .C(SPI_states[1]), 
         .Z(SPI_states_1__N_99[0])) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1223_4_lut_3_lut.init = 16'h8e8e;
    FD1P3IX data_in_i0_i5 (.D(data_in[4]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i5.GSR = "DISABLED";
    FD1P3IX data_in_i0_i4 (.D(data_in[3]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i4.GSR = "DISABLED";
    FD1P3IX data_in_i0_i3 (.D(data_in[2]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i3.GSR = "DISABLED";
    FD1P3IX data_in_i0_i2 (.D(data_in[1]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i2.GSR = "DISABLED";
    FD1P3IX data_in_i0_i1 (.D(data_in[0]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i1.GSR = "DISABLED";
    FD1P3AX count_data_i0_i3 (.D(count_data_3__N_103[3]), .SP(SCLK_buff_enable_24), 
            .CK(SCLK_buff), .Q(count_data_c[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam count_data_i0_i3.GSR = "ENABLED";
    FD1P3AX count_data_i0_i2 (.D(\count_data_3__N_103[2] ), .SP(SCLK_buff_enable_24), 
            .CK(SCLK_buff), .Q(count_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam count_data_i0_i2.GSR = "ENABLED";
    FD1P3IX data_rec_i0_i0 (.D(data_in[0]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(\SPI_data[0] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(SPI_states[1]), .B(CS_buff_neg), .C(MOSI_buff), 
         .D(SPI_states[0]), .Z(SCLK_buff_enable_25)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0888;
    LUT4 i1485_2_lut (.A(SPI_states[1]), .B(\count_data[0] ), .Z(count_data_3__N_103[0])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1485_2_lut.init = 16'h1111;
    LUT4 i1140_2_lut_3_lut_3_lut (.A(SPI_states[1]), .B(CS_buff_neg), .C(SPI_states[0]), 
         .Z(n1874)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1140_2_lut_3_lut_3_lut.init = 16'h0808;
    LUT4 i1_2_lut (.A(SPI_states[1]), .B(SPI_states[0]), .Z(data_rdy_N_128)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_5 (.A(SPI_data[7]), .B(SPI_data[8]), .Z(SPI_rdy_enable_33)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_2_lut_adj_5.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(count_data[2]), .B(count_data_c[3]), 
         .C(SPI_states[1]), .D(n2252), .Z(n46)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h0f0b;
    LUT4 i1_3_lut (.A(SPI_data[8]), .B(SPI_data[7]), .C(SPI_data[9]), 
         .Z(SPI_rdy_enable_32)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;
    defparam i1_3_lut.init = 16'h8282;
    LUT4 i1_3_lut_adj_7 (.A(SPI_data[9]), .B(SPI_data[7]), .C(SPI_data[8]), 
         .Z(SPI_rdy_enable_26)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;
    defparam i1_3_lut_adj_7.init = 16'h8282;
    LUT4 i1_2_lut_adj_8 (.A(SPI_data[9]), .B(SPI_data[7]), .Z(SPI_rdy_enable_35)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_2_lut_adj_8.init = 16'h8888;
    LUT4 i1_3_lut_adj_9 (.A(SPI_data[9]), .B(SPI_data[8]), .C(SPI_data[7]), 
         .Z(SPI_rdy_enable_34)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;
    defparam i1_3_lut_adj_9.init = 16'h8282;
    LUT4 n2201_bdd_2_lut (.A(n2201), .B(SPI_states[1]), .Z(count_data_3__N_103[3])) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n2201_bdd_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_9 (.A(\count_data[1] ), .B(\count_data[0] ), .Z(n2252)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_2_lut_rep_9.init = 16'hbbbb;
    FD1P3AX count_data_i0_i1 (.D(count_data_3__N_103[1]), .SP(SCLK_buff_enable_24), 
            .CK(SCLK_buff), .Q(\count_data[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam count_data_i0_i1.GSR = "ENABLED";
    FD1S3IX SPI_states__i1 (.D(n1570), .CK(SCLK_buff), .CD(n2250), .Q(SPI_states[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam SPI_states__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(SPI_states[1]), .B(\count_data[1] ), .C(\count_data[0] ), 
         .D(n2251), .Z(count_data_3__N_103[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_4_lut.init = 16'h1404;
    FD1P3IX data_in_i0_i9 (.D(data_in[8]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i9.GSR = "DISABLED";
    FD1P3IX data_in_i0_i8 (.D(data_in[7]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i8.GSR = "DISABLED";
    FD1P3IX data_in_i0_i7 (.D(data_in[6]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i7.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(SPI_states[1]), .B(CS_buff_neg), .C(MOSI_buff), 
         .Z(n59)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_2_lut_3_lut.init = 16'h0808;
    FD1P3IX data_in_i0_i6 (.D(data_in[5]), .SP(SCLK_buff_enable_24), .CD(n1874), 
            .CK(SCLK_buff), .Q(data_in[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_in_i0_i6.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i9 (.D(data_in[9]), .SP(SCLK_buff_enable_25), .CD(n1874), 
            .CK(SCLK_buff), .Q(SPI_data[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=166, LSE_RLINE=166 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam data_rec_i0_i9.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_4_lut_3_lut (.A(SPI_states[1]), .B(CS_buff_neg), 
         .C(SPI_states[0]), .Z(SCLK_buff_enable_24)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(36[1] 73[8])
    defparam i1_3_lut_4_lut_4_lut_3_lut.init = 16'h4848;
    
endmodule
