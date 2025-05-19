// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon May 19 17:04:08 2025
// Host        : DefconeONE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Thies/xillinx/BScThesis/BScThesis.gen/sources_1/bd/sdes_decrypt_bd/ip/sdes_decrypt_bd_sdes_decrypt_0_0/sdes_decrypt_bd_sdes_decrypt_0_0_sim_netlist.v
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
  wire [1:0]\inst/sdes_decrypt_instance/pi1/bits_left1 ;
  wire [1:0]\inst/sdes_decrypt_instance/pi1/bits_right1 ;
  wire \inst/sdes_decrypt_instance/pi1/p_0_in ;
  wire [1:0]\inst/sdes_decrypt_instance/pi2/bits_left1 ;
  wire [1:0]\inst/sdes_decrypt_instance/pi2/bits_right1 ;
  wire \inst/sdes_decrypt_instance/pi2/p_0_in ;
  wire [7:0]\^m_axis_tdata ;
  wire \m_axis_tdata[3]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_5_n_0 ;
  wire m_axis_tready;
  wire [31:0]s_axis_tdata;
  wire s_axis_tlast;
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
  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h9B46469B64B9B964)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\inst/sdes_decrypt_instance/pi1/bits_right1 [0]),
        .I1(\inst/sdes_decrypt_instance/pi1/bits_right1 [1]),
        .I2(\m_axis_tdata[3]_INST_0_i_3_n_0 ),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[9]),
        .I5(s_axis_tdata[2]),
        .O(\^m_axis_tdata [0]));
  LUT6 #(
    .INIT(64'h59292959A6D6D6A6)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\inst/sdes_decrypt_instance/pi1/bits_left1 [0]),
        .I1(\m_axis_tdata[4]_INST_0_i_1_n_0 ),
        .I2(\inst/sdes_decrypt_instance/pi1/bits_left1 [1]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[12]),
        .I5(s_axis_tdata[7]),
        .O(\^m_axis_tdata [1]));
  LUT6 #(
    .INIT(64'h9B46469B64B9B964)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\inst/sdes_decrypt_instance/pi2/bits_right1 [0]),
        .I1(\inst/sdes_decrypt_instance/pi2/bits_right1 [1]),
        .I2(\m_axis_tdata[5]_INST_0_i_3_n_0 ),
        .I3(\^m_axis_tdata [1]),
        .I4(s_axis_tdata[8]),
        .I5(s_axis_tdata[0]),
        .O(\^m_axis_tdata [2]));
  LUT6 #(
    .INIT(64'h99F0666F660F9990)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(s_axis_tdata[9]),
        .I1(s_axis_tdata[1]),
        .I2(\inst/sdes_decrypt_instance/pi1/bits_right1 [1]),
        .I3(\inst/sdes_decrypt_instance/pi1/bits_right1 [0]),
        .I4(\m_axis_tdata[3]_INST_0_i_3_n_0 ),
        .I5(s_axis_tdata[5]),
        .O(\^m_axis_tdata [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[3]_INST_0_i_1 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[0]),
        .O(\inst/sdes_decrypt_instance/pi1/bits_right1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[3]_INST_0_i_2 
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[4]),
        .O(\inst/sdes_decrypt_instance/pi1/bits_right1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[3]_INST_0_i_3 
       (.I0(s_axis_tdata[16]),
        .I1(s_axis_tdata[3]),
        .O(\m_axis_tdata[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h24979724DB6868DB)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\m_axis_tdata[4]_INST_0_i_1_n_0 ),
        .I1(\inst/sdes_decrypt_instance/pi1/bits_left1 [1]),
        .I2(\inst/sdes_decrypt_instance/pi1/bits_left1 [0]),
        .I3(s_axis_tdata[0]),
        .I4(s_axis_tdata[12]),
        .I5(s_axis_tdata[6]),
        .O(\^m_axis_tdata [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[4]_INST_0_i_1 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[4]),
        .O(\m_axis_tdata[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[4]_INST_0_i_2 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[1]),
        .O(\inst/sdes_decrypt_instance/pi1/bits_left1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[4]_INST_0_i_3 
       (.I0(s_axis_tdata[13]),
        .I1(s_axis_tdata[3]),
        .O(\inst/sdes_decrypt_instance/pi1/bits_left1 [0]));
  LUT6 #(
    .INIT(64'h99F0666F660F9990)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[8]),
        .I1(\^m_axis_tdata [1]),
        .I2(\inst/sdes_decrypt_instance/pi2/bits_right1 [1]),
        .I3(\inst/sdes_decrypt_instance/pi2/bits_right1 [0]),
        .I4(\m_axis_tdata[5]_INST_0_i_3_n_0 ),
        .I5(s_axis_tdata[3]),
        .O(\^m_axis_tdata [5]));
  LUT6 #(
    .INIT(64'h9696996669699696)) 
    \m_axis_tdata[5]_INST_0_i_1 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[2]),
        .I2(\m_axis_tdata[7]_INST_0_i_5_n_0 ),
        .I3(\m_axis_tdata[3]_INST_0_i_3_n_0 ),
        .I4(\inst/sdes_decrypt_instance/pi1/bits_right1 [1]),
        .I5(\inst/sdes_decrypt_instance/pi1/bits_right1 [0]),
        .O(\inst/sdes_decrypt_instance/pi2/bits_right1 [1]));
  LUT6 #(
    .INIT(64'hA5995AA59966A5A5)) 
    \m_axis_tdata[5]_INST_0_i_2 
       (.I0(s_axis_tdata[6]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[0]),
        .I3(\inst/sdes_decrypt_instance/pi1/bits_left1 [0]),
        .I4(\inst/sdes_decrypt_instance/pi1/bits_left1 [1]),
        .I5(\m_axis_tdata[4]_INST_0_i_1_n_0 ),
        .O(\inst/sdes_decrypt_instance/pi2/bits_right1 [0]));
  LUT6 #(
    .INIT(64'h9666969669696996)) 
    \m_axis_tdata[5]_INST_0_i_3 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_tdata[5]),
        .I2(\m_axis_tdata[3]_INST_0_i_3_n_0 ),
        .I3(\inst/sdes_decrypt_instance/pi1/bits_right1 [0]),
        .I4(\inst/sdes_decrypt_instance/pi1/bits_right1 [1]),
        .I5(\m_axis_tdata[7]_INST_0_i_5_n_0 ),
        .O(\m_axis_tdata[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h972468DB)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\m_axis_tdata[7]_INST_0_i_2_n_0 ),
        .I1(\inst/sdes_decrypt_instance/pi2/bits_left1 [1]),
        .I2(\inst/sdes_decrypt_instance/pi2/bits_left1 [0]),
        .I3(\inst/sdes_decrypt_instance/pi2/p_0_in ),
        .I4(s_axis_tdata[4]),
        .O(\^m_axis_tdata [6]));
  LUT5 #(
    .INIT(32'h2959D6A6)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\inst/sdes_decrypt_instance/pi2/bits_left1 [0]),
        .I1(\m_axis_tdata[7]_INST_0_i_2_n_0 ),
        .I2(\inst/sdes_decrypt_instance/pi2/bits_left1 [1]),
        .I3(\inst/sdes_decrypt_instance/pi2/p_0_in ),
        .I4(s_axis_tdata[1]),
        .O(\^m_axis_tdata [7]));
  LUT6 #(
    .INIT(64'h9666969669696996)) 
    \m_axis_tdata[7]_INST_0_i_1 
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_tdata[5]),
        .I2(\m_axis_tdata[3]_INST_0_i_3_n_0 ),
        .I3(\inst/sdes_decrypt_instance/pi1/bits_right1 [0]),
        .I4(\inst/sdes_decrypt_instance/pi1/bits_right1 [1]),
        .I5(\m_axis_tdata[7]_INST_0_i_5_n_0 ),
        .O(\inst/sdes_decrypt_instance/pi2/bits_left1 [0]));
  LUT6 #(
    .INIT(64'h6999966999666969)) 
    \m_axis_tdata[7]_INST_0_i_2 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[6]),
        .I2(\inst/sdes_decrypt_instance/pi1/p_0_in ),
        .I3(\inst/sdes_decrypt_instance/pi1/bits_left1 [0]),
        .I4(\inst/sdes_decrypt_instance/pi1/bits_left1 [1]),
        .I5(\m_axis_tdata[4]_INST_0_i_1_n_0 ),
        .O(\m_axis_tdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9966699996999666)) 
    \m_axis_tdata[7]_INST_0_i_3 
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[7]),
        .I2(\inst/sdes_decrypt_instance/pi1/p_0_in ),
        .I3(\inst/sdes_decrypt_instance/pi1/bits_left1 [1]),
        .I4(\m_axis_tdata[4]_INST_0_i_1_n_0 ),
        .I5(\inst/sdes_decrypt_instance/pi1/bits_left1 [0]),
        .O(\inst/sdes_decrypt_instance/pi2/bits_left1 [1]));
  LUT6 #(
    .INIT(64'h5A5A9966A5A55A5A)) 
    \m_axis_tdata[7]_INST_0_i_4 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[1]),
        .I3(\m_axis_tdata[3]_INST_0_i_3_n_0 ),
        .I4(\inst/sdes_decrypt_instance/pi1/bits_right1 [1]),
        .I5(\inst/sdes_decrypt_instance/pi1/bits_right1 [0]),
        .O(\inst/sdes_decrypt_instance/pi2/p_0_in ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[7]_INST_0_i_5 
       (.I0(s_axis_tdata[9]),
        .I1(s_axis_tdata[1]),
        .O(\m_axis_tdata[7]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[7]_INST_0_i_6 
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_tdata[0]),
        .O(\inst/sdes_decrypt_instance/pi1/p_0_in ));
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
