// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Aug 21 12:22:26 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_system_ila_0_0_stub.v
// Design      : zsys_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_f448,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, 
  SLOT_0_FIFO_READ_rd_data, SLOT_0_FIFO_READ_rd_en, SLOT_0_FIFO_READ_empty, 
  SLOT_1_FIFO_WRITE_wr_data, SLOT_1_FIFO_WRITE_wr_en, SLOT_1_FIFO_WRITE_full, 
  SLOT_2_AXIS_tdata, SLOT_2_AXIS_tstrb, SLOT_2_AXIS_tlast, SLOT_2_AXIS_tvalid, 
  SLOT_2_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[31:0],probe2[0:0],probe3[0:0],probe4[0:0],probe5[2:0],probe6[7:0],probe7[0:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[3:0],probe12[2:0],probe13[4:0],probe14[3:0],SLOT_0_FIFO_READ_rd_data[96:0],SLOT_0_FIFO_READ_rd_en,SLOT_0_FIFO_READ_empty,SLOT_1_FIFO_WRITE_wr_data[96:0],SLOT_1_FIFO_WRITE_wr_en,SLOT_1_FIFO_WRITE_full,SLOT_2_AXIS_tdata[31:0],SLOT_2_AXIS_tstrb[3:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,resetn" */;
  input clk;
  input [0:0]probe0;
  input [31:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [2:0]probe5;
  input [7:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [3:0]probe11;
  input [2:0]probe12;
  input [4:0]probe13;
  input [3:0]probe14;
  input [96:0]SLOT_0_FIFO_READ_rd_data;
  input SLOT_0_FIFO_READ_rd_en;
  input SLOT_0_FIFO_READ_empty;
  input [96:0]SLOT_1_FIFO_WRITE_wr_data;
  input SLOT_1_FIFO_WRITE_wr_en;
  input SLOT_1_FIFO_WRITE_full;
  input [31:0]SLOT_2_AXIS_tdata;
  input [3:0]SLOT_2_AXIS_tstrb;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input resetn;
endmodule
