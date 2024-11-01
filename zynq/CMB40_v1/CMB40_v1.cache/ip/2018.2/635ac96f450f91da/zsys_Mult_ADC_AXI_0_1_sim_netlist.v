// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Nov 22 16:15:30 2023
// Host        : LAPTOP-VLHMPBL0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ zsys_Mult_ADC_AXI_0_1_sim_netlist.v
// Design      : zsys_Mult_ADC_AXI_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl
   (o_debug_0_sp_1,
    o_SCLK,
    \o_debug[7] ,
    o_debug,
    read_reg_reg,
    write_reg_reg,
    adc_config_reg,
    \slv_reg2_reg[16] ,
    \slv_reg2_reg[17] ,
    \slv_reg2_reg[18] ,
    \slv_reg2_reg[19] ,
    \slv_reg2_reg[20] ,
    \slv_reg2_reg[21] ,
    \slv_reg2_reg[22] ,
    \slv_reg2_reg[23] ,
    \slv_reg2_reg[24] ,
    \slv_reg2_reg[25] ,
    \slv_reg2_reg[26] ,
    \slv_reg2_reg[27] ,
    \slv_reg2_reg[28] ,
    \slv_reg2_reg[29] ,
    \slv_reg2_reg[30] ,
    \slv_reg2_reg[31] ,
    SR,
    s00_axi_aclk,
    s00_axi_aresetn,
    read_reg_reg_0,
    Q,
    slv_reg_wren__2,
    write_reg_reg_0,
    adc_config_reg_0,
    s00_axi_wdata,
    s00_axi_wvalid,
    axi_awready_reg,
    axi_wready_reg,
    s00_axi_awvalid,
    \slv_reg1_reg[23] ,
    i_MISO);
  output o_debug_0_sp_1;
  output o_SCLK;
  output \o_debug[7] ;
  output [4:0]o_debug;
  output read_reg_reg;
  output write_reg_reg;
  output adc_config_reg;
  output \slv_reg2_reg[16] ;
  output \slv_reg2_reg[17] ;
  output \slv_reg2_reg[18] ;
  output \slv_reg2_reg[19] ;
  output \slv_reg2_reg[20] ;
  output \slv_reg2_reg[21] ;
  output \slv_reg2_reg[22] ;
  output \slv_reg2_reg[23] ;
  output \slv_reg2_reg[24] ;
  output \slv_reg2_reg[25] ;
  output \slv_reg2_reg[26] ;
  output \slv_reg2_reg[27] ;
  output \slv_reg2_reg[28] ;
  output \slv_reg2_reg[29] ;
  output \slv_reg2_reg[30] ;
  output \slv_reg2_reg[31] ;
  output [0:0]SR;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input read_reg_reg_0;
  input [2:0]Q;
  input slv_reg_wren__2;
  input write_reg_reg_0;
  input adc_config_reg_0;
  input [15:0]s00_axi_wdata;
  input s00_axi_wvalid;
  input axi_awready_reg;
  input axi_wready_reg;
  input s00_axi_awvalid;
  input [23:0]\slv_reg1_reg[23] ;
  input i_MISO;

  wire [0:2]L;
  wire [2:0]Q;
  wire [0:0]SR;
  wire \action_state[0]_i_1_n_0 ;
  wire \action_state[1]_i_1_n_0 ;
  wire adc_action_ctrl_state0__2;
  wire \adc_action_ctrl_state[0]_i_1_n_0 ;
  wire \adc_action_ctrl_state[2]_i_1_n_0 ;
  wire \adc_action_ctrl_state[2]_i_2_n_0 ;
  wire \adc_action_ctrl_state_reg_n_0_[0] ;
  wire \adc_action_ctrl_state_reg_n_0_[2] ;
  wire adc_config_reg;
  wire adc_config_reg_0;
  wire [0:0]adc_prev_state;
  wire \adc_prev_state[0]_i_1_n_0 ;
  wire axi_awready_reg;
  wire axi_wready_reg;
  wire i_MISO;
  wire o_SCLK;
  wire [15:0]o_data_from;
  wire [4:0]o_debug;
  wire \o_debug[7] ;
  wire o_debug_0_sn_1;
  wire [15:0]rd_value;
  wire read_reg_reg;
  wire read_reg_reg_0;
  wire [7:0]reg_addrss;
  wire \reg_addrss[7]_i_2_n_0 ;
  wire reset;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_awvalid;
  wire [15:0]s00_axi_wdata;
  wire s00_axi_wvalid;
  wire [23:0]\slv_reg1_reg[23] ;
  wire \slv_reg2_reg[16] ;
  wire \slv_reg2_reg[17] ;
  wire \slv_reg2_reg[18] ;
  wire \slv_reg2_reg[19] ;
  wire \slv_reg2_reg[20] ;
  wire \slv_reg2_reg[21] ;
  wire \slv_reg2_reg[22] ;
  wire \slv_reg2_reg[23] ;
  wire \slv_reg2_reg[24] ;
  wire \slv_reg2_reg[25] ;
  wire \slv_reg2_reg[26] ;
  wire \slv_reg2_reg[27] ;
  wire \slv_reg2_reg[28] ;
  wire \slv_reg2_reg[29] ;
  wire \slv_reg2_reg[30] ;
  wire \slv_reg2_reg[31] ;
  wire slv_reg_wren__2;
  wire spi_core_n_11;
  wire spi_core_n_5;
  wire spi_core_n_6;
  wire spi_core_n_7;
  wire spi_core_n_8;
  wire spi_core_n_9;
  wire [15:0]spi_data_i;
  wire spi_free;
  wire write_reg_reg;
  wire write_reg_reg_0;

  assign o_debug_0_sp_1 = o_debug_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFC04)) 
    \action_state[0]_i_1 
       (.I0(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I1(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I2(s00_axi_aresetn),
        .I3(o_debug[2]),
        .O(\action_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE06)) 
    \action_state[1]_i_1 
       (.I0(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I1(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I2(s00_axi_aresetn),
        .I3(o_debug[3]),
        .O(\action_state[1]_i_1_n_0 ));
  FDRE \action_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\action_state[0]_i_1_n_0 ),
        .Q(o_debug[2]),
        .R(1'b0));
  FDRE \action_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\action_state[1]_i_1_n_0 ),
        .Q(o_debug[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C0C0A0000000A00)) 
    \adc_action_ctrl_state[0]_i_1 
       (.I0(adc_config_reg_0),
        .I1(adc_prev_state),
        .I2(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I3(spi_core_n_11),
        .I4(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I5(adc_action_ctrl_state0__2),
        .O(\adc_action_ctrl_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010055550100)) 
    \adc_action_ctrl_state[2]_i_1 
       (.I0(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I1(adc_config_reg_0),
        .I2(\adc_action_ctrl_state[2]_i_2_n_0 ),
        .I3(spi_free),
        .I4(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I5(adc_action_ctrl_state0__2),
        .O(\adc_action_ctrl_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \adc_action_ctrl_state[2]_i_2 
       (.I0(write_reg_reg_0),
        .I1(read_reg_reg_0),
        .O(\adc_action_ctrl_state[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \adc_action_ctrl_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\adc_action_ctrl_state[0]_i_1_n_0 ),
        .Q(\adc_action_ctrl_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \adc_action_ctrl_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(\adc_action_ctrl_state[2]_i_1_n_0 ),
        .Q(\adc_action_ctrl_state_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hACA0AAAA)) 
    adc_config_i_1
       (.I0(adc_config_reg_0),
        .I1(Q[0]),
        .I2(slv_reg_wren__2),
        .I3(o_debug_0_sn_1),
        .I4(s00_axi_aresetn),
        .O(adc_config_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \adc_prev_state[0]_i_1 
       (.I0(\adc_action_ctrl_state_reg_n_0_[0] ),
        .I1(s00_axi_aresetn),
        .I2(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I3(adc_prev_state),
        .O(\adc_prev_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_prev_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\adc_prev_state[0]_i_1_n_0 ),
        .Q(adc_prev_state),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \o_debug[11]_INST_0 
       (.I0(reset),
        .O(o_debug[4]));
  FDCE \prev_start_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(L[2]),
        .Q(L[1]));
  FDCE \prev_start_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(L[1]),
        .Q(L[0]));
  FDRE \rd_value_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[0]),
        .Q(rd_value[0]),
        .R(1'b0));
  FDRE \rd_value_reg[10] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[10]),
        .Q(rd_value[10]),
        .R(1'b0));
  FDRE \rd_value_reg[11] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[11]),
        .Q(rd_value[11]),
        .R(1'b0));
  FDRE \rd_value_reg[12] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[12]),
        .Q(rd_value[12]),
        .R(1'b0));
  FDRE \rd_value_reg[13] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[13]),
        .Q(rd_value[13]),
        .R(1'b0));
  FDRE \rd_value_reg[14] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[14]),
        .Q(rd_value[14]),
        .R(1'b0));
  FDRE \rd_value_reg[15] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[15]),
        .Q(rd_value[15]),
        .R(1'b0));
  FDRE \rd_value_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[1]),
        .Q(rd_value[1]),
        .R(1'b0));
  FDRE \rd_value_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[2]),
        .Q(rd_value[2]),
        .R(1'b0));
  FDRE \rd_value_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[3]),
        .Q(rd_value[3]),
        .R(1'b0));
  FDRE \rd_value_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[4]),
        .Q(rd_value[4]),
        .R(1'b0));
  FDRE \rd_value_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[5]),
        .Q(rd_value[5]),
        .R(1'b0));
  FDRE \rd_value_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[6]),
        .Q(rd_value[6]),
        .R(1'b0));
  FDRE \rd_value_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[7]),
        .Q(rd_value[7]),
        .R(1'b0));
  FDRE \rd_value_reg[8] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[8]),
        .Q(rd_value[8]),
        .R(1'b0));
  FDRE \rd_value_reg[9] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_9),
        .D(o_data_from[9]),
        .Q(rd_value[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hACA0AAAA)) 
    read_reg_i_1
       (.I0(read_reg_reg_0),
        .I1(Q[2]),
        .I2(slv_reg_wren__2),
        .I3(o_debug_0_sn_1),
        .I4(s00_axi_aresetn),
        .O(read_reg_reg));
  FDCE ready_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(spi_core_n_7),
        .Q(o_debug_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_addrss[7]_i_2 
       (.I0(\adc_action_ctrl_state_reg_n_0_[2] ),
        .I1(\adc_action_ctrl_state_reg_n_0_[0] ),
        .O(\reg_addrss[7]_i_2_n_0 ));
  FDRE \reg_addrss_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_6),
        .D(\slv_reg1_reg[23] [16]),
        .Q(reg_addrss[0]),
        .R(1'b0));
  FDRE \reg_addrss_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_6),
        .D(\slv_reg1_reg[23] [17]),
        .Q(reg_addrss[1]),
        .R(1'b0));
  FDRE \reg_addrss_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_6),
        .D(\slv_reg1_reg[23] [18]),
        .Q(reg_addrss[2]),
        .R(1'b0));
  FDRE \reg_addrss_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_6),
        .D(\slv_reg1_reg[23] [19]),
        .Q(reg_addrss[3]),
        .R(1'b0));
  FDRE \reg_addrss_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_6),
        .D(\slv_reg1_reg[23] [20]),
        .Q(reg_addrss[4]),
        .R(1'b0));
  FDRE \reg_addrss_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_6),
        .D(\slv_reg1_reg[23] [21]),
        .Q(reg_addrss[5]),
        .R(1'b0));
  FDRE \reg_addrss_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_6),
        .D(\slv_reg1_reg[23] [22]),
        .Q(reg_addrss[6]),
        .R(1'b0));
  FDRE \reg_addrss_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_6),
        .D(\slv_reg1_reg[23] [23]),
        .Q(reg_addrss[7]),
        .R(1'b0));
  FDPE reset_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(s00_axi_aresetn),
        .Q(reset));
  LUT6 #(
    .INIT(64'h00007FFFFFFFFFFF)) 
    \slv_reg0[3]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg),
        .I2(axi_wready_reg),
        .I3(s00_axi_awvalid),
        .I4(o_debug_0_sn_1),
        .I5(s00_axi_aresetn),
        .O(SR));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[16]_i_1 
       (.I0(s00_axi_wdata[0]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[0]),
        .O(\slv_reg2_reg[16] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[17]_i_1 
       (.I0(s00_axi_wdata[1]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[1]),
        .O(\slv_reg2_reg[17] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[18]_i_1 
       (.I0(s00_axi_wdata[2]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[2]),
        .O(\slv_reg2_reg[18] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[19]_i_1 
       (.I0(s00_axi_wdata[3]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[3]),
        .O(\slv_reg2_reg[19] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[20]_i_1 
       (.I0(s00_axi_wdata[4]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[4]),
        .O(\slv_reg2_reg[20] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[21]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[5]),
        .O(\slv_reg2_reg[21] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[22]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[6]),
        .O(\slv_reg2_reg[22] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[23]_i_2 
       (.I0(s00_axi_wdata[7]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[7]),
        .O(\slv_reg2_reg[23] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[24]_i_1 
       (.I0(s00_axi_wdata[8]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[8]),
        .O(\slv_reg2_reg[24] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[25]_i_1 
       (.I0(s00_axi_wdata[9]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[9]),
        .O(\slv_reg2_reg[25] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[26]_i_1 
       (.I0(s00_axi_wdata[10]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[10]),
        .O(\slv_reg2_reg[26] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[27]_i_1 
       (.I0(s00_axi_wdata[11]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[11]),
        .O(\slv_reg2_reg[27] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[28]_i_1 
       (.I0(s00_axi_wdata[12]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[12]),
        .O(\slv_reg2_reg[28] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[29]_i_1 
       (.I0(s00_axi_wdata[13]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[13]),
        .O(\slv_reg2_reg[29] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[30]_i_1 
       (.I0(s00_axi_wdata[14]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[14]),
        .O(\slv_reg2_reg[30] ));
  LUT4 #(
    .INIT(16'hB888)) 
    \slv_reg2[31]_i_2 
       (.I0(s00_axi_wdata[15]),
        .I1(slv_reg_wren__2),
        .I2(o_debug_0_sn_1),
        .I3(rd_value[15]),
        .O(\slv_reg2_reg[31] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2 spi_core
       (.AR(\o_debug[7] ),
        .D({reg_addrss,spi_data_i}),
        .E(spi_core_n_5),
        .L(L),
        .Q(o_data_from),
        .adc_action_ctrl_state0__2(adc_action_ctrl_state0__2),
        .\adc_action_ctrl_state_reg[0] (spi_core_n_11),
        .\adc_action_ctrl_state_reg[0]_0 (\adc_action_ctrl_state_reg_n_0_[0] ),
        .\adc_action_ctrl_state_reg[2] (\adc_action_ctrl_state_reg_n_0_[2] ),
        .\adc_action_ctrl_state_reg[2]_0 (\reg_addrss[7]_i_2_n_0 ),
        .adc_config_reg(adc_config_reg_0),
        .i_MISO(i_MISO),
        .o_SCLK(o_SCLK),
        .o_debug(o_debug[1:0]),
        .\rd_value_reg[15] (spi_core_n_9),
        .read_reg_reg(read_reg_reg_0),
        .ready_i_reg(spi_core_n_7),
        .\reg_addrss_reg[7] (spi_core_n_6),
        .reset(reset),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .spi_free(spi_free),
        .spi_start_reg(spi_core_n_8),
        .write_reg_reg(write_reg_reg_0));
  FDRE \spi_data_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [0]),
        .Q(spi_data_i[0]),
        .R(1'b0));
  FDRE \spi_data_i_reg[10] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [10]),
        .Q(spi_data_i[10]),
        .R(1'b0));
  FDRE \spi_data_i_reg[11] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [11]),
        .Q(spi_data_i[11]),
        .R(1'b0));
  FDRE \spi_data_i_reg[12] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [12]),
        .Q(spi_data_i[12]),
        .R(1'b0));
  FDRE \spi_data_i_reg[13] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [13]),
        .Q(spi_data_i[13]),
        .R(1'b0));
  FDRE \spi_data_i_reg[14] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [14]),
        .Q(spi_data_i[14]),
        .R(1'b0));
  FDRE \spi_data_i_reg[15] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [15]),
        .Q(spi_data_i[15]),
        .R(1'b0));
  FDRE \spi_data_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [1]),
        .Q(spi_data_i[1]),
        .R(1'b0));
  FDRE \spi_data_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [2]),
        .Q(spi_data_i[2]),
        .R(1'b0));
  FDRE \spi_data_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [3]),
        .Q(spi_data_i[3]),
        .R(1'b0));
  FDRE \spi_data_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [4]),
        .Q(spi_data_i[4]),
        .R(1'b0));
  FDRE \spi_data_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [5]),
        .Q(spi_data_i[5]),
        .R(1'b0));
  FDRE \spi_data_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [6]),
        .Q(spi_data_i[6]),
        .R(1'b0));
  FDRE \spi_data_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [7]),
        .Q(spi_data_i[7]),
        .R(1'b0));
  FDRE \spi_data_i_reg[8] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [8]),
        .Q(spi_data_i[8]),
        .R(1'b0));
  FDRE \spi_data_i_reg[9] 
       (.C(s00_axi_aclk),
        .CE(spi_core_n_5),
        .D(\slv_reg1_reg[23] [9]),
        .Q(spi_data_i[9]),
        .R(1'b0));
  FDCE spi_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn),
        .D(spi_core_n_8),
        .Q(L[2]));
  LUT5 #(
    .INIT(32'hACA0AAAA)) 
    write_reg_i_1
       (.I0(write_reg_reg_0),
        .I1(Q[1]),
        .I2(slv_reg_wren__2),
        .I3(o_debug_0_sn_1),
        .I4(s00_axi_aresetn),
        .O(write_reg_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_M_ADC_readout
   (o_data_out_ch0,
    RST,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    i_Lclk,
    CLKB,
    i_ADclk,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    s00_axi_aresetn);
  output [15:0]o_data_out_ch0;
  output RST;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  input i_Lclk;
  input CLKB;
  input i_ADclk;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  input s00_axi_aresetn;

  wire CLKB;
  wire RST;
  wire bitslip_even;
  wire bitslip_odd;
  wire i_ADclk;
  wire i_Lclk;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire s00_axi_aresetn;
  wire NLW_iserdes0_even_O_UNCONNECTED;
  wire NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes0_odd_O_UNCONNECTED;
  wire NLW_iserdes0_odd_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes0_odd_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes1_n_O_UNCONNECTED;
  wire NLW_iserdes1_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes1_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes1_p_O_UNCONNECTED;
  wire NLW_iserdes1_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes1_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes2_n_O_UNCONNECTED;
  wire NLW_iserdes2_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes2_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes2_p_O_UNCONNECTED;
  wire NLW_iserdes2_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes2_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes3_n_O_UNCONNECTED;
  wire NLW_iserdes3_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes3_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes3_p_O_UNCONNECTED;
  wire NLW_iserdes3_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes3_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes4_n_O_UNCONNECTED;
  wire NLW_iserdes4_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes4_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes4_p_O_UNCONNECTED;
  wire NLW_iserdes4_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes4_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes5_n_O_UNCONNECTED;
  wire NLW_iserdes5_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes5_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes5_p_O_UNCONNECTED;
  wire NLW_iserdes5_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes5_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes6_n_O_UNCONNECTED;
  wire NLW_iserdes6_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes6_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes6_p_O_UNCONNECTED;
  wire NLW_iserdes6_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes6_p_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes7_n_O_UNCONNECTED;
  wire NLW_iserdes7_n_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes7_n_SHIFTOUT2_UNCONNECTED;
  wire NLW_iserdes7_p_O_UNCONNECTED;
  wire NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED;
  wire NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes0_even
       (.BITSLIP(bitslip_even),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch0_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes0_even_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch0[8]),
        .Q2(o_data_out_ch0[9]),
        .Q3(o_data_out_ch0[10]),
        .Q4(o_data_out_ch0[11]),
        .Q5(o_data_out_ch0[12]),
        .Q6(o_data_out_ch0[13]),
        .Q7(o_data_out_ch0[14]),
        .Q8(o_data_out_ch0[15]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes0_even_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes0_even_SHIFTOUT2_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    iserdes0_even_i_2
       (.I0(s00_axi_aresetn),
        .O(RST));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes0_odd
       (.BITSLIP(bitslip_odd),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch0_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes0_odd_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch0[0]),
        .Q2(o_data_out_ch0[1]),
        .Q3(o_data_out_ch0[2]),
        .Q4(o_data_out_ch0[3]),
        .Q5(o_data_out_ch0[4]),
        .Q6(o_data_out_ch0[5]),
        .Q7(o_data_out_ch0[6]),
        .Q8(o_data_out_ch0[7]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes0_odd_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes0_odd_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes1_n
       (.BITSLIP(bitslip_even),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch1_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes1_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch1[8]),
        .Q2(o_data_out_ch1[9]),
        .Q3(o_data_out_ch1[10]),
        .Q4(o_data_out_ch1[11]),
        .Q5(o_data_out_ch1[12]),
        .Q6(o_data_out_ch1[13]),
        .Q7(o_data_out_ch1[14]),
        .Q8(o_data_out_ch1[15]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes1_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes1_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes1_p
       (.BITSLIP(bitslip_odd),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch1_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes1_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch1[0]),
        .Q2(o_data_out_ch1[1]),
        .Q3(o_data_out_ch1[2]),
        .Q4(o_data_out_ch1[3]),
        .Q5(o_data_out_ch1[4]),
        .Q6(o_data_out_ch1[5]),
        .Q7(o_data_out_ch1[6]),
        .Q8(o_data_out_ch1[7]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes1_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes1_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes2_n
       (.BITSLIP(bitslip_even),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch2_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes2_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch2[8]),
        .Q2(o_data_out_ch2[9]),
        .Q3(o_data_out_ch2[10]),
        .Q4(o_data_out_ch2[11]),
        .Q5(o_data_out_ch2[12]),
        .Q6(o_data_out_ch2[13]),
        .Q7(o_data_out_ch2[14]),
        .Q8(o_data_out_ch2[15]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes2_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes2_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes2_p
       (.BITSLIP(bitslip_odd),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch2_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes2_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch2[0]),
        .Q2(o_data_out_ch2[1]),
        .Q3(o_data_out_ch2[2]),
        .Q4(o_data_out_ch2[3]),
        .Q5(o_data_out_ch2[4]),
        .Q6(o_data_out_ch2[5]),
        .Q7(o_data_out_ch2[6]),
        .Q8(o_data_out_ch2[7]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes2_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes2_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes3_n
       (.BITSLIP(bitslip_even),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch3_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes3_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch3[8]),
        .Q2(o_data_out_ch3[9]),
        .Q3(o_data_out_ch3[10]),
        .Q4(o_data_out_ch3[11]),
        .Q5(o_data_out_ch3[12]),
        .Q6(o_data_out_ch3[13]),
        .Q7(o_data_out_ch3[14]),
        .Q8(o_data_out_ch3[15]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes3_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes3_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes3_p
       (.BITSLIP(bitslip_odd),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch3_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes3_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch3[0]),
        .Q2(o_data_out_ch3[1]),
        .Q3(o_data_out_ch3[2]),
        .Q4(o_data_out_ch3[3]),
        .Q5(o_data_out_ch3[4]),
        .Q6(o_data_out_ch3[5]),
        .Q7(o_data_out_ch3[6]),
        .Q8(o_data_out_ch3[7]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes3_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes3_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes4_n
       (.BITSLIP(bitslip_even),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch4_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes4_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch4[8]),
        .Q2(o_data_out_ch4[9]),
        .Q3(o_data_out_ch4[10]),
        .Q4(o_data_out_ch4[11]),
        .Q5(o_data_out_ch4[12]),
        .Q6(o_data_out_ch4[13]),
        .Q7(o_data_out_ch4[14]),
        .Q8(o_data_out_ch4[15]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes4_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes4_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes4_p
       (.BITSLIP(bitslip_odd),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch4_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes4_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch4[0]),
        .Q2(o_data_out_ch4[1]),
        .Q3(o_data_out_ch4[2]),
        .Q4(o_data_out_ch4[3]),
        .Q5(o_data_out_ch4[4]),
        .Q6(o_data_out_ch4[5]),
        .Q7(o_data_out_ch4[6]),
        .Q8(o_data_out_ch4[7]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes4_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes4_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes5_n
       (.BITSLIP(bitslip_even),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch5_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes5_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch5[8]),
        .Q2(o_data_out_ch5[9]),
        .Q3(o_data_out_ch5[10]),
        .Q4(o_data_out_ch5[11]),
        .Q5(o_data_out_ch5[12]),
        .Q6(o_data_out_ch5[13]),
        .Q7(o_data_out_ch5[14]),
        .Q8(o_data_out_ch5[15]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes5_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes5_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes5_p
       (.BITSLIP(bitslip_odd),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch5_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes5_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch5[0]),
        .Q2(o_data_out_ch5[1]),
        .Q3(o_data_out_ch5[2]),
        .Q4(o_data_out_ch5[3]),
        .Q5(o_data_out_ch5[4]),
        .Q6(o_data_out_ch5[5]),
        .Q7(o_data_out_ch5[6]),
        .Q8(o_data_out_ch5[7]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes5_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes5_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes6_n
       (.BITSLIP(bitslip_even),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch6_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes6_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch6[8]),
        .Q2(o_data_out_ch6[9]),
        .Q3(o_data_out_ch6[10]),
        .Q4(o_data_out_ch6[11]),
        .Q5(o_data_out_ch6[12]),
        .Q6(o_data_out_ch6[13]),
        .Q7(o_data_out_ch6[14]),
        .Q8(o_data_out_ch6[15]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes6_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes6_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes6_p
       (.BITSLIP(bitslip_odd),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch6_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes6_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch6[0]),
        .Q2(o_data_out_ch6[1]),
        .Q3(o_data_out_ch6[2]),
        .Q4(o_data_out_ch6[3]),
        .Q5(o_data_out_ch6[4]),
        .Q6(o_data_out_ch6[5]),
        .Q7(o_data_out_ch6[6]),
        .Q8(o_data_out_ch6[7]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes6_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes6_p_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes7_n
       (.BITSLIP(bitslip_even),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch7_n),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes7_n_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch7[8]),
        .Q2(o_data_out_ch7[9]),
        .Q3(o_data_out_ch7[10]),
        .Q4(o_data_out_ch7[11]),
        .Q5(o_data_out_ch7[12]),
        .Q6(o_data_out_ch7[13]),
        .Q7(o_data_out_ch7[14]),
        .Q8(o_data_out_ch7[15]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes7_n_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes7_n_SHIFTOUT2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  ISERDESE2 #(
    .DATA_RATE("SDR"),
    .DATA_WIDTH(6),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("TRUE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("NONE"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    iserdes7_p
       (.BITSLIP(bitslip_odd),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(i_Lclk),
        .CLKB(CLKB),
        .CLKDIV(i_ADclk),
        .CLKDIVP(1'b0),
        .D(i_data_in_ch7_p),
        .DDLY(1'b0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(NLW_iserdes7_p_O_UNCONNECTED),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(o_data_out_ch7[0]),
        .Q2(o_data_out_ch7[1]),
        .Q3(o_data_out_ch7[2]),
        .Q4(o_data_out_ch7[3]),
        .Q5(o_data_out_ch7[4]),
        .Q6(o_data_out_ch7[5]),
        .Q7(o_data_out_ch7[6]),
        .Q8(o_data_out_ch7[7]),
        .RST(RST),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(NLW_iserdes7_p_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_iserdes7_p_SHIFTOUT2_UNCONNECTED));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0
   (o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_debug_0_sp_1,
    o_SCLK,
    \o_debug[7] ,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    o_debug_1_sp_1,
    o_debug_2_sp_1,
    o_debug_3_sp_1,
    o_debug,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_rdata,
    i_Lclk,
    CLKB,
    i_ADclk,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    i_MISO,
    s00_axi_araddr);
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  output o_debug_0_sp_1;
  output o_SCLK;
  output \o_debug[7] ;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output o_debug_1_sp_1;
  output o_debug_2_sp_1;
  output o_debug_3_sp_1;
  output [4:0]o_debug;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  input i_Lclk;
  input CLKB;
  input i_ADclk;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input i_MISO;
  input [2:0]s00_axi_araddr;

  wire CLKB;
  wire i_ADclk;
  wire i_Lclk;
  wire i_MISO;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire o_SCLK;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [4:0]o_debug;
  wire \o_debug[7] ;
  wire o_debug_0_sn_1;
  wire o_debug_1_sn_1;
  wire o_debug_2_sn_1;
  wire o_debug_3_sn_1;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign o_debug_0_sp_1 = o_debug_0_sn_1;
  assign o_debug_1_sp_1 = o_debug_1_sn_1;
  assign o_debug_2_sp_1 = o_debug_2_sn_1;
  assign o_debug_3_sp_1 = o_debug_3_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0_S00_AXI Mult_ADC_AXI_v1_0_S00_AXI_inst
       (.AR(\o_debug[7] ),
        .CLKB(CLKB),
        .i_ADclk(i_ADclk),
        .i_Lclk(i_Lclk),
        .i_MISO(i_MISO),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .o_SCLK(o_SCLK),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .o_debug(o_debug),
        .o_debug_0_sp_1(o_debug_0_sn_1),
        .o_debug_1_sp_1(o_debug_1_sn_1),
        .o_debug_2_sp_1(o_debug_2_sn_1),
        .o_debug_3_sp_1(o_debug_3_sn_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0_S00_AXI
   (o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_debug_0_sp_1,
    o_SCLK,
    AR,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    o_debug_1_sp_1,
    o_debug_2_sp_1,
    o_debug_3_sp_1,
    o_debug,
    s00_axi_bvalid,
    s00_axi_rvalid,
    s00_axi_rdata,
    i_Lclk,
    CLKB,
    i_ADclk,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    i_MISO,
    s00_axi_araddr);
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  output o_debug_0_sp_1;
  output o_SCLK;
  output [0:0]AR;
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output o_debug_1_sp_1;
  output o_debug_2_sp_1;
  output o_debug_3_sp_1;
  output [4:0]o_debug;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  input i_Lclk;
  input CLKB;
  input i_ADclk;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input i_MISO;
  input [2:0]s00_axi_araddr;

  wire [0:0]AR;
  wire CLKB;
  wire Inst_ADC_n_10;
  wire Inst_ADC_n_11;
  wire Inst_ADC_n_12;
  wire Inst_ADC_n_13;
  wire Inst_ADC_n_14;
  wire Inst_ADC_n_15;
  wire Inst_ADC_n_16;
  wire Inst_ADC_n_17;
  wire Inst_ADC_n_18;
  wire Inst_ADC_n_19;
  wire Inst_ADC_n_20;
  wire Inst_ADC_n_21;
  wire Inst_ADC_n_22;
  wire Inst_ADC_n_23;
  wire Inst_ADC_n_24;
  wire Inst_ADC_n_25;
  wire Inst_ADC_n_26;
  wire Inst_ADC_n_27;
  wire Inst_ADC_n_8;
  wire Inst_ADC_n_9;
  wire RST;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire [4:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire i_ADclk;
  wire i_Lclk;
  wire i_MISO;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire o_SCLK;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [4:0]o_debug;
  wire o_debug_0_sn_1;
  wire o_debug_1_sn_1;
  wire o_debug_2_sn_1;
  wire o_debug_3_sn_1;
  wire [31:2]p_1_in;
  wire [7:0]pointer_tbr;
  wire [31:0]reg_data_out__0;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire \slv_reg0[4]_i_1_n_0 ;
  wire \slv_reg0[4]_i_2_n_0 ;
  wire \slv_reg0[5]_i_1_n_0 ;
  wire \slv_reg0[6]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0[7]_i_2_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  assign o_debug_0_sp_1 = o_debug_0_sn_1;
  assign o_debug_1_sp_1 = o_debug_1_sn_1;
  assign o_debug_2_sp_1 = o_debug_2_sn_1;
  assign o_debug_3_sp_1 = o_debug_3_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ADC_ctrl Inst_ADC
       (.Q({\slv_reg0_reg_n_0_[2] ,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .SR(Inst_ADC_n_27),
        .adc_config_reg(Inst_ADC_n_10),
        .adc_config_reg_0(o_debug_1_sn_1),
        .axi_awready_reg(s00_axi_awready),
        .axi_wready_reg(s00_axi_wready),
        .i_MISO(i_MISO),
        .o_SCLK(o_SCLK),
        .o_debug(o_debug),
        .\o_debug[7] (AR),
        .o_debug_0_sp_1(o_debug_0_sn_1),
        .read_reg_reg(Inst_ADC_n_8),
        .read_reg_reg_0(o_debug_3_sn_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_wdata(s00_axi_wdata[31:16]),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg1_reg[23] ({pointer_tbr,\slv_reg1_reg_n_0_[15] ,\slv_reg1_reg_n_0_[14] ,\slv_reg1_reg_n_0_[13] ,\slv_reg1_reg_n_0_[12] ,\slv_reg1_reg_n_0_[11] ,\slv_reg1_reg_n_0_[10] ,\slv_reg1_reg_n_0_[9] ,\slv_reg1_reg_n_0_[8] ,\slv_reg1_reg_n_0_[7] ,\slv_reg1_reg_n_0_[6] ,\slv_reg1_reg_n_0_[5] ,\slv_reg1_reg_n_0_[4] ,\slv_reg1_reg_n_0_[3] ,\slv_reg1_reg_n_0_[2] ,\slv_reg1_reg_n_0_[1] ,\slv_reg1_reg_n_0_[0] }),
        .\slv_reg2_reg[16] (Inst_ADC_n_11),
        .\slv_reg2_reg[17] (Inst_ADC_n_12),
        .\slv_reg2_reg[18] (Inst_ADC_n_13),
        .\slv_reg2_reg[19] (Inst_ADC_n_14),
        .\slv_reg2_reg[20] (Inst_ADC_n_15),
        .\slv_reg2_reg[21] (Inst_ADC_n_16),
        .\slv_reg2_reg[22] (Inst_ADC_n_17),
        .\slv_reg2_reg[23] (Inst_ADC_n_18),
        .\slv_reg2_reg[24] (Inst_ADC_n_19),
        .\slv_reg2_reg[25] (Inst_ADC_n_20),
        .\slv_reg2_reg[26] (Inst_ADC_n_21),
        .\slv_reg2_reg[27] (Inst_ADC_n_22),
        .\slv_reg2_reg[28] (Inst_ADC_n_23),
        .\slv_reg2_reg[29] (Inst_ADC_n_24),
        .\slv_reg2_reg[30] (Inst_ADC_n_25),
        .\slv_reg2_reg[31] (Inst_ADC_n_26),
        .slv_reg_wren__2(slv_reg_wren__2),
        .write_reg_reg(Inst_ADC_n_9),
        .write_reg_reg_0(o_debug_2_sn_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_M_ADC_readout Inst_M_ADC_readout
       (.CLKB(CLKB),
        .RST(RST),
        .i_ADclk(i_ADclk),
        .i_Lclk(i_Lclk),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .s00_axi_aresetn(s00_axi_aresetn));
  FDRE adc_config_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Inst_ADC_n_10),
        .Q(o_debug_1_sn_1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .S(RST));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .S(RST));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .S(RST));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[4]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(RST));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(RST));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(axi_awaddr[4]),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(RST));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(RST));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[0]),
        .I4(sel0[0]),
        .O(reg_data_out__0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[10]),
        .I4(sel0[0]),
        .O(reg_data_out__0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[10] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[11]),
        .I4(sel0[0]),
        .O(reg_data_out__0[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[12]),
        .I4(sel0[0]),
        .O(reg_data_out__0[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[12] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[13]),
        .I4(sel0[0]),
        .O(reg_data_out__0[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[13] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[14]),
        .I4(sel0[0]),
        .O(reg_data_out__0[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[14] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[15]),
        .I4(sel0[0]),
        .O(reg_data_out__0[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[15] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[16]),
        .I4(sel0[0]),
        .O(reg_data_out__0[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(pointer_tbr[0]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[17]),
        .I4(sel0[0]),
        .O(reg_data_out__0[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(pointer_tbr[1]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[18]),
        .I4(sel0[0]),
        .O(reg_data_out__0[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(pointer_tbr[2]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[19]),
        .I4(sel0[0]),
        .O(reg_data_out__0[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(pointer_tbr[3]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[1]),
        .I4(sel0[0]),
        .O(reg_data_out__0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[20]),
        .I4(sel0[0]),
        .O(reg_data_out__0[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(pointer_tbr[4]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[21]),
        .I4(sel0[0]),
        .O(reg_data_out__0[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(pointer_tbr[5]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[22]),
        .I4(sel0[0]),
        .O(reg_data_out__0[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(pointer_tbr[6]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[23]),
        .I4(sel0[0]),
        .O(reg_data_out__0[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(pointer_tbr[7]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[24]),
        .I4(sel0[0]),
        .O(reg_data_out__0[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[24] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[25]),
        .I4(sel0[0]),
        .O(reg_data_out__0[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[25] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[26]),
        .I4(sel0[0]),
        .O(reg_data_out__0[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[26] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[27]),
        .I4(sel0[0]),
        .O(reg_data_out__0[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[27] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[28]),
        .I4(sel0[0]),
        .O(reg_data_out__0[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[28] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[29]),
        .I4(sel0[0]),
        .O(reg_data_out__0[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[29] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[2]),
        .I4(sel0[0]),
        .O(reg_data_out__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[2] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[30]),
        .I4(sel0[0]),
        .O(reg_data_out__0[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[30] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[31]),
        .I4(sel0[0]),
        .O(reg_data_out__0[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[31] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[3]),
        .I4(sel0[0]),
        .O(reg_data_out__0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[4]),
        .I4(sel0[0]),
        .O(reg_data_out__0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[4] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[5]),
        .I4(sel0[0]),
        .O(reg_data_out__0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[6]),
        .I4(sel0[0]),
        .O(reg_data_out__0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[6] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[7]),
        .I4(sel0[0]),
        .O(reg_data_out__0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[7] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[8]),
        .I4(sel0[0]),
        .O(reg_data_out__0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[8] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(slv_reg4[9]),
        .I4(sel0[0]),
        .O(reg_data_out__0[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[0]),
        .Q(s00_axi_rdata[0]),
        .R(RST));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[10]),
        .Q(s00_axi_rdata[10]),
        .R(RST));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[11]),
        .Q(s00_axi_rdata[11]),
        .R(RST));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[12]),
        .Q(s00_axi_rdata[12]),
        .R(RST));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[13]),
        .Q(s00_axi_rdata[13]),
        .R(RST));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[14]),
        .Q(s00_axi_rdata[14]),
        .R(RST));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[15]),
        .Q(s00_axi_rdata[15]),
        .R(RST));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[16]),
        .Q(s00_axi_rdata[16]),
        .R(RST));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[17]),
        .Q(s00_axi_rdata[17]),
        .R(RST));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[18]),
        .Q(s00_axi_rdata[18]),
        .R(RST));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[19]),
        .Q(s00_axi_rdata[19]),
        .R(RST));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[1]),
        .Q(s00_axi_rdata[1]),
        .R(RST));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[20]),
        .Q(s00_axi_rdata[20]),
        .R(RST));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[21]),
        .Q(s00_axi_rdata[21]),
        .R(RST));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[22]),
        .Q(s00_axi_rdata[22]),
        .R(RST));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[23]),
        .Q(s00_axi_rdata[23]),
        .R(RST));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[24]),
        .Q(s00_axi_rdata[24]),
        .R(RST));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[25]),
        .Q(s00_axi_rdata[25]),
        .R(RST));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[26]),
        .Q(s00_axi_rdata[26]),
        .R(RST));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[27]),
        .Q(s00_axi_rdata[27]),
        .R(RST));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[28]),
        .Q(s00_axi_rdata[28]),
        .R(RST));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[29]),
        .Q(s00_axi_rdata[29]),
        .R(RST));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[2]),
        .Q(s00_axi_rdata[2]),
        .R(RST));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[30]),
        .Q(s00_axi_rdata[30]),
        .R(RST));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[31]),
        .Q(s00_axi_rdata[31]),
        .R(RST));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[3]),
        .Q(s00_axi_rdata[3]),
        .R(RST));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[4]),
        .Q(s00_axi_rdata[4]),
        .R(RST));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[5]),
        .Q(s00_axi_rdata[5]),
        .R(RST));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[6]),
        .Q(s00_axi_rdata[6]),
        .R(RST));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[7]),
        .Q(s00_axi_rdata[7]),
        .R(RST));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[8]),
        .Q(s00_axi_rdata[8]),
        .R(RST));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out__0[9]),
        .Q(s00_axi_rdata[9]),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    read_reg_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awready),
        .I2(s00_axi_wready),
        .I3(s00_axi_awvalid),
        .O(slv_reg_wren__2));
  FDRE read_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Inst_ADC_n_8),
        .Q(o_debug_3_sn_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[3]_i_2 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hE4FFF0F0E400F0F0)) 
    \slv_reg0[4]_i_1 
       (.I0(axi_awaddr[4]),
        .I1(s00_axi_wdata[4]),
        .I2(o_debug_0_sn_1),
        .I3(\slv_reg0[4]_i_2_n_0 ),
        .I4(slv_reg_wren__2),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\slv_reg0[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEE10)) 
    \slv_reg0[4]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[4]),
        .O(\slv_reg0[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[5]_i_1 
       (.I0(s00_axi_wdata[5]),
        .I1(slv_reg_wren__2),
        .I2(\slv_reg0[7]_i_2_n_0 ),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\slv_reg0[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[6]_i_1 
       (.I0(s00_axi_wdata[6]),
        .I1(slv_reg_wren__2),
        .I2(\slv_reg0[7]_i_2_n_0 ),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(\slv_reg0[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_wdata[7]),
        .I1(slv_reg_wren__2),
        .I2(\slv_reg0[7]_i_2_n_0 ),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg0[7]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .O(\slv_reg0[7]_i_2_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(Inst_ADC_n_27));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(RST));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(RST));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(RST));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(RST));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(RST));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(RST));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(RST));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(RST));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(RST));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(RST));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(Inst_ADC_n_27));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(RST));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(RST));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(RST));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(RST));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(RST));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(RST));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(RST));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(RST));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(RST));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(RST));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(Inst_ADC_n_27));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(RST));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(RST));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[2]),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(Inst_ADC_n_27));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[4]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(RST));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[5]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(RST));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[6]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(RST));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[7]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(RST));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(RST));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(RST));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[1]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[2]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(s00_axi_wstrb[0]),
        .I4(axi_awaddr[2]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(RST));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(RST));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(RST));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(RST));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(RST));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(RST));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(RST));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(pointer_tbr[0]),
        .R(RST));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(pointer_tbr[1]),
        .R(RST));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(pointer_tbr[2]),
        .R(RST));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(pointer_tbr[3]),
        .R(RST));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(RST));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(pointer_tbr[4]),
        .R(RST));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(pointer_tbr[5]),
        .R(RST));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(pointer_tbr[6]),
        .R(RST));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(pointer_tbr[7]),
        .R(RST));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(RST));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(RST));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(RST));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(RST));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(RST));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(RST));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(RST));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(RST));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(RST));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(RST));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(RST));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(RST));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(RST));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(RST));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(RST));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(RST));
  LUT5 #(
    .INIT(32'h00080000)) 
    \slv_reg2[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(slv_reg_wren__2),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h555555D5)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h555555D5)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[4]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \slv_reg2[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(slv_reg_wren__2),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(RST));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(RST));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(RST));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(RST));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(RST));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(RST));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(RST));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_11),
        .Q(slv_reg2[16]),
        .R(RST));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_12),
        .Q(slv_reg2[17]),
        .R(RST));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_13),
        .Q(slv_reg2[18]),
        .R(RST));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_14),
        .Q(slv_reg2[19]),
        .R(RST));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(RST));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_15),
        .Q(slv_reg2[20]),
        .R(RST));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_16),
        .Q(slv_reg2[21]),
        .R(RST));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_17),
        .Q(slv_reg2[22]),
        .R(RST));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(Inst_ADC_n_18),
        .Q(slv_reg2[23]),
        .R(RST));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_19),
        .Q(slv_reg2[24]),
        .R(RST));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_20),
        .Q(slv_reg2[25]),
        .R(RST));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_21),
        .Q(slv_reg2[26]),
        .R(RST));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_22),
        .Q(slv_reg2[27]),
        .R(RST));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_23),
        .Q(slv_reg2[28]),
        .R(RST));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_24),
        .Q(slv_reg2[29]),
        .R(RST));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(RST));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_25),
        .Q(slv_reg2[30]),
        .R(RST));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(Inst_ADC_n_26),
        .Q(slv_reg2[31]),
        .R(RST));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(RST));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(RST));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(RST));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(RST));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(RST));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(RST));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(RST));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(RST));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(RST));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(RST));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(RST));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(RST));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(RST));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(RST));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(RST));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(RST));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(RST));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(RST));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(RST));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(RST));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(RST));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(RST));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(RST));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(RST));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(RST));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(RST));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(RST));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(RST));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(RST));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(RST));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(RST));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(RST));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(RST));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(RST));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(RST));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(RST));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(RST));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(RST));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(RST));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[4]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(RST));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(RST));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(RST));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(RST));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(RST));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(RST));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(RST));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(RST));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(RST));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(RST));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(RST));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(RST));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(RST));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(RST));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(RST));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(RST));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(RST));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(RST));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(RST));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(RST));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(RST));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(RST));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(RST));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(RST));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(RST));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(RST));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(RST));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(RST));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(RST));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(RST));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(RST));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(RST));
  FDRE write_reg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Inst_ADC_n_9),
        .Q(o_debug_2_sn_1),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPI_core_v2
   (o_SCLK,
    AR,
    spi_free,
    o_debug,
    E,
    \reg_addrss_reg[7] ,
    ready_i_reg,
    spi_start_reg,
    \rd_value_reg[15] ,
    adc_action_ctrl_state0__2,
    \adc_action_ctrl_state_reg[0] ,
    Q,
    s00_axi_aclk,
    L,
    reset,
    s00_axi_aresetn,
    \adc_action_ctrl_state_reg[2] ,
    \adc_action_ctrl_state_reg[0]_0 ,
    adc_config_reg,
    write_reg_reg,
    \adc_action_ctrl_state_reg[2]_0 ,
    read_reg_reg,
    D,
    i_MISO);
  output o_SCLK;
  output [0:0]AR;
  output spi_free;
  output [1:0]o_debug;
  output [0:0]E;
  output [0:0]\reg_addrss_reg[7] ;
  output ready_i_reg;
  output spi_start_reg;
  output [0:0]\rd_value_reg[15] ;
  output adc_action_ctrl_state0__2;
  output \adc_action_ctrl_state_reg[0] ;
  output [15:0]Q;
  input s00_axi_aclk;
  input [0:2]L;
  input reset;
  input s00_axi_aresetn;
  input \adc_action_ctrl_state_reg[2] ;
  input \adc_action_ctrl_state_reg[0]_0 ;
  input adc_config_reg;
  input write_reg_reg;
  input \adc_action_ctrl_state_reg[2]_0 ;
  input read_reg_reg;
  input [23:0]D;
  input i_MISO;

  wire [0:0]AR;
  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_sequential_sm_master[0]_i_1_n_0 ;
  wire \FSM_sequential_sm_master[0]_i_2_n_0 ;
  wire \FSM_sequential_sm_master[1]_i_1_n_0 ;
  wire [0:2]L;
  wire MOSI01_out;
  wire MOSI_i_10_n_0;
  wire MOSI_i_11_n_0;
  wire MOSI_i_12_n_0;
  wire MOSI_i_1_n_0;
  wire MOSI_i_7_n_0;
  wire MOSI_i_8_n_0;
  wire MOSI_i_9_n_0;
  wire MOSI_reg_i_2_n_0;
  wire MOSI_reg_i_3_n_0;
  wire MOSI_reg_i_5_n_0;
  wire MOSI_reg_i_6_n_0;
  wire [15:0]Q;
  wire adc_action_ctrl_state0__2;
  wire \adc_action_ctrl_state_reg[0] ;
  wire \adc_action_ctrl_state_reg[0]_0 ;
  wire \adc_action_ctrl_state_reg[2] ;
  wire \adc_action_ctrl_state_reg[2]_0 ;
  wire adc_config_reg;
  wire bit_cntr0;
  wire bit_cntr16_out;
  wire [4:0]bit_cntr_reg__0;
  wire \core_state[0]_i_1_n_0 ;
  wire \data_i[23]_i_1_n_0 ;
  wire \data_i_reg_n_0_[0] ;
  wire \data_i_reg_n_0_[10] ;
  wire \data_i_reg_n_0_[11] ;
  wire \data_i_reg_n_0_[12] ;
  wire \data_i_reg_n_0_[13] ;
  wire \data_i_reg_n_0_[14] ;
  wire \data_i_reg_n_0_[15] ;
  wire \data_i_reg_n_0_[16] ;
  wire \data_i_reg_n_0_[17] ;
  wire \data_i_reg_n_0_[18] ;
  wire \data_i_reg_n_0_[19] ;
  wire \data_i_reg_n_0_[1] ;
  wire \data_i_reg_n_0_[20] ;
  wire \data_i_reg_n_0_[21] ;
  wire \data_i_reg_n_0_[22] ;
  wire \data_i_reg_n_0_[23] ;
  wire \data_i_reg_n_0_[2] ;
  wire \data_i_reg_n_0_[3] ;
  wire \data_i_reg_n_0_[4] ;
  wire \data_i_reg_n_0_[5] ;
  wire \data_i_reg_n_0_[6] ;
  wire \data_i_reg_n_0_[7] ;
  wire \data_i_reg_n_0_[8] ;
  wire \data_i_reg_n_0_[9] ;
  wire free_i_i_1_n_0;
  wire i_MISO;
  wire [15:0]incoming_i;
  wire \incoming_i[0]_i_1_n_0 ;
  wire \incoming_i[10]_i_1_n_0 ;
  wire \incoming_i[11]_i_1_n_0 ;
  wire \incoming_i[11]_i_2_n_0 ;
  wire \incoming_i[12]_i_1_n_0 ;
  wire \incoming_i[12]_i_2_n_0 ;
  wire \incoming_i[13]_i_1_n_0 ;
  wire \incoming_i[13]_i_2_n_0 ;
  wire \incoming_i[14]_i_1_n_0 ;
  wire \incoming_i[14]_i_2_n_0 ;
  wire \incoming_i[15]_i_1_n_0 ;
  wire \incoming_i[15]_i_2_n_0 ;
  wire \incoming_i[15]_i_3_n_0 ;
  wire \incoming_i[1]_i_1_n_0 ;
  wire \incoming_i[2]_i_1_n_0 ;
  wire \incoming_i[3]_i_1_n_0 ;
  wire \incoming_i[3]_i_2_n_0 ;
  wire \incoming_i[4]_i_1_n_0 ;
  wire \incoming_i[5]_i_1_n_0 ;
  wire \incoming_i[6]_i_1_n_0 ;
  wire \incoming_i[7]_i_1_n_0 ;
  wire \incoming_i[7]_i_2_n_0 ;
  wire \incoming_i[8]_i_1_n_0 ;
  wire \incoming_i[9]_i_1_n_0 ;
  wire nCS_i_i_1_n_0;
  wire o_SCLK;
  wire \o_data_from[15]_i_1_n_0 ;
  wire [1:0]o_debug;
  wire [4:0]p_0_in;
  wire [0:0]\rd_value_reg[15] ;
  wire read_reg_reg;
  wire ready_i_reg;
  wire [0:0]\reg_addrss_reg[7] ;
  wire reset;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \scl_cntr[0]_i_1_n_0 ;
  wire \scl_cntr[1]_i_1_n_0 ;
  wire \scl_cntr[2]_i_1_n_0 ;
  wire \scl_cntr[3]_i_1_n_0 ;
  wire \scl_cntr[4]_i_1_n_0 ;
  wire \scl_cntr_reg_n_0_[0] ;
  wire \scl_cntr_reg_n_0_[1] ;
  wire \scl_cntr_reg_n_0_[2] ;
  wire \scl_cntr_reg_n_0_[3] ;
  wire \scl_cntr_reg_n_0_[4] ;
  wire sclk_i_i_1_n_0;
  wire sclk_i_prev;
  (* RTL_KEEP = "yes" *) wire [1:0]sm_master;
  wire spi_free;
  wire spi_reset;
  wire spi_start_reg;
  wire write_reg_reg;

  LUT6 #(
    .INIT(64'h0B0B0B0B0B080808)) 
    \FSM_sequential_sm_master[0]_i_1 
       (.I0(\FSM_sequential_sm_master[0]_i_2_n_0 ),
        .I1(sm_master[1]),
        .I2(sm_master[0]),
        .I3(L[2]),
        .I4(spi_free),
        .I5(sm_master[0]),
        .O(\FSM_sequential_sm_master[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \FSM_sequential_sm_master[0]_i_2 
       (.I0(bit_cntr_reg__0[0]),
        .I1(bit_cntr_reg__0[2]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[3]),
        .I4(bit_cntr_reg__0[4]),
        .O(\FSM_sequential_sm_master[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h67776666)) 
    \FSM_sequential_sm_master[1]_i_1 
       (.I0(sm_master[1]),
        .I1(sm_master[0]),
        .I2(L[2]),
        .I3(spi_free),
        .I4(sm_master[1]),
        .O(\FSM_sequential_sm_master[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_sm_master[1]_i_2 
       (.I0(s00_axi_aresetn),
        .I1(reset),
        .O(spi_reset));
  (* FSM_ENCODED_STATES = "st_idle:00,st_start:01,st_stop:11,st_write_add:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_sm_master_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(spi_reset),
        .D(\FSM_sequential_sm_master[0]_i_1_n_0 ),
        .Q(sm_master[0]));
  (* FSM_ENCODED_STATES = "st_idle:00,st_start:01,st_stop:11,st_write_add:10" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_sm_master_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(spi_reset),
        .D(\FSM_sequential_sm_master[1]_i_1_n_0 ),
        .Q(sm_master[1]));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    MOSI_i_1
       (.I0(MOSI_reg_i_2_n_0),
        .I1(bit_cntr_reg__0[3]),
        .I2(bit_cntr_reg__0[4]),
        .I3(MOSI_reg_i_3_n_0),
        .I4(MOSI01_out),
        .I5(o_debug[0]),
        .O(MOSI_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_10
       (.I0(\data_i_reg_n_0_[0] ),
        .I1(\data_i_reg_n_0_[1] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[2] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[3] ),
        .O(MOSI_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_11
       (.I0(\data_i_reg_n_0_[12] ),
        .I1(\data_i_reg_n_0_[13] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[14] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[15] ),
        .O(MOSI_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_12
       (.I0(\data_i_reg_n_0_[8] ),
        .I1(\data_i_reg_n_0_[9] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[10] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[11] ),
        .O(MOSI_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00101010)) 
    MOSI_i_4
       (.I0(o_SCLK),
        .I1(AR),
        .I2(sclk_i_prev),
        .I3(bit_cntr_reg__0[4]),
        .I4(bit_cntr_reg__0[3]),
        .O(MOSI01_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_7
       (.I0(\data_i_reg_n_0_[20] ),
        .I1(\data_i_reg_n_0_[21] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[22] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[23] ),
        .O(MOSI_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_8
       (.I0(\data_i_reg_n_0_[16] ),
        .I1(\data_i_reg_n_0_[17] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[18] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[19] ),
        .O(MOSI_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MOSI_i_9
       (.I0(\data_i_reg_n_0_[4] ),
        .I1(\data_i_reg_n_0_[5] ),
        .I2(bit_cntr_reg__0[1]),
        .I3(\data_i_reg_n_0_[6] ),
        .I4(bit_cntr_reg__0[0]),
        .I5(\data_i_reg_n_0_[7] ),
        .O(MOSI_i_9_n_0));
  FDRE MOSI_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(MOSI_i_1_n_0),
        .Q(o_debug[0]),
        .R(1'b0));
  MUXF8 MOSI_reg_i_2
       (.I0(MOSI_reg_i_5_n_0),
        .I1(MOSI_reg_i_6_n_0),
        .O(MOSI_reg_i_2_n_0),
        .S(bit_cntr_reg__0[3]));
  MUXF7 MOSI_reg_i_3
       (.I0(MOSI_i_7_n_0),
        .I1(MOSI_i_8_n_0),
        .O(MOSI_reg_i_3_n_0),
        .S(bit_cntr_reg__0[2]));
  MUXF7 MOSI_reg_i_5
       (.I0(MOSI_i_9_n_0),
        .I1(MOSI_i_10_n_0),
        .O(MOSI_reg_i_5_n_0),
        .S(bit_cntr_reg__0[2]));
  MUXF7 MOSI_reg_i_6
       (.I0(MOSI_i_11_n_0),
        .I1(MOSI_i_12_n_0),
        .O(MOSI_reg_i_6_n_0),
        .S(bit_cntr_reg__0[2]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \adc_action_ctrl_state[0]_i_2 
       (.I0(spi_free),
        .I1(write_reg_reg),
        .I2(read_reg_reg),
        .I3(adc_config_reg),
        .O(\adc_action_ctrl_state_reg[0] ));
  LUT4 #(
    .INIT(16'h0002)) 
    \adc_action_ctrl_state[2]_i_3 
       (.I0(spi_free),
        .I1(L[0]),
        .I2(L[2]),
        .I3(L[1]),
        .O(adc_action_ctrl_state0__2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000777F)) 
    \bit_cntr[0]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[2]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \bit_cntr[1]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07707700)) 
    \bit_cntr[2]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[2]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h5222222A)) 
    \bit_cntr[3]_i_1 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[2]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cntr[4]_i_1 
       (.I0(o_SCLK),
        .I1(sclk_i_prev),
        .O(bit_cntr0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6444444C)) 
    \bit_cntr[4]_i_2 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[1]),
        .I3(bit_cntr_reg__0[2]),
        .I4(bit_cntr_reg__0[0]),
        .O(p_0_in[4]));
  FDCE \bit_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(bit_cntr0),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(bit_cntr_reg__0[0]));
  FDCE \bit_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(bit_cntr0),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(bit_cntr_reg__0[1]));
  FDCE \bit_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(bit_cntr0),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(bit_cntr_reg__0[2]));
  FDCE \bit_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(bit_cntr0),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(bit_cntr_reg__0[3]));
  FDCE \bit_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(bit_cntr0),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(bit_cntr_reg__0[4]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \core_state[0]_i_1 
       (.I0(o_debug[1]),
        .I1(s00_axi_aresetn),
        .I2(reset),
        .I3(sm_master[0]),
        .O(\core_state[0]_i_1_n_0 ));
  FDRE \core_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\core_state[0]_i_1_n_0 ),
        .Q(o_debug[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \data_i[23]_i_1 
       (.I0(sm_master[1]),
        .I1(sm_master[0]),
        .I2(L[2]),
        .I3(spi_free),
        .I4(reset),
        .I5(s00_axi_aresetn),
        .O(\data_i[23]_i_1_n_0 ));
  FDRE \data_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[0]),
        .Q(\data_i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_i_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[10]),
        .Q(\data_i_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \data_i_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[11]),
        .Q(\data_i_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \data_i_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[12]),
        .Q(\data_i_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \data_i_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[13]),
        .Q(\data_i_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \data_i_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[14]),
        .Q(\data_i_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \data_i_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[15]),
        .Q(\data_i_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \data_i_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[16]),
        .Q(\data_i_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \data_i_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[17]),
        .Q(\data_i_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \data_i_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[18]),
        .Q(\data_i_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \data_i_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[19]),
        .Q(\data_i_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \data_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[1]),
        .Q(\data_i_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \data_i_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[20]),
        .Q(\data_i_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \data_i_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[21]),
        .Q(\data_i_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \data_i_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[22]),
        .Q(\data_i_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \data_i_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[23]),
        .Q(\data_i_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \data_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[2]),
        .Q(\data_i_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \data_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[3]),
        .Q(\data_i_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \data_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[4]),
        .Q(\data_i_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \data_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[5]),
        .Q(\data_i_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \data_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[6]),
        .Q(\data_i_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \data_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[7]),
        .Q(\data_i_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \data_i_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[8]),
        .Q(\data_i_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \data_i_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\data_i[23]_i_1_n_0 ),
        .D(D[9]),
        .Q(\data_i_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD03)) 
    free_i_i_1
       (.I0(L[2]),
        .I1(sm_master[0]),
        .I2(sm_master[1]),
        .I3(spi_free),
        .O(free_i_i_1_n_0));
  FDCE free_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(spi_reset),
        .D(free_i_i_1_n_0),
        .Q(spi_free));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \incoming_i[0]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[12]_i_2_n_0 ),
        .I3(\incoming_i[3]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[0]),
        .O(\incoming_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[10]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[11]_i_2_n_0 ),
        .I3(\incoming_i[14]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[10]),
        .O(\incoming_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[11]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[11]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_3_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[11]),
        .O(\incoming_i[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \incoming_i[11]_i_2 
       (.I0(bit_cntr_reg__0[4]),
        .I1(bit_cntr_reg__0[3]),
        .I2(bit_cntr_reg__0[2]),
        .O(\incoming_i[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \incoming_i[12]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[12]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[12]),
        .O(\incoming_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \incoming_i[12]_i_2 
       (.I0(bit_cntr_reg__0[1]),
        .I1(bit_cntr_reg__0[0]),
        .O(\incoming_i[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[13]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[15]_i_2_n_0 ),
        .I3(\incoming_i[13]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[13]),
        .O(\incoming_i[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \incoming_i[13]_i_2 
       (.I0(bit_cntr_reg__0[0]),
        .I1(bit_cntr_reg__0[1]),
        .O(\incoming_i[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[14]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[15]_i_2_n_0 ),
        .I3(\incoming_i[14]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[14]),
        .O(\incoming_i[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \incoming_i[14]_i_2 
       (.I0(bit_cntr_reg__0[1]),
        .I1(bit_cntr_reg__0[0]),
        .O(\incoming_i[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[15]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[15]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_3_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[15]),
        .O(\incoming_i[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \incoming_i[15]_i_2 
       (.I0(bit_cntr_reg__0[2]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[3]),
        .O(\incoming_i[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \incoming_i[15]_i_3 
       (.I0(bit_cntr_reg__0[1]),
        .I1(bit_cntr_reg__0[0]),
        .O(\incoming_i[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \incoming_i[15]_i_4 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .O(bit_cntr16_out));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[1]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[3]_i_2_n_0 ),
        .I3(\incoming_i[13]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[1]),
        .O(\incoming_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[2]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[3]_i_2_n_0 ),
        .I3(\incoming_i[14]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[2]),
        .O(\incoming_i[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[3]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[3]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_3_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[3]),
        .O(\incoming_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \incoming_i[3]_i_2 
       (.I0(bit_cntr_reg__0[3]),
        .I1(bit_cntr_reg__0[4]),
        .I2(bit_cntr_reg__0[2]),
        .O(\incoming_i[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \incoming_i[4]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[12]_i_2_n_0 ),
        .I3(\incoming_i[7]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[4]),
        .O(\incoming_i[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[5]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[7]_i_2_n_0 ),
        .I3(\incoming_i[13]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[5]),
        .O(\incoming_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[6]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[7]_i_2_n_0 ),
        .I3(\incoming_i[14]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[6]),
        .O(\incoming_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[7]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[7]_i_2_n_0 ),
        .I3(\incoming_i[15]_i_3_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[7]),
        .O(\incoming_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \incoming_i[7]_i_2 
       (.I0(bit_cntr_reg__0[2]),
        .I1(bit_cntr_reg__0[3]),
        .I2(bit_cntr_reg__0[4]),
        .O(\incoming_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \incoming_i[8]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[12]_i_2_n_0 ),
        .I3(\incoming_i[11]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[8]),
        .O(\incoming_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \incoming_i[9]_i_1 
       (.I0(i_MISO),
        .I1(bit_cntr0),
        .I2(\incoming_i[11]_i_2_n_0 ),
        .I3(\incoming_i[13]_i_2_n_0 ),
        .I4(bit_cntr16_out),
        .I5(incoming_i[9]),
        .O(\incoming_i[9]_i_1_n_0 ));
  FDCE \incoming_i_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[0]_i_1_n_0 ),
        .Q(incoming_i[0]));
  FDCE \incoming_i_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[10]_i_1_n_0 ),
        .Q(incoming_i[10]));
  FDCE \incoming_i_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[11]_i_1_n_0 ),
        .Q(incoming_i[11]));
  FDCE \incoming_i_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[12]_i_1_n_0 ),
        .Q(incoming_i[12]));
  FDCE \incoming_i_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[13]_i_1_n_0 ),
        .Q(incoming_i[13]));
  FDCE \incoming_i_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[14]_i_1_n_0 ),
        .Q(incoming_i[14]));
  FDCE \incoming_i_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[15]_i_1_n_0 ),
        .Q(incoming_i[15]));
  FDCE \incoming_i_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[1]_i_1_n_0 ),
        .Q(incoming_i[1]));
  FDCE \incoming_i_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[2]_i_1_n_0 ),
        .Q(incoming_i[2]));
  FDCE \incoming_i_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[3]_i_1_n_0 ),
        .Q(incoming_i[3]));
  FDCE \incoming_i_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[4]_i_1_n_0 ),
        .Q(incoming_i[4]));
  FDCE \incoming_i_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[5]_i_1_n_0 ),
        .Q(incoming_i[5]));
  FDCE \incoming_i_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[6]_i_1_n_0 ),
        .Q(incoming_i[6]));
  FDCE \incoming_i_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[7]_i_1_n_0 ),
        .Q(incoming_i[7]));
  FDCE \incoming_i_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[8]_i_1_n_0 ),
        .Q(incoming_i[8]));
  FDCE \incoming_i_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\incoming_i[9]_i_1_n_0 ),
        .Q(incoming_i[9]));
  LUT5 #(
    .INIT(32'hFFFB0009)) 
    nCS_i_i_1
       (.I0(sm_master[1]),
        .I1(sm_master[0]),
        .I2(reset),
        .I3(s00_axi_aresetn),
        .I4(AR),
        .O(nCS_i_i_1_n_0));
  FDRE nCS_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(nCS_i_i_1_n_0),
        .Q(AR),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \o_data_from[15]_i_1 
       (.I0(sm_master[1]),
        .I1(sm_master[0]),
        .I2(reset),
        .I3(s00_axi_aresetn),
        .O(\o_data_from[15]_i_1_n_0 ));
  FDRE \o_data_from_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_data_from_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \o_data_from_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \o_data_from_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \o_data_from_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \o_data_from_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \o_data_from_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \o_data_from_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_data_from_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_data_from_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \o_data_from_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \o_data_from_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \o_data_from_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \o_data_from_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \o_data_from_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \o_data_from_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\o_data_from[15]_i_1_n_0 ),
        .D(incoming_i[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \rd_value[15]_i_1 
       (.I0(\adc_action_ctrl_state_reg[2] ),
        .I1(adc_action_ctrl_state0__2),
        .I2(\adc_action_ctrl_state_reg[0]_0 ),
        .I3(s00_axi_aresetn),
        .O(\rd_value_reg[15] ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    ready_i_i_1
       (.I0(write_reg_reg),
        .I1(read_reg_reg),
        .I2(spi_free),
        .I3(adc_config_reg),
        .I4(\adc_action_ctrl_state_reg[0]_0 ),
        .I5(\adc_action_ctrl_state_reg[2] ),
        .O(ready_i_reg));
  LUT6 #(
    .INIT(64'h0000000000004440)) 
    \reg_addrss[7]_i_1 
       (.I0(\adc_action_ctrl_state_reg[2]_0 ),
        .I1(spi_free),
        .I2(write_reg_reg),
        .I3(read_reg_reg),
        .I4(adc_config_reg),
        .I5(s00_axi_aresetn),
        .O(\reg_addrss_reg[7] ));
  LUT4 #(
    .INIT(16'h001F)) 
    \scl_cntr[0]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[2] ),
        .I2(\scl_cntr_reg_n_0_[4] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h001F1F00)) 
    \scl_cntr[1]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[2] ),
        .I2(\scl_cntr_reg_n_0_[4] ),
        .I3(\scl_cntr_reg_n_0_[1] ),
        .I4(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h07303030)) 
    \scl_cntr[2]_i_1 
       (.I0(\scl_cntr_reg_n_0_[3] ),
        .I1(\scl_cntr_reg_n_0_[4] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[1] ),
        .I4(\scl_cntr_reg_n_0_[0] ),
        .O(\scl_cntr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h14444444)) 
    \scl_cntr[3]_i_1 
       (.I0(\scl_cntr_reg_n_0_[4] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .I4(\scl_cntr_reg_n_0_[1] ),
        .O(\scl_cntr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40002222)) 
    \scl_cntr[4]_i_1 
       (.I0(\scl_cntr_reg_n_0_[4] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[1] ),
        .I3(\scl_cntr_reg_n_0_[0] ),
        .I4(\scl_cntr_reg_n_0_[2] ),
        .O(\scl_cntr[4]_i_1_n_0 ));
  FDCE \scl_cntr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[0]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[0] ));
  FDCE \scl_cntr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[1]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[1] ));
  FDCE \scl_cntr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[2]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[2] ));
  FDCE \scl_cntr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[3]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[3] ));
  FDCE \scl_cntr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\scl_cntr[4]_i_1_n_0 ),
        .Q(\scl_cntr_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'hFFC803C8)) 
    sclk_i_i_1
       (.I0(\scl_cntr_reg_n_0_[1] ),
        .I1(\scl_cntr_reg_n_0_[3] ),
        .I2(\scl_cntr_reg_n_0_[2] ),
        .I3(\scl_cntr_reg_n_0_[4] ),
        .I4(o_SCLK),
        .O(sclk_i_i_1_n_0));
  FDPE sclk_i_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(o_SCLK),
        .PRE(AR),
        .Q(sclk_i_prev));
  FDPE sclk_i_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_i_i_1_n_0),
        .PRE(AR),
        .Q(o_SCLK));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \spi_data_i[15]_i_1 
       (.I0(\adc_action_ctrl_state_reg[2] ),
        .I1(\adc_action_ctrl_state_reg[0]_0 ),
        .I2(spi_free),
        .I3(adc_config_reg),
        .I4(write_reg_reg),
        .I5(s00_axi_aresetn),
        .O(E));
  LUT6 #(
    .INIT(64'h00000000000000E0)) 
    spi_start_i_1
       (.I0(write_reg_reg),
        .I1(read_reg_reg),
        .I2(spi_free),
        .I3(adc_config_reg),
        .I4(\adc_action_ctrl_state_reg[0]_0 ),
        .I5(\adc_action_ctrl_state_reg[2] ),
        .O(spi_start_reg));
endmodule

(* CHECK_LICENSE_TYPE = "zsys_Mult_ADC_AXI_0_1,Mult_ADC_AXI_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Mult_ADC_AXI_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_MISO,
    o_MOSI,
    o_SCLK,
    o_nCS,
    o_ADC_nrst,
    o_debug,
    i_ADclk,
    i_Lclk,
    i_data_in_ch0_p,
    i_data_in_ch0_n,
    i_data_in_ch1_p,
    i_data_in_ch1_n,
    i_data_in_ch2_p,
    i_data_in_ch2_n,
    i_data_in_ch3_p,
    i_data_in_ch3_n,
    i_data_in_ch4_p,
    i_data_in_ch4_n,
    i_data_in_ch5_p,
    i_data_in_ch5_n,
    i_data_in_ch6_p,
    i_data_in_ch6_n,
    i_data_in_ch7_p,
    i_data_in_ch7_n,
    o_data_out_ch0,
    o_data_out_ch1,
    o_data_out_ch2,
    o_data_out_ch3,
    o_data_out_ch4,
    o_data_out_ch5,
    o_data_out_ch6,
    o_data_out_ch7,
    o_data_clk,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input i_MISO;
  output o_MOSI;
  output o_SCLK;
  output o_nCS;
  output o_ADC_nrst;
  output [11:0]o_debug;
  input i_ADclk;
  input i_Lclk;
  input i_data_in_ch0_p;
  input i_data_in_ch0_n;
  input i_data_in_ch1_p;
  input i_data_in_ch1_n;
  input i_data_in_ch2_p;
  input i_data_in_ch2_n;
  input i_data_in_ch3_p;
  input i_data_in_ch3_n;
  input i_data_in_ch4_p;
  input i_data_in_ch4_n;
  input i_data_in_ch5_p;
  input i_data_in_ch5_n;
  input i_data_in_ch6_p;
  input i_data_in_ch6_n;
  input i_data_in_ch7_p;
  input i_data_in_ch7_n;
  output [15:0]o_data_out_ch0;
  output [15:0]o_data_out_ch1;
  output [15:0]o_data_out_ch2;
  output [15:0]o_data_out_ch3;
  output [15:0]o_data_out_ch4;
  output [15:0]o_data_out_ch5;
  output [15:0]o_data_out_ch6;
  output [15:0]o_data_out_ch7;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 o_data_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME o_data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_Mult_ADC_AXI_0_1_o_data_clk" *) output o_data_clk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 5, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [4:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN zsys_processing_system7_0_0_FCLK_CLK0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire i_ADclk;
  wire i_Lclk;
  wire i_MISO;
  wire i_data_in_ch0_n;
  wire i_data_in_ch0_p;
  wire i_data_in_ch1_n;
  wire i_data_in_ch1_p;
  wire i_data_in_ch2_n;
  wire i_data_in_ch2_p;
  wire i_data_in_ch3_n;
  wire i_data_in_ch3_p;
  wire i_data_in_ch4_n;
  wire i_data_in_ch4_p;
  wire i_data_in_ch5_n;
  wire i_data_in_ch5_p;
  wire i_data_in_ch6_n;
  wire i_data_in_ch6_p;
  wire i_data_in_ch7_n;
  wire i_data_in_ch7_p;
  wire n_0_198;
  wire o_SCLK;
  wire [15:0]o_data_out_ch0;
  wire [15:0]o_data_out_ch1;
  wire [15:0]o_data_out_ch2;
  wire [15:0]o_data_out_ch3;
  wire [15:0]o_data_out_ch4;
  wire [15:0]o_data_out_ch5;
  wire [15:0]o_data_out_ch6;
  wire [15:0]o_data_out_ch7;
  wire [11:0]\^o_debug ;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign o_ADC_nrst = \^o_debug [11];
  assign o_MOSI = \^o_debug [5];
  assign o_data_clk = i_ADclk;
  assign o_debug[11:7] = \^o_debug [11:7];
  assign o_debug[6] = o_SCLK;
  assign o_debug[5] = \^o_debug [5];
  assign o_debug[4] = i_MISO;
  assign o_debug[3:0] = \^o_debug [3:0];
  assign o_nCS = \^o_debug [7];
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Mult_ADC_AXI_v1_0 U0
       (.CLKB(i_Lclk),
        .i_ADclk(i_ADclk),
        .i_Lclk(i_Lclk),
        .i_MISO(i_MISO),
        .i_data_in_ch0_n(i_data_in_ch0_n),
        .i_data_in_ch0_p(i_data_in_ch0_p),
        .i_data_in_ch1_n(i_data_in_ch1_n),
        .i_data_in_ch1_p(i_data_in_ch1_p),
        .i_data_in_ch2_n(i_data_in_ch2_n),
        .i_data_in_ch2_p(i_data_in_ch2_p),
        .i_data_in_ch3_n(i_data_in_ch3_n),
        .i_data_in_ch3_p(i_data_in_ch3_p),
        .i_data_in_ch4_n(i_data_in_ch4_n),
        .i_data_in_ch4_p(i_data_in_ch4_p),
        .i_data_in_ch5_n(i_data_in_ch5_n),
        .i_data_in_ch5_p(i_data_in_ch5_p),
        .i_data_in_ch6_n(i_data_in_ch6_n),
        .i_data_in_ch6_p(i_data_in_ch6_p),
        .i_data_in_ch7_n(i_data_in_ch7_n),
        .i_data_in_ch7_p(i_data_in_ch7_p),
        .o_SCLK(o_SCLK),
        .o_data_out_ch0(o_data_out_ch0),
        .o_data_out_ch1(o_data_out_ch1),
        .o_data_out_ch2(o_data_out_ch2),
        .o_data_out_ch3(o_data_out_ch3),
        .o_data_out_ch4(o_data_out_ch4),
        .o_data_out_ch5(o_data_out_ch5),
        .o_data_out_ch6(o_data_out_ch6),
        .o_data_out_ch7(o_data_out_ch7),
        .o_debug({\^o_debug [11:8],\^o_debug [5]}),
        .\o_debug[7] (\^o_debug [7]),
        .o_debug_0_sp_1(\^o_debug [0]),
        .o_debug_1_sp_1(\^o_debug [1]),
        .o_debug_2_sp_1(\^o_debug [2]),
        .o_debug_3_sp_1(\^o_debug [3]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
  LUT1 #(
    .INIT(2'h1)) 
    i_198
       (.I0(s00_axi_aresetn),
        .O(n_0_198));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
