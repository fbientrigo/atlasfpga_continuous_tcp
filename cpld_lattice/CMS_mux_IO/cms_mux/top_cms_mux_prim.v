// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Oct 30 12:58:14 2024
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
            Mezz4_DRS4_o_A, Mezz5_DRS4_o_A, DRS4_i_A, DRS4_i_SRIN, o_Mezz_DRS4_o_denable, 
            o_Mezz_DRS4_o_SRIN, o_Mezz_DAC_sel0, o_Mezz_DAC_sel1, o_Mezz_ADC_nCS, 
            o_Mezz_DAC_nReset, o_Mezz_ADC_nReset, o_Mezz_nSHDN, o_Mezz_tcal_en, 
            o_Mezz_Mux_gain_0, o_Mezz_Mux_gain_1, CSR_MOSI, CSR_MISO, 
            CSR_SCLK_P, CSR_SCLK_N, CSR_CS_SOM, CSR_CS_CPLD, top_stdby, 
            top_rst, top_heartbeat, P3_monitor, P6_monitor, E14_monitor, 
            E15_monitor, F16_monitor, rst, Mux_sel);   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(15[8:19])
    input [7:0]Mezz1_ADC_ch_i_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(27[3:19])
    input [7:0]Mezz1_ADC_ch_i_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(28[3:19])
    input [7:0]Mezz2_ADC_ch_i_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(30[3:19])
    input [7:0]Mezz2_ADC_ch_i_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(31[3:19])
    input [7:0]Mezz3_ADC_ch_i_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(33[3:19])
    input [7:0]Mezz3_ADC_ch_i_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(34[3:19])
    input [7:0]Mezz4_ADC_ch_i_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(36[3:19])
    input [7:0]Mezz4_ADC_ch_i_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(37[3:19])
    input [7:0]Mezz5_ADC_ch_i_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(39[3:19])
    input [7:0]Mezz5_ADC_ch_i_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(40[3:19])
    input [4:0]Mezz_ADC_LCLK_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(43[3:18])
    input [4:0]Mezz_ADC_LCLK_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(44[3:18])
    input [4:0]Mezz_ADC_ADCLK_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(46[3:19])
    input [4:0]Mezz_ADC_ADCLK_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(47[3:19])
    output [4:0]o_Mezz_Mux0;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(49[3:14])
    output [4:0]o_Mezz_Mux1;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    output [7:0]CPLD_ADC_ch_o_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(53[3:18])
    output [7:0]CPLD_ADC_ch_o_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(54[3:18])
    output CPLD_ADC_LCLK_o_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(56[3:20])
    output CPLD_ADC_LCLK_o_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(57[3:20])
    output CPLD_ADC_ADCLK_o_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(59[3:21])
    output CPLD_ADC_ADCLK_o_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(60[3:21])
    output [4:0]Mezz_DRS4_o_refclk_p;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(63[3:23])
    output [4:0]Mezz_DRS4_o_refclk_n;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(64[3:23])
    input DRS4_i_refclk_p /* synthesis black_box_pad_pin=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(66[3:18])
    input DRS4_i_refclk_n /* synthesis black_box_pad_pin=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(67[3:18])
    output [3:0]Mezz1_DRS4_o_A;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(69[3:17])
    output [3:0]Mezz2_DRS4_o_A;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    output [3:0]Mezz3_DRS4_o_A;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    output [3:0]Mezz4_DRS4_o_A;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    output [3:0]Mezz5_DRS4_o_A;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    input [3:0]DRS4_i_A;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    input DRS4_i_SRIN;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(77[3:14])
    output [4:0]o_Mezz_DRS4_o_denable;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(79[3:24])
    output [4:0]o_Mezz_DRS4_o_SRIN;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(80[3:21])
    output [4:0]o_Mezz_DAC_sel0;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(84[3:18])
    output [4:0]o_Mezz_DAC_sel1;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(85[3:18])
    output [4:0]o_Mezz_ADC_nCS;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    output [4:0]o_Mezz_DAC_nReset;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(87[3:20])
    output [4:0]o_Mezz_ADC_nReset;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(88[3:20])
    output [4:0]o_Mezz_nSHDN;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(89[3:15])
    output [4:0]o_Mezz_tcal_en;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(90[3:17])
    output [4:0]o_Mezz_Mux_gain_0;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(91[3:20])
    output [4:0]o_Mezz_Mux_gain_1;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(92[3:20])
    input CSR_MOSI;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(96[3:11])
    output CSR_MISO;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(97[3:11])
    input CSR_SCLK_P /* synthesis black_box_pad_pin=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(98[3:13])
    input CSR_SCLK_N /* synthesis black_box_pad_pin=1 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(99[3:13])
    input CSR_CS_SOM;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(100[3:13])
    output CSR_CS_CPLD;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(101[3:14])
    input top_stdby;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(105[3:12])
    input top_rst;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(106[3:10])
    output top_heartbeat;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(107[3:16])
    output P3_monitor;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(115[3:13])
    output P6_monitor;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(116[9:19])
    output E14_monitor;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(117[9:20])
    output E15_monitor;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(118[9:20])
    output F16_monitor;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(119[3:14])
    input rst;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(121[3:6])
    input [2:0]Mux_sel;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(122[3:10])
    
    wire SCLK_buff /* synthesis is_clock=1, SET_AS_NETWORK=SCLK_buff */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(191[8:17])
    wire SPI_rdy /* synthesis is_clock=1, SET_AS_NETWORK=SPI_rdy */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(193[8:15])
    wire ADC_ch_out_sel_7__N_94 /* synthesis is_clock=1, SET_AS_NETWORK=ADC_ch_out_sel_7__N_94 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(139[8:22])
    
    wire n2180, o_Mezz_Mux0_c_4, o_Mezz_Mux0_c_3, o_Mezz_Mux0_c_2, o_Mezz_Mux0_c_1, 
        o_Mezz_Mux0_c_0, o_Mezz_Mux1_c_4, o_Mezz_Mux1_c_3, o_Mezz_Mux1_c_2, 
        o_Mezz_Mux1_c_1, o_Mezz_Mux1_c_0, Mezz1_DRS4_o_A_c_3, Mezz1_DRS4_o_A_c_2, 
        Mezz1_DRS4_o_A_c_1, Mezz1_DRS4_o_A_c_0, Mezz2_DRS4_o_A_c_3, Mezz2_DRS4_o_A_c_2, 
        Mezz2_DRS4_o_A_c_1, Mezz2_DRS4_o_A_c_0, Mezz3_DRS4_o_A_c_3, Mezz3_DRS4_o_A_c_2, 
        Mezz3_DRS4_o_A_c_1, Mezz3_DRS4_o_A_c_0, Mezz4_DRS4_o_A_c_3, Mezz4_DRS4_o_A_c_2, 
        Mezz4_DRS4_o_A_c_1, Mezz4_DRS4_o_A_c_0, Mezz5_DRS4_o_A_c_3, Mezz5_DRS4_o_A_c_2, 
        Mezz5_DRS4_o_A_c_1, Mezz5_DRS4_o_A_c_0, E14_monitor_c_3_c, P6_monitor_c_2_c, 
        E15_monitor_c_1_c, P3_monitor_c_0_c, DRS4_i_SRIN_c, o_Mezz_DRS4_o_denable_c_4, 
        o_Mezz_DRS4_o_denable_c_3, o_Mezz_DRS4_o_denable_c_2, o_Mezz_DRS4_o_denable_c_1, 
        o_Mezz_DRS4_o_denable_c_0, o_Mezz_DRS4_o_SRIN_c_4, o_Mezz_DRS4_o_SRIN_c_3, 
        o_Mezz_DRS4_o_SRIN_c_2, o_Mezz_DRS4_o_SRIN_c_1, o_Mezz_DRS4_o_SRIN_c_0, 
        o_Mezz_DAC_sel0_c_4, o_Mezz_DAC_sel0_c_3, o_Mezz_DAC_sel0_c_2, 
        o_Mezz_DAC_sel0_c_1, o_Mezz_DAC_sel0_c_0, o_Mezz_DAC_sel1_c_4, 
        o_Mezz_DAC_sel1_c_3, o_Mezz_DAC_sel1_c_2, o_Mezz_DAC_sel1_c_1, 
        o_Mezz_DAC_sel1_c_0, o_Mezz_ADC_nCS_c_4, o_Mezz_ADC_nCS_c_3, o_Mezz_ADC_nCS_c_2, 
        o_Mezz_ADC_nCS_c_1, o_Mezz_ADC_nCS_c_0, o_Mezz_ADC_nReset_c, o_Mezz_ADC_nReset_0, 
        o_Mezz_ADC_nReset_1, o_Mezz_ADC_nReset_2, o_Mezz_ADC_nReset_3, 
        o_Mezz_nSHDN_c_4, o_Mezz_nSHDN_c_3, o_Mezz_nSHDN_c_2, o_Mezz_nSHDN_c_1, 
        o_Mezz_nSHDN_c_0, o_Mezz_tcal_en_c_4, o_Mezz_tcal_en_c_3, o_Mezz_tcal_en_c_2, 
        o_Mezz_tcal_en_c_1, o_Mezz_tcal_en_c_0, o_Mezz_Mux_gain_0_c_4, 
        o_Mezz_Mux_gain_0_c_3, o_Mezz_Mux_gain_0_c_2, o_Mezz_Mux_gain_0_c_1, 
        o_Mezz_Mux_gain_0_c_0, o_Mezz_Mux_gain_1_c_4, o_Mezz_Mux_gain_1_c_3, 
        o_Mezz_Mux_gain_1_c_2, o_Mezz_Mux_gain_1_c_1, o_Mezz_Mux_gain_1_c_0, 
        CSR_MOSI_c, CSR_MISO_c, CSR_CS_SOM_c, CSR_CS_CPLD_c, top_stdby_c, 
        top_rst_c, top_heartbeat_c, F16_monitor_c, Mux_sel_c_2, Mux_sel_c_1, 
        Mux_sel_c_0;
    wire [7:0]Mezz1_ADC_ch_input_diff;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(131[8:31])
    wire [7:0]Mezz2_ADC_ch_input_diff;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(132[8:31])
    wire [7:0]Mezz3_ADC_ch_input_diff;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(133[8:31])
    wire [7:0]Mezz4_ADC_ch_input_diff;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(134[8:31])
    wire [7:0]Mezz5_ADC_ch_input_diff;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(135[8:31])
    wire [4:0]ADC_LCLK_input_buff;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(136[8:27])
    wire [4:0]ADC_ADCLK_input_buff;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(137[8:28])
    wire [7:0]ADC_ch_out_sel;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(139[8:22])
    
    wire ADC_LCLK_out, ADC_ADCLK_out, DRS4_refclk_input_buff;
    wire [13:0]SPI_data;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(192[8:16])
    
    wire ADC_ch_out_sel_7__N_86, ADC_ch_out_sel_7__N_87, ADC_ch_out_sel_7__N_88, 
        ADC_ch_out_sel_7__N_89, ADC_ch_out_sel_7__N_90, ADC_ch_out_sel_7__N_91, 
        ADC_ch_out_sel_7__N_92, ADC_ch_out_sel_7__N_93, ADC_LCLK_out_N_95, 
        ADC_ADCLK_out_N_96, Mezz1_DRS4_o_A_3__N_15, Mezz2_DRS4_o_A_3__N_20, 
        Mezz4_DRS4_o_A_3__N_30, n6, n2187, n2186, Mux_sel_c_0_derived_9, 
        VCC_net, SPI_rdy_enable_11, SPI_rdy_enable_55, n2184, SPI_rdy_enable_53, 
        n2183, n2208, n2, n4, n2_adj_268, n4_adj_269, n2_adj_270, 
        n4_adj_271, n2_adj_272, n4_adj_273, n2_adj_274, n4_adj_275, 
        n2_adj_276, n4_adj_277, n2_adj_278, n4_adj_279, n2_adj_280, 
        n4_adj_281, n2_adj_282, n4_adj_283, n2_adj_284, n4_adj_285, 
        n1768, n1767, n1766, n2207, n1757, n1756, n1754, n2205, 
        GND_net, n2204, n2202, n2201, n2199, n2198, n2196, n2195, 
        n2193, n2192, n2190, n2181, n2189, Mux_sel_c_0_derived_10, 
        n2334, n1293, SPI_rdy_enable_52, SPI_rdy_enable_54, n2410, 
        n2329;
    
    LUT4 i1798_3_lut (.A(ADC_LCLK_input_buff[0]), .B(n2_adj_268), .C(Mux_sel_c_1), 
         .Z(n2183)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1798_3_lut.init = 16'hcaca;
    ILVDS \Mezz1_ADC_ch_i_0..ADC_buff1  (.A(Mezz1_ADC_ch_i_p[0]), .AN(Mezz1_ADC_ch_i_n[0]), 
          .Z(Mezz1_ADC_ch_input_diff[0])) /* synthesis syn_instantiated=1 */ ;
    FD1P3AX Mezz_nSHDN_i1 (.D(SPI_data[1]), .SP(SPI_rdy_enable_11), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_nSHDN_i1.GSR = "DISABLED";
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
    FD1P3AX Mezz_DAC_sel0_i1 (.D(SPI_data[2]), .SP(SPI_rdy_enable_11), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel0_i1.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i1 (.D(SPI_data[3]), .SP(SPI_rdy_enable_11), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel1_i1.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i1 (.D(SPI_data[4]), .SP(SPI_rdy_enable_11), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_nReset_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_DAC_nReset_i1.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i1 (.D(SPI_data[5]), .SP(SPI_rdy_enable_11), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_tcal_en_i1.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i1 (.D(SPI_data[6]), .SP(SPI_rdy_enable_11), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux0_i1.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i1 (.D(SPI_data[7]), .SP(SPI_rdy_enable_11), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux1_i1.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i1 (.D(SPI_data[8]), .SP(SPI_rdy_enable_11), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_nCS_i1.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_0_i1 (.D(SPI_data[9]), .SP(SPI_rdy_enable_11), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_0_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_0_i1.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_1_i1 (.D(SPI_data[10]), .SP(SPI_rdy_enable_11), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_1_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_1_i1.GSR = "DISABLED";
    FD1S1A ADC_LCLK_out_I_0 (.D(ADC_LCLK_out_N_95), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_LCLK_out));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_LCLK_out_I_0.GSR = "DISABLED";
    LUT4 i1854_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4), .C(Mux_sel_c_1), 
         .D(ADC_ADCLK_input_buff[0]), .Z(n2181)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1854_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i1 (.D(P3_monitor_c_0_c), .CK(Mux_sel_c_0_derived_9), 
           .CD(n2334), .Q(Mezz3_DRS4_o_A_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1A ADC_ADCLK_out_I_0 (.D(ADC_ADCLK_out_N_96), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ADCLK_out));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ADCLK_out_I_0.GSR = "DISABLED";
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i1 (.D(P3_monitor_c_0_c), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1293), .Q(Mezz4_DRS4_o_A_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i1 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1756), .Q(Mezz1_DRS4_o_A_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1I o_Mezz_DRS4_o_SRIN_4__I_0 (.D(DRS4_i_SRIN_c), .CK(Mux_sel_c_0_derived_10), 
           .CD(n1754), .Q(o_Mezz_DRS4_o_SRIN_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam o_Mezz_DRS4_o_SRIN_4__I_0.GSR = "DISABLED";
    LUT4 i1795_3_lut (.A(ADC_ADCLK_input_buff[0]), .B(n2), .C(Mux_sel_c_1), 
         .Z(n2180)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1795_3_lut.init = 16'hcaca;
    LUT4 i1842_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_281), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[5]), .Z(n2202)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1842_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1S1I o_Mezz_DRS4_o_SRIN_3__I_0 (.D(DRS4_i_SRIN_c), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1293), .Q(o_Mezz_DRS4_o_SRIN_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam o_Mezz_DRS4_o_SRIN_3__I_0.GSR = "DISABLED";
    FD1S1I o_Mezz_DRS4_o_SRIN_2__I_0 (.D(DRS4_i_SRIN_c), .CK(Mux_sel_c_0_derived_9), 
           .CD(n2334), .Q(o_Mezz_DRS4_o_SRIN_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam o_Mezz_DRS4_o_SRIN_2__I_0.GSR = "DISABLED";
    FD1S1I o_Mezz_DRS4_o_SRIN_1__I_0 (.D(DRS4_i_SRIN_c), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n2329), .Q(o_Mezz_DRS4_o_SRIN_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam o_Mezz_DRS4_o_SRIN_1__I_0.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i1 (.D(SPI_data[0]), .SP(SPI_rdy_enable_11), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DRS4_o_denable_i1.GSR = "DISABLED";
    LUT4 mux_351_Mux_30_i2_3_lut (.A(ADC_ADCLK_input_buff[1]), .B(ADC_ADCLK_input_buff[2]), 
         .C(Mux_sel_c_0), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_30_i2_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_37_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[5]), .B(Mezz5_ADC_ch_input_diff[5]), 
         .C(Mux_sel_c_0), .Z(n4_adj_281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_37_i4_3_lut.init = 16'hcaca;
    LUT4 i1844_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_279), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[4]), .Z(n2199)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1844_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1846_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_277), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[3]), .Z(n2196)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1846_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1848_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_275), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[2]), .Z(n2193)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1848_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1850_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_273), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[1]), .Z(n2190)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1850_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1852_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_271), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[0]), .Z(n2187)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1852_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i1838_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_285), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[7]), .Z(n2208)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1838_3_lut_4_lut_4_lut.init = 16'h5c0c;
    ILVDS SCLK_clk (.A(CSR_SCLK_P), .AN(CSR_SCLK_N), .Z(SCLK_buff)) /* synthesis syn_instantiated=1 */ ;
    LUT4 i1822_3_lut (.A(Mezz1_ADC_ch_input_diff[7]), .B(n2_adj_284), .C(Mux_sel_c_1), 
         .Z(n2207)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1822_3_lut.init = 16'hcaca;
    LUT4 i1489_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .C(Mux_sel_c_1), 
         .Z(Mezz4_DRS4_o_A_3__N_30)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1489_3_lut.init = 16'h8484;
    LUT4 i1836_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_269), .C(Mux_sel_c_1), 
         .D(ADC_LCLK_input_buff[0]), .Z(n2184)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1836_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 mux_351_Mux_36_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[4]), .B(Mezz5_ADC_ch_input_diff[4]), 
         .C(Mux_sel_c_0), .Z(n4_adj_279)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_36_i4_3_lut.init = 16'hcaca;
    PFUMX i1803 (.BLUT(n2186), .ALUT(n2187), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_93));
    FD1S1A ADC_ch_out_sel_7__I_0_i2 (.D(ADC_ch_out_sel_7__N_92), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ch_out_sel[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ch_out_sel_7__I_0_i2.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i3 (.D(ADC_ch_out_sel_7__N_91), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ch_out_sel[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ch_out_sel_7__I_0_i3.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i4 (.D(ADC_ch_out_sel_7__N_90), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ch_out_sel[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ch_out_sel_7__I_0_i4.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i5 (.D(ADC_ch_out_sel_7__N_89), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ch_out_sel[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ch_out_sel_7__I_0_i5.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i6 (.D(ADC_ch_out_sel_7__N_88), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ch_out_sel[5]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ch_out_sel_7__I_0_i6.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i7 (.D(ADC_ch_out_sel_7__N_87), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ch_out_sel[6]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ch_out_sel_7__I_0_i7.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i8 (.D(ADC_ch_out_sel_7__N_86), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ch_out_sel[7]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ch_out_sel_7__I_0_i8.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i2 (.D(E15_monitor_c_1_c), .CK(Mux_sel_c_0_derived_10), 
           .CD(n1754), .Q(Mezz5_DRS4_o_A_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i3 (.D(P6_monitor_c_2_c), .CK(Mux_sel_c_0_derived_10), 
           .CD(n1754), .Q(Mezz5_DRS4_o_A_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i4 (.D(E14_monitor_c_3_c), .CK(Mux_sel_c_0_derived_10), 
           .CD(n1754), .Q(Mezz5_DRS4_o_A_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i2 (.D(E15_monitor_c_1_c), .CK(Mux_sel_c_0_derived_9), 
           .CD(n2334), .Q(Mezz3_DRS4_o_A_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i3 (.D(P6_monitor_c_2_c), .CK(Mux_sel_c_0_derived_9), 
           .CD(n2334), .Q(Mezz3_DRS4_o_A_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz3_DRS4_o_A_3__I_0_i4 (.D(E14_monitor_c_3_c), .CK(Mux_sel_c_0_derived_9), 
           .CD(n2334), .Q(Mezz3_DRS4_o_A_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz3_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i2 (.D(E15_monitor_c_1_c), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1293), .Q(Mezz4_DRS4_o_A_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i3 (.D(P6_monitor_c_2_c), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1293), .Q(Mezz4_DRS4_o_A_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz4_DRS4_o_A_3__I_0_i4 (.D(E14_monitor_c_3_c), .CK(Mezz4_DRS4_o_A_3__N_30), 
           .CD(n1293), .Q(Mezz4_DRS4_o_A_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz4_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i2 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1766), .Q(Mezz1_DRS4_o_A_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i3 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1767), .Q(Mezz1_DRS4_o_A_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz1_DRS4_o_A_3__I_0_i4 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1768), .Q(Mezz1_DRS4_o_A_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz1_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    LUT4 m1_lut (.Z(n2410)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 i1840_3_lut_4_lut_4_lut (.A(Mux_sel_c_0), .B(n4_adj_283), .C(Mux_sel_c_1), 
         .D(Mezz1_ADC_ch_input_diff[6]), .Z(n2205)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1840_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1P3AX Mezz_nSHDN_i2 (.D(SPI_data[1]), .SP(SPI_rdy_enable_52), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_nSHDN_i2.GSR = "DISABLED";
    LUT4 i895_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .C(Mux_sel_c_1), 
         .Z(n1293)) /* synthesis lut_function=(!(A (B (C))+!A !((C)+!B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i895_3_lut.init = 16'h7b7b;
    OB o_Mezz_Mux0_pad_4 (.I(o_Mezz_Mux0_c_4), .O(o_Mezz_Mux0[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(49[3:14])
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i4 (.D(Mezz2_DRS4_o_A_3__N_20), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n1768), .Q(Mezz2_DRS4_o_A_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i4.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i3 (.D(Mezz2_DRS4_o_A_3__N_20), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n1767), .Q(Mezz2_DRS4_o_A_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i3.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i2 (.D(Mezz2_DRS4_o_A_3__N_20), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n1766), .Q(Mezz2_DRS4_o_A_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i2.GSR = "DISABLED";
    LUT4 i1819_3_lut (.A(Mezz1_ADC_ch_input_diff[6]), .B(n2_adj_282), .C(Mux_sel_c_1), 
         .Z(n2204)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1819_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_35_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[3]), .B(Mezz5_ADC_ch_input_diff[3]), 
         .C(Mux_sel_c_0), .Z(n4_adj_277)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_35_i4_3_lut.init = 16'hcaca;
    LUT4 i1816_3_lut (.A(Mezz1_ADC_ch_input_diff[5]), .B(n2_adj_280), .C(Mux_sel_c_1), 
         .Z(n2201)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1816_3_lut.init = 16'hcaca;
    LUT4 i781_3_lut (.A(SPI_data[11]), .B(SPI_data[12]), .C(SPI_data[13]), 
         .Z(SPI_rdy_enable_52)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(406[3] 497[12])
    defparam i781_3_lut.init = 16'h8484;
    VHI i1943 (.Z(VCC_net));
    OB o_Mezz_Mux0_pad_3 (.I(o_Mezz_Mux0_c_3), .O(o_Mezz_Mux0[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(49[3:14])
    OB o_Mezz_Mux0_pad_2 (.I(o_Mezz_Mux0_c_2), .O(o_Mezz_Mux0[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(49[3:14])
    OB o_Mezz_Mux0_pad_1 (.I(o_Mezz_Mux0_c_1), .O(o_Mezz_Mux0[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(49[3:14])
    OB o_Mezz_Mux0_pad_0 (.I(o_Mezz_Mux0_c_0), .O(o_Mezz_Mux0[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(49[3:14])
    OB o_Mezz_Mux1_pad_4 (.I(o_Mezz_Mux1_c_4), .O(o_Mezz_Mux1[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB o_Mezz_Mux1_pad_3 (.I(o_Mezz_Mux1_c_3), .O(o_Mezz_Mux1[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB o_Mezz_Mux1_pad_2 (.I(o_Mezz_Mux1_c_2), .O(o_Mezz_Mux1[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB o_Mezz_Mux1_pad_1 (.I(o_Mezz_Mux1_c_1), .O(o_Mezz_Mux1[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB o_Mezz_Mux1_pad_0 (.I(o_Mezz_Mux1_c_0), .O(o_Mezz_Mux1[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(50[3:14])
    OB Mezz1_DRS4_o_A_pad_3 (.I(Mezz1_DRS4_o_A_c_3), .O(Mezz1_DRS4_o_A[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(69[3:17])
    OB Mezz1_DRS4_o_A_pad_2 (.I(Mezz1_DRS4_o_A_c_2), .O(Mezz1_DRS4_o_A[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(69[3:17])
    OB Mezz1_DRS4_o_A_pad_1 (.I(Mezz1_DRS4_o_A_c_1), .O(Mezz1_DRS4_o_A[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(69[3:17])
    OB Mezz1_DRS4_o_A_pad_0 (.I(Mezz1_DRS4_o_A_c_0), .O(Mezz1_DRS4_o_A[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(69[3:17])
    OB Mezz2_DRS4_o_A_pad_3 (.I(Mezz2_DRS4_o_A_c_3), .O(Mezz2_DRS4_o_A[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    OB Mezz2_DRS4_o_A_pad_2 (.I(Mezz2_DRS4_o_A_c_2), .O(Mezz2_DRS4_o_A[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    OB Mezz2_DRS4_o_A_pad_1 (.I(Mezz2_DRS4_o_A_c_1), .O(Mezz2_DRS4_o_A[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    OB Mezz2_DRS4_o_A_pad_0 (.I(Mezz2_DRS4_o_A_c_0), .O(Mezz2_DRS4_o_A[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(70[3:17])
    OB Mezz3_DRS4_o_A_pad_3 (.I(Mezz3_DRS4_o_A_c_3), .O(Mezz3_DRS4_o_A[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    OB Mezz3_DRS4_o_A_pad_2 (.I(Mezz3_DRS4_o_A_c_2), .O(Mezz3_DRS4_o_A[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    OB Mezz3_DRS4_o_A_pad_1 (.I(Mezz3_DRS4_o_A_c_1), .O(Mezz3_DRS4_o_A[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    OB Mezz3_DRS4_o_A_pad_0 (.I(Mezz3_DRS4_o_A_c_0), .O(Mezz3_DRS4_o_A[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(71[3:17])
    OB Mezz4_DRS4_o_A_pad_3 (.I(Mezz4_DRS4_o_A_c_3), .O(Mezz4_DRS4_o_A[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    OB Mezz4_DRS4_o_A_pad_2 (.I(Mezz4_DRS4_o_A_c_2), .O(Mezz4_DRS4_o_A[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    OB Mezz4_DRS4_o_A_pad_1 (.I(Mezz4_DRS4_o_A_c_1), .O(Mezz4_DRS4_o_A[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    OB Mezz4_DRS4_o_A_pad_0 (.I(Mezz4_DRS4_o_A_c_0), .O(Mezz4_DRS4_o_A[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(72[3:17])
    OB Mezz5_DRS4_o_A_pad_3 (.I(Mezz5_DRS4_o_A_c_3), .O(Mezz5_DRS4_o_A[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    OB Mezz5_DRS4_o_A_pad_2 (.I(Mezz5_DRS4_o_A_c_2), .O(Mezz5_DRS4_o_A[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    OB Mezz5_DRS4_o_A_pad_1 (.I(Mezz5_DRS4_o_A_c_1), .O(Mezz5_DRS4_o_A[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    OB Mezz5_DRS4_o_A_pad_0 (.I(Mezz5_DRS4_o_A_c_0), .O(Mezz5_DRS4_o_A[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(73[3:17])
    OB o_Mezz_DRS4_o_denable_pad_4 (.I(o_Mezz_DRS4_o_denable_c_4), .O(o_Mezz_DRS4_o_denable[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(79[3:24])
    OB o_Mezz_DRS4_o_denable_pad_3 (.I(o_Mezz_DRS4_o_denable_c_3), .O(o_Mezz_DRS4_o_denable[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(79[3:24])
    OB o_Mezz_DRS4_o_denable_pad_2 (.I(o_Mezz_DRS4_o_denable_c_2), .O(o_Mezz_DRS4_o_denable[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(79[3:24])
    OB o_Mezz_DRS4_o_denable_pad_1 (.I(o_Mezz_DRS4_o_denable_c_1), .O(o_Mezz_DRS4_o_denable[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(79[3:24])
    OB o_Mezz_DRS4_o_denable_pad_0 (.I(o_Mezz_DRS4_o_denable_c_0), .O(o_Mezz_DRS4_o_denable[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(79[3:24])
    OB o_Mezz_DRS4_o_SRIN_pad_4 (.I(o_Mezz_DRS4_o_SRIN_c_4), .O(o_Mezz_DRS4_o_SRIN[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(80[3:21])
    OB o_Mezz_DRS4_o_SRIN_pad_3 (.I(o_Mezz_DRS4_o_SRIN_c_3), .O(o_Mezz_DRS4_o_SRIN[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(80[3:21])
    OB o_Mezz_DRS4_o_SRIN_pad_2 (.I(o_Mezz_DRS4_o_SRIN_c_2), .O(o_Mezz_DRS4_o_SRIN[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(80[3:21])
    OB o_Mezz_DRS4_o_SRIN_pad_1 (.I(o_Mezz_DRS4_o_SRIN_c_1), .O(o_Mezz_DRS4_o_SRIN[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(80[3:21])
    OB o_Mezz_DRS4_o_SRIN_pad_0 (.I(o_Mezz_DRS4_o_SRIN_c_0), .O(o_Mezz_DRS4_o_SRIN[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(80[3:21])
    OB o_Mezz_DAC_sel0_pad_4 (.I(o_Mezz_DAC_sel0_c_4), .O(o_Mezz_DAC_sel0[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(84[3:18])
    OB o_Mezz_DAC_sel0_pad_3 (.I(o_Mezz_DAC_sel0_c_3), .O(o_Mezz_DAC_sel0[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(84[3:18])
    OB o_Mezz_DAC_sel0_pad_2 (.I(o_Mezz_DAC_sel0_c_2), .O(o_Mezz_DAC_sel0[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(84[3:18])
    OB o_Mezz_DAC_sel0_pad_1 (.I(o_Mezz_DAC_sel0_c_1), .O(o_Mezz_DAC_sel0[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(84[3:18])
    OB o_Mezz_DAC_sel0_pad_0 (.I(o_Mezz_DAC_sel0_c_0), .O(o_Mezz_DAC_sel0[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(84[3:18])
    OB o_Mezz_DAC_sel1_pad_4 (.I(o_Mezz_DAC_sel1_c_4), .O(o_Mezz_DAC_sel1[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(85[3:18])
    OB o_Mezz_DAC_sel1_pad_3 (.I(o_Mezz_DAC_sel1_c_3), .O(o_Mezz_DAC_sel1[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(85[3:18])
    OB o_Mezz_DAC_sel1_pad_2 (.I(o_Mezz_DAC_sel1_c_2), .O(o_Mezz_DAC_sel1[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(85[3:18])
    OB o_Mezz_DAC_sel1_pad_1 (.I(o_Mezz_DAC_sel1_c_1), .O(o_Mezz_DAC_sel1[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(85[3:18])
    OB o_Mezz_DAC_sel1_pad_0 (.I(o_Mezz_DAC_sel1_c_0), .O(o_Mezz_DAC_sel1[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(85[3:18])
    OB o_Mezz_ADC_nCS_pad_4 (.I(o_Mezz_ADC_nCS_c_4), .O(o_Mezz_ADC_nCS[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_ADC_nCS_pad_3 (.I(o_Mezz_ADC_nCS_c_3), .O(o_Mezz_ADC_nCS[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_ADC_nCS_pad_2 (.I(o_Mezz_ADC_nCS_c_2), .O(o_Mezz_ADC_nCS[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_ADC_nCS_pad_1 (.I(o_Mezz_ADC_nCS_c_1), .O(o_Mezz_ADC_nCS[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_ADC_nCS_pad_0 (.I(o_Mezz_ADC_nCS_c_0), .O(o_Mezz_ADC_nCS[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(86[3:17])
    OB o_Mezz_DAC_nReset_pad_4 (.I(o_Mezz_ADC_nReset_c), .O(o_Mezz_DAC_nReset[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(87[3:20])
    OB o_Mezz_DAC_nReset_pad_3 (.I(o_Mezz_ADC_nReset_0), .O(o_Mezz_DAC_nReset[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(87[3:20])
    OB o_Mezz_DAC_nReset_pad_2 (.I(o_Mezz_ADC_nReset_1), .O(o_Mezz_DAC_nReset[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(87[3:20])
    OB o_Mezz_DAC_nReset_pad_1 (.I(o_Mezz_ADC_nReset_2), .O(o_Mezz_DAC_nReset[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(87[3:20])
    OB o_Mezz_DAC_nReset_pad_0 (.I(o_Mezz_ADC_nReset_3), .O(o_Mezz_DAC_nReset[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(87[3:20])
    OB o_Mezz_ADC_nReset_pad_4 (.I(o_Mezz_ADC_nReset_c), .O(o_Mezz_ADC_nReset[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(88[3:20])
    OB o_Mezz_ADC_nReset_pad_3 (.I(o_Mezz_ADC_nReset_0), .O(o_Mezz_ADC_nReset[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(88[3:20])
    OB o_Mezz_ADC_nReset_pad_2 (.I(o_Mezz_ADC_nReset_1), .O(o_Mezz_ADC_nReset[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(88[3:20])
    OB o_Mezz_ADC_nReset_pad_1 (.I(o_Mezz_ADC_nReset_2), .O(o_Mezz_ADC_nReset[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(88[3:20])
    OB o_Mezz_ADC_nReset_pad_0 (.I(o_Mezz_ADC_nReset_3), .O(o_Mezz_ADC_nReset[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(88[3:20])
    OB o_Mezz_nSHDN_pad_4 (.I(o_Mezz_nSHDN_c_4), .O(o_Mezz_nSHDN[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(89[3:15])
    OB o_Mezz_nSHDN_pad_3 (.I(o_Mezz_nSHDN_c_3), .O(o_Mezz_nSHDN[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(89[3:15])
    OB o_Mezz_nSHDN_pad_2 (.I(o_Mezz_nSHDN_c_2), .O(o_Mezz_nSHDN[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(89[3:15])
    OB o_Mezz_nSHDN_pad_1 (.I(o_Mezz_nSHDN_c_1), .O(o_Mezz_nSHDN[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(89[3:15])
    OB o_Mezz_nSHDN_pad_0 (.I(o_Mezz_nSHDN_c_0), .O(o_Mezz_nSHDN[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(89[3:15])
    OB o_Mezz_tcal_en_pad_4 (.I(o_Mezz_tcal_en_c_4), .O(o_Mezz_tcal_en[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(90[3:17])
    OB o_Mezz_tcal_en_pad_3 (.I(o_Mezz_tcal_en_c_3), .O(o_Mezz_tcal_en[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(90[3:17])
    OB o_Mezz_tcal_en_pad_2 (.I(o_Mezz_tcal_en_c_2), .O(o_Mezz_tcal_en[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(90[3:17])
    OB o_Mezz_tcal_en_pad_1 (.I(o_Mezz_tcal_en_c_1), .O(o_Mezz_tcal_en[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(90[3:17])
    OB o_Mezz_tcal_en_pad_0 (.I(o_Mezz_tcal_en_c_0), .O(o_Mezz_tcal_en[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(90[3:17])
    OB o_Mezz_Mux_gain_0_pad_4 (.I(o_Mezz_Mux_gain_0_c_4), .O(o_Mezz_Mux_gain_0[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(91[3:20])
    OB o_Mezz_Mux_gain_0_pad_3 (.I(o_Mezz_Mux_gain_0_c_3), .O(o_Mezz_Mux_gain_0[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(91[3:20])
    OB o_Mezz_Mux_gain_0_pad_2 (.I(o_Mezz_Mux_gain_0_c_2), .O(o_Mezz_Mux_gain_0[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(91[3:20])
    OB o_Mezz_Mux_gain_0_pad_1 (.I(o_Mezz_Mux_gain_0_c_1), .O(o_Mezz_Mux_gain_0[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(91[3:20])
    OB o_Mezz_Mux_gain_0_pad_0 (.I(o_Mezz_Mux_gain_0_c_0), .O(o_Mezz_Mux_gain_0[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(91[3:20])
    OB o_Mezz_Mux_gain_1_pad_4 (.I(o_Mezz_Mux_gain_1_c_4), .O(o_Mezz_Mux_gain_1[4]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(92[3:20])
    OB o_Mezz_Mux_gain_1_pad_3 (.I(o_Mezz_Mux_gain_1_c_3), .O(o_Mezz_Mux_gain_1[3]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(92[3:20])
    OB o_Mezz_Mux_gain_1_pad_2 (.I(o_Mezz_Mux_gain_1_c_2), .O(o_Mezz_Mux_gain_1[2]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(92[3:20])
    OB o_Mezz_Mux_gain_1_pad_1 (.I(o_Mezz_Mux_gain_1_c_1), .O(o_Mezz_Mux_gain_1[1]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(92[3:20])
    OB o_Mezz_Mux_gain_1_pad_0 (.I(o_Mezz_Mux_gain_1_c_0), .O(o_Mezz_Mux_gain_1[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(92[3:20])
    OB CSR_MISO_pad (.I(CSR_MISO_c), .O(CSR_MISO));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(97[3:11])
    OB CSR_CS_CPLD_pad (.I(CSR_CS_CPLD_c), .O(CSR_CS_CPLD));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(101[3:14])
    OB top_heartbeat_pad (.I(top_heartbeat_c), .O(top_heartbeat));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(107[3:16])
    OB P3_monitor_pad (.I(P3_monitor_c_0_c), .O(P3_monitor));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(115[3:13])
    OB P6_monitor_pad (.I(P6_monitor_c_2_c), .O(P6_monitor));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(116[9:19])
    OB E14_monitor_pad (.I(E14_monitor_c_3_c), .O(E14_monitor));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(117[9:20])
    OB E15_monitor_pad (.I(E15_monitor_c_1_c), .O(E15_monitor));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(118[9:20])
    OB F16_monitor_pad (.I(F16_monitor_c), .O(F16_monitor));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(119[3:14])
    IB E14_monitor_c_3_pad (.I(DRS4_i_A[3]), .O(E14_monitor_c_3_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    IB P6_monitor_c_2_pad (.I(DRS4_i_A[2]), .O(P6_monitor_c_2_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    IB E15_monitor_c_1_pad (.I(DRS4_i_A[1]), .O(E15_monitor_c_1_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    IB P3_monitor_c_0_pad (.I(DRS4_i_A[0]), .O(P3_monitor_c_0_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    IB DRS4_i_SRIN_pad (.I(DRS4_i_SRIN), .O(DRS4_i_SRIN_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(77[3:14])
    IB CSR_MOSI_pad (.I(CSR_MOSI), .O(CSR_MOSI_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(96[3:11])
    IB CSR_CS_SOM_pad (.I(CSR_CS_SOM), .O(CSR_CS_SOM_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(100[3:13])
    IB top_stdby_pad (.I(top_stdby), .O(top_stdby_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(105[3:12])
    IB top_rst_pad (.I(top_rst), .O(top_rst_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(106[3:10])
    IB Mux_sel_pad_2 (.I(Mux_sel[2]), .O(Mux_sel_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(122[3:10])
    IB Mux_sel_pad_1 (.I(Mux_sel[1]), .O(Mux_sel_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(122[3:10])
    IB Mux_sel_pad_0 (.I(Mux_sel[0]), .O(Mux_sel_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(122[3:10])
    FD1P3AX Mezz_nSHDN_i3 (.D(SPI_data[1]), .SP(SPI_rdy_enable_53), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_nSHDN_i3.GSR = "DISABLED";
    FD1P3AX Mezz_nSHDN_i4 (.D(SPI_data[1]), .SP(SPI_rdy_enable_54), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_nSHDN_i4.GSR = "DISABLED";
    FD1P3AX Mezz_nSHDN_i5 (.D(SPI_data[1]), .SP(SPI_rdy_enable_55), .CK(SPI_rdy), 
            .Q(o_Mezz_nSHDN_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_nSHDN_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i2 (.D(SPI_data[2]), .SP(SPI_rdy_enable_52), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel0_i2.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i3 (.D(SPI_data[2]), .SP(SPI_rdy_enable_53), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel0_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i4 (.D(SPI_data[2]), .SP(SPI_rdy_enable_54), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel0_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel0_i5 (.D(SPI_data[2]), .SP(SPI_rdy_enable_55), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel0_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel0_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i2 (.D(SPI_data[3]), .SP(SPI_rdy_enable_52), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel1_i2.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i3 (.D(SPI_data[3]), .SP(SPI_rdy_enable_53), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel1_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i4 (.D(SPI_data[3]), .SP(SPI_rdy_enable_54), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel1_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DAC_sel1_i5 (.D(SPI_data[3]), .SP(SPI_rdy_enable_55), .CK(SPI_rdy), 
            .Q(o_Mezz_DAC_sel1_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DAC_sel1_i5.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i2 (.D(SPI_data[4]), .SP(SPI_rdy_enable_52), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_nReset_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_DAC_nReset_i2.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i3 (.D(SPI_data[4]), .SP(SPI_rdy_enable_53), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_nReset_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_DAC_nReset_i3.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i4 (.D(SPI_data[4]), .SP(SPI_rdy_enable_54), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_nReset_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_DAC_nReset_i4.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_DAC_nReset_i5 (.D(SPI_data[4]), .SP(SPI_rdy_enable_55), 
            .CK(SPI_rdy), .Q(o_Mezz_ADC_nReset_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_DAC_nReset_i5.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i2 (.D(SPI_data[5]), .SP(SPI_rdy_enable_52), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_tcal_en_i2.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i3 (.D(SPI_data[5]), .SP(SPI_rdy_enable_53), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_tcal_en_i3.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i4 (.D(SPI_data[5]), .SP(SPI_rdy_enable_54), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_tcal_en_i4.GSR = "DISABLED";
    FD1P3AX Mezz_tcal_en_i5 (.D(SPI_data[5]), .SP(SPI_rdy_enable_55), .CK(SPI_rdy), 
            .Q(o_Mezz_tcal_en_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_tcal_en_i5.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i2 (.D(SPI_data[6]), .SP(SPI_rdy_enable_52), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux0_i2.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i3 (.D(SPI_data[6]), .SP(SPI_rdy_enable_53), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux0_i3.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i4 (.D(SPI_data[6]), .SP(SPI_rdy_enable_54), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux0_i4.GSR = "DISABLED";
    FD1P3AX Mezz_Mux0_i5 (.D(SPI_data[6]), .SP(SPI_rdy_enable_55), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux0_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux0_i5.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i2 (.D(SPI_data[7]), .SP(SPI_rdy_enable_52), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux1_i2.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i3 (.D(SPI_data[7]), .SP(SPI_rdy_enable_53), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux1_i3.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i4 (.D(SPI_data[7]), .SP(SPI_rdy_enable_54), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux1_i4.GSR = "DISABLED";
    FD1P3AX Mezz_Mux1_i5 (.D(SPI_data[7]), .SP(SPI_rdy_enable_55), .CK(SPI_rdy), 
            .Q(o_Mezz_Mux1_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux1_i5.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i2 (.D(SPI_data[8]), .SP(SPI_rdy_enable_52), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_nCS_i2.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i3 (.D(SPI_data[8]), .SP(SPI_rdy_enable_53), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_nCS_i3.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i4 (.D(SPI_data[8]), .SP(SPI_rdy_enable_54), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_nCS_i4.GSR = "DISABLED";
    FD1P3AX Mezz_ADC_nCS_i5 (.D(SPI_data[8]), .SP(SPI_rdy_enable_55), .CK(SPI_rdy), 
            .Q(o_Mezz_ADC_nCS_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_ADC_nCS_i5.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_0_i2 (.D(SPI_data[9]), .SP(SPI_rdy_enable_52), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_0_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_0_i2.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_0_i3 (.D(SPI_data[9]), .SP(SPI_rdy_enable_53), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_0_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_0_i3.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_0_i4 (.D(SPI_data[9]), .SP(SPI_rdy_enable_54), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_0_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_0_i4.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_0_i5 (.D(SPI_data[9]), .SP(SPI_rdy_enable_55), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_0_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_0_i5.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_1_i2 (.D(SPI_data[10]), .SP(SPI_rdy_enable_52), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_1_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_1_i2.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_1_i3 (.D(SPI_data[10]), .SP(SPI_rdy_enable_53), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_1_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_1_i3.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_1_i4 (.D(SPI_data[10]), .SP(SPI_rdy_enable_54), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_1_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_1_i4.GSR = "DISABLED";
    FD1P3AX Mezz_Mux_gain_1_i5 (.D(SPI_data[10]), .SP(SPI_rdy_enable_55), 
            .CK(SPI_rdy), .Q(o_Mezz_Mux_gain_1_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_Mux_gain_1_i5.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i2 (.D(SPI_data[0]), .SP(SPI_rdy_enable_52), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_1));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DRS4_o_denable_i2.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i3 (.D(SPI_data[0]), .SP(SPI_rdy_enable_53), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_2));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DRS4_o_denable_i3.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i4 (.D(SPI_data[0]), .SP(SPI_rdy_enable_54), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_3));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DRS4_o_denable_i4.GSR = "DISABLED";
    FD1P3AX Mezz_DRS4_o_denable_i5 (.D(SPI_data[0]), .SP(SPI_rdy_enable_55), 
            .CK(SPI_rdy), .Q(o_Mezz_DRS4_o_denable_c_4));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(405[2] 499[9])
    defparam Mezz_DRS4_o_denable_i5.GSR = "DISABLED";
    PFUMX i1806 (.BLUT(n2189), .ALUT(n2190), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_92));
    FD1S1I o_Mezz_DRS4_o_SRIN_0__I_0 (.D(Mezz1_DRS4_o_A_3__N_15), .CK(Mezz1_DRS4_o_A_3__N_15), 
           .CD(n1757), .Q(o_Mezz_DRS4_o_SRIN_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam o_Mezz_DRS4_o_SRIN_0__I_0.GSR = "DISABLED";
    FD1S1I Mezz2_DRS4_o_A_3__I_0_i1 (.D(Mezz2_DRS4_o_A_3__N_20), .CK(Mezz2_DRS4_o_A_3__N_20), 
           .CD(n1756), .Q(Mezz2_DRS4_o_A_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz2_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1I Mezz5_DRS4_o_A_3__I_0_i1 (.D(P3_monitor_c_0_c), .CK(Mux_sel_c_0_derived_10), 
           .CD(n1754), .Q(Mezz5_DRS4_o_A_c_0));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam Mezz5_DRS4_o_A_3__I_0_i1.GSR = "DISABLED";
    FD1S1A ADC_ch_out_sel_7__I_0_i1 (.D(ADC_ch_out_sel_7__N_93), .CK(ADC_ch_out_sel_7__N_94), 
           .Q(ADC_ch_out_sel[0]));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(511[1] 581[13])
    defparam ADC_ch_out_sel_7__I_0_i1.GSR = "DISABLED";
    GSR GSR_INST (.GSR(n6));
    LUT4 mux_351_Mux_35_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[3]), .B(Mezz3_ADC_ch_input_diff[3]), 
         .C(Mux_sel_c_0), .Z(n2_adj_276)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_35_i2_3_lut.init = 16'hcaca;
    PFUMX i1809 (.BLUT(n2192), .ALUT(n2193), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_91));
    PFUMX i1812 (.BLUT(n2195), .ALUT(n2196), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_90));
    PFUMX i1815 (.BLUT(n2198), .ALUT(n2199), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_89));
    LUT4 i867_2_lut (.A(SPI_data[11]), .B(SPI_data[12]), .Z(SPI_rdy_enable_53)) /* synthesis lut_function=(A (B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(406[3] 497[12])
    defparam i867_2_lut.init = 16'h8888;
    LUT4 i1870_3_lut (.A(SPI_data[11]), .B(SPI_data[13]), .C(SPI_data[12]), 
         .Z(SPI_rdy_enable_54)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(406[3] 497[12])
    defparam i1870_3_lut.init = 16'h8484;
    LUT4 i878_2_lut (.A(SPI_data[11]), .B(SPI_data[13]), .Z(SPI_rdy_enable_55)) /* synthesis lut_function=(A (B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(406[3] 497[12])
    defparam i878_2_lut.init = 16'h8888;
    LUT4 mux_351_Mux_32_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[0]), .B(Mezz3_ADC_ch_input_diff[0]), 
         .C(Mux_sel_c_0), .Z(n2_adj_270)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_32_i2_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_33_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[1]), .B(Mezz3_ADC_ch_input_diff[1]), 
         .C(Mux_sel_c_0), .Z(n2_adj_272)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_33_i2_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_36_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[4]), .B(Mezz3_ADC_ch_input_diff[4]), 
         .C(Mux_sel_c_0), .Z(n2_adj_278)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_36_i2_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_37_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[5]), .B(Mezz3_ADC_ch_input_diff[5]), 
         .C(Mux_sel_c_0), .Z(n2_adj_280)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_37_i2_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_34_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[2]), .B(Mezz5_ADC_ch_input_diff[2]), 
         .C(Mux_sel_c_0), .Z(n4_adj_275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_34_i4_3_lut.init = 16'hcaca;
    heartbeat h_beat (.top_heartbeat_c(top_heartbeat_c), .top_rst_c(top_rst_c), 
            .top_stdby_c(top_stdby_c));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(260[8:17])
    LUT4 i1813_3_lut (.A(Mezz1_ADC_ch_input_diff[4]), .B(n2_adj_278), .C(Mux_sel_c_1), 
         .Z(n2198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1813_3_lut.init = 16'hcaca;
    LUT4 i1810_3_lut (.A(Mezz1_ADC_ch_input_diff[3]), .B(n2_adj_276), .C(Mux_sel_c_1), 
         .Z(n2195)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1810_3_lut.init = 16'hcaca;
    LUT4 i1347_1_lut (.A(P3_monitor_c_0_c), .Z(n1756)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    defparam i1347_1_lut.init = 16'h5555;
    LUT4 mux_351_Mux_38_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[6]), .B(Mezz3_ADC_ch_input_diff[6]), 
         .C(Mux_sel_c_0), .Z(n2_adj_282)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_38_i2_3_lut.init = 16'hcaca;
    PFUMX i1818 (.BLUT(n2201), .ALUT(n2202), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_88));
    VLO i1942 (.Z(GND_net));
    LUT4 i1070_3_lut (.A(SPI_data[11]), .B(SPI_data[12]), .C(SPI_data[13]), 
         .Z(SPI_rdy_enable_11)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(406[3] 497[12])
    defparam i1070_3_lut.init = 16'h8282;
    PFUMX i1821 (.BLUT(n2204), .ALUT(n2205), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_87));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 mux_351_Mux_40_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[7]), .B(Mezz3_ADC_ch_input_diff[7]), 
         .C(Mux_sel_c_0), .Z(n2_adj_284)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_40_i2_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_31_i2_3_lut (.A(ADC_LCLK_input_buff[1]), .B(ADC_LCLK_input_buff[2]), 
         .C(Mux_sel_c_0), .Z(n2_adj_268)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_31_i2_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_33_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[1]), .B(Mezz5_ADC_ch_input_diff[1]), 
         .C(Mux_sel_c_0), .Z(n4_adj_273)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_33_i4_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_38_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[6]), .B(Mezz5_ADC_ch_input_diff[6]), 
         .C(Mux_sel_c_0), .Z(n4_adj_283)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_38_i4_3_lut.init = 16'hcaca;
    LUT4 i1807_3_lut (.A(Mezz1_ADC_ch_input_diff[2]), .B(n2_adj_274), .C(Mux_sel_c_1), 
         .Z(n2192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1807_3_lut.init = 16'hcaca;
    PFUMX i1824 (.BLUT(n2207), .ALUT(n2208), .C0(Mux_sel_c_2), .Z(ADC_ch_out_sel_7__N_86));
    LUT4 mux_351_Mux_31_i4_3_lut (.A(ADC_LCLK_input_buff[3]), .B(ADC_LCLK_input_buff[4]), 
         .C(Mux_sel_c_0), .Z(n4_adj_269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_31_i4_3_lut.init = 16'hcaca;
    LUT4 i1804_3_lut (.A(Mezz1_ADC_ch_input_diff[1]), .B(n2_adj_272), .C(Mux_sel_c_1), 
         .Z(n2189)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1804_3_lut.init = 16'hcaca;
    \SPI_som(14)  SPI (.SCLK_buff(SCLK_buff), .CSR_MISO_c(CSR_MISO_c), .CSR_MOSI_c(CSR_MOSI_c), 
            .SPI_data({SPI_data}), .CSR_CS_CPLD_c(CSR_CS_CPLD_c), .n2410(n2410), 
            .SPI_rdy(SPI_rdy), .F16_monitor_c(F16_monitor_c), .CSR_CS_SOM_c(CSR_CS_SOM_c), 
            .n6(n6));   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(234[6:13])
    LUT4 i1357_1_lut (.A(E15_monitor_c_1_c), .Z(n1766)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    defparam i1357_1_lut.init = 16'h5555;
    LUT4 i1541_2_lut_rep_42 (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .Z(Mux_sel_c_0_derived_9)) /* synthesis lut_function=(A (B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1541_2_lut_rep_42.init = 16'h8888;
    LUT4 i1358_1_lut (.A(P6_monitor_c_2_c), .Z(n1767)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    defparam i1358_1_lut.init = 16'h5555;
    LUT4 mux_351_Mux_30_i4_3_lut (.A(ADC_ADCLK_input_buff[3]), .B(ADC_ADCLK_input_buff[4]), 
         .C(Mux_sel_c_0), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_30_i4_3_lut.init = 16'hcaca;
    LUT4 i1488_2_lut_rep_32 (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .Z(Mux_sel_c_0_derived_10)) /* synthesis lut_function=(A (B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1488_2_lut_rep_32.init = 16'h8888;
    LUT4 i933_4_lut_rep_26_4_lut_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), 
         .C(Mux_sel_c_2), .Z(n2329)) /* synthesis lut_function=(!(A (B (C))+!A !((C)+!B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i933_4_lut_rep_26_4_lut_3_lut.init = 16'h7b7b;
    LUT4 i1877_2_lut_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .C(Mux_sel_c_2), 
         .Z(ADC_ch_out_sel_7__N_94)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1877_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i932_1_lut_rep_31_2_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .Z(n2334)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i932_1_lut_rep_31_2_lut.init = 16'h7777;
    LUT4 i1345_1_lut_2_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_2), .Z(n1754)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1345_1_lut_2_lut.init = 16'h7777;
    LUT4 i1359_1_lut (.A(E14_monitor_c_3_c), .Z(n1768)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(76[3:11])
    defparam i1359_1_lut.init = 16'h5555;
    PFUMX i1800 (.BLUT(n2183), .ALUT(n2184), .C0(Mux_sel_c_2), .Z(ADC_LCLK_out_N_95));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1043_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .C(Mux_sel_c_2), 
         .Z(Mezz1_DRS4_o_A_3__N_15)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1043_3_lut.init = 16'h8282;
    LUT4 mux_351_Mux_32_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[0]), .B(Mezz5_ADC_ch_input_diff[0]), 
         .C(Mux_sel_c_0), .Z(n4_adj_271)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_32_i4_3_lut.init = 16'hcaca;
    PFUMX i1797 (.BLUT(n2180), .ALUT(n2181), .C0(Mux_sel_c_2), .Z(ADC_ADCLK_out_N_96));
    LUT4 mux_351_Mux_40_i4_3_lut (.A(Mezz4_ADC_ch_input_diff[7]), .B(Mezz5_ADC_ch_input_diff[7]), 
         .C(Mux_sel_c_0), .Z(n4_adj_285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_40_i4_3_lut.init = 16'hcaca;
    LUT4 i1348_1_lut (.A(DRS4_i_SRIN_c), .Z(n1757)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(77[3:14])
    defparam i1348_1_lut.init = 16'h5555;
    LUT4 mux_351_Mux_34_i2_3_lut (.A(Mezz2_ADC_ch_input_diff[2]), .B(Mezz3_ADC_ch_input_diff[2]), 
         .C(Mux_sel_c_0), .Z(n2_adj_274)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam mux_351_Mux_34_i2_3_lut.init = 16'hcaca;
    LUT4 i1801_3_lut (.A(Mezz1_ADC_ch_input_diff[0]), .B(n2_adj_270), .C(Mux_sel_c_1), 
         .Z(n2186)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1801_3_lut.init = 16'hcaca;
    LUT4 i1540_3_lut (.A(Mux_sel_c_0), .B(Mux_sel_c_1), .C(Mux_sel_c_2), 
         .Z(Mezz2_DRS4_o_A_3__N_20)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(513[2] 580[12])
    defparam i1540_3_lut.init = 16'h8484;
    
endmodule
//
// Verilog Description of module heartbeat
//

module heartbeat (top_heartbeat_c, top_rst_c, top_stdby_c);
    output top_heartbeat_c;
    input top_rst_c;
    input top_stdby_c;
    
    wire clk_internal /* synthesis is_clock=1, SET_AS_NETWORK=\h_beat/clk_internal */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/heartbeat.vhd(33[12:24])
    
    wire heartbeat_N_267;
    
    FD1S3DX divided_clk_9 (.D(heartbeat_N_267), .CK(clk_internal), .CD(top_rst_c), 
            .Q(top_heartbeat_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=260, LSE_RLINE=260 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/heartbeat.vhd(46[9] 50[16])
    defparam divided_clk_9.GSR = "DISABLED";
    OSCH Clock_inst (.STDBY(top_stdby_c), .OSC(clk_internal)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=20, LSE_LCOL=8, LSE_RCOL=17, LSE_LLINE=260, LSE_RLINE=260 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/heartbeat.vhd(38[17:21])
    defparam Clock_inst.NOM_FREQ = "10.23";
    LUT4 heartbeat_I_0_1_lut (.A(top_heartbeat_c), .Z(heartbeat_N_267)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/heartbeat.vhd(49[28:43])
    defparam heartbeat_I_0_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module \OSCH("10.23")(1,5) 
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \SPI_som(14) 
//

module \SPI_som(14)  (SCLK_buff, CSR_MISO_c, CSR_MOSI_c, SPI_data, CSR_CS_CPLD_c, 
            n2410, SPI_rdy, F16_monitor_c, CSR_CS_SOM_c, n6);
    input SCLK_buff;
    output CSR_MISO_c;
    input CSR_MOSI_c;
    output [13:0]SPI_data;
    output CSR_CS_CPLD_c;
    input n2410;
    output SPI_rdy;
    output F16_monitor_c;
    input CSR_CS_SOM_c;
    output n6;
    
    wire SCLK_buff /* synthesis is_clock=1, SET_AS_NETWORK=SCLK_buff */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(191[8:17])
    wire SPI_rdy /* synthesis is_clock=1, SET_AS_NETWORK=SPI_rdy */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/top_cms_mux.vhd(193[8:15])
    wire [13:0]echo_word;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(44[8:17])
    
    wire SCLK_buff_enable_71, n1804;
    wire [13:0]n45;
    
    wire n2166;
    wire [13:0]data_in;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(33[8:15])
    
    wire SCLK_buff_enable_61;
    wire [13:0]data_in_13__N_175;
    wire [13:0]data_cpld;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(45[8:17])
    wire [1:0]SPI_states_ack;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(38[8:22])
    
    wire n27;
    wire [13:0]data_cpld_13__N_151;
    
    wire SCLK_buff_enable_46, SCLK_buff_enable_5, MISO_som_N_253;
    wire [3:0]count_data;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(34[8:18])
    
    wire n2339, n894;
    wire [3:0]count_data_3__N_125;
    
    wire n2167, SCLK_buff_enable_21, SCLK_buff_enable_69;
    wire [1:0]SPI_states;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(39[8:18])
    
    wire SCLK_buff_enable_12, n2343, SCLK_buff_enable_13, SCLK_buff_enable_14;
    wire [3:0]count_data_cpld;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(35[8:23])
    
    wire SCLK_buff_enable_56;
    wire [3:0]count_data_cpld_3__N_217;
    
    wire SCLK_buff_enable_16, n1761, n2168, n2336, n2344, n2342, 
        n2332, n2330, SCLK_buff_enable_33;
    wire [1:0]SPI_states_ack_1__N_133;
    
    wire n2172, n2171, n2328, n22, SCLK_buff_enable_53, n2408, n2160, 
        n2161, n2162, n2163, n2164, n2165, n2071, n14, n15;
    
    FD1P3IX echo_word_i0_i4 (.D(n45[4]), .SP(SCLK_buff_enable_71), .CD(n1804), 
            .CK(SCLK_buff), .Q(echo_word[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i4.GSR = "DISABLED";
    FD1P3AX echo_word_i0_i3 (.D(n2166), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i3.GSR = "DISABLED";
    FD1P3AX data_in_i0_i0 (.D(data_in_13__N_175[0]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i0.GSR = "DISABLED";
    LUT4 SPI_states_ack_1__I_0_80_Mux_6_i3_4_lut (.A(echo_word[6]), .B(data_cpld[5]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_6_i3_4_lut.init = 16'hcacf;
    FD1P3AX data_cpld_i0 (.D(data_cpld_13__N_151[0]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i0.GSR = "DISABLED";
    FD1P3AX MISO_som_74 (.D(MISO_som_N_253), .SP(SCLK_buff_enable_5), .CK(SCLK_buff), 
            .Q(CSR_MISO_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam MISO_som_74.GSR = "DISABLED";
    LUT4 i1502_2_lut (.A(data_in[1]), .B(CSR_MOSI_c), .Z(n45[1])) /* synthesis lut_function=(A+(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(91[6] 96[13])
    defparam i1502_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(count_data[3]), .B(n2339), .C(count_data[2]), .D(n894), 
         .Z(count_data_3__N_125[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_4_lut.init = 16'h4888;
    LUT4 i1_2_lut (.A(count_data[1]), .B(count_data[0]), .Z(n894)) /* synthesis lut_function=(A (B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(78[5] 84[12])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX echo_word_i0_i2 (.D(n2167), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i2.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i1 (.D(n45[1]), .SP(SCLK_buff_enable_71), .CD(n1804), 
            .CK(SCLK_buff), .Q(echo_word[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i1.GSR = "DISABLED";
    FD1P3AX count_data_i3 (.D(count_data_3__N_125[3]), .SP(SCLK_buff_enable_21), 
            .CK(SCLK_buff), .Q(count_data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam count_data_i3.GSR = "ENABLED";
    FD1P3AX count_data_i2 (.D(count_data_3__N_125[2]), .SP(SCLK_buff_enable_21), 
            .CK(SCLK_buff), .Q(count_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam count_data_i2.GSR = "ENABLED";
    FD1P3AX count_data_i1 (.D(count_data_3__N_125[1]), .SP(SCLK_buff_enable_21), 
            .CK(SCLK_buff), .Q(count_data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam count_data_i1.GSR = "ENABLED";
    FD1P3IX data_rec_i0_i0 (.D(data_in[0]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i0.GSR = "DISABLED";
    FD1P3IX SPI_states_i0 (.D(n2343), .SP(SCLK_buff_enable_12), .CD(SPI_states[1]), 
            .CK(SCLK_buff), .Q(SPI_states[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam SPI_states_i0.GSR = "ENABLED";
    FD1P3AX CS_CPLD_72 (.D(SCLK_buff_enable_21), .SP(SCLK_buff_enable_13), 
            .CK(SCLK_buff), .Q(CSR_CS_CPLD_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam CS_CPLD_72.GSR = "DISABLED";
    FD1P3IX SPI_states_ack_i0 (.D(n2410), .SP(SCLK_buff_enable_14), .CD(SPI_states_ack[0]), 
            .CK(SCLK_buff), .Q(SPI_states_ack[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam SPI_states_ack_i0.GSR = "DISABLED";
    FD1P3IX count_data_cpld_i0 (.D(count_data_cpld_3__N_217[0]), .SP(SCLK_buff_enable_56), 
            .CD(SCLK_buff_enable_13), .CK(SCLK_buff), .Q(count_data_cpld[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam count_data_cpld_i0.GSR = "DISABLED";
    FD1P3IX data_rdy_o_66 (.D(n2343), .SP(SCLK_buff_enable_16), .CD(n1761), 
            .CK(SCLK_buff), .Q(SPI_rdy)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rdy_o_66.GSR = "ENABLED";
    FD1P3AX echo_word_i0_i0 (.D(n2168), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i0.GSR = "DISABLED";
    LUT4 n1962_bdd_3_lut_4_lut (.A(count_data_cpld[0]), .B(n2336), .C(SPI_states_ack[0]), 
         .D(SPI_states_ack[1]), .Z(SCLK_buff_enable_46)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam n1962_bdd_3_lut_4_lut.init = 16'h0bf0;
    FD1P3IX data_rec_i0_i13 (.D(data_in[13]), .SP(SCLK_buff_enable_69), 
            .CD(n1804), .CK(SCLK_buff), .Q(SPI_data[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i13.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_6 (.A(count_data[1]), .B(n2339), .C(count_data[0]), 
         .D(n2344), .Z(count_data_3__N_125[1])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_4_lut_adj_6.init = 16'h4888;
    LUT4 i1865_4_lut (.A(SPI_states[1]), .B(n2342), .C(n2332), .D(SPI_states[0]), 
         .Z(SCLK_buff_enable_12)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1865_4_lut.init = 16'hafee;
    FD1P3IX data_rec_i0_i11 (.D(data_in[11]), .SP(SCLK_buff_enable_69), 
            .CD(n1804), .CK(SCLK_buff), .Q(SPI_data[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i11.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i10 (.D(data_in[10]), .SP(SCLK_buff_enable_69), 
            .CD(n1804), .CK(SCLK_buff), .Q(SPI_data[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i10.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_7 (.A(SPI_states_ack[0]), .B(F16_monitor_c), .C(n2330), 
         .D(SPI_states_ack[1]), .Z(SCLK_buff_enable_33)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_7.init = 16'hafee;
    FD1P3AX count_data_i0 (.D(count_data_3__N_125[0]), .SP(SCLK_buff_enable_21), 
            .CK(SCLK_buff), .Q(count_data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam count_data_i0.GSR = "ENABLED";
    LUT4 i1344_2_lut (.A(SPI_states_ack[0]), .B(SPI_states_ack[1]), .Z(SPI_states_ack_1__N_133[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam i1344_2_lut.init = 16'h6666;
    LUT4 SPI_states_ack_1__I_0_80_Mux_1_i3_4_lut (.A(echo_word[1]), .B(data_cpld[0]), 
         .C(SPI_states_ack[1]), .D(n2172), .Z(data_cpld_13__N_151[1])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_1_i3_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_adj_8 (.A(echo_word[7]), .B(n2171), .Z(n2172)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_8.init = 16'hdddd;
    LUT4 i2_3_lut_rep_33 (.A(count_data_cpld[1]), .B(count_data_cpld[3]), 
         .C(count_data_cpld[2]), .Z(n2336)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_33.init = 16'h8080;
    LUT4 i1554_2_lut_rep_27_4_lut (.A(count_data_cpld[1]), .B(count_data_cpld[3]), 
         .C(count_data_cpld[2]), .D(count_data_cpld[0]), .Z(n2330)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1554_2_lut_rep_27_4_lut.init = 16'hff7f;
    FD1P3IX data_rec_i0_i9 (.D(data_in[9]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i9.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i8 (.D(data_in[8]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i8.GSR = "DISABLED";
    LUT4 i1874_2_lut_4_lut (.A(count_data_cpld[1]), .B(count_data_cpld[3]), 
         .C(count_data_cpld[2]), .D(count_data_cpld[0]), .Z(count_data_cpld_3__N_217[0])) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (D))) */ ;
    defparam i1874_2_lut_4_lut.init = 16'h007f;
    FD1P3IX data_rec_i0_i7 (.D(data_in[7]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i7.GSR = "DISABLED";
    FD1P3AX data_in_i0_i1 (.D(data_in_13__N_175[1]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i1.GSR = "DISABLED";
    FD1P3AX data_in_i0_i3 (.D(data_in_13__N_175[3]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i3.GSR = "DISABLED";
    FD1P3AX data_in_i0_i4 (.D(data_in_13__N_175[4]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i4.GSR = "DISABLED";
    FD1P3AX data_in_i0_i6 (.D(data_in_13__N_175[6]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i6.GSR = "DISABLED";
    FD1P3AX data_in_i0_i10 (.D(data_in_13__N_175[10]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i10.GSR = "DISABLED";
    FD1P3AX data_in_i0_i11 (.D(data_in_13__N_175[11]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i11.GSR = "DISABLED";
    FD1P3AX data_in_i0_i12 (.D(data_in_13__N_175[12]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i12.GSR = "DISABLED";
    FD1P3AX data_in_i0_i13 (.D(data_in_13__N_175[13]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i13.GSR = "DISABLED";
    FD1P3AX SPI_states_ack_i1 (.D(SPI_states_ack_1__N_133[1]), .SP(SCLK_buff_enable_33), 
            .CK(SCLK_buff), .Q(SPI_states_ack[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam SPI_states_ack_i1.GSR = "DISABLED";
    LUT4 i1518_2_lut_rep_34 (.A(SPI_states_ack[0]), .B(SPI_states_ack[1]), 
         .Z(SCLK_buff_enable_5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1518_2_lut_rep_34.init = 16'heeee;
    LUT4 i1355_1_lut_2_lut (.A(SPI_states_ack[0]), .B(SPI_states_ack[1]), 
         .Z(SCLK_buff_enable_13)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1355_1_lut_2_lut.init = 16'h1111;
    LUT4 i486_3_lut_4_lut (.A(count_data_cpld[1]), .B(count_data_cpld[0]), 
         .C(count_data_cpld[2]), .D(count_data_cpld[3]), .Z(count_data_cpld_3__N_217[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(130[5] 138[12])
    defparam i486_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX data_cpld_i1 (.D(data_cpld_13__N_151[1]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i1.GSR = "DISABLED";
    FD1P3AX data_cpld_i2 (.D(data_cpld_13__N_151[2]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i2.GSR = "DISABLED";
    FD1P3AX data_cpld_i3 (.D(data_cpld_13__N_151[3]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i3.GSR = "DISABLED";
    FD1P3AX data_cpld_i4 (.D(data_cpld_13__N_151[4]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i4.GSR = "DISABLED";
    FD1P3AX data_cpld_i5 (.D(data_cpld_13__N_151[5]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i5.GSR = "DISABLED";
    FD1P3AX data_cpld_i6 (.D(data_cpld_13__N_151[6]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i6.GSR = "DISABLED";
    FD1P3AX data_cpld_i7 (.D(data_cpld_13__N_151[7]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i7.GSR = "DISABLED";
    FD1P3AX data_cpld_i8 (.D(data_cpld_13__N_151[8]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i8.GSR = "DISABLED";
    FD1P3AX data_cpld_i9 (.D(data_cpld_13__N_151[9]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i9.GSR = "DISABLED";
    FD1P3AX data_cpld_i10 (.D(data_cpld_13__N_151[10]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i10.GSR = "DISABLED";
    FD1P3AX data_cpld_i11 (.D(data_cpld_13__N_151[11]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i11.GSR = "DISABLED";
    FD1P3AX data_cpld_i12 (.D(data_cpld_13__N_151[12]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i12.GSR = "DISABLED";
    FD1P3AX data_cpld_i13 (.D(data_cpld_13__N_151[13]), .SP(SCLK_buff_enable_46), 
            .CK(SCLK_buff), .Q(data_cpld[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam data_cpld_i13.GSR = "DISABLED";
    LUT4 i1503_2_lut (.A(data_in[4]), .B(CSR_MOSI_c), .Z(n45[4])) /* synthesis lut_function=(A+(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(91[6] 96[13])
    defparam i1503_2_lut.init = 16'heeee;
    LUT4 i479_2_lut_3_lut (.A(count_data_cpld[1]), .B(count_data_cpld[0]), 
         .C(count_data_cpld[2]), .Z(count_data_cpld_3__N_217[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(130[5] 138[12])
    defparam i479_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut (.A(SPI_states[0]), .B(SPI_states[1]), .C(CSR_CS_SOM_c), 
         .Z(SCLK_buff_enable_61)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0b0b;
    LUT4 i1515_2_lut_rep_36 (.A(SPI_states[0]), .B(SPI_states[1]), .Z(n2339)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1515_2_lut_rep_36.init = 16'h2222;
    LUT4 i771_1_lut (.A(SPI_states_ack[0]), .Z(SCLK_buff_enable_56)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam i771_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_3_lut_4_lut (.A(SPI_states[0]), .B(SPI_states[1]), .C(n2344), 
         .D(count_data[0]), .Z(count_data_3__N_125[0])) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0222;
    LUT4 i1_2_lut_3_lut_adj_9 (.A(SPI_states[0]), .B(SPI_states[1]), .C(CSR_MOSI_c), 
         .Z(data_in_13__N_175[0])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_9.init = 16'h2020;
    FD1P3IX data_rec_i0_i6 (.D(data_in[6]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i6.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(SPI_states[0]), .B(SPI_states[1]), .C(n894), 
         .D(count_data[2]), .Z(count_data_3__N_125[2])) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_3_lut_4_lut.init = 16'h0220;
    FD1P3IX data_rec_i0_i5 (.D(data_in[5]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_10 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[0]), 
         .Z(data_in_13__N_175[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_10.init = 16'h2020;
    LUT4 i1044_3_lut_4_lut (.A(count_data_cpld[0]), .B(n2336), .C(SPI_states_ack[1]), 
         .D(SCLK_buff_enable_21), .Z(SCLK_buff_enable_14)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i1044_3_lut_4_lut.init = 16'h404f;
    LUT4 SPI_states_ack_1__I_0_80_Mux_5_i3_4_lut (.A(echo_word[5]), .B(data_cpld[4]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_5_i3_4_lut.init = 16'hcac0;
    LUT4 SPI_states_ack_1__I_0_80_Mux_7_i3_4_lut (.A(echo_word[7]), .B(data_cpld[6]), 
         .C(SPI_states_ack[1]), .D(n2328), .Z(data_cpld_13__N_151[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_7_i3_4_lut.init = 16'hcac0;
    LUT4 SPI_states_ack_1__I_0_80_Mux_8_i3_4_lut (.A(echo_word[8]), .B(data_cpld[7]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_8_i3_4_lut.init = 16'hcacf;
    LUT4 SPI_states_ack_1__I_0_80_Mux_9_i3_4_lut (.A(echo_word[9]), .B(data_cpld[8]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[9])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_9_i3_4_lut.init = 16'hcac0;
    LUT4 SPI_states_ack_1__I_0_80_Mux_10_i3_4_lut (.A(echo_word[10]), .B(data_cpld[9]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_10_i3_4_lut.init = 16'hcacf;
    LUT4 i1_2_lut_3_lut_adj_11 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[2]), 
         .Z(data_in_13__N_175[3])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_11.init = 16'h2020;
    LUT4 SPI_states_ack_1__I_0_80_Mux_11_i3_4_lut (.A(echo_word[11]), .B(data_cpld[10]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[11])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_11_i3_4_lut.init = 16'hcac0;
    LUT4 SPI_states_ack_1__I_0_80_Mux_12_i3_4_lut (.A(echo_word[12]), .B(data_cpld[11]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[12])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_12_i3_4_lut.init = 16'hcac0;
    LUT4 SPI_states_ack_1__I_0_80_Mux_13_i3_4_lut (.A(echo_word[13]), .B(data_cpld[12]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[13])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_13_i3_4_lut.init = 16'hcac0;
    LUT4 i26_4_lut (.A(n22), .B(n2332), .C(SPI_states[0]), .D(SPI_states[1]), 
         .Z(SCLK_buff_enable_53)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i26_4_lut.init = 16'hfa3a;
    LUT4 i472_2_lut (.A(count_data_cpld[1]), .B(count_data_cpld[0]), .Z(count_data_cpld_3__N_217[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(130[5] 138[12])
    defparam i472_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_rep_30 (.A(CSR_MOSI_c), .B(n2408), .C(SPI_states[0]), 
         .D(SPI_rdy), .Z(SCLK_buff_enable_69)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam i1_4_lut_rep_30.init = 16'hc0c4;
    LUT4 i1_2_lut_3_lut_adj_12 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[3]), 
         .Z(data_in_13__N_175[4])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_12.init = 16'h2020;
    LUT4 SPI_states_ack_1__I_0_80_Mux_0_i3_4_lut (.A(echo_word[0]), .B(data_cpld[13]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_0_i3_4_lut.init = 16'hcacf;
    LUT4 i1_2_lut_3_lut_adj_13 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[5]), 
         .Z(data_in_13__N_175[6])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_13.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_14 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[9]), 
         .Z(data_in_13__N_175[10])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_14.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_15 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[10]), 
         .Z(data_in_13__N_175[11])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_15.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_16 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[11]), 
         .Z(data_in_13__N_175[12])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_16.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_17 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[12]), 
         .Z(data_in_13__N_175[13])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_17.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_18 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[8]), 
         .Z(data_in_13__N_175[9])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_18.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_19 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[7]), 
         .Z(data_in_13__N_175[8])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_19.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_20 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[6]), 
         .Z(data_in_13__N_175[7])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_20.init = 16'h2020;
    FD1P3IX data_rec_i0_i4 (.D(data_in[4]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i4.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i3 (.D(data_in[3]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i3.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i2 (.D(data_in[2]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i2.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i1 (.D(data_in[1]), .SP(SCLK_buff_enable_69), .CD(n1804), 
            .CK(SCLK_buff), .Q(SPI_data[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i1.GSR = "DISABLED";
    FD1P3AX SPI_states_i1 (.D(n2339), .SP(SCLK_buff_enable_53), .CK(SCLK_buff), 
            .Q(SPI_states[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam SPI_states_i1.GSR = "ENABLED";
    FD1P3IX count_data_cpld_i3 (.D(count_data_cpld_3__N_217[3]), .SP(SCLK_buff_enable_56), 
            .CD(SCLK_buff_enable_13), .CK(SCLK_buff), .Q(count_data_cpld[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam count_data_cpld_i3.GSR = "DISABLED";
    FD1P3IX count_data_cpld_i2 (.D(count_data_cpld_3__N_217[2]), .SP(SCLK_buff_enable_56), 
            .CD(SCLK_buff_enable_13), .CK(SCLK_buff), .Q(count_data_cpld[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam count_data_cpld_i2.GSR = "DISABLED";
    FD1P3IX count_data_cpld_i1 (.D(count_data_cpld_3__N_217[1]), .SP(SCLK_buff_enable_56), 
            .CD(SCLK_buff_enable_13), .CK(SCLK_buff), .Q(count_data_cpld[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(112[2] 145[9])
    defparam count_data_cpld_i1.GSR = "DISABLED";
    FD1P3AX data_in_i0_i9 (.D(data_in_13__N_175[9]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i9.GSR = "DISABLED";
    FD1P3AX data_in_i0_i8 (.D(data_in_13__N_175[8]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i8.GSR = "DISABLED";
    FD1P3AX data_in_i0_i7 (.D(data_in_13__N_175[7]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i7.GSR = "DISABLED";
    FD1P3AX data_in_i0_i5 (.D(data_in_13__N_175[5]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i5.GSR = "DISABLED";
    FD1P3AX data_in_i0_i2 (.D(data_in_13__N_175[2]), .SP(SCLK_buff_enable_61), 
            .CK(SCLK_buff), .Q(data_in[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_in_i0_i2.GSR = "DISABLED";
    FD1P3AX echo_word_i0_i13 (.D(n2160), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i13.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_21 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[4]), 
         .Z(data_in_13__N_175[5])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_21.init = 16'h2020;
    FD1P3AX echo_word_i0_i12 (.D(n2161), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_22 (.A(SPI_states[0]), .B(SPI_states[1]), .C(data_in[1]), 
         .Z(data_in_13__N_175[2])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_adj_22.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[3]), 
         .Z(n2166)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_23.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[2]), 
         .Z(n2167)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_24.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[0]), 
         .Z(n2168)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_26 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[13]), 
         .Z(n2160)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_26.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_27 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[12]), 
         .Z(n2161)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_27.init = 16'h1010;
    FD1P3AX echo_word_i0_i11 (.D(n2162), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i11.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_28 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[11]), 
         .Z(n2162)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_28.init = 16'h1010;
    FD1P3AX echo_word_i0_i10 (.D(n2163), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i10.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_29 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[10]), 
         .Z(n2163)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_29.init = 16'h1010;
    FD1P3AX echo_word_i0_i9 (.D(n2164), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i9.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i8 (.D(n45[8]), .SP(SCLK_buff_enable_71), .CD(n1804), 
            .CK(SCLK_buff), .Q(echo_word[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i8.GSR = "DISABLED";
    FD1P3IX echo_word_i0_i7 (.D(n45[7]), .SP(SCLK_buff_enable_71), .CD(n1804), 
            .CK(SCLK_buff), .Q(echo_word[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i7.GSR = "DISABLED";
    FD1P3IX data_rec_i0_i12 (.D(data_in[12]), .SP(SCLK_buff_enable_69), 
            .CD(n1804), .CK(SCLK_buff), .Q(SPI_data[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam data_rec_i0_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_30 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[9]), 
         .Z(n2164)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_30.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_31 (.A(SPI_states[0]), .B(CSR_MOSI_c), .C(data_in[5]), 
         .Z(n2165)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_31.init = 16'h1010;
    LUT4 i1506_2_lut (.A(data_in[8]), .B(CSR_MOSI_c), .Z(n45[8])) /* synthesis lut_function=(A+(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(91[6] 96[13])
    defparam i1506_2_lut.init = 16'heeee;
    LUT4 i1505_2_lut (.A(data_in[7]), .B(CSR_MOSI_c), .Z(n45[7])) /* synthesis lut_function=(A+(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(91[6] 96[13])
    defparam i1505_2_lut.init = 16'heeee;
    LUT4 i1352_2_lut_3_lut_4_lut_4_lut (.A(SPI_states[0]), .B(SPI_states[1]), 
         .C(n2344), .D(count_data[0]), .Z(n1761)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1352_2_lut_3_lut_4_lut_4_lut.init = 16'h3133;
    LUT4 i1504_2_lut (.A(data_in[6]), .B(CSR_MOSI_c), .Z(n45[6])) /* synthesis lut_function=(A+(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(91[6] 96[13])
    defparam i1504_2_lut.init = 16'heeee;
    FD1P3IX echo_word_i0_i6 (.D(n45[6]), .SP(SCLK_buff_enable_71), .CD(n1804), 
            .CK(SCLK_buff), .Q(echo_word[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i6.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_43 (.A(SPI_states[1]), .B(CSR_CS_SOM_c), .Z(n2408)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam i1_2_lut_rep_43.init = 16'h2222;
    LUT4 i1_3_lut_rep_41 (.A(count_data[1]), .B(count_data[3]), .C(count_data[2]), 
         .Z(n2344)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(78[8:29])
    defparam i1_3_lut_rep_41.init = 16'hbfbf;
    LUT4 SPI_states_ack_1__I_0_80_Mux_2_i3_4_lut (.A(echo_word[2]), .B(data_cpld[1]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_2_i3_4_lut.init = 16'hcacf;
    LUT4 i1_2_lut_rep_29_4_lut (.A(count_data[1]), .B(count_data[3]), .C(count_data[2]), 
         .D(count_data[0]), .Z(n2332)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(78[8:29])
    defparam i1_2_lut_rep_29_4_lut.init = 16'hbfff;
    LUT4 SPI_states_ack_1__I_0_80_Mux_3_i3_4_lut (.A(echo_word[3]), .B(data_cpld[2]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_3_i3_4_lut.init = 16'hcac0;
    LUT4 SPI_states_1__I_0_83_i3_2_lut_rep_37 (.A(SPI_states[0]), .B(SPI_states[1]), 
         .Z(SCLK_buff_enable_21)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(117[8:28])
    defparam SPI_states_1__I_0_83_i3_2_lut_rep_37.init = 16'hbbbb;
    LUT4 i3_4_lut (.A(echo_word[6]), .B(echo_word[8]), .C(n2071), .D(echo_word[4]), 
         .Z(n2171)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3_4_lut.init = 16'hf7ff;
    LUT4 i5_3_lut (.A(echo_word[5]), .B(echo_word[2]), .C(echo_word[13]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(124[8:27])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_25 (.A(echo_word[1]), .B(n2171), .Z(n2328)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_25.init = 16'hdddd;
    LUT4 i6_4_lut (.A(echo_word[11]), .B(echo_word[0]), .C(echo_word[12]), 
         .D(echo_word[9]), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(124[8:27])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(n15), .B(echo_word[10]), .C(n14), .D(echo_word[3]), 
         .Z(n2071)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(124[8:27])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_32 (.A(echo_word[1]), .B(n2171), .C(echo_word[7]), 
         .Z(n27)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_2_lut_3_lut_adj_32.init = 16'hdfdf;
    LUT4 i1537_3_lut_4_lut (.A(n2330), .B(SPI_states_ack[0]), .C(SPI_states_ack[1]), 
         .D(data_cpld[13]), .Z(MISO_som_N_253)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam i1537_3_lut_4_lut.init = 16'h2f0f;
    FD1P3AX echo_word_i0_i5 (.D(n2165), .SP(SCLK_buff_enable_71), .CK(SCLK_buff), 
            .Q(echo_word[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=6, LSE_RCOL=13, LSE_LLINE=234, LSE_RLINE=234 */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam echo_word_i0_i5.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_28_4_lut (.A(SPI_states[1]), .B(CSR_CS_SOM_c), .C(SPI_states[0]), 
         .D(SPI_rdy), .Z(SCLK_buff_enable_71)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam i1_3_lut_rep_28_4_lut.init = 16'h2022;
    LUT4 i1374_2_lut_2_lut_3_lut (.A(SPI_states[1]), .B(CSR_CS_SOM_c), .C(SPI_states[0]), 
         .Z(n1804)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(55[1] 102[8])
    defparam i1374_2_lut_2_lut_3_lut.init = 16'h2020;
    LUT4 i365_2_lut_rep_39 (.A(CSR_MOSI_c), .B(CSR_CS_SOM_c), .Z(n2342)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(70[5] 74[12])
    defparam i365_2_lut_rep_39.init = 16'h2222;
    LUT4 i8_1_lut (.A(CSR_CS_SOM_c), .Z(n6)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(70[8:20])
    defparam i8_1_lut.init = 16'h5555;
    LUT4 i27_3_lut_4_lut (.A(CSR_MOSI_c), .B(CSR_CS_SOM_c), .C(SPI_states[1]), 
         .D(SPI_rdy), .Z(n22)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(70[5] 74[12])
    defparam i27_3_lut_4_lut.init = 16'hf202;
    LUT4 i1309_1_lut_rep_40 (.A(SPI_states[0]), .Z(n2343)) /* synthesis lut_function=(!(A)) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1309_1_lut_rep_40.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(SPI_states[0]), .B(SPI_states[1]), 
         .C(n2344), .D(count_data[0]), .Z(SCLK_buff_enable_16)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_2_lut (.A(SPI_states[0]), .B(SPI_states[1]), .Z(F16_monitor_c)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(62[3] 100[12])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 SPI_states_ack_1__I_0_80_Mux_4_i3_4_lut (.A(echo_word[4]), .B(data_cpld[3]), 
         .C(SPI_states_ack[1]), .D(n27), .Z(data_cpld_13__N_151[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/cmb_40_project/old_project_with_cpld_files/charge-monitoring-system/cpld_proj/cms_mux_io/spi_som.vhd(113[3] 144[12])
    defparam SPI_states_ack_1__I_0_80_Mux_4_i3_4_lut.init = 16'hcacf;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

