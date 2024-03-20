// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Fri Aug 11 11:08:49 2023
//
// Verilog Description of module top_cms_mux
//

module top_cms_mux (Mezz1_ADC_ch_i_p, Mezz1_ADC_ch_i_n, Mezz2_ADC_ch_i_p, 
            Mezz2_ADC_ch_i_n, Mezz3_ADC_ch_i_p, Mezz3_ADC_ch_i_n, Mezz4_ADC_ch_i_p, 
            Mezz4_ADC_ch_i_n, Mezz5_ADC_ch_i_p, Mezz5_ADC_ch_i_n, Mezz_ADC_LCLK_p, 
            Mezz_ADC_LCLK_n, Mezz_ADC_ADCLK_p, Mezz_ADC_ADCLK_n, o_Mezz_Mux0, 
            o_Mezz_Mux1, CPLD_ADC_ch_o_p, CPLD_ADC_ch_o_n, CPLD_ADC_LCLK_o_p, 
            CPLD_ADC_LCLK_o_n, CPLD_ADC_ADCLK_o_p, CPLD_ADC_ADCLK_o_n, 
            Mezz_DRS4_o_refclk_p, Mezz_DRS4_o_refclk_n, DRS4_i_refclk_p, 
            DRS4_i_refclk_n, Mezz1_DRS4_o_A, Mezz2_DRS4_o_A, Mezz3_DRS4_o_A, 
            Mezz4_DRS4_o_A, Mezz5_DRS4_o_A, DRS4_i_A, o_Mezz_DRS4_o_denable, 
            o_Mezz_DAC_sel0, o_Mezz_DAC_sel1, o_Mezz_ADC_nCS, o_Mezz_ADC_DAC_nReset, 
            o_Mezz_nSHDN, o_Mezz_tcal_en, CSR_MOSI, CSR_MISO, CSR_SCLK_P, 
            CSR_SCLK_N, CSR_CS_SOM, CSR_CS_CPLD, rst, Mux_sel);   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(16[8:19])
    input [7:0]Mezz1_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(28[3:19])
    input [7:0]Mezz1_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(29[3:19])
    input [7:0]Mezz2_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(31[3:19])
    input [7:0]Mezz2_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(32[3:19])
    input [7:0]Mezz3_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(34[3:19])
    input [7:0]Mezz3_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(35[3:19])
    input [7:0]Mezz4_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(37[3:19])
    input [7:0]Mezz4_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(38[3:19])
    input [7:0]Mezz5_ADC_ch_i_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(40[3:19])
    input [7:0]Mezz5_ADC_ch_i_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(41[3:19])
    input [4:0]Mezz_ADC_LCLK_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(44[3:18])
    input [4:0]Mezz_ADC_LCLK_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(45[3:18])
    input [4:0]Mezz_ADC_ADCLK_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(47[3:19])
    input [4:0]Mezz_ADC_ADCLK_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(48[3:19])
    output [4:0]o_Mezz_Mux0;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    output [4:0]o_Mezz_Mux1;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(51[3:14])
    output [7:0]CPLD_ADC_ch_o_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(54[3:18])
    output [7:0]CPLD_ADC_ch_o_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(55[3:18])
    output CPLD_ADC_LCLK_o_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(57[3:20])
    output CPLD_ADC_LCLK_o_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(58[3:20])
    output CPLD_ADC_ADCLK_o_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(60[3:21])
    output CPLD_ADC_ADCLK_o_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(61[3:21])
    output [4:0]Mezz_DRS4_o_refclk_p;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(64[3:23])
    output [4:0]Mezz_DRS4_o_refclk_n;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(65[3:23])
    input DRS4_i_refclk_p /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(67[3:18])
    input DRS4_i_refclk_n /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(68[3:18])
    output [3:0]Mezz1_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    output [3:0]Mezz2_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    output [3:0]Mezz3_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    output [3:0]Mezz4_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    output [3:0]Mezz5_DRS4_o_A;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(74[3:17])
    input [3:0]DRS4_i_A;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    output [4:0]o_Mezz_DRS4_o_denable;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(78[3:24])
    output [4:0]o_Mezz_DAC_sel0;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(81[3:18])
    output [4:0]o_Mezz_DAC_sel1;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(82[3:18])
    output [4:0]o_Mezz_ADC_nCS;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(83[3:17])
    output [4:0]o_Mezz_ADC_DAC_nReset;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(84[3:24])
    output [4:0]o_Mezz_nSHDN;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(85[3:15])
    output [4:0]o_Mezz_tcal_en;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    input CSR_MOSI;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(90[3:11])
    output CSR_MISO;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(91[3:11])
    input CSR_SCLK_P /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(92[3:13])
    input CSR_SCLK_N /* synthesis black_box_pad_pin=1 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(93[3:13])
    input CSR_CS_SOM;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(94[3:13])
    output CSR_CS_CPLD;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(95[3:14])
    input rst;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(97[3:6])
    input [2:0]Mux_sel;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(98[3:10])
    
    wire SCLK_buff /* synthesis is_clock=1, SET_AS_NETWORK=SCLK_buff */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(169[8:17])
    wire SPI_rdy /* synthesis is_clock=1, SET_AS_NETWORK=SPI_rdy */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(171[8:15])
    wire ADC_ch_out_sel_7__N_79 /* synthesis is_clock=1, SET_AS_NETWORK=ADC_ch_out_sel_7__N_79 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(115[8:22])
    
    wire n1874, o_Mezz_Mux0_c_4, o_Mezz_Mux0_c_3, o_Mezz_Mux0_c_2, o_Mezz_Mux0_c_1, 
        o_Mezz_Mux0_c_0, o_Mezz_Mux1_c_4, o_Mezz_Mux1_c_3, o_Mezz_Mux1_c_2, 
        o_Mezz_Mux1_c_1, o_Mezz_Mux1_c_0, Mezz1_DRS4_o_A_c_3, Mezz1_DRS4_o_A_c_2, 
        Mezz1_DRS4_o_A_c_1, Mezz1_DRS4_o_A_c_0, Mezz2_DRS4_o_A_c_3, Mezz2_DRS4_o_A_c_2, 
        Mezz2_DRS4_o_A_c_1, Mezz2_DRS4_o_A_c_0, Mezz3_DRS4_o_A_c_3, Mezz3_DRS4_o_A_c_2, 
        Mezz3_DRS4_o_A_c_1, Mezz3_DRS4_o_A_c_0, Mezz4_DRS4_o_A_c_3, Mezz4_DRS4_o_A_c_2, 
        Mezz4_DRS4_o_A_c_1, Mezz4_DRS4_o_A_c_0, Mezz5_DRS4_o_A_c_3, Mezz5_DRS4_o_A_c_2, 
        Mezz5_DRS4_o_A_c_1, Mezz5_DRS4_o_A_c_0, DRS4_i_A_c_3, DRS4_i_A_c_2, 
        DRS4_i_A_c_1, DRS4_i_A_c_0, o_Mezz_DRS4_o_denable_c_4, o_Mezz_DRS4_o_denable_c_3, 
        o_Mezz_DRS4_o_denable_c_2, o_Mezz_DRS4_o_denable_c_1, o_Mezz_DRS4_o_denable_c_0, 
        o_Mezz_DAC_sel0_c_4, o_Mezz_DAC_sel0_c_3, o_Mezz_DAC_sel0_c_2, 
        o_Mezz_DAC_sel0_c_1, o_Mezz_DAC_sel0_c_0, o_Mezz_DAC_sel1_c_4, 
        o_Mezz_DAC_sel1_c_3, o_Mezz_DAC_sel1_c_2, o_Mezz_DAC_sel1_c_1, 
        o_Mezz_DAC_sel1_c_0, o_Mezz_ADC_nCS_c_4, o_Mezz_ADC_nCS_c_3, o_Mezz_ADC_nCS_c_2, 
        o_Mezz_ADC_nCS_c_1, o_Mezz_ADC_nCS_c_0, o_Mezz_ADC_DAC_nReset_c_4, 
        o_Mezz_ADC_DAC_nReset_c_3, o_Mezz_ADC_DAC_nReset_c_2, o_Mezz_ADC_DAC_nReset_c_1, 
        o_Mezz_ADC_DAC_nReset_c_0, o_Mezz_nSHDN_c_4, o_Mezz_nSHDN_c_3, 
        o_Mezz_nSHDN_c_2, o_Mezz_nSHDN_c_1, o_Mezz_nSHDN_c_0, o_Mezz_tcal_en_c_4, 
        o_Mezz_tcal_en_c_3, o_Mezz_tcal_en_c_2, o_Mezz_tcal_en_c_1, o_Mezz_tcal_en_c_0, 
        CSR_MOSI_c, CSR_MISO_c, CSR_CS_SOM_c, CSR_CS_CPLD_c, Mux_sel_c_2, 
        Mux_sel_c_1, Mux_sel_c_0;
    wire [7:0]Mezz1_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(107[8:31])
    wire [7:0]Mezz2_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(108[8:31])
    wire [7:0]Mezz3_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(109[8:31])
    wire [7:0]Mezz4_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(110[8:31])
    wire [7:0]Mezz5_ADC_ch_input_diff;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(111[8:31])
    wire [4:0]ADC_LCLK_input_buff;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(112[8:27])
    wire [4:0]ADC_ADCLK_input_buff;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(113[8:28])
    wire [7:0]ADC_ch_out_sel;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(115[8:22])
    
    wire ADC_LCLK_out, ADC_ADCLK_out, DRS4_refclk_input_buff;
    wire [11:0]SPI_data;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(170[8:16])
    
    wire ADC_ch_out_sel_7__N_71, ADC_ch_out_sel_7__N_72, ADC_ch_out_sel_7__N_73, 
        ADC_ch_out_sel_7__N_74, ADC_ch_out_sel_7__N_75, ADC_ch_out_sel_7__N_76, 
        ADC_ch_out_sel_7__N_77, ADC_ch_out_sel_7__N_78, ADC_LCLK_out_N_80, 
        ADC_ADCLK_out_N_81, VCC_net, Mezz1_DRS4_o_A_3__N_15, Mezz2_DRS4_o_A_3__N_20, 
        Mezz4_DRS4_o_A_3__N_30, n1878, n5, n1890, n1889, n1887, 
        n1886, n1884, n1883, n1881, SPI_rdy_enable_43, SPI_rdy_enable_45, 
        Mux_sel_c_0_derived_7, n2, n4, n2_adj_230, n4_adj_231, n2_adj_232, 
        n4_adj_233, n2_adj_234, n4_adj_235, n2_adj_236, n4_adj_237, 
        n2_adj_238, n4_adj_239, n2_adj_240, n4_adj_241, n2_adj_242, 
        n4_adj_243, n2_adj_244, n4_adj_245, n2_adj_246, n4_adj_247, 
        n1515, n1514, n1513, n1880, n1505, n1503, Mux_sel_c_0_derived_8, 
        SPI_rdy_enable_9, n2076, GND_net, n1902, SPI_rdy_enable_44, 
        n1901, n1160, SPI_rdy_enable_42, n1899, n1877, n1898, n1896, 
        n1895, n1893, n1892, n1875;
    
    FD1P3AX Mezz_nSHDN_i1 (.D(SPI_data[1]), .SP(SPI_rdy_enable_9), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_nSHDN_i1.GSR = "DISABLED";
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
    FD1P3AX Mezz_DAC_sel0_i1 (.D(SPI_data[2]), .SP(SPI_rdy_enable_9), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel0_i1.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i1 (.D(SPI_data[3]), .SP(SPI_rdy_enable_9), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel1_i1.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i1 (.D(SPI_data[4]), .SP(SPI_rdy_enable_9), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_DAC_nReset_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_DAC_nReset_i1.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i1 (.D(SPI_data[5]), .SP(SPI_rdy_enable_9), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_tcal_en_i1.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i1 (.D(SPI_data[6]), .SP(SPI_rdy_enable_9), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux0_i1.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i1 (.D(SPI_data[7]), .SP(SPI_rdy_enable_9), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux1_i1.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i1 (.D(SPI_data[8]), .SP(SPI_rdy_enable_9), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_nCS_i1.GSR = "DISABLED";
    FD1S1A ADC_LCLK_out_I_0 (.D(ADC_LCLK_out_N_80), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_LCLK_out));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_LCLK_out_I_0.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i1 (.D(DRS4_i_A_c_0), .CK(Mux_sel_c_0_derived_7), 
           .CD(n1160), .Q(Mezz3_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1A ADC_ADCLK_out_I_0 (.D(ADC_ADCLK_out_N_81), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ADCLK_out));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ADCLK_out_I_0.GSR = "DISABLED";
    LUT4 mux_302_Mux_30_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[3]), .B(Mezz3_ADC_ch_input_diff[3]), 
         .C(Mux_sel_c_0), .Z(n2_adj_238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_30_i2_3_lut.init = 16'hcaca;
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i1 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1505), .Q(Mezz1_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i1 (.D(SPI_data[0]), .SP(SPI_rdy_enable_9), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DRS4_o_denable_i1.GSR = "DISABLED";
    LUT4 i1616_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .C(Mux_sel_c_1), 
         .Z(Mezz4_DRS4_o_A_3__N_30)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1616_3_lut.init = 16'h8484;
    LUT4 mux_302_Mux_28_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[1]), .B(Mezz5_ADC_ch_input_diff[1]), 
         .C(Mux_sel_c_0), .Z(n4_adj_235)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_28_i4_3_lut.init = 16'hcaca;
    LUT4 i1153_1_lut (.A(DRS4_i_A_c_0), .Z(n1505)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    defparam i1153_1_lut.init = 16'h5555;
    ILVDS SCLK_clk (.A(CSR_SCLK_P), .AN(CSR_SCLK_N), .Z(SCLK_buff)) /* synthesis syn_instantiated=1 */ ;
    LUT4 i943_3_lut (.A(SPI_data[9]), .B(SPI_data[10]), .C(SPI_data[11]), 
         .Z(SPI_rdy_enable_9)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(345[3] 422[12])
    defparam i943_3_lut.init = 16'h8282;
    FD1S1A ADC_ch_out_sel_7__I_0_i2 (.D(ADC_ch_out_sel_7__N_77), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ch_out_sel[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ch_out_sel_7__I_0_i2.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i3 (.D(ADC_ch_out_sel_7__N_76), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ch_out_sel[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ch_out_sel_7__I_0_i3.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i4 (.D(ADC_ch_out_sel_7__N_75), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ch_out_sel[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ch_out_sel_7__I_0_i4.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i5 (.D(ADC_ch_out_sel_7__N_74), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ch_out_sel[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ch_out_sel_7__I_0_i5.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i6 (.D(ADC_ch_out_sel_7__N_73), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ch_out_sel[5]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ch_out_sel_7__I_0_i6.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i7 (.D(ADC_ch_out_sel_7__N_72), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ch_out_sel[6]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ch_out_sel_7__I_0_i7.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i8 (.D(ADC_ch_out_sel_7__N_71), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ch_out_sel[7]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ch_out_sel_7__I_0_i8.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i2 (.D(DRS4_i_A_c_1), .CK(Mux_sel_c_0_derived_8), 
           .CD(n1503), .Q(Mezz5_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i3 (.D(DRS4_i_A_c_2), .CK(Mux_sel_c_0_derived_8), 
           .CD(n1503), .Q(Mezz5_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i4 (.D(DRS4_i_A_c_3), .CK(Mux_sel_c_0_derived_8), 
           .CD(n1503), .Q(Mezz5_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i2 (.D(DRS4_i_A_c_1), .CK(Mux_sel_c_0_derived_7), 
           .CD(n1160), .Q(Mezz3_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i3 (.D(DRS4_i_A_c_2), .CK(Mux_sel_c_0_derived_7), 
           .CD(n1160), .Q(Mezz3_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i4 (.D(DRS4_i_A_c_3), .CK(Mux_sel_c_0_derived_7), 
           .CD(n1160), .Q(Mezz3_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i2 (.D(Mezz2_DRS4_o_A_3__N_20), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n1513), .Q(Mezz2_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i3 (.D(Mezz2_DRS4_o_A_3__N_20), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n1514), .Q(Mezz2_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i4 (.D(Mezz2_DRS4_o_A_3__N_20), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n1515), .Q(Mezz2_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i2 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1513), .Q(Mezz1_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i3 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1514), .Q(Mezz1_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i4 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1515), .Q(Mezz1_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    LUT4 mux_302_Mux_31_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[4]), .B(Mezz3_ADC_ch_input_diff[4]), 
         .C(Mux_sel_c_0), .Z(n2_adj_240)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_31_i2_3_lut.init = 16'hcaca;
    LUT4 i1628_2_lut_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .C(Mux_sel_c_2), 
         .Z(ADC_ch_out_sel_7__N_79)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i1628_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i912_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .C(Mux_sel_c_2), 
         .Z(Mezz1_DRS4_o_A_3__N_15)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i912_3_lut.init = 16'h8282;
    FD1P3AX Mezz_nSHDN_i2 (.D(SPI_data[1]), .SP(SPI_rdy_enable_42), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_nSHDN_i2.GSR = "DISABLED";
    LUT4 i818_1_lut_2_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .Z(n1160)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i818_1_lut_2_lut.init = 16'h7777;
    LUT4 mux_302_Mux_27_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[0]), .B(Mezz5_ADC_ch_input_diff[0]), 
         .C(Mux_sel_c_0), .Z(n4_adj_233)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_27_i4_3_lut.init = 16'hcaca;
    OB o_Mezz_Mux0_pad_4 (.I(o_Mezz_Mux0_c_4), .O(o_Mezz_Mux0[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i4 (.D(Mezz4_DRS4_o_A_3__N_30), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1515), .Q(Mezz4_DRS4_o_A_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i3 (.D(Mezz4_DRS4_o_A_3__N_30), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1514), .Q(Mezz4_DRS4_o_A_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i2 (.D(Mezz4_DRS4_o_A_3__N_30), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1513), .Q(Mezz4_DRS4_o_A_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i1 (.D(Mezz2_DRS4_o_A_3__N_20), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n1505), .Q(Mezz2_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i1 (.D(Mezz4_DRS4_o_A_3__N_30), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1505), .Q(Mezz4_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 mux_302_Mux_35_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[7]), .B(Mezz5_ADC_ch_input_diff[7]), 
         .C(Mux_sel_c_0), .Z(n4_adj_247)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_35_i4_3_lut.init = 16'hcaca;
    OB o_Mezz_Mux0_pad_3 (.I(o_Mezz_Mux0_c_3), .O(o_Mezz_Mux0[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB o_Mezz_Mux0_pad_2 (.I(o_Mezz_Mux0_c_2), .O(o_Mezz_Mux0[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB o_Mezz_Mux0_pad_1 (.I(o_Mezz_Mux0_c_1), .O(o_Mezz_Mux0[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB o_Mezz_Mux0_pad_0 (.I(o_Mezz_Mux0_c_0), .O(o_Mezz_Mux0[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB o_Mezz_Mux1_pad_4 (.I(o_Mezz_Mux1_c_4), .O(o_Mezz_Mux1[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(51[3:14])
    OB o_Mezz_Mux1_pad_3 (.I(o_Mezz_Mux1_c_3), .O(o_Mezz_Mux1[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(51[3:14])
    OB o_Mezz_Mux1_pad_2 (.I(o_Mezz_Mux1_c_2), .O(o_Mezz_Mux1[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(51[3:14])
    OB o_Mezz_Mux1_pad_1 (.I(o_Mezz_Mux1_c_1), .O(o_Mezz_Mux1[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(51[3:14])
    OB o_Mezz_Mux1_pad_0 (.I(o_Mezz_Mux1_c_0), .O(o_Mezz_Mux1[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(51[3:14])
    OB Mezz1_DRS4_o_A_pad_3 (.I(Mezz1_DRS4_o_A_c_3), .O(Mezz1_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    OB Mezz1_DRS4_o_A_pad_2 (.I(Mezz1_DRS4_o_A_c_2), .O(Mezz1_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    OB Mezz1_DRS4_o_A_pad_1 (.I(Mezz1_DRS4_o_A_c_1), .O(Mezz1_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    OB Mezz1_DRS4_o_A_pad_0 (.I(Mezz1_DRS4_o_A_c_0), .O(Mezz1_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    OB Mezz2_DRS4_o_A_pad_3 (.I(Mezz2_DRS4_o_A_c_3), .O(Mezz2_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    OB Mezz2_DRS4_o_A_pad_2 (.I(Mezz2_DRS4_o_A_c_2), .O(Mezz2_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    OB Mezz2_DRS4_o_A_pad_1 (.I(Mezz2_DRS4_o_A_c_1), .O(Mezz2_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    OB Mezz2_DRS4_o_A_pad_0 (.I(Mezz2_DRS4_o_A_c_0), .O(Mezz2_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    OB Mezz3_DRS4_o_A_pad_3 (.I(Mezz3_DRS4_o_A_c_3), .O(Mezz3_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    OB Mezz3_DRS4_o_A_pad_2 (.I(Mezz3_DRS4_o_A_c_2), .O(Mezz3_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    OB Mezz3_DRS4_o_A_pad_1 (.I(Mezz3_DRS4_o_A_c_1), .O(Mezz3_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    OB Mezz3_DRS4_o_A_pad_0 (.I(Mezz3_DRS4_o_A_c_0), .O(Mezz3_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    OB Mezz4_DRS4_o_A_pad_3 (.I(Mezz4_DRS4_o_A_c_3), .O(Mezz4_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    OB Mezz4_DRS4_o_A_pad_2 (.I(Mezz4_DRS4_o_A_c_2), .O(Mezz4_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    OB Mezz4_DRS4_o_A_pad_1 (.I(Mezz4_DRS4_o_A_c_1), .O(Mezz4_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    OB Mezz4_DRS4_o_A_pad_0 (.I(Mezz4_DRS4_o_A_c_0), .O(Mezz4_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    OB Mezz5_DRS4_o_A_pad_3 (.I(Mezz5_DRS4_o_A_c_3), .O(Mezz5_DRS4_o_A[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(74[3:17])
    OB Mezz5_DRS4_o_A_pad_2 (.I(Mezz5_DRS4_o_A_c_2), .O(Mezz5_DRS4_o_A[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(74[3:17])
    OB Mezz5_DRS4_o_A_pad_1 (.I(Mezz5_DRS4_o_A_c_1), .O(Mezz5_DRS4_o_A[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(74[3:17])
    OB Mezz5_DRS4_o_A_pad_0 (.I(Mezz5_DRS4_o_A_c_0), .O(Mezz5_DRS4_o_A[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(74[3:17])
    OB o_Mezz_DRS4_o_denable_pad_4 (.I(o_Mezz_DRS4_o_denable_c_4), .O(o_Mezz_DRS4_o_denable[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(78[3:24])
    OB o_Mezz_DRS4_o_denable_pad_3 (.I(o_Mezz_DRS4_o_denable_c_3), .O(o_Mezz_DRS4_o_denable[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(78[3:24])
    OB o_Mezz_DRS4_o_denable_pad_2 (.I(o_Mezz_DRS4_o_denable_c_2), .O(o_Mezz_DRS4_o_denable[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(78[3:24])
    OB o_Mezz_DRS4_o_denable_pad_1 (.I(o_Mezz_DRS4_o_denable_c_1), .O(o_Mezz_DRS4_o_denable[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(78[3:24])
    OB o_Mezz_DRS4_o_denable_pad_0 (.I(o_Mezz_DRS4_o_denable_c_0), .O(o_Mezz_DRS4_o_denable[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(78[3:24])
    OB o_Mezz_DAC_sel0_pad_4 (.I(o_Mezz_DAC_sel0_c_4), .O(o_Mezz_DAC_sel0[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(81[3:18])
    OB o_Mezz_DAC_sel0_pad_3 (.I(o_Mezz_DAC_sel0_c_3), .O(o_Mezz_DAC_sel0[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(81[3:18])
    OB o_Mezz_DAC_sel0_pad_2 (.I(o_Mezz_DAC_sel0_c_2), .O(o_Mezz_DAC_sel0[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(81[3:18])
    OB o_Mezz_DAC_sel0_pad_1 (.I(o_Mezz_DAC_sel0_c_1), .O(o_Mezz_DAC_sel0[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(81[3:18])
    OB o_Mezz_DAC_sel0_pad_0 (.I(o_Mezz_DAC_sel0_c_0), .O(o_Mezz_DAC_sel0[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(81[3:18])
    OB o_Mezz_DAC_sel1_pad_4 (.I(o_Mezz_DAC_sel1_c_4), .O(o_Mezz_DAC_sel1[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(82[3:18])
    OB o_Mezz_DAC_sel1_pad_3 (.I(o_Mezz_DAC_sel1_c_3), .O(o_Mezz_DAC_sel1[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(82[3:18])
    OB o_Mezz_DAC_sel1_pad_2 (.I(o_Mezz_DAC_sel1_c_2), .O(o_Mezz_DAC_sel1[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(82[3:18])
    OB o_Mezz_DAC_sel1_pad_1 (.I(o_Mezz_DAC_sel1_c_1), .O(o_Mezz_DAC_sel1[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(82[3:18])
    OB o_Mezz_DAC_sel1_pad_0 (.I(o_Mezz_DAC_sel1_c_0), .O(o_Mezz_DAC_sel1[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(82[3:18])
    OB o_Mezz_ADC_nCS_pad_4 (.I(o_Mezz_ADC_nCS_c_4), .O(o_Mezz_ADC_nCS[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(83[3:17])
    OB o_Mezz_ADC_nCS_pad_3 (.I(o_Mezz_ADC_nCS_c_3), .O(o_Mezz_ADC_nCS[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(83[3:17])
    OB o_Mezz_ADC_nCS_pad_2 (.I(o_Mezz_ADC_nCS_c_2), .O(o_Mezz_ADC_nCS[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(83[3:17])
    OB o_Mezz_ADC_nCS_pad_1 (.I(o_Mezz_ADC_nCS_c_1), .O(o_Mezz_ADC_nCS[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(83[3:17])
    OB o_Mezz_ADC_nCS_pad_0 (.I(o_Mezz_ADC_nCS_c_0), .O(o_Mezz_ADC_nCS[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(83[3:17])
    OB o_Mezz_ADC_DAC_nReset_pad_4 (.I(o_Mezz_ADC_DAC_nReset_c_4), .O(o_Mezz_ADC_DAC_nReset[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(84[3:24])
    OB o_Mezz_ADC_DAC_nReset_pad_3 (.I(o_Mezz_ADC_DAC_nReset_c_3), .O(o_Mezz_ADC_DAC_nReset[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(84[3:24])
    OB o_Mezz_ADC_DAC_nReset_pad_2 (.I(o_Mezz_ADC_DAC_nReset_c_2), .O(o_Mezz_ADC_DAC_nReset[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(84[3:24])
    OB o_Mezz_ADC_DAC_nReset_pad_1 (.I(o_Mezz_ADC_DAC_nReset_c_1), .O(o_Mezz_ADC_DAC_nReset[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(84[3:24])
    OB o_Mezz_ADC_DAC_nReset_pad_0 (.I(o_Mezz_ADC_DAC_nReset_c_0), .O(o_Mezz_ADC_DAC_nReset[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(84[3:24])
    OB o_Mezz_nSHDN_pad_4 (.I(o_Mezz_nSHDN_c_4), .O(o_Mezz_nSHDN[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(85[3:15])
    OB o_Mezz_nSHDN_pad_3 (.I(o_Mezz_nSHDN_c_3), .O(o_Mezz_nSHDN[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(85[3:15])
    OB o_Mezz_nSHDN_pad_2 (.I(o_Mezz_nSHDN_c_2), .O(o_Mezz_nSHDN[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(85[3:15])
    OB o_Mezz_nSHDN_pad_1 (.I(o_Mezz_nSHDN_c_1), .O(o_Mezz_nSHDN[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(85[3:15])
    OB o_Mezz_nSHDN_pad_0 (.I(o_Mezz_nSHDN_c_0), .O(o_Mezz_nSHDN[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(85[3:15])
    OB o_Mezz_tcal_en_pad_4 (.I(o_Mezz_tcal_en_c_4), .O(o_Mezz_tcal_en[4]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_tcal_en_pad_3 (.I(o_Mezz_tcal_en_c_3), .O(o_Mezz_tcal_en[3]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_tcal_en_pad_2 (.I(o_Mezz_tcal_en_c_2), .O(o_Mezz_tcal_en[2]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_tcal_en_pad_1 (.I(o_Mezz_tcal_en_c_1), .O(o_Mezz_tcal_en[1]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_tcal_en_pad_0 (.I(o_Mezz_tcal_en_c_0), .O(o_Mezz_tcal_en[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB CSR_MISO_pad (.I(CSR_MISO_c), .O(CSR_MISO));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(91[3:11])
    OB CSR_CS_CPLD_pad (.I(CSR_CS_CPLD_c), .O(CSR_CS_CPLD));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(95[3:14])
    IB DRS4_i_A_pad_3 (.I(DRS4_i_A[3]), .O(DRS4_i_A_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    IB DRS4_i_A_pad_2 (.I(DRS4_i_A[2]), .O(DRS4_i_A_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    IB DRS4_i_A_pad_1 (.I(DRS4_i_A[1]), .O(DRS4_i_A_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    IB DRS4_i_A_pad_0 (.I(DRS4_i_A[0]), .O(DRS4_i_A_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    IB CSR_MOSI_pad (.I(CSR_MOSI), .O(CSR_MOSI_c));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(90[3:11])
    IB CSR_CS_SOM_pad (.I(CSR_CS_SOM), .O(CSR_CS_SOM_c));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(94[3:13])
    IB Mux_sel_pad_2 (.I(Mux_sel[2]), .O(Mux_sel_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(98[3:10])
    IB Mux_sel_pad_1 (.I(Mux_sel[1]), .O(Mux_sel_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(98[3:10])
    IB Mux_sel_pad_0 (.I(Mux_sel[0]), .O(Mux_sel_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(98[3:10])
    FD1P3AX Mezz_nSHDN_i3 (.D(SPI_data[1]), .SP(SPI_rdy_enable_43), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_nSHDN_i3.GSR = "DISABLED";
    FD1P3AX Mezz_nSHDN_i4 (.D(SPI_data[1]), .SP(SPI_rdy_enable_44), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_nSHDN_i4.GSR = "DISABLED";
    FD1P3AX Mezz_nSHDN_i5 (.D(SPI_data[1]), .SP(SPI_rdy_enable_45), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_nSHDN_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i2 (.D(SPI_data[2]), .SP(SPI_rdy_enable_42), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel0_i2.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i3 (.D(SPI_data[2]), .SP(SPI_rdy_enable_43), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel0_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i4 (.D(SPI_data[2]), .SP(SPI_rdy_enable_44), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel0_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i5 (.D(SPI_data[2]), .SP(SPI_rdy_enable_45), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel0_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i2 (.D(SPI_data[3]), .SP(SPI_rdy_enable_42), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel1_i2.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i3 (.D(SPI_data[3]), .SP(SPI_rdy_enable_43), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel1_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i4 (.D(SPI_data[3]), .SP(SPI_rdy_enable_44), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel1_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i5 (.D(SPI_data[3]), .SP(SPI_rdy_enable_45), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DAC_sel1_i5.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i2 (.D(SPI_data[4]), .SP(SPI_rdy_enable_42), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_DAC_nReset_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_DAC_nReset_i2.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i3 (.D(SPI_data[4]), .SP(SPI_rdy_enable_43), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_DAC_nReset_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_DAC_nReset_i3.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i4 (.D(SPI_data[4]), .SP(SPI_rdy_enable_44), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_DAC_nReset_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_DAC_nReset_i4.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i5 (.D(SPI_data[4]), .SP(SPI_rdy_enable_45), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_DAC_nReset_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_DAC_nReset_i5.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i2 (.D(SPI_data[5]), .SP(SPI_rdy_enable_42), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_tcal_en_i2.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i3 (.D(SPI_data[5]), .SP(SPI_rdy_enable_43), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_tcal_en_i3.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i4 (.D(SPI_data[5]), .SP(SPI_rdy_enable_44), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_tcal_en_i4.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i5 (.D(SPI_data[5]), .SP(SPI_rdy_enable_45), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_tcal_en_i5.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i2 (.D(SPI_data[6]), .SP(SPI_rdy_enable_42), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux0_i2.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i3 (.D(SPI_data[6]), .SP(SPI_rdy_enable_43), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux0_i3.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i4 (.D(SPI_data[6]), .SP(SPI_rdy_enable_44), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux0_i4.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i5 (.D(SPI_data[6]), .SP(SPI_rdy_enable_45), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux0_i5.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i2 (.D(SPI_data[7]), .SP(SPI_rdy_enable_42), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux1_i2.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i3 (.D(SPI_data[7]), .SP(SPI_rdy_enable_43), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux1_i3.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i4 (.D(SPI_data[7]), .SP(SPI_rdy_enable_44), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux1_i4.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i5 (.D(SPI_data[7]), .SP(SPI_rdy_enable_45), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_Mux1_i5.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i2 (.D(SPI_data[8]), .SP(SPI_rdy_enable_42), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_nCS_i2.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i3 (.D(SPI_data[8]), .SP(SPI_rdy_enable_43), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_nCS_i3.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i4 (.D(SPI_data[8]), .SP(SPI_rdy_enable_44), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_nCS_i4.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i5 (.D(SPI_data[8]), .SP(SPI_rdy_enable_45), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_ADC_nCS_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i2 (.D(SPI_data[0]), .SP(SPI_rdy_enable_42), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_1));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DRS4_o_denable_i2.GSR = "DISABLED";
    LUT4 mux_302_Mux_33_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[6]), .B(Mezz5_ADC_ch_input_diff[6]), 
         .C(Mux_sel_c_0), .Z(n4_adj_245)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_33_i4_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_32_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[5]), .B(Mezz5_ADC_ch_input_diff[5]), 
         .C(Mux_sel_c_0), .Z(n4_adj_243)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_32_i4_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_31_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[4]), .B(Mezz5_ADC_ch_input_diff[4]), 
         .C(Mux_sel_c_0), .Z(n4_adj_241)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_31_i4_3_lut.init = 16'hcaca;
    FD1P3AX Mezz_DRS4_o_denable_i3 (.D(SPI_data[0]), .SP(SPI_rdy_enable_43), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_2));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DRS4_o_denable_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i4 (.D(SPI_data[0]), .SP(SPI_rdy_enable_44), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_3));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DRS4_o_denable_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i5 (.D(SPI_data[0]), .SP(SPI_rdy_enable_45), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_4));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(344[2] 424[9])
    defparam Mezz_DRS4_o_denable_i5.GSR = "DISABLED";
    LUT4 mux_302_Mux_30_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[3]), .B(Mezz5_ADC_ch_input_diff[3]), 
         .C(Mux_sel_c_0), .Z(n4_adj_239)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_30_i4_3_lut.init = 16'hcaca;
    LUT4 i1276_2_lut_rep_23 (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .Z(Mux_sel_c_0_derived_8)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1276_2_lut_rep_23.init = 16'h8888;
    PFUMX i1566 (.BLUT(n1892), .ALUT(n1893), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_75));
    LUT4 i1151_1_lut_2_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .Z(n1503)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1151_1_lut_2_lut.init = 16'h7777;
    LUT4 mux_302_Mux_25_i4_3_lut (.A(ADC_ADCLK_input_buff[3]), .B(ADC_ADCLK_input_buff[4]), 
         .C(Mux_sel_c_0), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_25_i4_3_lut.init = 16'hcaca;
    PFUMX i1569 (.BLUT(n1895), .ALUT(n1896), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_74));
    LUT4 mux_302_Mux_26_i4_3_lut (.A(ADC_LCLK_input_buff[3]), .B(ADC_LCLK_input_buff[4]), 
         .C(Mux_sel_c_0), .Z(n4_adj_231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_26_i4_3_lut.init = 16'hcaca;
    PFUMX i1572 (.BLUT(n1898), .ALUT(n1899), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_73));
    LUT4 i1593_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_231), .C(Mux_sel_c_1), 
         .D(ADC_LCLK_input_buff[0]), .Z(n1881)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1593_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i1575 (.BLUT(n1901), .ALUT(n1902), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_72));
    PFUMX i1548 (.BLUT(n1874), .ALUT(n1875), .C0(Mux_sel_c_2), .Z(ADC_ADCLK_out_N_81));
    LUT4 i1561_3_lut (.A(Mezz1_ADC_ch_input_diff[2]), .B(n2_adj_236), .C(Mux_sel_c_1), 
         .Z(n1889)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1561_3_lut.init = 16'hcaca;
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i1 (.D(DRS4_i_A_c_0), .CK(Mux_sel_c_0_derived_8), 
           .CD(n1503), .Q(Mezz5_DRS4_o_A_c_0));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i1 (.D(ADC_ch_out_sel_7__N_78), .CK(ADC_ch_out_sel_7__N_79), 
           .Q(ADC_ch_out_sel[0]));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(433[1] 493[13])
    defparam ADC_ch_out_sel_7__I_0_i1.GSR = "DISABLED";
    LUT4 i1558_3_lut (.A(Mezz1_ADC_ch_input_diff[1]), .B(n2_adj_234), .C(Mux_sel_c_1), 
         .Z(n1886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1558_3_lut.init = 16'hcaca;
    PFUMX i1551 (.BLUT(n1877), .ALUT(n1878), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_71));
    PFUMX i1554 (.BLUT(n1880), .ALUT(n1881), .C0(Mux_sel_c_2), .Z(ADC_LCLK_out_N_80));
    GSR GSR_INST (.GSR(n5));
    PFUMX i1557 (.BLUT(n1883), .ALUT(n1884), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_78));
    LUT4 i1587_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_237), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[2]), .Z(n1890)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1587_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1555_3_lut (.A(Mezz1_ADC_ch_input_diff[0]), .B(n2_adj_232), .C(Mux_sel_c_1), 
         .Z(n1883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1555_3_lut.init = 16'hcaca;
    LUT4 i1552_3_lut (.A(ADC_LCLK_input_buff[0]), .B(n2_adj_230), .C(Mux_sel_c_1), 
         .Z(n1880)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1552_3_lut.init = 16'hcaca;
    PFUMX i1560 (.BLUT(n1886), .ALUT(n1887), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_77));
    LUT4 i1589_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_235), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[1]), .Z(n1887)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1589_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i1563 (.BLUT(n1889), .ALUT(n1890), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_76));
    LUT4 i1549_3_lut (.A(Mezz1_ADC_ch_input_diff[7]), .B(n2_adj_246), .C(Mux_sel_c_1), 
         .Z(n1877)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1549_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_32_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[5]), .B(Mezz3_ADC_ch_input_diff[5]), 
         .C(Mux_sel_c_0), .Z(n2_adj_242)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_32_i2_3_lut.init = 16'hcaca;
    LUT4 i1546_3_lut (.A(ADC_ADCLK_input_buff[0]), .B(n2), .C(Mux_sel_c_1), 
         .Z(n1874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1546_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_33_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[6]), .B(Mezz3_ADC_ch_input_diff[6]), 
         .C(Mux_sel_c_0), .Z(n2_adj_244)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_33_i2_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_25_i2_3_lut (.A(ADC_ADCLK_input_buff[1]), .B(ADC_ADCLK_input_buff[2]), 
         .C(Mux_sel_c_0), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_25_i2_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_35_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[7]), .B(Mezz3_ADC_ch_input_diff[7]), 
         .C(Mux_sel_c_0), .Z(n2_adj_246)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_35_i2_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_26_i2_3_lut (.A(ADC_LCLK_input_buff[1]), .B(ADC_LCLK_input_buff[2]), 
         .C(Mux_sel_c_0), .Z(n2_adj_230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_26_i2_3_lut.init = 16'hcaca;
    LUT4 i582_2_lut (.A(SPI_data[9]), .B(SPI_data[10]), .Z(SPI_rdy_enable_43)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(345[3] 422[12])
    defparam i582_2_lut.init = 16'h8888;
    LUT4 mux_302_Mux_27_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[0]), .B(Mezz3_ADC_ch_input_diff[0]), 
         .C(Mux_sel_c_0), .Z(n2_adj_232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_27_i2_3_lut.init = 16'hcaca;
    LUT4 i1630_3_lut (.A(SPI_data[9]), .B(SPI_data[11]), .C(SPI_data[10]), 
         .Z(SPI_rdy_enable_44)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(345[3] 422[12])
    defparam i1630_3_lut.init = 16'h8484;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1696 (.Z(GND_net));
    LUT4 i1573_3_lut (.A(Mezz1_ADC_ch_input_diff[6]), .B(n2_adj_244), .C(Mux_sel_c_1), 
         .Z(n1901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1573_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_28_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[1]), .B(Mezz3_ADC_ch_input_diff[1]), 
         .C(Mux_sel_c_0), .Z(n2_adj_234)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_28_i2_3_lut.init = 16'hcaca;
    LUT4 mux_302_Mux_29_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[2]), .B(Mezz3_ADC_ch_input_diff[2]), 
         .C(Mux_sel_c_0), .Z(n2_adj_236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_29_i2_3_lut.init = 16'hcaca;
    LUT4 i1570_3_lut (.A(Mezz1_ADC_ch_input_diff[5]), .B(n2_adj_242), .C(Mux_sel_c_1), 
         .Z(n1898)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1570_3_lut.init = 16'hcaca;
    LUT4 i1591_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_233), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[0]), .Z(n1884)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1591_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i766_2_lut (.A(SPI_data[9]), .B(SPI_data[11]), .Z(SPI_rdy_enable_45)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(345[3] 422[12])
    defparam i766_2_lut.init = 16'h8888;
    LUT4 mux_302_Mux_29_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[2]), .B(Mezz5_ADC_ch_input_diff[2]), 
         .C(Mux_sel_c_0), .Z(n4_adj_237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam mux_302_Mux_29_i4_3_lut.init = 16'hcaca;
    LUT4 i1595_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_247), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[7]), .Z(n1878)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1595_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1599_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_245), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[6]), .Z(n1902)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1599_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1601_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_243), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[5]), .Z(n1899)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1601_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1567_3_lut (.A(Mezz1_ADC_ch_input_diff[4]), .B(n2_adj_240), .C(Mux_sel_c_1), 
         .Z(n1895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1567_3_lut.init = 16'hcaca;
    LUT4 i1603_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_241), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[4]), .Z(n1896)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1603_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1597_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4), .C(Mux_sel_c_1), 
         .D(ADC_ADCLK_input_buff[0]), .Z(n1875)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1597_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_2_lut_rep_28 (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .Z(Mux_sel_c_0_derived_7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_28.init = 16'h8888;
    LUT4 i1564_3_lut (.A(Mezz1_ADC_ch_input_diff[3]), .B(n2_adj_238), .C(Mux_sel_c_1), 
         .Z(n1892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1564_3_lut.init = 16'hcaca;
    LUT4 i1605_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_239), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[3]), .Z(n1893)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1605_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1_3_lut (.A(Mux_sel_c_1), .B(Mux_sel_c_2), .C(Mux_sel_c_0), 
         .Z(Mezz2_DRS4_o_A_3__N_20)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(435[2] 492[12])
    defparam i1_3_lut.init = 16'h8282;
    LUT4 i1161_1_lut (.A(DRS4_i_A_c_1), .Z(n1513)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    defparam i1161_1_lut.init = 16'h5555;
    LUT4 i1162_1_lut (.A(DRS4_i_A_c_2), .Z(n1514)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    defparam i1162_1_lut.init = 16'h5555;
    LUT4 i1163_1_lut (.A(DRS4_i_A_c_3), .Z(n1515)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    defparam i1163_1_lut.init = 16'h5555;
    LUT4 i607_3_lut (.A(SPI_data[9]), .B(SPI_data[10]), .C(SPI_data[11]), 
         .Z(SPI_rdy_enable_42)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(345[3] 422[12])
    defparam i607_3_lut.init = 16'h8484;
    LUT4 m1_lut (.Z(n2076)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    \SPI_som(12)  SPI (.SCLK_buff(SCLK_buff), .SPI_data({SPI_data}), .CSR_MISO_c(CSR_MISO_c), 
            .CSR_CS_CPLD_c(CSR_CS_CPLD_c), .n2076(n2076), .SPI_rdy(SPI_rdy), 
            .CSR_CS_SOM_c(CSR_CS_SOM_c), .n5(n5), .CSR_MOSI_c(CSR_MOSI_c));   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(191[6:13])
    VHI i1700 (.Z(VCC_net));
    
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
// Verilog Description of module \SPI_som(12) 
//

module \SPI_som(12)  (SCLK_buff, SPI_data, CSR_MISO_c, CSR_CS_CPLD_c, 
            n2076, SPI_rdy, CSR_CS_SOM_c, n5, CSR_MOSI_c);
    input SCLK_buff;
    output [11:0]SPI_data;
    output CSR_MISO_c;
    output CSR_CS_CPLD_c;
    input n2076;
    output SPI_rdy;
    input CSR_CS_SOM_c;
    output n5;
    input CSR_MOSI_c;
    
    wire SCLK_buff /* synthesis is_clock=1, SET_AS_NETWORK=SCLK_buff */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(169[8:17])
    wire SPI_rdy /* synthesis is_clock=1, SET_AS_NETWORK=SPI_rdy */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/top_cms_mux.vhd(171[8:15])
    wire [3:0]count_data;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(33[8:18])
    
    wire SCLK_buff_enable_55;
    wire [3:0]count_data_3__N_106;
    
    wire SCLK_buff_enable_63, n1516;
    wire [11:0]data_in;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(32[8:15])
    wire [3:0]count_data_cpld;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(34[8:23])
    
    wire SCLK_buff_enable_40, n1510;
    wire [3:0]n219;
    
    wire SCLK_buff_enable_41;
    wire [11:0]data_in_11__N_152;
    wire [1:0]SPI_states;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(38[8:18])
    
    wire SCLK_buff_enable_8, n2010;
    wire [11:0]data_cpld;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(42[8:17])
    
    wire SCLK_buff_enable_35;
    wire [11:0]data_cpld_11__N_130;
    
    wire SCLK_buff_enable_10, MISO_som_N_220, SCLK_buff_enable_11;
    wire [1:0]SPI_states_1__N_116;
    wire [1:0]SPI_states_ack;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(37[8:22])
    
    wire n4, n7, SCLK_buff_enable_24, n7_adj_229, n2007, SCLK_buff_enable_12, 
        SCLK_buff_enable_13;
    wire [1:0]SPI_states_ack_1__N_114;
    
    wire SCLK_buff_enable_15, n1508, n2009;
    wire [11:0]echo_word;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(41[8:17])
    
    wire SCLK_buff_enable_52, n1522, n1871, n1869, n2004, n1846;
    wire [11:0]data_cpld_11__N_208;
    
    wire n2015, n2005, n22, n17, n16;
    wire [11:0]n45;
    
    wire n746;
    
    FD1P3AX count_data_i0 (.D(count_data_3__N_106[0]), .SP(SCLK_buff_enable_55), 
            .CK(SCLK_buff), .Q(count_data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam count_data_i0.GSR = "ENABLED";
    FD1P3IX data_rec_i0_i3 (.D(data_in[3]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i3.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i2 (.D(data_in[2]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i2.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i0 (.D(data_in[0]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i0.GSR = "DISABLED";
    FD1P3IX count_data_cpld_i1 (.D(n219[1]), .SP(SCLK_buff_enable_40), .CD(n1510), 
            .CK(SCLK_buff), .Q(count_data_cpld[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam count_data_cpld_i1.GSR = "DISABLED";
    FD1P3AX data_in_i0_i0 (.D(data_in_11__N_152[0]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i0.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i1 (.D(data_in[1]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i1.GSR = "DISABLED";
    FD1P3AX SPI_states_i1 (.D(n2010), .SP(SCLK_buff_enable_8), .CK(SCLK_buff), 
            .Q(SPI_states[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam SPI_states_i1.GSR = "ENABLED";
    FD1P3AX data_cpld_i0 (.D(data_cpld_11__N_130[0]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i0.GSR = "DISABLED";
    FD1P3AX MISO_som_70 (.D(MISO_som_N_220), .SP(SCLK_buff_enable_10), .CK(SCLK_buff), 
            .Q(CSR_MISO_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam MISO_som_70.GSR = "DISABLED";
    FD1P3AX SPI_states_i0 (.D(SPI_states_1__N_116[0]), .SP(SCLK_buff_enable_11), 
            .CK(SCLK_buff), .Q(SPI_states[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam SPI_states_i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(SPI_states_ack[0]), .B(n4), .C(n7), .D(SPI_states_ack[1]), 
         .Z(SCLK_buff_enable_24)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hafee;
    LUT4 i1280_2_lut_rep_18 (.A(n7_adj_229), .B(SPI_states[0]), .Z(n2007)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1280_2_lut_rep_18.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[3]), 
         .Z(data_in_11__N_152[4])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut.init = 16'h2020;
    FD1P3AX CS_CPLD_68 (.D(SCLK_buff_enable_55), .SP(SCLK_buff_enable_12), 
            .CK(SCLK_buff), .Q(CSR_CS_CPLD_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam CS_CPLD_68.GSR = "DISABLED";
    FD1P3IX SPI_states_ack_i0 (.D(n2076), .SP(SCLK_buff_enable_13), .CD(SPI_states_ack[0]), 
            .CK(SCLK_buff), .Q(SPI_states_ack[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam SPI_states_ack_i0.GSR = "DISABLED";
    FD1P3IX count_data_cpld_i0 (.D(n219[0]), .SP(SCLK_buff_enable_40), .CD(n1510), 
            .CK(SCLK_buff), .Q(count_data_cpld[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam count_data_cpld_i0.GSR = "DISABLED";
    LUT4 i1149_2_lut (.A(SPI_states_ack[0]), .B(SPI_states_ack[1]), .Z(SPI_states_ack_1__N_114[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam i1149_2_lut.init = 16'h6666;
    FD1P3IX data_rdy_o_62 (.D(n2009), .SP(SCLK_buff_enable_15), .CD(n1508), 
            .CK(SCLK_buff), .Q(SPI_rdy)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rdy_o_62.GSR = "ENABLED";
    FD1P3IX echo_word_i0_i0 (.D(data_in[0]), .SP(SCLK_buff_enable_52), .CD(n1522), 
            .CK(SCLK_buff), .Q(echo_word[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i0.GSR = "DISABLED";
    FD1P3AX data_in_i0_i11 (.D(data_in_11__N_152[11]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i11.GSR = "DISABLED";
    LUT4 SPI_states_ack_1__I_0_75_Mux_1_i3_4_lut (.A(echo_word[1]), .B(data_cpld[0]), 
         .C(SPI_states_ack[1]), .D(n1871), .Z(data_cpld_11__N_130[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam SPI_states_ack_1__I_0_75_Mux_1_i3_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_3_lut_adj_5 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[2]), 
         .Z(data_in_11__N_152[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_5.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_6 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[1]), 
         .Z(data_in_11__N_152[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_6.init = 16'h2020;
    FD1P3AX data_in_i0_i10 (.D(data_in_11__N_152[10]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i10.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(echo_word[7]), .B(n1869), .Z(n1871)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_15_3_lut (.A(n7_adj_229), .B(SPI_states[0]), .C(SPI_states[1]), 
         .Z(n2004)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_15_3_lut.init = 16'h0808;
    LUT4 SPI_states_ack_1__I_0_75_Mux_2_i3_4_lut (.A(echo_word[2]), .B(data_cpld[1]), 
         .C(SPI_states_ack[1]), .D(n1846), .Z(data_cpld_11__N_130[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam SPI_states_ack_1__I_0_75_Mux_2_i3_4_lut.init = 16'hcacf;
    FD1P3AX data_in_i0_i9 (.D(data_in_11__N_152[9]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i9.GSR = "DISABLED";
    LUT4 SPI_states_ack_1__I_0_75_Mux_3_i3_3_lut (.A(data_cpld_11__N_208[3]), 
         .B(data_cpld[2]), .C(SPI_states_ack[1]), .Z(data_cpld_11__N_130[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam SPI_states_ack_1__I_0_75_Mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 i11_3_lut (.A(echo_word[4]), .B(data_cpld[3]), .C(SPI_states_ack[1]), 
         .Z(data_cpld_11__N_130[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam i11_3_lut.init = 16'hcaca;
    LUT4 i1150_4_lut_4_lut (.A(n7_adj_229), .B(SPI_states[0]), .C(n2015), 
         .D(SPI_states[1]), .Z(SCLK_buff_enable_11)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+(C+(D)))) */ ;
    defparam i1150_4_lut_4_lut.init = 16'hff74;
    LUT4 i11_3_lut_adj_7 (.A(echo_word[5]), .B(data_cpld[4]), .C(SPI_states_ack[1]), 
         .Z(data_cpld_11__N_130[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam i11_3_lut_adj_7.init = 16'hcaca;
    LUT4 i11_3_lut_adj_8 (.A(echo_word[6]), .B(data_cpld[5]), .C(SPI_states_ack[1]), 
         .Z(data_cpld_11__N_130[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam i11_3_lut_adj_8.init = 16'hcaca;
    LUT4 SPI_states_ack_1__I_0_75_Mux_7_i3_4_lut (.A(echo_word[7]), .B(data_cpld[6]), 
         .C(SPI_states_ack[1]), .D(n2005), .Z(data_cpld_11__N_130[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam SPI_states_ack_1__I_0_75_Mux_7_i3_4_lut.init = 16'hcac0;
    LUT4 i11_3_lut_adj_9 (.A(echo_word[8]), .B(data_cpld[7]), .C(SPI_states_ack[1]), 
         .Z(data_cpld_11__N_130[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam i11_3_lut_adj_9.init = 16'hcaca;
    LUT4 i11_3_lut_adj_10 (.A(echo_word[9]), .B(data_cpld[8]), .C(SPI_states_ack[1]), 
         .Z(data_cpld_11__N_130[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam i11_3_lut_adj_10.init = 16'hcaca;
    FD1P3AX data_in_i0_i8 (.D(data_in_11__N_152[8]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i8.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_11 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[0]), 
         .Z(data_in_11__N_152[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_11.init = 16'h2020;
    FD1P3IX count_data_cpld_i3 (.D(n219[3]), .SP(SCLK_buff_enable_40), .CD(n1510), 
            .CK(SCLK_buff), .Q(count_data_cpld[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam count_data_cpld_i3.GSR = "DISABLED";
    LUT4 SPI_states_ack_1__I_0_75_Mux_10_i3_4_lut (.A(echo_word[10]), .B(data_cpld[9]), 
         .C(SPI_states_ack[1]), .D(n1846), .Z(data_cpld_11__N_130[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam SPI_states_ack_1__I_0_75_Mux_10_i3_4_lut.init = 16'hcacf;
    LUT4 i1_3_lut_4_lut (.A(SPI_states[0]), .B(SPI_states[1]), .C(count_data[1]), 
         .D(count_data[0]), .Z(count_data_3__N_106[1])) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    FD1P3AX data_in_i0_i7 (.D(data_in_11__N_152[7]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i7.GSR = "DISABLED";
    FD1P3AX data_in_i0_i6 (.D(data_in_11__N_152[6]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i6.GSR = "DISABLED";
    LUT4 i915_3_lut_4_lut (.A(SPI_states[0]), .B(SPI_states[1]), .C(SPI_states_ack[1]), 
         .D(n7), .Z(SCLK_buff_enable_13)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(111[8:28])
    defparam i915_3_lut_4_lut.init = 16'h04f4;
    LUT4 i1_2_lut_rep_24 (.A(SPI_states[0]), .B(SPI_states[1]), .Z(SCLK_buff_enable_55)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_24.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(SPI_states[0]), .B(SPI_states[1]), .C(CSR_CS_SOM_c), 
         .Z(SCLK_buff_enable_41)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_12.init = 16'h0b0b;
    LUT4 i1621_3_lut (.A(SPI_states_ack[0]), .B(n7), .C(SPI_states_ack[1]), 
         .Z(n1510)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam i1621_3_lut.init = 16'h1515;
    FD1P3AX SPI_states_ack_i1 (.D(SPI_states_ack_1__N_114[1]), .SP(SCLK_buff_enable_24), 
            .CK(SCLK_buff), .Q(SPI_states_ack[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam SPI_states_ack_i1.GSR = "DISABLED";
    LUT4 i435_2_lut (.A(count_data_cpld[1]), .B(count_data_cpld[0]), .Z(n219[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(131[25:40])
    defparam i435_2_lut.init = 16'h6666;
    LUT4 i2_4_lut (.A(count_data_cpld[2]), .B(count_data_cpld[1]), .C(count_data_cpld[3]), 
         .D(count_data_cpld[0]), .Z(n7)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut.init = 16'hffdf;
    FD1P3AX data_cpld_i1 (.D(data_cpld_11__N_130[1]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i1.GSR = "DISABLED";
    FD1P3AX data_cpld_i2 (.D(data_cpld_11__N_130[2]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i2.GSR = "DISABLED";
    FD1P3AX data_cpld_i3 (.D(data_cpld_11__N_130[3]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i3.GSR = "DISABLED";
    FD1P3AX data_cpld_i4 (.D(data_cpld_11__N_130[4]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i4.GSR = "DISABLED";
    FD1P3AX data_cpld_i5 (.D(data_cpld_11__N_130[5]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i5.GSR = "DISABLED";
    FD1P3AX data_cpld_i6 (.D(data_cpld_11__N_130[6]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i6.GSR = "DISABLED";
    FD1P3AX data_cpld_i7 (.D(data_cpld_11__N_130[7]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i7.GSR = "DISABLED";
    FD1P3AX data_cpld_i8 (.D(data_cpld_11__N_130[8]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i8.GSR = "DISABLED";
    FD1P3AX data_cpld_i9 (.D(data_cpld_11__N_130[9]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i9.GSR = "DISABLED";
    FD1P3AX data_cpld_i10 (.D(data_cpld_11__N_130[10]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i10.GSR = "DISABLED";
    FD1P3AX data_cpld_i11 (.D(data_cpld_11__N_130[11]), .SP(SCLK_buff_enable_35), 
            .CK(SCLK_buff), .Q(data_cpld[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam data_cpld_i11.GSR = "DISABLED";
    LUT4 i26_4_lut (.A(n22), .B(n7_adj_229), .C(SPI_states[0]), .D(SPI_states[1]), 
         .Z(SCLK_buff_enable_8)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i26_4_lut.init = 16'hfa3a;
    LUT4 SPI_states_ack_1__I_0_75_Mux_11_i3_3_lut (.A(data_cpld_11__N_208[11]), 
         .B(data_cpld[10]), .C(SPI_states_ack[1]), .Z(data_cpld_11__N_130[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam SPI_states_ack_1__I_0_75_Mux_11_i3_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_13 (.A(count_data[1]), .B(count_data[0]), .C(count_data[3]), 
         .D(count_data[2]), .Z(n7_adj_229)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_4_lut_adj_13.init = 16'hff7f;
    LUT4 SPI_states_ack_1__I_0_75_Mux_0_i3_4_lut (.A(echo_word[0]), .B(data_cpld[11]), 
         .C(SPI_states_ack[1]), .D(n1846), .Z(data_cpld_11__N_130[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(107[3] 138[12])
    defparam SPI_states_ack_1__I_0_75_Mux_0_i3_4_lut.init = 16'hcacf;
    LUT4 i9_4_lut (.A(n17), .B(echo_word[4]), .C(n16), .D(echo_word[2]), 
         .Z(n1869)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(118[8:27])
    defparam i9_4_lut.init = 16'hfffb;
    LUT4 i7_4_lut (.A(echo_word[8]), .B(echo_word[6]), .C(echo_word[9]), 
         .D(data_cpld_11__N_208[11]), .Z(n17)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(118[8:27])
    defparam i7_4_lut.init = 16'hfff7;
    LUT4 i6_4_lut (.A(data_cpld_11__N_208[3]), .B(echo_word[0]), .C(echo_word[10]), 
         .D(echo_word[5]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(118[8:27])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1624_2_lut (.A(SPI_states[0]), .B(SPI_states[1]), .Z(SPI_states_1__N_116[0])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1624_2_lut.init = 16'h1111;
    LUT4 i7_1_lut (.A(CSR_CS_SOM_c), .Z(n5)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(65[8:20])
    defparam i7_1_lut.init = 16'h5555;
    LUT4 i1311_3_lut_4_lut_4_lut (.A(SPI_states_ack[0]), .B(data_cpld[11]), 
         .C(SPI_states_ack[1]), .D(n7), .Z(MISO_som_N_220)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam i1311_3_lut_4_lut_4_lut.init = 16'h4f0f;
    LUT4 i1_3_lut_rep_17_4_lut (.A(SPI_states[1]), .B(CSR_CS_SOM_c), .C(SPI_states[0]), 
         .D(CSR_MOSI_c), .Z(SCLK_buff_enable_63)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam i1_3_lut_rep_17_4_lut.init = 16'h2022;
    FD1P3AX data_in_i0_i5 (.D(data_in_11__N_152[5]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i5.GSR = "DISABLED";
    FD1P3AX data_in_i0_i4 (.D(data_in_11__N_152[4]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i4.GSR = "DISABLED";
    FD1P3AX data_in_i0_i3 (.D(data_in_11__N_152[3]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i3.GSR = "DISABLED";
    FD1P3AX data_in_i0_i2 (.D(data_in_11__N_152[2]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i2.GSR = "DISABLED";
    FD1P3IX count_data_cpld_i2 (.D(n219[2]), .SP(SCLK_buff_enable_40), .CD(n1510), 
            .CK(SCLK_buff), .Q(count_data_cpld[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam count_data_cpld_i2.GSR = "DISABLED";
    FD1P3AX data_in_i0_i1 (.D(data_in_11__N_152[1]), .SP(SCLK_buff_enable_41), 
            .CK(SCLK_buff), .Q(data_in[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_in_i0_i1.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i11 (.D(data_in[11]), .SP(SCLK_buff_enable_52), 
            .CD(n1522), .CK(SCLK_buff), .Q(data_cpld_11__N_208[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i11.GSR = "DISABLED";
    LUT4 i470_1_lut_rep_20 (.A(SPI_states[0]), .Z(n2009)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i470_1_lut_rep_20.init = 16'h5555;
    FD1P3IX echo_word_i0_i10 (.D(data_in[10]), .SP(SCLK_buff_enable_52), 
            .CD(n1522), .CK(SCLK_buff), .Q(echo_word[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i10.GSR = "DISABLED";
    LUT4 i1156_2_lut_3_lut_3_lut (.A(SPI_states[0]), .B(SPI_states[1]), 
         .C(n7_adj_229), .Z(n1508)) /* synthesis lut_function=(!(A (B+!(C))+!A (B))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1156_2_lut_3_lut_3_lut.init = 16'h3131;
    FD1P3IX echo_word_i0_i9 (.D(data_in[9]), .SP(SCLK_buff_enable_52), .CD(n1522), 
            .CK(SCLK_buff), .Q(echo_word[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i9.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i8 (.D(n45[8]), .SP(SCLK_buff_enable_52), .CD(n1516), 
            .CK(SCLK_buff), .Q(echo_word[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i8.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i7 (.D(n45[7]), .SP(SCLK_buff_enable_52), .CD(n1516), 
            .CK(SCLK_buff), .Q(echo_word[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i7.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i6 (.D(n45[6]), .SP(SCLK_buff_enable_52), .CD(n1516), 
            .CK(SCLK_buff), .Q(echo_word[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i6.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i5 (.D(data_in[5]), .SP(SCLK_buff_enable_52), .CD(n1522), 
            .CK(SCLK_buff), .Q(echo_word[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i5.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i4 (.D(n45[4]), .SP(SCLK_buff_enable_52), .CD(n1516), 
            .CK(SCLK_buff), .Q(echo_word[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i4.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_14 (.A(SPI_states[1]), .B(n2007), .C(n746), 
         .D(count_data[2]), .Z(count_data_3__N_106[2])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_3_lut_4_lut_adj_14.init = 16'h0440;
    FD1P3IX echo_word_i0_i3 (.D(data_in[3]), .SP(SCLK_buff_enable_52), .CD(n1522), 
            .CK(SCLK_buff), .Q(data_cpld_11__N_208[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i3.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_3_lut (.A(SPI_states[0]), .B(SPI_states[1]), .C(n7_adj_229), 
         .Z(SCLK_buff_enable_15)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hfdfd;
    FD1P3IX echo_word_i0_i2 (.D(data_in[2]), .SP(SCLK_buff_enable_52), .CD(n1522), 
            .CK(SCLK_buff), .Q(echo_word[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i2.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i1 (.D(n45[1]), .SP(SCLK_buff_enable_52), .CD(n1516), 
            .CK(SCLK_buff), .Q(echo_word[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam echo_word_i0_i1.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_4_lut_3_lut (.A(SPI_states_ack[0]), .B(n7), .C(SPI_states_ack[1]), 
         .Z(SCLK_buff_enable_35)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam i1_3_lut_4_lut_4_lut_3_lut.init = 16'h4a4a;
    LUT4 i1_2_lut_rep_16 (.A(echo_word[1]), .B(n1869), .Z(n2005)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(118[8:27])
    defparam i1_2_lut_rep_16.init = 16'hdddd;
    LUT4 i1_2_lut_2_lut (.A(SPI_states[0]), .B(SPI_states[1]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_15 (.A(echo_word[1]), .B(n1869), .C(echo_word[7]), 
         .Z(n1846)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(118[8:27])
    defparam i1_2_lut_3_lut_adj_15.init = 16'hdfdf;
    LUT4 i1_2_lut_rep_21 (.A(SPI_states[0]), .B(SPI_states[1]), .Z(n2010)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_rep_21.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_16 (.A(SPI_states[0]), .B(SPI_states[1]), .C(count_data[0]), 
         .Z(count_data_3__N_106[0])) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_16.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_adj_17 (.A(SPI_states[0]), .B(SPI_states[1]), .C(CSR_MOSI_c), 
         .Z(data_in_11__N_152[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_17.init = 16'h2020;
    LUT4 i449_3_lut_4_lut (.A(count_data_cpld[1]), .B(count_data_cpld[0]), 
         .C(count_data_cpld[2]), .D(count_data_cpld[3]), .Z(n219[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(131[25:40])
    defparam i449_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_3_lut_adj_18 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[10]), 
         .Z(data_in_11__N_152[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_18.init = 16'h2020;
    LUT4 i442_2_lut_3_lut (.A(count_data_cpld[1]), .B(count_data_cpld[0]), 
         .C(count_data_cpld[2]), .Z(n219[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(131[25:40])
    defparam i442_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut_adj_19 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[9]), 
         .Z(data_in_11__N_152[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_19.init = 16'h2020;
    LUT4 i1292_2_lut (.A(data_in[8]), .B(CSR_MOSI_c), .Z(n45[8])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(85[5] 91[12])
    defparam i1292_2_lut.init = 16'heeee;
    FD1P3AX count_data_i3 (.D(count_data_3__N_106[3]), .SP(SCLK_buff_enable_55), 
            .CK(SCLK_buff), .Q(count_data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam count_data_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_20 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[8]), 
         .Z(data_in_11__N_152[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_20.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_21 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[7]), 
         .Z(data_in_11__N_152[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_21.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_22 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[6]), 
         .Z(data_in_11__N_152[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_22.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[5]), 
         .Z(data_in_11__N_152[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_23.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[4]), 
         .Z(data_in_11__N_152[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_2_lut_3_lut_adj_24.init = 16'h2020;
    LUT4 i1291_2_lut (.A(data_in[7]), .B(CSR_MOSI_c), .Z(n45[7])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(85[5] 91[12])
    defparam i1291_2_lut.init = 16'heeee;
    LUT4 i1290_2_lut (.A(data_in[6]), .B(CSR_MOSI_c), .Z(n45[6])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(85[5] 91[12])
    defparam i1290_2_lut.init = 16'heeee;
    LUT4 i1289_2_lut (.A(data_in[4]), .B(CSR_MOSI_c), .Z(n45[4])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(85[5] 91[12])
    defparam i1289_2_lut.init = 16'heeee;
    LUT4 i1288_2_lut (.A(data_in[1]), .B(CSR_MOSI_c), .Z(n45[1])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(85[5] 91[12])
    defparam i1288_2_lut.init = 16'heeee;
    LUT4 i433_1_lut (.A(count_data_cpld[0]), .Z(n219[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(131[25:40])
    defparam i433_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_25 (.A(count_data[3]), .B(n2004), .C(count_data[2]), 
         .D(n746), .Z(count_data_3__N_106[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(58[3] 94[12])
    defparam i1_4_lut_adj_25.init = 16'h4888;
    LUT4 i408_2_lut (.A(count_data[1]), .B(count_data[0]), .Z(n746)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(71[19:29])
    defparam i408_2_lut.init = 16'h8888;
    LUT4 i1178_3_lut_4_lut (.A(SPI_states[1]), .B(CSR_CS_SOM_c), .C(SPI_states[0]), 
         .D(CSR_MOSI_c), .Z(n1522)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam i1178_3_lut_4_lut.init = 16'h2220;
    LUT4 i1_2_lut_rep_25 (.A(SPI_states_ack[0]), .B(SPI_states_ack[1]), 
         .Z(SCLK_buff_enable_10)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_25.init = 16'heeee;
    LUT4 i628_2_lut_rep_19 (.A(SPI_states[1]), .B(CSR_CS_SOM_c), .Z(SCLK_buff_enable_52)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam i628_2_lut_rep_19.init = 16'h2222;
    FD1P3AX count_data_i2 (.D(count_data_3__N_106[2]), .SP(SCLK_buff_enable_55), 
            .CK(SCLK_buff), .Q(count_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam count_data_i2.GSR = "ENABLED";
    FD1P3AX count_data_i1 (.D(count_data_3__N_106[1]), .SP(SCLK_buff_enable_55), 
            .CK(SCLK_buff), .Q(count_data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam count_data_i1.GSR = "ENABLED";
    LUT4 i1160_1_lut_2_lut (.A(SPI_states_ack[0]), .B(SPI_states_ack[1]), 
         .Z(SCLK_buff_enable_12)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1160_1_lut_2_lut.init = 16'h1111;
    LUT4 i315_2_lut_rep_26 (.A(CSR_MOSI_c), .B(CSR_CS_SOM_c), .Z(n2015)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(65[5] 69[12])
    defparam i315_2_lut_rep_26.init = 16'h2222;
    LUT4 i27_3_lut_4_lut (.A(CSR_MOSI_c), .B(CSR_CS_SOM_c), .C(SPI_states[1]), 
         .D(SPI_rdy), .Z(n22)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(65[5] 69[12])
    defparam i27_3_lut_4_lut.init = 16'hf202;
    LUT4 i652_1_lut_rep_27 (.A(SPI_states_ack[0]), .Z(SCLK_buff_enable_40)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(106[2] 139[9])
    defparam i652_1_lut_rep_27.init = 16'h5555;
    LUT4 i1194_2_lut_2_lut_3_lut (.A(SPI_states[1]), .B(CSR_CS_SOM_c), .C(SPI_states[0]), 
         .Z(n1516)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam i1194_2_lut_2_lut_3_lut.init = 16'h2020;
    FD1P3IX data_rec_i0_i11 (.D(data_in[11]), .SP(SCLK_buff_enable_63), 
            .CD(n1516), .CK(SCLK_buff), .Q(SPI_data[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i11.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i10 (.D(data_in[10]), .SP(SCLK_buff_enable_63), 
            .CD(n1516), .CK(SCLK_buff), .Q(SPI_data[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i10.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i9 (.D(data_in[9]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i9.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i8 (.D(data_in[8]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i8.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i7 (.D(data_in[7]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i7.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i6 (.D(data_in[6]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i6.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i5 (.D(data_in[5]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i5.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i4 (.D(data_in[4]), .SP(SCLK_buff_enable_63), .CD(n1516), 
            .CK(SCLK_buff), .Q(SPI_data[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=191, LSE_RLINE=191 */ ;   // c:/users/victo/desktop/lattice_proj/cms_mux_io/spi_som.vhd(51[1] 96[8])
    defparam data_rec_i0_i4.GSR = "DISABLED";
    
endmodule
