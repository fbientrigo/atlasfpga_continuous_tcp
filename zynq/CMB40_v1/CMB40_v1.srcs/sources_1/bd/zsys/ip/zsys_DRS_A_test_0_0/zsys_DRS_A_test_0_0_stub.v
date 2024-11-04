// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
// Date        : Mon Nov  4 01:05:14 2024
// Host        : lapepuat11 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/osotosan/charge-monitoring-system/zynq/CMB40_v1/CMB40_v1.srcs/sources_1/bd/zsys/ip/zsys_DRS_A_test_0_0/zsys_DRS_A_test_0_0_stub.v
// Design      : zsys_DRS_A_test_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DRS_A_test,Vivado 2018.2.2" *)
module zsys_DRS_A_test_0_0(A_vec, i_RSRLOAD, i_SRIN, i_dwrite, i_SRCLK, 
  i_en_test, i_nrst, o_A_vec, o_RSRLOAD, o_dwrite, o_SRCLK, o_SRIN, i_clk)
/* synthesis syn_black_box black_box_pad_pin="A_vec[3:0],i_RSRLOAD,i_SRIN,i_dwrite,i_SRCLK,i_en_test,i_nrst,o_A_vec[3:0],o_RSRLOAD,o_dwrite,o_SRCLK,o_SRIN,i_clk" */;
  input [3:0]A_vec;
  input i_RSRLOAD;
  input i_SRIN;
  input i_dwrite;
  input i_SRCLK;
  input i_en_test;
  input i_nrst;
  output [3:0]o_A_vec;
  output o_RSRLOAD;
  output o_dwrite;
  output o_SRCLK;
  output o_SRIN;
  input i_clk;
endmodule
