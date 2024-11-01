// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sat Mar 11 13:01:09 2023
//
// Verilog Description of module SPI_som
//

module SPI_som (MOSI_som, MCLK_som, CS_som, data_rec, data_rdy);   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(15[8:15])
    input MOSI_som;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(17[3:11])
    input MCLK_som;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(18[3:11])
    input CS_som;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(19[3:9])
    output [7:0]data_rec;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    output data_rdy;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(21[3:11])
    
    wire MCLK_som_c /* synthesis SET_AS_NETWORK=MCLK_som_c, is_clock=1 */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(18[3:11])
    
    wire GND_net, VCC_net, MOSI_som_c, CS_som_c, data_rec_c_7, data_rec_c_6, 
        data_rec_c_5, data_rec_c_4, data_rec_c_3, data_rec_c_2, data_rec_c_1, 
        data_rec_c_0, data_rdy_c;
    wire [7:0]data_in;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(27[8:15])
    wire [3:0]count_data;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(28[8:18])
    
    wire data_rdy_N_37, n175, MCLK_som_c_enable_8, n22, n23, n24, 
        n25;
    
    VHI i2 (.Z(VCC_net));
    OB data_rec_pad_7 (.I(data_rec_c_7), .O(data_rec[7]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    OB data_rec_pad_6 (.I(data_rec_c_6), .O(data_rec[6]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    FD1S3IX data_in__i0 (.D(MOSI_som_c), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(data_in[0]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_in__i0.GSR = "ENABLED";
    FD1P3AX data_rec_i0_i1 (.D(data_in[0]), .SP(MCLK_som_c_enable_8), .CK(MCLK_som_c), 
            .Q(data_rec_c_0));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rec_i0_i1.GSR = "ENABLED";
    VLO i107 (.Z(GND_net));
    FD1P3IX data_rdy_23 (.D(n175), .SP(data_rdy_N_37), .CD(CS_som_c), 
            .CK(MCLK_som_c), .Q(data_rdy_c));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rdy_23.GSR = "ENABLED";
    FD1S3IX data_in__i1 (.D(data_in[0]), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(data_in[1]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_in__i1.GSR = "ENABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3IX count_data_33__i0 (.D(n25), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(count_data[0]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(37[17:27])
    defparam count_data_33__i0.GSR = "ENABLED";
    LUT4 m1_lut (.Z(n175)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1S3IX data_in__i3 (.D(data_in[2]), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(data_in[3]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_in__i3.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i75_1_lut (.A(count_data[0]), .Z(n25)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(37[17:27])
    defparam i75_1_lut.init = 16'h5555;
    LUT4 i77_2_lut (.A(count_data[1]), .B(count_data[0]), .Z(n24)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(37[17:27])
    defparam i77_2_lut.init = 16'h6666;
    LUT4 i102_2_lut (.A(data_rdy_N_37), .B(CS_som_c), .Z(MCLK_som_c_enable_8)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i102_2_lut.init = 16'h2222;
    LUT4 i106_4_lut (.A(count_data[0]), .B(count_data[2]), .C(count_data[1]), 
         .D(count_data[3]), .Z(data_rdy_N_37)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(39[6:20])
    defparam i106_4_lut.init = 16'h0100;
    LUT4 i91_3_lut_4_lut (.A(count_data[1]), .B(count_data[0]), .C(count_data[2]), 
         .D(count_data[3]), .Z(n22)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(37[17:27])
    defparam i91_3_lut_4_lut.init = 16'h7f80;
    OB data_rec_pad_5 (.I(data_rec_c_5), .O(data_rec[5]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    OB data_rec_pad_4 (.I(data_rec_c_4), .O(data_rec[4]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    OB data_rec_pad_3 (.I(data_rec_c_3), .O(data_rec[3]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    OB data_rec_pad_2 (.I(data_rec_c_2), .O(data_rec[2]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    OB data_rec_pad_1 (.I(data_rec_c_1), .O(data_rec[1]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    OB data_rec_pad_0 (.I(data_rec_c_0), .O(data_rec[0]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(20[3:11])
    OB data_rdy_pad (.I(data_rdy_c), .O(data_rdy));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(21[3:11])
    IB MOSI_som_pad (.I(MOSI_som), .O(MOSI_som_c));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(17[3:11])
    IB MCLK_som_pad (.I(MCLK_som), .O(MCLK_som_c));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(18[3:11])
    IB CS_som_pad (.I(CS_som), .O(CS_som_c));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(19[3:9])
    FD1S3IX data_in__i4 (.D(data_in[3]), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(data_in[4]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_in__i4.GSR = "ENABLED";
    FD1S3IX data_in__i5 (.D(data_in[4]), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(data_in[5]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_in__i5.GSR = "ENABLED";
    FD1S3IX data_in__i6 (.D(data_in[5]), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(data_in[6]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_in__i6.GSR = "ENABLED";
    FD1S3IX data_in__i7 (.D(data_in[6]), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(data_in[7]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_in__i7.GSR = "ENABLED";
    FD1P3AX data_rec_i0_i2 (.D(data_in[1]), .SP(MCLK_som_c_enable_8), .CK(MCLK_som_c), 
            .Q(data_rec_c_1));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rec_i0_i2.GSR = "ENABLED";
    FD1P3AX data_rec_i0_i3 (.D(data_in[2]), .SP(MCLK_som_c_enable_8), .CK(MCLK_som_c), 
            .Q(data_rec_c_2));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rec_i0_i3.GSR = "ENABLED";
    FD1P3AX data_rec_i0_i4 (.D(data_in[3]), .SP(MCLK_som_c_enable_8), .CK(MCLK_som_c), 
            .Q(data_rec_c_3));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rec_i0_i4.GSR = "ENABLED";
    FD1P3AX data_rec_i0_i5 (.D(data_in[4]), .SP(MCLK_som_c_enable_8), .CK(MCLK_som_c), 
            .Q(data_rec_c_4));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rec_i0_i5.GSR = "ENABLED";
    FD1P3AX data_rec_i0_i6 (.D(data_in[5]), .SP(MCLK_som_c_enable_8), .CK(MCLK_som_c), 
            .Q(data_rec_c_5));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rec_i0_i6.GSR = "ENABLED";
    FD1P3AX data_rec_i0_i7 (.D(data_in[6]), .SP(MCLK_som_c_enable_8), .CK(MCLK_som_c), 
            .Q(data_rec_c_6));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rec_i0_i7.GSR = "ENABLED";
    FD1P3AX data_rec_i0_i8 (.D(data_in[7]), .SP(MCLK_som_c_enable_8), .CK(MCLK_som_c), 
            .Q(data_rec_c_7));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_rec_i0_i8.GSR = "ENABLED";
    FD1S3IX count_data_33__i1 (.D(n24), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(count_data[1]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(37[17:27])
    defparam count_data_33__i1.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i84_2_lut_3_lut (.A(count_data[1]), .B(count_data[0]), .C(count_data[2]), 
         .Z(n23)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(37[17:27])
    defparam i84_2_lut_3_lut.init = 16'h7878;
    FD1S3IX count_data_33__i2 (.D(n23), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(count_data[2]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(37[17:27])
    defparam count_data_33__i2.GSR = "ENABLED";
    FD1S3IX count_data_33__i3 (.D(n22), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(count_data[3]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(37[17:27])
    defparam count_data_33__i3.GSR = "ENABLED";
    FD1S3IX data_in__i2 (.D(data_in[1]), .CK(MCLK_som_c), .CD(CS_som_c), 
            .Q(data_in[2]));   // c:/users/victo/desktop/lattice_proj/spi_som.vhd(34[1] 48[8])
    defparam data_in__i2.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

