// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon May 26 19:01:11 2025
// Host        : DefconeONE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Thies/xillinx/BScThesis/BScThesis.gen/sources_1/bd/sdes_decrypt_bd/ip/sdes_decrypt_bd_sdes_decrypt_0_0_1/sdes_decrypt_bd_sdes_decrypt_0_0_sim_netlist.v
// Design      : sdes_decrypt_bd_sdes_decrypt_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdes_decrypt_bd_sdes_decrypt_0_0,axi_interface_sdes_decrypt,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_interface_sdes_decrypt,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module sdes_decrypt_bd_sdes_decrypt_0_0
   (aclk,
    aresetn,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tlast,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN sdes_decrypt_bd_zynqcore_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN sdes_decrypt_bd_zynqcore_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN sdes_decrypt_bd_zynqcore_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [7:0]\^m_axis_tdata ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7:0] = \^m_axis_tdata [7:0];
  GND GND
       (.G(\<const0> ));
  sdes_decrypt_bd_sdes_decrypt_0_0_axi_interface_sdes_decrypt inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(\^m_axis_tdata ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata[17:0]),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "SDES_decrypt" *) 
module sdes_decrypt_bd_sdes_decrypt_0_0_SDES_decrypt
   (AR,
    m_axis_tdata,
    aresetn,
    aclk,
    Q,
    \outp_reg[6]_0 );
  output [0:0]AR;
  output [7:0]m_axis_tdata;
  input aresetn;
  input aclk;
  input [9:0]Q;
  input [7:0]\outp_reg[6]_0 ;

  wire [0:0]AR;
  wire [9:0]Q;
  wire aclk;
  wire aresetn;
  wire [7:0]m_axis_tdata;
  wire \outp[0]_i_4_n_0 ;
  wire \outp[0]_i_7_n_0 ;
  wire \outp[2]_i_4_n_0 ;
  wire \outp[3]_i_2_n_0 ;
  wire \outp[4]_i_4_n_0 ;
  wire [7:0]\outp_reg[6]_0 ;
  wire [1:0]\pi1/bits_left1 ;
  wire [1:0]\pi1/bits_right1 ;
  wire \pi1/p_0_in ;
  wire [0:3]pi1_outp;
  wire [1:0]\pi2/bits_left1 ;
  wire [1:0]\pi2/bits_right1 ;
  wire \pi2/p_0_in ;
  wire [0:3]pi2_outp;

  LUT5 #(
    .INIT(32'h2959D6A6)) 
    \outp[0]_i_1 
       (.I0(\pi2/bits_left1 [0]),
        .I1(\outp[0]_i_4_n_0 ),
        .I2(\pi2/bits_left1 [1]),
        .I3(\pi2/p_0_in ),
        .I4(\outp_reg[6]_0 [1]),
        .O(pi2_outp[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \outp[0]_i_2 
       (.I0(aresetn),
        .O(AR));
  LUT6 #(
    .INIT(64'h9666969669696996)) 
    \outp[0]_i_3 
       (.I0(Q[6]),
        .I1(\outp_reg[6]_0 [5]),
        .I2(\outp[4]_i_4_n_0 ),
        .I3(\pi1/bits_right1 [0]),
        .I4(\pi1/bits_right1 [1]),
        .I5(\outp[0]_i_7_n_0 ),
        .O(\pi2/bits_left1 [0]));
  LUT6 #(
    .INIT(64'h6999966999666969)) 
    \outp[0]_i_4 
       (.I0(Q[3]),
        .I1(\outp_reg[6]_0 [6]),
        .I2(\pi1/p_0_in ),
        .I3(\pi1/bits_left1 [0]),
        .I4(\pi1/bits_left1 [1]),
        .I5(\outp[3]_i_2_n_0 ),
        .O(\outp[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9966699996999666)) 
    \outp[0]_i_5 
       (.I0(Q[9]),
        .I1(\outp_reg[6]_0 [7]),
        .I2(\pi1/p_0_in ),
        .I3(\pi1/bits_left1 [1]),
        .I4(\outp[3]_i_2_n_0 ),
        .I5(\pi1/bits_left1 [0]),
        .O(\pi2/bits_left1 [1]));
  LUT6 #(
    .INIT(64'h5A5A9966A5A55A5A)) 
    \outp[0]_i_6 
       (.I0(\outp_reg[6]_0 [2]),
        .I1(Q[1]),
        .I2(\outp_reg[6]_0 [1]),
        .I3(\outp[4]_i_4_n_0 ),
        .I4(\pi1/bits_right1 [1]),
        .I5(\pi1/bits_right1 [0]),
        .O(\pi2/p_0_in ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[0]_i_7 
       (.I0(Q[1]),
        .I1(\outp_reg[6]_0 [1]),
        .O(\outp[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[0]_i_8 
       (.I0(Q[4]),
        .I1(\outp_reg[6]_0 [0]),
        .O(\pi1/p_0_in ));
  LUT5 #(
    .INIT(32'h972468DB)) 
    \outp[1]_i_1 
       (.I0(\outp[0]_i_4_n_0 ),
        .I1(\pi2/bits_left1 [1]),
        .I2(\pi2/bits_left1 [0]),
        .I3(\pi2/p_0_in ),
        .I4(\outp_reg[6]_0 [4]),
        .O(pi2_outp[0]));
  LUT6 #(
    .INIT(64'h99F0666F660F9990)) 
    \outp[2]_i_1 
       (.I0(Q[0]),
        .I1(pi1_outp[3]),
        .I2(\pi2/bits_right1 [1]),
        .I3(\pi2/bits_right1 [0]),
        .I4(\outp[2]_i_4_n_0 ),
        .I5(\outp_reg[6]_0 [3]),
        .O(pi2_outp[2]));
  LUT6 #(
    .INIT(64'h9696996669699696)) 
    \outp[2]_i_2 
       (.I0(Q[2]),
        .I1(\outp_reg[6]_0 [2]),
        .I2(\outp[0]_i_7_n_0 ),
        .I3(\outp[4]_i_4_n_0 ),
        .I4(\pi1/bits_right1 [1]),
        .I5(\pi1/bits_right1 [0]),
        .O(\pi2/bits_right1 [1]));
  LUT6 #(
    .INIT(64'hA5995AA59966A5A5)) 
    \outp[2]_i_3 
       (.I0(\outp_reg[6]_0 [6]),
        .I1(Q[4]),
        .I2(\outp_reg[6]_0 [0]),
        .I3(\pi1/bits_left1 [0]),
        .I4(\pi1/bits_left1 [1]),
        .I5(\outp[3]_i_2_n_0 ),
        .O(\pi2/bits_right1 [0]));
  LUT6 #(
    .INIT(64'h9666969669696996)) 
    \outp[2]_i_4 
       (.I0(Q[7]),
        .I1(\outp_reg[6]_0 [5]),
        .I2(\outp[4]_i_4_n_0 ),
        .I3(\pi1/bits_right1 [0]),
        .I4(\pi1/bits_right1 [1]),
        .I5(\outp[0]_i_7_n_0 ),
        .O(\outp[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h24979724DB6868DB)) 
    \outp[3]_i_1 
       (.I0(\outp[3]_i_2_n_0 ),
        .I1(\pi1/bits_left1 [1]),
        .I2(\pi1/bits_left1 [0]),
        .I3(\outp_reg[6]_0 [0]),
        .I4(Q[4]),
        .I5(\outp_reg[6]_0 [6]),
        .O(pi1_outp[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[3]_i_2 
       (.I0(Q[7]),
        .I1(\outp_reg[6]_0 [4]),
        .O(\outp[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[3]_i_3 
       (.I0(Q[2]),
        .I1(\outp_reg[6]_0 [1]),
        .O(\pi1/bits_left1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[3]_i_4 
       (.I0(Q[5]),
        .I1(\outp_reg[6]_0 [3]),
        .O(\pi1/bits_left1 [0]));
  LUT6 #(
    .INIT(64'h99F0666F660F9990)) 
    \outp[4]_i_1 
       (.I0(Q[1]),
        .I1(\outp_reg[6]_0 [1]),
        .I2(\pi1/bits_right1 [1]),
        .I3(\pi1/bits_right1 [0]),
        .I4(\outp[4]_i_4_n_0 ),
        .I5(\outp_reg[6]_0 [5]),
        .O(pi1_outp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[4]_i_2 
       (.I0(Q[0]),
        .I1(\outp_reg[6]_0 [0]),
        .O(\pi1/bits_right1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[4]_i_3 
       (.I0(Q[9]),
        .I1(\outp_reg[6]_0 [4]),
        .O(\pi1/bits_right1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[4]_i_4 
       (.I0(Q[8]),
        .I1(\outp_reg[6]_0 [3]),
        .O(\outp[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9B46469B64B9B964)) 
    \outp[5]_i_1 
       (.I0(\pi2/bits_right1 [0]),
        .I1(\pi2/bits_right1 [1]),
        .I2(\outp[2]_i_4_n_0 ),
        .I3(pi1_outp[3]),
        .I4(Q[0]),
        .I5(\outp_reg[6]_0 [0]),
        .O(pi2_outp[1]));
  LUT6 #(
    .INIT(64'h59292959A6D6D6A6)) 
    \outp[6]_i_1 
       (.I0(\pi1/bits_left1 [0]),
        .I1(\outp[3]_i_2_n_0 ),
        .I2(\pi1/bits_left1 [1]),
        .I3(\outp_reg[6]_0 [0]),
        .I4(Q[4]),
        .I5(\outp_reg[6]_0 [7]),
        .O(pi1_outp[3]));
  LUT6 #(
    .INIT(64'h9B46469B64B9B964)) 
    \outp[7]_i_1 
       (.I0(\pi1/bits_right1 [0]),
        .I1(\pi1/bits_right1 [1]),
        .I2(\outp[4]_i_4_n_0 ),
        .I3(\outp_reg[6]_0 [1]),
        .I4(Q[1]),
        .I5(\outp_reg[6]_0 [2]),
        .O(pi1_outp[1]));
  FDCE \outp_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(pi2_outp[3]),
        .Q(m_axis_tdata[7]));
  FDCE \outp_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(pi2_outp[0]),
        .Q(m_axis_tdata[6]));
  FDCE \outp_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(pi2_outp[2]),
        .Q(m_axis_tdata[5]));
  FDCE \outp_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(pi1_outp[0]),
        .Q(m_axis_tdata[4]));
  FDCE \outp_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(pi1_outp[2]),
        .Q(m_axis_tdata[3]));
  FDCE \outp_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(pi2_outp[1]),
        .Q(m_axis_tdata[2]));
  FDCE \outp_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(pi1_outp[3]),
        .Q(m_axis_tdata[1]));
  FDCE \outp_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(pi1_outp[1]),
        .Q(m_axis_tdata[0]));
endmodule

(* ORIG_REF_NAME = "axi_interface_sdes_decrypt" *) 
module sdes_decrypt_bd_sdes_decrypt_0_0_axi_interface_sdes_decrypt
   (m_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tlast,
    aclk,
    s_axis_tvalid,
    m_axis_tready,
    s_axis_tdata,
    aresetn,
    s_axis_tlast);
  output [7:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;
  input aclk;
  input s_axis_tvalid;
  input m_axis_tready;
  input [17:0]s_axis_tdata;
  input aresetn;
  input s_axis_tlast;

  wire aclk;
  wire aresetn;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire [7:0]input_reg;
  wire input_reg0;
  wire [9:0]key_reg;
  wire last_reg_i_1_n_0;
  wire last_reg_reg_n_0;
  wire [7:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [17:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire sdes_decrypt_instance_n_0;
  wire valid_reg_i_1_n_0;
  wire valid_reg_reg_n_0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hC2C0)) 
    \counter[0]_i_1 
       (.I0(s_axis_tvalid),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(m_axis_tready),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(m_axis_tready),
        .O(\counter[1]_i_1_n_0 ));
  FDCE \counter_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(sdes_decrypt_instance_n_0),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE \counter_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(sdes_decrypt_instance_n_0),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  LUT4 #(
    .INIT(16'h0008)) 
    \input_reg[7]_i_1 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .O(input_reg0));
  FDCE \input_reg_reg[0] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[0]),
        .Q(input_reg[0]));
  FDCE \input_reg_reg[1] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[1]),
        .Q(input_reg[1]));
  FDCE \input_reg_reg[2] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[2]),
        .Q(input_reg[2]));
  FDCE \input_reg_reg[3] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[3]),
        .Q(input_reg[3]));
  FDCE \input_reg_reg[4] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[4]),
        .Q(input_reg[4]));
  FDCE \input_reg_reg[5] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[5]),
        .Q(input_reg[5]));
  FDCE \input_reg_reg[6] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[6]),
        .Q(input_reg[6]));
  FDCE \input_reg_reg[7] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[7]),
        .Q(input_reg[7]));
  FDCE \key_reg_reg[0] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[8]),
        .Q(key_reg[0]));
  FDCE \key_reg_reg[1] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[9]),
        .Q(key_reg[1]));
  FDCE \key_reg_reg[2] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[10]),
        .Q(key_reg[2]));
  FDCE \key_reg_reg[3] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[11]),
        .Q(key_reg[3]));
  FDCE \key_reg_reg[4] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[12]),
        .Q(key_reg[4]));
  FDCE \key_reg_reg[5] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[13]),
        .Q(key_reg[5]));
  FDCE \key_reg_reg[6] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[14]),
        .Q(key_reg[6]));
  FDCE \key_reg_reg[7] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[15]),
        .Q(key_reg[7]));
  FDCE \key_reg_reg[8] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[16]),
        .Q(key_reg[8]));
  FDCE \key_reg_reg[9] 
       (.C(aclk),
        .CE(input_reg0),
        .CLR(sdes_decrypt_instance_n_0),
        .D(s_axis_tdata[17]),
        .Q(key_reg[9]));
  LUT6 #(
    .INIT(64'hF0FBFFFF00080000)) 
    last_reg_i_1
       (.I0(s_axis_tlast),
        .I1(s_axis_tvalid),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(m_axis_tready),
        .I5(last_reg_reg_n_0),
        .O(last_reg_i_1_n_0));
  FDCE last_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(sdes_decrypt_instance_n_0),
        .D(last_reg_i_1_n_0),
        .Q(last_reg_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    m_axis_tlast_INST_0
       (.I0(last_reg_reg_n_0),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h20)) 
    m_axis_tvalid_INST_0
       (.I0(valid_reg_reg_n_0),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h10)) 
    s_axis_tready_INST_0
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(m_axis_tready),
        .O(s_axis_tready));
  sdes_decrypt_bd_sdes_decrypt_0_0_SDES_decrypt sdes_decrypt_instance
       (.AR(sdes_decrypt_instance_n_0),
        .Q(key_reg),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .\outp_reg[6]_0 (input_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hCFFF0200)) 
    valid_reg_i_1
       (.I0(s_axis_tvalid),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(m_axis_tready),
        .I4(valid_reg_reg_n_0),
        .O(valid_reg_i_1_n_0));
  FDCE valid_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(sdes_decrypt_instance_n_0),
        .D(valid_reg_i_1_n_0),
        .Q(valid_reg_reg_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
