// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon May 19 15:46:11 2025
// Host        : DefconeONE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Thies/xillinx/BScThesis/BScThesis.gen/sources_1/bd/des_encrypt_bd/ip/des_encrypt_bd_des_encrypt_0_0_8/des_encrypt_bd_des_encrypt_0_0_sim_netlist.v
// Design      : des_encrypt_bd_des_encrypt_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "des_encrypt_bd_des_encrypt_0_0,axi_interface_des_encrypt,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_interface_des_encrypt,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module des_encrypt_bd_des_encrypt_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN des_encrypt_bd_zynqcore_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN des_encrypt_bd_zynqcore_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [127:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN des_encrypt_bd_zynqcore_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [63:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire [0:31]\inst/des_encrypt_instance/right[7] ;
  wire [0:31]\inst/des_encrypt_instance/right[8] ;
  wire [0:47]\inst/des_encrypt_instance/u0[0].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[0].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[10].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[10].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[11].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[11].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[12].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[12].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[13].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[13].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[14].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[14].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[15].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[15].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[1].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[1].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[2].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[2].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[3].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[3].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[4].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[4].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[5].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[5].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[6].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[6].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[7].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[7].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[8].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[8].round_instance/substituted ;
  wire [0:47]\inst/des_encrypt_instance/u0[9].round_instance/inp ;
  wire [0:31]\inst/des_encrypt_instance/u0[9].round_instance/substituted ;
  wire [63:0]m_axis_tdata;
  wire m_axis_tready;
  wire [127:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[8] [24]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [18]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [18]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[0]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [18]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[0]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .I1(s_axis_tdata[1]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [18]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/right[8] [24]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[0]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[0]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[0]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[0]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[0]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[0]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[0]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [18]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [7]),
        .I1(\inst/des_encrypt_instance/right[8] [17]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [7]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [7]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [7]),
        .O(m_axis_tdata[10]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[10]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[10]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [7]),
        .I1(s_axis_tdata[11]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [7]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [7]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/right[8] [17]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[10]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[10]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[10]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[10]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[10]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[10]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[10]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [7]),
        .I1(\inst/des_encrypt_instance/right[7] [17]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [7]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [7]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [7]),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[11]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[11]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [7]),
        .I1(s_axis_tdata[10]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [7]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [7]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/right[7] [17]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[11]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[11]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[11]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[11]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[11]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[11]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [7]));
  LUT6 #(
    .INIT(64'h9C27D85A99A527C3)) 
    \m_axis_tdata[11]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [11]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [14]),
        .I1(\inst/des_encrypt_instance/right[8] [9]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [14]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [14]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [14]),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[12]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[12]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [14]),
        .I1(s_axis_tdata[13]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [14]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [14]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/right[8] [9]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[12]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[12]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[12]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[12]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[12]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[12]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[12]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [14]),
        .I1(\inst/des_encrypt_instance/right[7] [9]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [14]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [14]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [14]),
        .O(m_axis_tdata[13]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[13]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[13]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [14]),
        .I1(s_axis_tdata[12]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [14]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [14]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/right[7] [9]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[13]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[13]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[13]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[13]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[13]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[13]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [14]));
  LUT6 #(
    .INIT(64'hB9854EB42D63D619)) 
    \m_axis_tdata[13]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [18]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [23]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [6]),
        .I1(\inst/des_encrypt_instance/right[8] [1]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [6]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [6]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [6]),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[14]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[14]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [6]),
        .I1(s_axis_tdata[15]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [6]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [6]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/right[8] [1]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[14]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[14]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[14]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[14]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[14]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[14]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[14]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [6]),
        .I1(\inst/des_encrypt_instance/right[7] [1]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [6]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [6]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [6]),
        .O(m_axis_tdata[15]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[15]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[15]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [6]),
        .I1(s_axis_tdata[14]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [6]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [6]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/right[7] [1]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[15]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[15]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[15]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[15]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[15]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[15]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [6]));
  LUT6 #(
    .INIT(64'h46B9B69474968D65)) 
    \m_axis_tdata[15]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [10]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [6]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [29]),
        .I1(\inst/des_encrypt_instance/right[8] [26]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [29]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [29]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [29]),
        .O(m_axis_tdata[16]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[16]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [29]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[16]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [29]),
        .I1(s_axis_tdata[17]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [29]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [29]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/right[8] [26]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[16]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[16]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[16]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[16]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[16]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[16]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[16]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [29]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [29]),
        .I1(\inst/des_encrypt_instance/right[7] [26]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [29]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [29]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [29]),
        .O(m_axis_tdata[17]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[17]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [29]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[17]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [29]),
        .I1(s_axis_tdata[16]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [29]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [29]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/right[7] [26]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[17]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[17]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[17]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[17]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[17]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[17]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [29]));
  LUT6 #(
    .INIT(64'h5A4B967226B4D98D)) 
    \m_axis_tdata[17]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [42]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [29]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [23]),
        .I1(\inst/des_encrypt_instance/right[8] [18]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [23]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [23]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [23]),
        .O(m_axis_tdata[18]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[18]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[18]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [23]),
        .I1(s_axis_tdata[19]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [23]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [23]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/right[8] [18]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[18]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[18]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[18]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[18]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[18]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[18]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[18]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [23]),
        .I1(\inst/des_encrypt_instance/right[7] [18]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [23]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [23]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [23]),
        .O(m_axis_tdata[19]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[19]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[19]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [23]),
        .I1(s_axis_tdata[18]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [23]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [23]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/right[7] [18]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[19]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[19]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[19]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[19]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[19]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[19]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [23]));
  LUT6 #(
    .INIT(64'hA566589B4BE49BA4)) 
    \m_axis_tdata[19]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [18]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [18]),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[1]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[1]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .I1(s_axis_tdata[0]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [18]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/right[7] [24]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[1]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[1]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[1]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[1]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[1]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[1]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [18]));
  LUT6 #(
    .INIT(64'h964B994EA53964E5)) 
    \m_axis_tdata[1]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [18]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [22]),
        .I1(\inst/des_encrypt_instance/right[8] [10]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [22]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [22]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [22]),
        .O(m_axis_tdata[20]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[20]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [22]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[20]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [22]),
        .I1(s_axis_tdata[21]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [22]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [22]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/right[8] [10]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[20]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[20]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[20]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[20]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[20]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[20]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[20]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [22]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [22]),
        .I1(\inst/des_encrypt_instance/right[7] [10]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [22]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [22]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [22]),
        .O(m_axis_tdata[21]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[21]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [22]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[21]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [22]),
        .I1(s_axis_tdata[20]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [22]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [22]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/right[7] [10]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[21]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[21]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[21]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[21]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[21]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[21]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [22]));
  LUT6 #(
    .INIT(64'h635AE19639879C78)) 
    \m_axis_tdata[21]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [22]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [19]),
        .I1(\inst/des_encrypt_instance/right[8] [2]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [19]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [19]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [19]),
        .O(m_axis_tdata[22]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[22]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[22]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [19]),
        .I1(s_axis_tdata[23]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [19]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [19]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/right[8] [2]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[22]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[22]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[22]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[22]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[22]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[22]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[22]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [19]),
        .I1(\inst/des_encrypt_instance/right[7] [2]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [19]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [19]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [19]),
        .O(m_axis_tdata[23]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[23]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[23]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [19]),
        .I1(s_axis_tdata[22]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [19]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [19]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/right[7] [2]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[23]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[23]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[23]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[23]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[23]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[23]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [19]));
  LUT6 #(
    .INIT(64'hF2853E524D6AB26C)) 
    \m_axis_tdata[23]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[8] [27]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [5]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [5]),
        .O(m_axis_tdata[24]));
  LUT6 #(
    .INIT(64'h2EA5D172E1721E8D)) 
    \m_axis_tdata[24]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [10]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[24]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .I1(s_axis_tdata[25]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [5]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/right[8] [27]));
  LUT6 #(
    .INIT(64'h2EA5D172E1721E8D)) 
    \m_axis_tdata[24]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [10]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EE1D11EA572728D)) 
    \m_axis_tdata[24]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EA5D172E1721E8D)) 
    \m_axis_tdata[24]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [10]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EA5D172E1721E8D)) 
    \m_axis_tdata[24]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [10]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EA5D172E1721E8D)) 
    \m_axis_tdata[24]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [10]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EA5D172E1721E8D)) 
    \m_axis_tdata[24]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [10]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EA5D172E1721E8D)) 
    \m_axis_tdata[24]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [10]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [5]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [5]),
        .O(m_axis_tdata[25]));
  LUT6 #(
    .INIT(64'h2EE1D11EA572728D)) 
    \m_axis_tdata[25]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[25]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .I1(s_axis_tdata[24]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [5]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/right[7] [27]));
  LUT6 #(
    .INIT(64'h2EE1D11EA572728D)) 
    \m_axis_tdata[25]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EE1D11EA572728D)) 
    \m_axis_tdata[25]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EA5D172E1721E8D)) 
    \m_axis_tdata[25]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [11]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [10]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EE1D11EA572728D)) 
    \m_axis_tdata[25]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EE1D11EA572728D)) 
    \m_axis_tdata[25]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EE1D11EA572728D)) 
    \m_axis_tdata[25]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [5]));
  LUT6 #(
    .INIT(64'h2EE1D11EA572728D)) 
    \m_axis_tdata[25]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[8] [19]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [13]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [13]),
        .O(m_axis_tdata[26]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[26]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [13]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_10 
       (.I0(s_axis_tdata[79]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_11 
       (.I0(s_axis_tdata[103]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [18]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[26]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[26]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [13]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[26]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [13]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[26]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [13]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_16 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(s_axis_tdata[92]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [19]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_17 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [17]),
        .I1(\inst/des_encrypt_instance/right[7] [13]),
        .I2(s_axis_tdata[93]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [20]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_18 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [30]),
        .I1(\inst/des_encrypt_instance/right[7] [14]),
        .I2(s_axis_tdata[102]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_19 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(s_axis_tdata[117]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .I1(s_axis_tdata[27]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [13]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/right[8] [19]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_20 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(s_axis_tdata[111]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_21 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(s_axis_tdata[70]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [18]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [4]),
        .I3(s_axis_tdata[95]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [17]),
        .I1(\inst/des_encrypt_instance/right[7] [13]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [17]),
        .I3(s_axis_tdata[125]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [20]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [30]),
        .I1(\inst/des_encrypt_instance/right[7] [14]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [30]),
        .I3(s_axis_tdata[69]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [21]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [1]),
        .I3(s_axis_tdata[84]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [9]),
        .I3(s_axis_tdata[78]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [22]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [25]),
        .I3(s_axis_tdata[102]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [18]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [4]),
        .I4(s_axis_tdata[119]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [19]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [17]),
        .I1(\inst/des_encrypt_instance/right[7] [13]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [17]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [17]),
        .I4(s_axis_tdata[84]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [20]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[26]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [30]),
        .I1(\inst/des_encrypt_instance/right[7] [14]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [30]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [30]),
        .I4(s_axis_tdata[93]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [21]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [1]),
        .I4(s_axis_tdata[79]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [23]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [9]),
        .I4(s_axis_tdata[102]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [22]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [25]),
        .I4(s_axis_tdata[126]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [18]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_34 
       (.I0(s_axis_tdata[70]),
        .I1(s_axis_tdata[36]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [19]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_35 
       (.I0(s_axis_tdata[71]),
        .I1(s_axis_tdata[44]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_36 
       (.I0(s_axis_tdata[109]),
        .I1(s_axis_tdata[52]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_37 
       (.I0(s_axis_tdata[95]),
        .I1(s_axis_tdata[2]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [23]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_38 
       (.I0(s_axis_tdata[118]),
        .I1(s_axis_tdata[60]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_39 
       (.I0(s_axis_tdata[77]),
        .I1(s_axis_tdata[28]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [18]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[26]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_40 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .I1(s_axis_tdata[36]),
        .I2(s_axis_tdata[102]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [19]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_41 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [17]),
        .I1(s_axis_tdata[44]),
        .I2(s_axis_tdata[103]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_42 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [30]),
        .I1(s_axis_tdata[52]),
        .I2(s_axis_tdata[76]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_43 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[127]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_44 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .I1(s_axis_tdata[60]),
        .I2(s_axis_tdata[85]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[26]_INST_0_i_45 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .I1(s_axis_tdata[28]),
        .I2(s_axis_tdata[109]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [18]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .I1(s_axis_tdata[36]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [4]),
        .I3(s_axis_tdata[69]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [17]),
        .I1(s_axis_tdata[44]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [17]),
        .I3(s_axis_tdata[70]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [20]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [30]),
        .I1(s_axis_tdata[52]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [30]),
        .I3(s_axis_tdata[79]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [21]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .I1(s_axis_tdata[2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [1]),
        .I3(s_axis_tdata[94]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [23]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[26]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .I1(s_axis_tdata[60]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [9]),
        .I3(s_axis_tdata[117]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [22]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[26]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .I1(s_axis_tdata[28]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [25]),
        .I3(s_axis_tdata[76]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [18]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .I1(s_axis_tdata[36]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [4]),
        .I4(s_axis_tdata[101]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [19]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [17]),
        .I1(s_axis_tdata[44]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [17]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [17]),
        .I4(s_axis_tdata[102]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [20]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [30]),
        .I1(s_axis_tdata[52]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [30]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [30]),
        .I4(s_axis_tdata[111]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [21]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .I1(s_axis_tdata[2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [1]),
        .I4(s_axis_tdata[126]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [23]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .I1(s_axis_tdata[60]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [9]),
        .I4(s_axis_tdata[84]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [22]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[26]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .I1(s_axis_tdata[28]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [25]),
        .I4(s_axis_tdata[79]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [18]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_6 
       (.I0(s_axis_tdata[125]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [19]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_7 
       (.I0(s_axis_tdata[126]),
        .I1(\inst/des_encrypt_instance/right[7] [13]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [20]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_8 
       (.I0(s_axis_tdata[70]),
        .I1(\inst/des_encrypt_instance/right[7] [14]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[26]_INST_0_i_9 
       (.I0(s_axis_tdata[85]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [13]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [13]),
        .O(m_axis_tdata[27]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[27]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[27]_INST_0_i_10 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .I1(s_axis_tdata[61]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [9]),
        .I4(s_axis_tdata[92]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [22]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[27]_INST_0_i_11 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .I1(s_axis_tdata[29]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [25]),
        .I4(s_axis_tdata[87]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [18]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[27]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[27]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [13]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[27]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [13]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[27]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [13]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_16 
       (.I0(s_axis_tdata[76]),
        .I1(\inst/des_encrypt_instance/right[8] [12]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [19]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_17 
       (.I0(s_axis_tdata[77]),
        .I1(\inst/des_encrypt_instance/right[8] [13]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [20]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_18 
       (.I0(s_axis_tdata[86]),
        .I1(\inst/des_encrypt_instance/right[8] [14]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_19 
       (.I0(s_axis_tdata[101]),
        .I1(\inst/des_encrypt_instance/right[8] [16]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .I1(s_axis_tdata[26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [13]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/right[7] [19]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_20 
       (.I0(s_axis_tdata[95]),
        .I1(\inst/des_encrypt_instance/right[8] [15]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_21 
       (.I0(s_axis_tdata[119]),
        .I1(\inst/des_encrypt_instance/right[8] [11]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [18]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[8] [12]),
        .I2(s_axis_tdata[79]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [19]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [17]),
        .I1(\inst/des_encrypt_instance/right[8] [13]),
        .I2(s_axis_tdata[109]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [20]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [30]),
        .I1(\inst/des_encrypt_instance/right[8] [14]),
        .I2(s_axis_tdata[118]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[8] [16]),
        .I2(s_axis_tdata[68]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [23]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[8] [15]),
        .I2(s_axis_tdata[127]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[8] [11]),
        .I2(s_axis_tdata[86]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [18]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[8] [12]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [4]),
        .I3(s_axis_tdata[111]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [17]),
        .I1(\inst/des_encrypt_instance/right[8] [13]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [17]),
        .I3(s_axis_tdata[76]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [20]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[27]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [30]),
        .I1(\inst/des_encrypt_instance/right[8] [14]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [30]),
        .I3(s_axis_tdata[85]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [21]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[8] [16]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [1]),
        .I3(s_axis_tdata[71]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[8] [15]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [9]),
        .I3(s_axis_tdata[94]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [22]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[8] [11]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [25]),
        .I3(s_axis_tdata[118]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [18]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[27]_INST_0_i_34 
       (.I0(s_axis_tdata[127]),
        .I1(s_axis_tdata[37]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [19]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[27]_INST_0_i_35 
       (.I0(s_axis_tdata[92]),
        .I1(s_axis_tdata[45]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [20]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[27]_INST_0_i_36 
       (.I0(s_axis_tdata[101]),
        .I1(s_axis_tdata[53]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[27]_INST_0_i_37 
       (.I0(s_axis_tdata[87]),
        .I1(s_axis_tdata[3]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [23]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[27]_INST_0_i_38 
       (.I0(s_axis_tdata[110]),
        .I1(s_axis_tdata[61]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[27]_INST_0_i_39 
       (.I0(s_axis_tdata[69]),
        .I1(s_axis_tdata[29]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [18]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[27]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [13]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_40 
       (.I0(s_axis_tdata[86]),
        .I1(s_axis_tdata[37]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [19]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_41 
       (.I0(s_axis_tdata[87]),
        .I1(s_axis_tdata[45]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [20]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_42 
       (.I0(s_axis_tdata[125]),
        .I1(s_axis_tdata[53]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_43 
       (.I0(s_axis_tdata[111]),
        .I1(s_axis_tdata[3]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [23]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_44 
       (.I0(s_axis_tdata[69]),
        .I1(s_axis_tdata[61]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[27]_INST_0_i_45 
       (.I0(s_axis_tdata[93]),
        .I1(s_axis_tdata[29]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [18]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .I1(s_axis_tdata[37]),
        .I2(s_axis_tdata[118]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [19]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [17]),
        .I1(s_axis_tdata[45]),
        .I2(s_axis_tdata[119]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [20]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [30]),
        .I1(s_axis_tdata[53]),
        .I2(s_axis_tdata[92]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [21]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .I1(s_axis_tdata[3]),
        .I2(s_axis_tdata[78]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [23]));
  LUT6 #(
    .INIT(64'h9BE1684E36AD8791)) 
    \m_axis_tdata[27]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [23]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [22]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [13]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .I1(s_axis_tdata[61]),
        .I2(s_axis_tdata[101]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [22]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[27]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .I1(s_axis_tdata[29]),
        .I2(s_axis_tdata[125]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [18]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .I1(s_axis_tdata[37]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [4]),
        .I3(s_axis_tdata[85]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [17]),
        .I1(s_axis_tdata[45]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [17]),
        .I3(s_axis_tdata[86]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [20]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [30]),
        .I1(s_axis_tdata[53]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [30]),
        .I3(s_axis_tdata[95]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [21]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .I1(s_axis_tdata[3]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [1]),
        .I3(s_axis_tdata[110]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .I1(s_axis_tdata[61]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [9]),
        .I3(s_axis_tdata[68]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [22]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[27]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .I1(s_axis_tdata[29]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [25]),
        .I3(s_axis_tdata[92]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [18]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[27]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .I1(s_axis_tdata[37]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [4]),
        .I4(s_axis_tdata[109]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [19]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[27]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [17]),
        .I1(s_axis_tdata[45]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [17]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [17]),
        .I4(s_axis_tdata[110]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [20]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[27]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [30]),
        .I1(s_axis_tdata[53]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [30]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [30]),
        .I4(s_axis_tdata[119]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [21]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[27]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .I1(s_axis_tdata[3]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [1]),
        .I4(s_axis_tdata[69]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [23]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[8] [11]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [25]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [25]),
        .O(m_axis_tdata[28]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[28]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[28]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .I1(s_axis_tdata[29]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [25]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/right[8] [11]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[28]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[28]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[28]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[28]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[28]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[28]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[28]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [25]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [25]),
        .O(m_axis_tdata[29]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[29]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[29]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .I1(s_axis_tdata[28]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [25]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/right[7] [11]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[29]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[29]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[29]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[29]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[29]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[29]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [25]));
  LUT6 #(
    .INIT(64'hE619B8275B64728D)) 
    \m_axis_tdata[29]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[8] [16]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [1]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [1]),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[2]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[2]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .I1(s_axis_tdata[3]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [1]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/right[8] [16]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[2]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[2]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[2]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[2]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[2]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[2]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[2]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[8] [3]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [20]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [20]),
        .O(m_axis_tdata[30]));
  LUT6 #(
    .INIT(64'hD2C6AD612DD1D21D)) 
    \m_axis_tdata[30]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [20]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[30]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .I1(s_axis_tdata[31]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [20]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/right[8] [3]));
  LUT6 #(
    .INIT(64'hD2C6AD612DD1D21D)) 
    \m_axis_tdata[30]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C6AD612DD1D21D)) 
    \m_axis_tdata[30]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C62DD1AD61D21D)) 
    \m_axis_tdata[30]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C6AD612DD1D21D)) 
    \m_axis_tdata[30]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C6AD612DD1D21D)) 
    \m_axis_tdata[30]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C6AD612DD1D21D)) 
    \m_axis_tdata[30]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C6AD612DD1D21D)) 
    \m_axis_tdata[30]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [20]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [20]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [20]),
        .O(m_axis_tdata[31]));
  LUT6 #(
    .INIT(64'hD2C62DD1AD61D21D)) 
    \m_axis_tdata[31]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[31]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .I1(s_axis_tdata[30]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [20]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/right[7] [3]));
  LUT6 #(
    .INIT(64'hD2C62DD1AD61D21D)) 
    \m_axis_tdata[31]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C62DD1AD61D21D)) 
    \m_axis_tdata[31]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C6AD612DD1D21D)) 
    \m_axis_tdata[31]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C62DD1AD61D21D)) 
    \m_axis_tdata[31]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C62DD1AD61D21D)) 
    \m_axis_tdata[31]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C62DD1AD61D21D)) 
    \m_axis_tdata[31]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [20]));
  LUT6 #(
    .INIT(64'hD2C62DD1AD61D21D)) 
    \m_axis_tdata[31]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [35]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [30]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [20]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[8] [28]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [21]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [21]),
        .O(m_axis_tdata[32]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[32]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [21]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_10 
       (.I0(s_axis_tdata[83]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_11 
       (.I0(s_axis_tdata[66]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [35]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[32]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[32]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [21]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[32]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [21]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[32]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [21]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_16 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(s_axis_tdata[97]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [31]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_17 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [26]),
        .I1(\inst/des_encrypt_instance/right[7] [21]),
        .I2(s_axis_tdata[122]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [32]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_18 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [2]),
        .I1(\inst/des_encrypt_instance/right[7] [22]),
        .I2(s_axis_tdata[74]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_19 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(s_axis_tdata[108]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [34]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .I1(s_axis_tdata[33]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [21]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/right[8] [28]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_20 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(s_axis_tdata[115]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_21 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(s_axis_tdata[98]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [35]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [31]),
        .I3(s_axis_tdata[66]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [31]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [26]),
        .I1(\inst/des_encrypt_instance/right[7] [21]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [26]),
        .I3(s_axis_tdata[91]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [32]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [2]),
        .I1(\inst/des_encrypt_instance/right[7] [22]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [2]),
        .I3(s_axis_tdata[106]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [33]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [8]),
        .I3(s_axis_tdata[73]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [34]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [13]),
        .I3(s_axis_tdata[116]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [30]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [18]),
        .I3(s_axis_tdata[67]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [35]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [31]),
        .I4(s_axis_tdata[90]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [31]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [26]),
        .I1(\inst/des_encrypt_instance/right[7] [21]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [26]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [26]),
        .I4(s_axis_tdata[115]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [32]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[32]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [21]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [2]),
        .I1(\inst/des_encrypt_instance/right[7] [22]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [2]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [2]),
        .I4(s_axis_tdata[67]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [33]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [8]),
        .I4(s_axis_tdata[97]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [34]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [13]),
        .I4(s_axis_tdata[73]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [30]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [18]),
        .I4(s_axis_tdata[91]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [35]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_34 
       (.I0(s_axis_tdata[106]),
        .I1(s_axis_tdata[34]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [31]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_35 
       (.I0(s_axis_tdata[100]),
        .I1(s_axis_tdata[42]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [32]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_36 
       (.I0(s_axis_tdata[83]),
        .I1(s_axis_tdata[50]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_37 
       (.I0(s_axis_tdata[113]),
        .I1(s_axis_tdata[58]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [34]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_38 
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[26]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_39 
       (.I0(s_axis_tdata[107]),
        .I1(s_axis_tdata[0]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [35]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[32]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_40 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .I1(s_axis_tdata[34]),
        .I2(s_axis_tdata[75]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [31]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_41 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [26]),
        .I1(s_axis_tdata[42]),
        .I2(s_axis_tdata[65]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [32]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_42 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [2]),
        .I1(s_axis_tdata[50]),
        .I2(s_axis_tdata[115]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_43 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .I1(s_axis_tdata[58]),
        .I2(s_axis_tdata[82]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [34]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_44 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .I1(s_axis_tdata[26]),
        .I2(s_axis_tdata[121]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[32]_INST_0_i_45 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[108]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [35]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .I1(s_axis_tdata[34]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [31]),
        .I3(s_axis_tdata[107]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [31]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [26]),
        .I1(s_axis_tdata[42]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [26]),
        .I3(s_axis_tdata[97]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [32]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [2]),
        .I1(s_axis_tdata[50]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [2]),
        .I3(s_axis_tdata[116]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [33]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .I1(s_axis_tdata[58]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [8]),
        .I3(s_axis_tdata[114]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [34]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[32]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [21]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .I1(s_axis_tdata[26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [13]),
        .I3(s_axis_tdata[90]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [30]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[32]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .I1(s_axis_tdata[0]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [18]),
        .I3(s_axis_tdata[73]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [35]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .I1(s_axis_tdata[34]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [31]),
        .I4(s_axis_tdata[108]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [31]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [26]),
        .I1(s_axis_tdata[42]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [26]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [26]),
        .I4(s_axis_tdata[66]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [32]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [2]),
        .I1(s_axis_tdata[50]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [2]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [2]),
        .I4(s_axis_tdata[81]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [33]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .I1(s_axis_tdata[58]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [8]),
        .I4(s_axis_tdata[83]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [34]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .I1(s_axis_tdata[26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [13]),
        .I4(s_axis_tdata[122]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [30]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[32]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .I1(s_axis_tdata[0]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [18]),
        .I4(s_axis_tdata[105]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [35]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_6 
       (.I0(s_axis_tdata[65]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [31]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_7 
       (.I0(s_axis_tdata[90]),
        .I1(\inst/des_encrypt_instance/right[7] [21]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [32]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_8 
       (.I0(s_axis_tdata[105]),
        .I1(\inst/des_encrypt_instance/right[7] [22]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[32]_INST_0_i_9 
       (.I0(s_axis_tdata[107]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [34]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [21]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [21]),
        .O(m_axis_tdata[33]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[33]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[33]_INST_0_i_10 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .I1(s_axis_tdata[27]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [13]),
        .I4(s_axis_tdata[67]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [30]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[33]_INST_0_i_11 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .I1(s_axis_tdata[1]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [18]),
        .I4(s_axis_tdata[113]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [35]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[33]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[33]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [21]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[33]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [21]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[33]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [21]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_16 
       (.I0(s_axis_tdata[81]),
        .I1(\inst/des_encrypt_instance/right[8] [20]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [31]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_17 
       (.I0(s_axis_tdata[106]),
        .I1(\inst/des_encrypt_instance/right[8] [21]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [32]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_18 
       (.I0(s_axis_tdata[121]),
        .I1(\inst/des_encrypt_instance/right[8] [22]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_19 
       (.I0(s_axis_tdata[123]),
        .I1(\inst/des_encrypt_instance/right[8] [23]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [34]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .I1(s_axis_tdata[32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [21]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/right[7] [28]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_20 
       (.I0(s_axis_tdata[99]),
        .I1(\inst/des_encrypt_instance/right[8] [19]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_21 
       (.I0(s_axis_tdata[82]),
        .I1(\inst/des_encrypt_instance/right[8] [24]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [35]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[8] [20]),
        .I2(s_axis_tdata[113]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [31]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [26]),
        .I1(\inst/des_encrypt_instance/right[8] [21]),
        .I2(s_axis_tdata[75]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [32]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [2]),
        .I1(\inst/des_encrypt_instance/right[8] [22]),
        .I2(s_axis_tdata[90]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[8] [23]),
        .I2(s_axis_tdata[124]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [34]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[8] [19]),
        .I2(s_axis_tdata[100]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[8] [24]),
        .I2(s_axis_tdata[114]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [35]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[8] [20]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [31]),
        .I3(s_axis_tdata[82]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [31]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [26]),
        .I1(\inst/des_encrypt_instance/right[8] [21]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [26]),
        .I3(s_axis_tdata[107]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [32]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[33]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [21]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [2]),
        .I1(\inst/des_encrypt_instance/right[8] [22]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [2]),
        .I3(s_axis_tdata[122]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [33]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[8] [23]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [8]),
        .I3(s_axis_tdata[89]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [34]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[8] [19]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [13]),
        .I3(s_axis_tdata[65]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [30]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[8] [24]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [18]),
        .I3(s_axis_tdata[83]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [35]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[33]_INST_0_i_34 
       (.I0(s_axis_tdata[98]),
        .I1(s_axis_tdata[35]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [31]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[33]_INST_0_i_35 
       (.I0(s_axis_tdata[123]),
        .I1(s_axis_tdata[43]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [32]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[33]_INST_0_i_36 
       (.I0(s_axis_tdata[75]),
        .I1(s_axis_tdata[51]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [33]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[33]_INST_0_i_37 
       (.I0(s_axis_tdata[105]),
        .I1(s_axis_tdata[59]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [34]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[33]_INST_0_i_38 
       (.I0(s_axis_tdata[81]),
        .I1(s_axis_tdata[27]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[33]_INST_0_i_39 
       (.I0(s_axis_tdata[99]),
        .I1(s_axis_tdata[1]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [35]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[33]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [21]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_40 
       (.I0(s_axis_tdata[122]),
        .I1(s_axis_tdata[35]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [31]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_41 
       (.I0(s_axis_tdata[116]),
        .I1(s_axis_tdata[43]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [32]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_42 
       (.I0(s_axis_tdata[99]),
        .I1(s_axis_tdata[51]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_43 
       (.I0(s_axis_tdata[66]),
        .I1(s_axis_tdata[59]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [34]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_44 
       (.I0(s_axis_tdata[105]),
        .I1(s_axis_tdata[27]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[33]_INST_0_i_45 
       (.I0(s_axis_tdata[123]),
        .I1(s_axis_tdata[1]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [35]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .I1(s_axis_tdata[35]),
        .I2(s_axis_tdata[91]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [31]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [26]),
        .I1(s_axis_tdata[43]),
        .I2(s_axis_tdata[81]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [32]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [2]),
        .I1(s_axis_tdata[51]),
        .I2(s_axis_tdata[100]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .I1(s_axis_tdata[59]),
        .I2(s_axis_tdata[98]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [34]));
  LUT6 #(
    .INIT(64'hB649653699723AC9)) 
    \m_axis_tdata[33]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [31]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [32]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [33]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [34]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [30]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [35]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [21]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .I1(s_axis_tdata[27]),
        .I2(s_axis_tdata[74]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [30]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[33]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .I1(s_axis_tdata[1]),
        .I2(s_axis_tdata[124]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [35]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .I1(s_axis_tdata[35]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [31]),
        .I3(s_axis_tdata[123]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [31]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [26]),
        .I1(s_axis_tdata[43]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [26]),
        .I3(s_axis_tdata[113]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [32]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [2]),
        .I1(s_axis_tdata[51]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [2]),
        .I3(s_axis_tdata[65]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [33]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .I1(s_axis_tdata[59]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [8]),
        .I3(s_axis_tdata[67]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [34]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .I1(s_axis_tdata[27]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [13]),
        .I3(s_axis_tdata[106]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [30]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[33]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .I1(s_axis_tdata[1]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [18]),
        .I3(s_axis_tdata[89]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [35]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[33]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .I1(s_axis_tdata[35]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [31]),
        .I4(s_axis_tdata[116]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [31]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[33]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [26]),
        .I1(s_axis_tdata[43]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [26]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [26]),
        .I4(s_axis_tdata[74]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [32]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[33]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [2]),
        .I1(s_axis_tdata[51]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [2]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [2]),
        .I4(s_axis_tdata[89]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [33]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[33]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .I1(s_axis_tdata[59]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [8]),
        .I4(s_axis_tdata[91]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [34]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[8] [20]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [31]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [31]),
        .O(m_axis_tdata[34]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[34]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [31]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[34]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .I1(s_axis_tdata[35]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [31]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/right[8] [20]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[34]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[34]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[34]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[34]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[34]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[34]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[34]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [31]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [31]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [31]),
        .O(m_axis_tdata[35]));
  LUT6 #(
    .INIT(64'hD92A27D1398DC669)) 
    \m_axis_tdata[35]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[35]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .I1(s_axis_tdata[34]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [31]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/right[7] [20]));
  LUT6 #(
    .INIT(64'hD92A27D1398DC669)) 
    \m_axis_tdata[35]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A27D1398DC669)) 
    \m_axis_tdata[35]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A398D27D1C669)) 
    \m_axis_tdata[35]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A27D1398DC669)) 
    \m_axis_tdata[35]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A27D1398DC669)) 
    \m_axis_tdata[35]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A27D1398DC669)) 
    \m_axis_tdata[35]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [31]));
  LUT6 #(
    .INIT(64'hD92A27D1398DC669)) 
    \m_axis_tdata[35]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [31]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[8] [12]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [4]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [4]),
        .O(m_axis_tdata[36]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[36]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [4]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_10 
       (.I0(s_axis_tdata[93]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_11 
       (.I0(s_axis_tdata[84]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [11]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[36]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[36]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [4]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[36]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [4]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[36]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [4]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_16 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(s_axis_tdata[101]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_17 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [11]),
        .I1(\inst/des_encrypt_instance/right[7] [5]),
        .I2(s_axis_tdata[127]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [8]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_18 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [27]),
        .I1(\inst/des_encrypt_instance/right[7] [6]),
        .I2(s_axis_tdata[84]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_19 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(s_axis_tdata[110]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .I1(s_axis_tdata[37]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [4]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/right[8] [12]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_20 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(s_axis_tdata[125]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_21 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(s_axis_tdata[87]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [28]),
        .I3(s_axis_tdata[68]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [11]),
        .I1(\inst/des_encrypt_instance/right[7] [5]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [11]),
        .I3(s_axis_tdata[94]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [27]),
        .I1(\inst/des_encrypt_instance/right[7] [6]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [27]),
        .I3(s_axis_tdata[87]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [16]),
        .I3(s_axis_tdata[77]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [20]),
        .I3(s_axis_tdata[92]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [0]),
        .I3(s_axis_tdata[119]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [28]),
        .I4(s_axis_tdata[92]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [11]),
        .I1(\inst/des_encrypt_instance/right[7] [5]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [11]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [11]),
        .I4(s_axis_tdata[118]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [8]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[36]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [27]),
        .I1(\inst/des_encrypt_instance/right[7] [6]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [27]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [27]),
        .I4(s_axis_tdata[111]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [9]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [16]),
        .I4(s_axis_tdata[101]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [20]),
        .I4(s_axis_tdata[87]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [0]),
        .I4(s_axis_tdata[78]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [11]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_34 
       (.I0(s_axis_tdata[79]),
        .I1(s_axis_tdata[38]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_35 
       (.I0(s_axis_tdata[69]),
        .I1(s_axis_tdata[46]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_36 
       (.I0(s_axis_tdata[127]),
        .I1(s_axis_tdata[54]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_37 
       (.I0(s_axis_tdata[117]),
        .I1(s_axis_tdata[62]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [10]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_38 
       (.I0(s_axis_tdata[103]),
        .I1(s_axis_tdata[30]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_39 
       (.I0(s_axis_tdata[94]),
        .I1(s_axis_tdata[4]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [11]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[36]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_40 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .I1(s_axis_tdata[38]),
        .I2(s_axis_tdata[111]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_41 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [11]),
        .I1(s_axis_tdata[46]),
        .I2(s_axis_tdata[101]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_42 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [27]),
        .I1(s_axis_tdata[54]),
        .I2(s_axis_tdata[94]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_43 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .I1(s_axis_tdata[62]),
        .I2(s_axis_tdata[84]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_44 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .I1(s_axis_tdata[30]),
        .I2(s_axis_tdata[70]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[36]_INST_0_i_45 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[126]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .I1(s_axis_tdata[38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [28]),
        .I3(s_axis_tdata[78]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [11]),
        .I1(s_axis_tdata[46]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [11]),
        .I3(s_axis_tdata[68]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [27]),
        .I1(s_axis_tdata[54]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [27]),
        .I3(s_axis_tdata[126]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .I1(s_axis_tdata[62]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [16]),
        .I3(s_axis_tdata[87]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [10]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[36]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .I1(s_axis_tdata[30]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [20]),
        .I3(s_axis_tdata[102]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[36]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .I1(s_axis_tdata[4]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [0]),
        .I3(s_axis_tdata[93]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .I1(s_axis_tdata[38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [28]),
        .I4(s_axis_tdata[110]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [11]),
        .I1(s_axis_tdata[46]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [11]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [11]),
        .I4(s_axis_tdata[71]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [27]),
        .I1(s_axis_tdata[54]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [27]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [27]),
        .I4(s_axis_tdata[93]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [9]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .I1(s_axis_tdata[62]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [16]),
        .I4(s_axis_tdata[119]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .I1(s_axis_tdata[30]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [20]),
        .I4(s_axis_tdata[69]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[36]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .I1(s_axis_tdata[4]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [0]),
        .I4(s_axis_tdata[125]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [11]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_6 
       (.I0(s_axis_tdata[69]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_7 
       (.I0(s_axis_tdata[95]),
        .I1(\inst/des_encrypt_instance/right[7] [5]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [8]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_8 
       (.I0(s_axis_tdata[117]),
        .I1(\inst/des_encrypt_instance/right[7] [6]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[36]_INST_0_i_9 
       (.I0(s_axis_tdata[78]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [4]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [4]),
        .O(m_axis_tdata[37]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[37]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[37]_INST_0_i_10 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .I1(s_axis_tdata[31]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [20]),
        .I4(s_axis_tdata[77]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[37]_INST_0_i_11 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .I1(s_axis_tdata[5]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [0]),
        .I4(s_axis_tdata[68]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [11]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[37]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[37]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [4]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[37]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [4]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[37]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [4]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_16 
       (.I0(s_axis_tdata[85]),
        .I1(\inst/des_encrypt_instance/right[8] [4]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [7]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_17 
       (.I0(s_axis_tdata[111]),
        .I1(\inst/des_encrypt_instance/right[8] [5]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [8]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_18 
       (.I0(s_axis_tdata[68]),
        .I1(\inst/des_encrypt_instance/right[8] [6]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_19 
       (.I0(s_axis_tdata[94]),
        .I1(\inst/des_encrypt_instance/right[8] [7]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .I1(s_axis_tdata[36]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [4]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/right[7] [12]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_20 
       (.I0(s_axis_tdata[109]),
        .I1(\inst/des_encrypt_instance/right[8] [3]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_21 
       (.I0(s_axis_tdata[71]),
        .I1(\inst/des_encrypt_instance/right[8] [8]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [11]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[8] [4]),
        .I2(s_axis_tdata[117]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [7]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [11]),
        .I1(\inst/des_encrypt_instance/right[8] [5]),
        .I2(s_axis_tdata[78]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [8]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [27]),
        .I1(\inst/des_encrypt_instance/right[8] [6]),
        .I2(s_axis_tdata[71]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[8] [7]),
        .I2(s_axis_tdata[126]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [10]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[8] [3]),
        .I2(s_axis_tdata[76]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[8] [8]),
        .I2(s_axis_tdata[103]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[8] [4]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [28]),
        .I3(s_axis_tdata[84]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [11]),
        .I1(\inst/des_encrypt_instance/right[8] [5]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [11]),
        .I3(s_axis_tdata[110]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [8]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[37]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [27]),
        .I1(\inst/des_encrypt_instance/right[8] [6]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [27]),
        .I3(s_axis_tdata[103]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[8] [7]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [16]),
        .I3(s_axis_tdata[93]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[8] [3]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [20]),
        .I3(s_axis_tdata[79]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[8] [8]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [0]),
        .I3(s_axis_tdata[70]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [11]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[37]_INST_0_i_34 
       (.I0(s_axis_tdata[71]),
        .I1(s_axis_tdata[39]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[37]_INST_0_i_35 
       (.I0(s_axis_tdata[126]),
        .I1(s_axis_tdata[47]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[37]_INST_0_i_36 
       (.I0(s_axis_tdata[119]),
        .I1(s_axis_tdata[55]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[37]_INST_0_i_37 
       (.I0(s_axis_tdata[109]),
        .I1(s_axis_tdata[63]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [10]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[37]_INST_0_i_38 
       (.I0(s_axis_tdata[95]),
        .I1(s_axis_tdata[31]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[37]_INST_0_i_39 
       (.I0(s_axis_tdata[86]),
        .I1(s_axis_tdata[5]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [11]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[37]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [4]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_40 
       (.I0(s_axis_tdata[95]),
        .I1(s_axis_tdata[39]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_41 
       (.I0(s_axis_tdata[85]),
        .I1(s_axis_tdata[47]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_42 
       (.I0(s_axis_tdata[78]),
        .I1(s_axis_tdata[55]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_43 
       (.I0(s_axis_tdata[68]),
        .I1(s_axis_tdata[63]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [10]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_44 
       (.I0(s_axis_tdata[119]),
        .I1(s_axis_tdata[31]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[37]_INST_0_i_45 
       (.I0(s_axis_tdata[110]),
        .I1(s_axis_tdata[5]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .I1(s_axis_tdata[39]),
        .I2(s_axis_tdata[127]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [11]),
        .I1(s_axis_tdata[47]),
        .I2(s_axis_tdata[117]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [8]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [27]),
        .I1(s_axis_tdata[55]),
        .I2(s_axis_tdata[110]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [9]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .I1(s_axis_tdata[63]),
        .I2(s_axis_tdata[71]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [10]));
  LUT6 #(
    .INIT(64'hA59369C6936CB41B)) 
    \m_axis_tdata[37]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [7]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [8]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [9]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [10]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [6]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [11]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[86]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[37]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[77]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .I1(s_axis_tdata[39]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [28]),
        .I3(s_axis_tdata[94]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [11]),
        .I1(s_axis_tdata[47]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [11]),
        .I3(s_axis_tdata[84]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [27]),
        .I1(s_axis_tdata[55]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [27]),
        .I3(s_axis_tdata[77]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .I1(s_axis_tdata[63]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [16]),
        .I3(s_axis_tdata[103]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .I1(s_axis_tdata[31]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [20]),
        .I3(s_axis_tdata[118]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[37]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .I1(s_axis_tdata[5]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [0]),
        .I3(s_axis_tdata[109]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [11]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[37]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .I1(s_axis_tdata[39]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [28]),
        .I4(s_axis_tdata[118]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[37]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [11]),
        .I1(s_axis_tdata[47]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [11]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [11]),
        .I4(s_axis_tdata[79]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [8]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[37]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [27]),
        .I1(s_axis_tdata[55]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [27]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [27]),
        .I4(s_axis_tdata[101]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [9]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[37]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .I1(s_axis_tdata[63]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [16]),
        .I4(s_axis_tdata[127]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[8] [4]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [28]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [28]),
        .O(m_axis_tdata[38]));
  LUT6 #(
    .INIT(64'hC6723996A56C26D3)) 
    \m_axis_tdata[38]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [28]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[38]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .I1(s_axis_tdata[39]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [28]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/right[8] [4]));
  LUT6 #(
    .INIT(64'hC6723996A56C26D3)) 
    \m_axis_tdata[38]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC6723996A56C26D3)) 
    \m_axis_tdata[38]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC672A56C399626D3)) 
    \m_axis_tdata[38]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC6723996A56C26D3)) 
    \m_axis_tdata[38]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC6723996A56C26D3)) 
    \m_axis_tdata[38]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC6723996A56C26D3)) 
    \m_axis_tdata[38]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC6723996A56C26D3)) 
    \m_axis_tdata[38]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [28]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [28]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [28]),
        .O(m_axis_tdata[39]));
  LUT6 #(
    .INIT(64'hC672A56C399626D3)) 
    \m_axis_tdata[39]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[39]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .I1(s_axis_tdata[38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [28]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/right[7] [4]));
  LUT6 #(
    .INIT(64'hC672A56C399626D3)) 
    \m_axis_tdata[39]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC672A56C399626D3)) 
    \m_axis_tdata[39]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC6723996A56C26D3)) 
    \m_axis_tdata[39]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [42]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [47]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC672A56C399626D3)) 
    \m_axis_tdata[39]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC672A56C399626D3)) 
    \m_axis_tdata[39]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC672A56C399626D3)) 
    \m_axis_tdata[39]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [28]));
  LUT6 #(
    .INIT(64'hC672A56C399626D3)) 
    \m_axis_tdata[39]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [46]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [47]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [28]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [1]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [1]),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[3]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[3]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .I1(s_axis_tdata[2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [1]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/right[7] [16]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[3]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[3]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[3]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[3]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[3]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[3]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [1]));
  LUT6 #(
    .INIT(64'hE1871B742697A539)) 
    \m_axis_tdata[3]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [10]),
        .I1(\inst/des_encrypt_instance/right[8] [29]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [10]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [10]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [10]),
        .O(m_axis_tdata[40]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[40]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[40]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [10]),
        .I1(s_axis_tdata[41]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [10]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [10]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/right[8] [29]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[40]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[40]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[40]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[40]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[40]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[40]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[40]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [10]),
        .I1(\inst/des_encrypt_instance/right[7] [29]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [10]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [10]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [10]),
        .O(m_axis_tdata[41]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[41]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[41]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [10]),
        .I1(s_axis_tdata[40]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [10]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [10]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/right[7] [29]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[41]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[41]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[41]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[41]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[41]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[41]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [10]));
  LUT6 #(
    .INIT(64'h63AC69C68DE234CD)) 
    \m_axis_tdata[41]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [10]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [26]),
        .I1(\inst/des_encrypt_instance/right[8] [21]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [26]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [26]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [26]),
        .O(m_axis_tdata[42]));
  LUT6 #(
    .INIT(64'h69C9C672DA1A3996)) 
    \m_axis_tdata[42]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[42]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [26]),
        .I1(s_axis_tdata[43]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [26]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [26]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/right[8] [21]));
  LUT6 #(
    .INIT(64'h69C9C672DA1A3996)) 
    \m_axis_tdata[42]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[42]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[42]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9C672DA1A3996)) 
    \m_axis_tdata[42]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9C672DA1A3996)) 
    \m_axis_tdata[42]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9C672DA1A3996)) 
    \m_axis_tdata[42]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9C672DA1A3996)) 
    \m_axis_tdata[42]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [26]),
        .I1(\inst/des_encrypt_instance/right[7] [21]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [26]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [26]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [26]),
        .O(m_axis_tdata[43]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[43]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[43]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [26]),
        .I1(s_axis_tdata[42]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [26]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [26]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [26]),
        .O(\inst/des_encrypt_instance/right[7] [21]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[43]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[43]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9C672DA1A3996)) 
    \m_axis_tdata[43]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[43]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[43]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[43]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [26]));
  LUT6 #(
    .INIT(64'h69C9DA1AC6723996)) 
    \m_axis_tdata[43]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [17]),
        .I1(\inst/des_encrypt_instance/right[8] [13]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [17]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [17]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [17]),
        .O(m_axis_tdata[44]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[44]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[44]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [17]),
        .I1(s_axis_tdata[45]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [17]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [17]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/right[8] [13]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[44]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[44]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[44]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[44]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[44]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[44]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[44]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [17]),
        .I1(\inst/des_encrypt_instance/right[7] [13]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [17]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [17]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [17]),
        .O(m_axis_tdata[45]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[45]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[45]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [17]),
        .I1(s_axis_tdata[44]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [17]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [17]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [17]),
        .O(\inst/des_encrypt_instance/right[7] [13]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[45]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[45]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[45]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[45]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[45]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[45]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [17]));
  LUT6 #(
    .INIT(64'h5E92A46B9467639C)) 
    \m_axis_tdata[45]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [28]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [29]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [24]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [11]),
        .I1(\inst/des_encrypt_instance/right[8] [5]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [11]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [11]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [11]),
        .O(m_axis_tdata[46]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[46]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[46]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [11]),
        .I1(s_axis_tdata[47]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [11]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [11]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/right[8] [5]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[46]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[46]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[46]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[46]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[46]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[46]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[46]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [11]),
        .I1(\inst/des_encrypt_instance/right[7] [5]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [11]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [11]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [11]),
        .O(m_axis_tdata[47]));
  LUT6 #(
    .INIT(64'h6E19964B99A5665A)) 
    \m_axis_tdata[47]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[47]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [11]),
        .I1(s_axis_tdata[46]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [11]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [11]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [11]),
        .O(\inst/des_encrypt_instance/right[7] [5]));
  LUT6 #(
    .INIT(64'h6E19964B99A5665A)) 
    \m_axis_tdata[47]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E19964B99A5665A)) 
    \m_axis_tdata[47]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E1999A5964B665A)) 
    \m_axis_tdata[47]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E19964B99A5665A)) 
    \m_axis_tdata[47]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E19964B99A5665A)) 
    \m_axis_tdata[47]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E19964B99A5665A)) 
    \m_axis_tdata[47]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [11]));
  LUT6 #(
    .INIT(64'h6E19964B99A5665A)) 
    \m_axis_tdata[47]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [11]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [3]),
        .I1(\inst/des_encrypt_instance/right[8] [30]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [3]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [3]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [3]),
        .O(m_axis_tdata[48]));
  LUT6 #(
    .INIT(64'hC66369D861AE9C5A)) 
    \m_axis_tdata[48]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[48]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [3]),
        .I1(s_axis_tdata[49]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [3]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [3]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/right[8] [30]));
  LUT6 #(
    .INIT(64'hC66369D861AE9C5A)) 
    \m_axis_tdata[48]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66369D861AE9C5A)) 
    \m_axis_tdata[48]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66361AE69D89C5A)) 
    \m_axis_tdata[48]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [5]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [0]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66369D861AE9C5A)) 
    \m_axis_tdata[48]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66369D861AE9C5A)) 
    \m_axis_tdata[48]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66369D861AE9C5A)) 
    \m_axis_tdata[48]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66369D861AE9C5A)) 
    \m_axis_tdata[48]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [3]),
        .I1(\inst/des_encrypt_instance/right[7] [30]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [3]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [3]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [3]),
        .O(m_axis_tdata[49]));
  LUT6 #(
    .INIT(64'hC66361AE69D89C5A)) 
    \m_axis_tdata[49]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [5]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [0]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[49]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [3]),
        .I1(s_axis_tdata[48]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [3]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [3]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/right[7] [30]));
  LUT6 #(
    .INIT(64'hC66361AE69D89C5A)) 
    \m_axis_tdata[49]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [5]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [0]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66361AE69D89C5A)) 
    \m_axis_tdata[49]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [5]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [0]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66369D861AE9C5A)) 
    \m_axis_tdata[49]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66361AE69D89C5A)) 
    \m_axis_tdata[49]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [5]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [0]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66361AE69D89C5A)) 
    \m_axis_tdata[49]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [5]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [0]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66361AE69D89C5A)) 
    \m_axis_tdata[49]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [5]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [0]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [3]));
  LUT6 #(
    .INIT(64'hC66361AE69D89C5A)) 
    \m_axis_tdata[49]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [5]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [0]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[8] [8]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [0]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [0]),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[4]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[4]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .I1(s_axis_tdata[5]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [0]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/right[8] [8]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[4]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[4]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[4]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[4]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[4]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[4]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[4]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [2]),
        .I1(\inst/des_encrypt_instance/right[8] [22]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [2]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [2]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [2]),
        .O(m_axis_tdata[50]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[50]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [2]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_10 
       (.I0(s_axis_tdata[87]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_11 
       (.I0(s_axis_tdata[109]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [5]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[50]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [2]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[50]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [2]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[50]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [2]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[50]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_16 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(s_axis_tdata[78]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_17 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [6]),
        .I1(\inst/des_encrypt_instance/right[7] [1]),
        .I2(s_axis_tdata[95]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_18 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [19]),
        .I1(\inst/des_encrypt_instance/right[7] [2]),
        .I2(s_axis_tdata[69]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_19 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(s_axis_tdata[109]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [2]),
        .I1(s_axis_tdata[51]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [2]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [2]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/right[8] [22]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_20 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(s_axis_tdata[119]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_21 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(s_axis_tdata[76]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [15]),
        .I3(s_axis_tdata[110]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [6]),
        .I1(\inst/des_encrypt_instance/right[7] [1]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [6]),
        .I3(s_axis_tdata[127]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [19]),
        .I1(\inst/des_encrypt_instance/right[7] [2]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [19]),
        .I3(s_axis_tdata[101]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [20]),
        .I3(s_axis_tdata[76]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [24]),
        .I3(s_axis_tdata[86]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [28]),
        .I3(s_axis_tdata[79]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [15]),
        .I4(s_axis_tdata[69]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [6]),
        .I1(\inst/des_encrypt_instance/right[7] [1]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [6]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [6]),
        .I4(s_axis_tdata[86]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [2]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[50]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [19]),
        .I1(\inst/des_encrypt_instance/right[7] [2]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [19]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [19]),
        .I4(s_axis_tdata[125]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [20]),
        .I4(s_axis_tdata[71]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [24]),
        .I4(s_axis_tdata[110]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[7] [4]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [28]),
        .I4(s_axis_tdata[103]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [5]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_34 
       (.I0(s_axis_tdata[85]),
        .I1(s_axis_tdata[6]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_35 
       (.I0(s_axis_tdata[102]),
        .I1(s_axis_tdata[14]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_36 
       (.I0(s_axis_tdata[76]),
        .I1(s_axis_tdata[22]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_37 
       (.I0(s_axis_tdata[87]),
        .I1(s_axis_tdata[30]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [4]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_38 
       (.I0(s_axis_tdata[126]),
        .I1(s_axis_tdata[56]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_39 
       (.I0(s_axis_tdata[119]),
        .I1(s_axis_tdata[38]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [5]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[50]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_40 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[117]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_41 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [6]),
        .I1(s_axis_tdata[14]),
        .I2(s_axis_tdata[69]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_42 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [19]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[79]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_43 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .I1(s_axis_tdata[30]),
        .I2(s_axis_tdata[119]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_44 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .I1(s_axis_tdata[56]),
        .I2(s_axis_tdata[93]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[50]_INST_0_i_45 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .I1(s_axis_tdata[38]),
        .I2(s_axis_tdata[86]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .I1(s_axis_tdata[6]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [15]),
        .I3(s_axis_tdata[84]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [6]),
        .I1(s_axis_tdata[14]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [6]),
        .I3(s_axis_tdata[101]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [19]),
        .I1(s_axis_tdata[22]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [19]),
        .I3(s_axis_tdata[111]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .I1(s_axis_tdata[30]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [20]),
        .I3(s_axis_tdata[86]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [4]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[50]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .I1(s_axis_tdata[56]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [24]),
        .I3(s_axis_tdata[125]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[50]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .I1(s_axis_tdata[38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [28]),
        .I3(s_axis_tdata[118]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .I1(s_axis_tdata[6]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [15]),
        .I4(s_axis_tdata[87]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [6]),
        .I1(s_axis_tdata[14]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [6]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [6]),
        .I4(s_axis_tdata[68]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [19]),
        .I1(s_axis_tdata[22]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [19]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [19]),
        .I4(s_axis_tdata[78]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [20]),
        .I1(s_axis_tdata[30]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [20]),
        .I4(s_axis_tdata[118]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .I1(s_axis_tdata[56]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [24]),
        .I4(s_axis_tdata[92]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[50]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [28]),
        .I1(s_axis_tdata[38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [28]),
        .I4(s_axis_tdata[85]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [5]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_6 
       (.I0(s_axis_tdata[111]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_7 
       (.I0(s_axis_tdata[92]),
        .I1(\inst/des_encrypt_instance/right[7] [1]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_8 
       (.I0(s_axis_tdata[102]),
        .I1(\inst/des_encrypt_instance/right[7] [2]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[50]_INST_0_i_9 
       (.I0(s_axis_tdata[77]),
        .I1(\inst/des_encrypt_instance/right[7] [3]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [2]),
        .I1(\inst/des_encrypt_instance/right[7] [22]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [2]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [2]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [2]),
        .O(m_axis_tdata[51]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[51]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[51]_INST_0_i_10 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .I1(s_axis_tdata[57]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [24]),
        .I4(s_axis_tdata[71]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[51]_INST_0_i_11 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .I1(s_axis_tdata[39]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [28]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [28]),
        .I4(s_axis_tdata[93]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [5]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[51]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [2]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[51]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [2]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[51]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [2]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[51]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [2]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_16 
       (.I0(s_axis_tdata[127]),
        .I1(\inst/des_encrypt_instance/right[8] [0]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_17 
       (.I0(s_axis_tdata[79]),
        .I1(\inst/des_encrypt_instance/right[8] [1]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_18 
       (.I0(s_axis_tdata[118]),
        .I1(\inst/des_encrypt_instance/right[8] [2]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_19 
       (.I0(s_axis_tdata[93]),
        .I1(\inst/des_encrypt_instance/right[8] [3]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [2]),
        .I1(s_axis_tdata[50]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [2]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [2]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [2]),
        .O(\inst/des_encrypt_instance/right[7] [22]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_20 
       (.I0(s_axis_tdata[103]),
        .I1(\inst/des_encrypt_instance/right[8] [31]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_21 
       (.I0(s_axis_tdata[125]),
        .I1(\inst/des_encrypt_instance/right[8] [4]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [5]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[8] [0]),
        .I2(s_axis_tdata[94]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [1]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [6]),
        .I1(\inst/des_encrypt_instance/right[8] [1]),
        .I2(s_axis_tdata[111]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [2]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [19]),
        .I1(\inst/des_encrypt_instance/right[8] [2]),
        .I2(s_axis_tdata[85]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[8] [3]),
        .I2(s_axis_tdata[125]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [4]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[8] [31]),
        .I2(s_axis_tdata[70]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[8] [4]),
        .I2(s_axis_tdata[92]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[8] [0]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [15]),
        .I3(s_axis_tdata[126]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [6]),
        .I1(\inst/des_encrypt_instance/right[8] [1]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [6]),
        .I3(s_axis_tdata[78]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [2]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[51]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [19]),
        .I1(\inst/des_encrypt_instance/right[8] [2]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [19]),
        .I3(s_axis_tdata[117]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [20]),
        .I1(\inst/des_encrypt_instance/right[8] [3]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [20]),
        .I3(s_axis_tdata[92]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[8] [31]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [24]),
        .I3(s_axis_tdata[102]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [28]),
        .I1(\inst/des_encrypt_instance/right[8] [4]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [28]),
        .I3(s_axis_tdata[95]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [5]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[51]_INST_0_i_34 
       (.I0(s_axis_tdata[77]),
        .I1(s_axis_tdata[7]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[51]_INST_0_i_35 
       (.I0(s_axis_tdata[94]),
        .I1(s_axis_tdata[15]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[51]_INST_0_i_36 
       (.I0(s_axis_tdata[68]),
        .I1(s_axis_tdata[23]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[51]_INST_0_i_37 
       (.I0(s_axis_tdata[79]),
        .I1(s_axis_tdata[31]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [4]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[51]_INST_0_i_38 
       (.I0(s_axis_tdata[118]),
        .I1(s_axis_tdata[57]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[51]_INST_0_i_39 
       (.I0(s_axis_tdata[111]),
        .I1(s_axis_tdata[39]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [5]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[51]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [2]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_40 
       (.I0(s_axis_tdata[101]),
        .I1(s_axis_tdata[7]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_41 
       (.I0(s_axis_tdata[118]),
        .I1(s_axis_tdata[15]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_42 
       (.I0(s_axis_tdata[92]),
        .I1(s_axis_tdata[23]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_43 
       (.I0(s_axis_tdata[103]),
        .I1(s_axis_tdata[31]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [4]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_44 
       (.I0(s_axis_tdata[77]),
        .I1(s_axis_tdata[57]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[51]_INST_0_i_45 
       (.I0(s_axis_tdata[70]),
        .I1(s_axis_tdata[39]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .I1(s_axis_tdata[7]),
        .I2(s_axis_tdata[68]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [6]),
        .I1(s_axis_tdata[15]),
        .I2(s_axis_tdata[85]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [19]),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[95]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .I1(s_axis_tdata[31]),
        .I2(s_axis_tdata[70]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [4]));
  LUT6 #(
    .INIT(64'h72A927966C5A8667)) 
    \m_axis_tdata[51]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .I1(s_axis_tdata[57]),
        .I2(s_axis_tdata[109]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[51]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .I1(s_axis_tdata[39]),
        .I2(s_axis_tdata[102]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .I1(s_axis_tdata[7]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [15]),
        .I3(s_axis_tdata[71]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [6]),
        .I1(s_axis_tdata[15]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [6]),
        .I3(s_axis_tdata[117]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [19]),
        .I1(s_axis_tdata[23]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [19]),
        .I3(s_axis_tdata[127]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .I1(s_axis_tdata[31]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [20]),
        .I3(s_axis_tdata[102]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .I1(s_axis_tdata[57]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [24]),
        .I3(s_axis_tdata[76]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[51]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [28]),
        .I1(s_axis_tdata[39]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [28]),
        .I3(s_axis_tdata[69]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [28]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[51]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .I1(s_axis_tdata[7]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [15]),
        .I4(s_axis_tdata[95]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[51]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [6]),
        .I1(s_axis_tdata[15]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [6]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [6]),
        .I4(s_axis_tdata[76]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [6]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[51]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [19]),
        .I1(s_axis_tdata[23]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [19]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [19]),
        .I4(s_axis_tdata[86]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [19]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[51]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [20]),
        .I1(s_axis_tdata[31]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [20]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [20]),
        .I4(s_axis_tdata[126]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [20]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [30]),
        .I1(\inst/des_encrypt_instance/right[8] [14]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [30]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [30]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [30]),
        .O(m_axis_tdata[52]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[52]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [30]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_10 
       (.I0(s_axis_tdata[75]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_11 
       (.I0(s_axis_tdata[113]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [42]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[52]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [30]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[52]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [30]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[52]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [30]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[52]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [30]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_16 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(s_axis_tdata[113]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [43]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_17 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [10]),
        .I1(\inst/des_encrypt_instance/right[7] [29]),
        .I2(s_axis_tdata[114]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [44]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_18 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [3]),
        .I1(\inst/des_encrypt_instance/right[7] [30]),
        .I2(s_axis_tdata[65]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_19 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(s_axis_tdata[100]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [47]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [30]),
        .I1(s_axis_tdata[53]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [30]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [30]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/right[8] [14]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_20 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(s_axis_tdata[107]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_21 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(s_axis_tdata[82]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [42]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [21]),
        .I3(s_axis_tdata[82]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [43]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [10]),
        .I1(\inst/des_encrypt_instance/right[7] [29]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [10]),
        .I3(s_axis_tdata[83]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [44]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [3]),
        .I1(\inst/des_encrypt_instance/right[7] [30]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [3]),
        .I3(s_axis_tdata[97]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [45]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [15]),
        .I3(s_axis_tdata[65]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [47]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [24]),
        .I3(s_axis_tdata[108]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [46]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [5]),
        .I3(s_axis_tdata[114]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [42]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [21]),
        .I4(s_axis_tdata[106]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [43]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [10]),
        .I1(\inst/des_encrypt_instance/right[7] [29]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [10]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [10]),
        .I4(s_axis_tdata[107]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [44]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[52]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [30]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [3]),
        .I1(\inst/des_encrypt_instance/right[7] [30]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [3]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [3]),
        .I4(s_axis_tdata[121]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [45]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [15]),
        .I4(s_axis_tdata[89]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [47]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [24]),
        .I4(s_axis_tdata[65]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [46]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [5]),
        .I4(s_axis_tdata[75]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [42]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_34 
       (.I0(s_axis_tdata[122]),
        .I1(s_axis_tdata[32]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [43]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_35 
       (.I0(s_axis_tdata[123]),
        .I1(s_axis_tdata[40]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [44]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_36 
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_tdata[48]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_37 
       (.I0(s_axis_tdata[105]),
        .I1(s_axis_tdata[6]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [47]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_38 
       (.I0(s_axis_tdata[81]),
        .I1(s_axis_tdata[56]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_39 
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_tdata[24]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [42]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[52]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [30]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_40 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .I1(s_axis_tdata[32]),
        .I2(s_axis_tdata[91]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [43]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_41 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [10]),
        .I1(s_axis_tdata[40]),
        .I2(s_axis_tdata[124]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [44]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_42 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [3]),
        .I1(s_axis_tdata[48]),
        .I2(s_axis_tdata[106]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_43 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[74]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [47]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_44 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .I1(s_axis_tdata[56]),
        .I2(s_axis_tdata[113]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[52]_INST_0_i_45 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .I1(s_axis_tdata[24]),
        .I2(s_axis_tdata[123]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [42]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .I1(s_axis_tdata[32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [21]),
        .I3(s_axis_tdata[123]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [43]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [10]),
        .I1(s_axis_tdata[40]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [10]),
        .I3(s_axis_tdata[89]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [44]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [3]),
        .I1(s_axis_tdata[48]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [3]),
        .I3(s_axis_tdata[75]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [45]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .I1(s_axis_tdata[6]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [15]),
        .I3(s_axis_tdata[106]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [47]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[52]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [30]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .I1(s_axis_tdata[56]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [24]),
        .I3(s_axis_tdata[82]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [46]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[52]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .I1(s_axis_tdata[24]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [5]),
        .I3(s_axis_tdata[124]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [42]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .I1(s_axis_tdata[32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [21]),
        .I4(s_axis_tdata[124]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [43]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [10]),
        .I1(s_axis_tdata[40]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [10]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [10]),
        .I4(s_axis_tdata[121]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [44]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [3]),
        .I1(s_axis_tdata[48]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [3]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [3]),
        .I4(s_axis_tdata[107]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [45]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .I1(s_axis_tdata[6]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [15]),
        .I4(s_axis_tdata[75]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [47]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .I1(s_axis_tdata[56]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [24]),
        .I4(s_axis_tdata[114]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [46]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[52]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .I1(s_axis_tdata[24]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [5]),
        .I4(s_axis_tdata[89]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [42]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_6 
       (.I0(s_axis_tdata[81]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [43]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_7 
       (.I0(s_axis_tdata[82]),
        .I1(\inst/des_encrypt_instance/right[7] [29]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [44]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_8 
       (.I0(s_axis_tdata[100]),
        .I1(\inst/des_encrypt_instance/right[7] [30]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[52]_INST_0_i_9 
       (.I0(s_axis_tdata[99]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [47]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [30]),
        .I1(\inst/des_encrypt_instance/right[7] [14]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [30]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [30]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [30]),
        .O(m_axis_tdata[53]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[53]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [30]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[53]_INST_0_i_10 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .I1(s_axis_tdata[57]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [24]),
        .I4(s_axis_tdata[122]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [46]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[53]_INST_0_i_11 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .I1(s_axis_tdata[25]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [5]),
        .I4(s_axis_tdata[97]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [42]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[53]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [30]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[53]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [30]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[53]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [30]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[53]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [30]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_16 
       (.I0(s_axis_tdata[97]),
        .I1(\inst/des_encrypt_instance/right[8] [28]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [43]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_17 
       (.I0(s_axis_tdata[98]),
        .I1(\inst/des_encrypt_instance/right[8] [29]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [44]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_18 
       (.I0(s_axis_tdata[116]),
        .I1(\inst/des_encrypt_instance/right[8] [30]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_19 
       (.I0(s_axis_tdata[115]),
        .I1(\inst/des_encrypt_instance/right[8] [0]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [47]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [30]),
        .I1(s_axis_tdata[52]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [30]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [30]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [30]),
        .O(\inst/des_encrypt_instance/right[7] [14]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_20 
       (.I0(s_axis_tdata[91]),
        .I1(\inst/des_encrypt_instance/right[8] [31]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_21 
       (.I0(s_axis_tdata[66]),
        .I1(\inst/des_encrypt_instance/right[8] [27]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [42]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[8] [28]),
        .I2(s_axis_tdata[66]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [43]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [10]),
        .I1(\inst/des_encrypt_instance/right[8] [29]),
        .I2(s_axis_tdata[67]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [44]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [3]),
        .I1(\inst/des_encrypt_instance/right[8] [30]),
        .I2(s_axis_tdata[81]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[8] [0]),
        .I2(s_axis_tdata[116]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [47]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[8] [31]),
        .I2(s_axis_tdata[123]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[8] [27]),
        .I2(s_axis_tdata[98]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [42]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[8] [28]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [21]),
        .I3(s_axis_tdata[98]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [43]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [10]),
        .I1(\inst/des_encrypt_instance/right[8] [29]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [10]),
        .I3(s_axis_tdata[99]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [44]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[53]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [30]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [3]),
        .I1(\inst/des_encrypt_instance/right[8] [30]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [3]),
        .I3(s_axis_tdata[113]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [45]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[8] [0]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [15]),
        .I3(s_axis_tdata[81]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [47]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[8] [31]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [24]),
        .I3(s_axis_tdata[124]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [46]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[8] [27]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [5]),
        .I3(s_axis_tdata[67]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [42]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[53]_INST_0_i_34 
       (.I0(s_axis_tdata[114]),
        .I1(s_axis_tdata[33]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [43]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[53]_INST_0_i_35 
       (.I0(s_axis_tdata[115]),
        .I1(s_axis_tdata[41]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [44]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[53]_INST_0_i_36 
       (.I0(s_axis_tdata[66]),
        .I1(s_axis_tdata[49]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[53]_INST_0_i_37 
       (.I0(s_axis_tdata[97]),
        .I1(s_axis_tdata[7]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [47]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[53]_INST_0_i_38 
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[57]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[53]_INST_0_i_39 
       (.I0(s_axis_tdata[83]),
        .I1(s_axis_tdata[25]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [42]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[53]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [30]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_40 
       (.I0(s_axis_tdata[75]),
        .I1(s_axis_tdata[33]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [43]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_41 
       (.I0(s_axis_tdata[108]),
        .I1(s_axis_tdata[41]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [44]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_42 
       (.I0(s_axis_tdata[90]),
        .I1(s_axis_tdata[49]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_43 
       (.I0(s_axis_tdata[121]),
        .I1(s_axis_tdata[7]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [47]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_44 
       (.I0(s_axis_tdata[97]),
        .I1(s_axis_tdata[57]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[53]_INST_0_i_45 
       (.I0(s_axis_tdata[107]),
        .I1(s_axis_tdata[25]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [42]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .I1(s_axis_tdata[33]),
        .I2(s_axis_tdata[107]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [43]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [10]),
        .I1(s_axis_tdata[41]),
        .I2(s_axis_tdata[73]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [44]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [3]),
        .I1(s_axis_tdata[49]),
        .I2(s_axis_tdata[122]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [45]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .I1(s_axis_tdata[7]),
        .I2(s_axis_tdata[90]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [47]));
  LUT6 #(
    .INIT(64'h944B9B69ADA56466)) 
    \m_axis_tdata[53]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [43]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [44]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [45]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [47]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [46]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [42]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [30]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .I1(s_axis_tdata[57]),
        .I2(s_axis_tdata[66]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [46]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[53]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .I1(s_axis_tdata[25]),
        .I2(s_axis_tdata[108]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [42]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .I1(s_axis_tdata[33]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [21]),
        .I3(s_axis_tdata[108]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [43]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [10]),
        .I1(s_axis_tdata[41]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [10]),
        .I3(s_axis_tdata[105]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [44]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [3]),
        .I1(s_axis_tdata[49]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [3]),
        .I3(s_axis_tdata[91]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [45]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .I1(s_axis_tdata[7]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [15]),
        .I3(s_axis_tdata[122]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [47]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .I1(s_axis_tdata[57]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [24]),
        .I3(s_axis_tdata[98]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [46]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[53]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .I1(s_axis_tdata[25]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [5]),
        .I3(s_axis_tdata[73]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [42]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[53]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .I1(s_axis_tdata[33]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [21]),
        .I4(s_axis_tdata[65]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [43]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[53]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [10]),
        .I1(s_axis_tdata[41]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [10]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [10]),
        .I4(s_axis_tdata[66]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [10]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [44]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[53]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [3]),
        .I1(s_axis_tdata[49]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [3]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [3]),
        .I4(s_axis_tdata[115]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [3]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [45]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[53]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .I1(s_axis_tdata[7]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [15]),
        .I4(s_axis_tdata[83]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [47]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [27]),
        .I1(\inst/des_encrypt_instance/right[8] [6]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [27]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [27]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [27]),
        .O(m_axis_tdata[54]));
  LUT6 #(
    .INIT(64'h631E1EE196D1712E)) 
    \m_axis_tdata[54]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [41]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [40]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [27]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[54]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [27]),
        .I1(s_axis_tdata[55]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [27]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [27]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/right[8] [6]));
  LUT6 #(
    .INIT(64'h631E1EE196D1712E)) 
    \m_axis_tdata[54]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [41]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [40]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[54]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[54]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h631E1EE196D1712E)) 
    \m_axis_tdata[54]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [41]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [40]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h631E1EE196D1712E)) 
    \m_axis_tdata[54]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [41]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [40]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h631E1EE196D1712E)) 
    \m_axis_tdata[54]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [41]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [40]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h631E1EE196D1712E)) 
    \m_axis_tdata[54]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [41]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [40]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [27]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [27]),
        .I1(\inst/des_encrypt_instance/right[7] [6]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [27]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [27]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [27]),
        .O(m_axis_tdata[55]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[55]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [27]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[55]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [27]),
        .I1(s_axis_tdata[54]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [27]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [27]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [27]),
        .O(\inst/des_encrypt_instance/right[7] [6]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[55]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[55]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h631E1EE196D1712E)) 
    \m_axis_tdata[55]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [41]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [40]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[55]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[55]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[55]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [27]));
  LUT6 #(
    .INIT(64'h63961E711ED1E12E)) 
    \m_axis_tdata[55]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [36]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [41]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [27]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[8] [31]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [24]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [24]),
        .O(m_axis_tdata[56]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[56]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [24]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_10 
       (.I0(s_axis_tdata[106]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_11 
       (.I0(s_axis_tdata[97]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [36]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[56]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[56]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [24]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[56]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [24]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[56]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [24]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_16 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(s_axis_tdata[106]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [37]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_17 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [12]),
        .I1(\inst/des_encrypt_instance/right[7] [25]),
        .I2(s_axis_tdata[89]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [38]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_18 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [29]),
        .I1(\inst/des_encrypt_instance/right[7] [26]),
        .I2(s_axis_tdata[99]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_19 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(s_axis_tdata[116]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [40]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [24]),
        .I1(s_axis_tdata[57]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [24]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/right[8] [31]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_20 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(s_axis_tdata[75]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_21 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(s_axis_tdata[66]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [36]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [18]),
        .I3(s_axis_tdata[75]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [37]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [12]),
        .I1(\inst/des_encrypt_instance/right[7] [25]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [12]),
        .I3(s_axis_tdata[121]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [38]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [29]),
        .I1(\inst/des_encrypt_instance/right[7] [26]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [29]),
        .I3(s_axis_tdata[100]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [39]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [5]),
        .I3(s_axis_tdata[81]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [40]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [21]),
        .I3(s_axis_tdata[107]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [41]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [8]),
        .I3(s_axis_tdata[98]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [36]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [18]),
        .I4(s_axis_tdata[99]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [37]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [12]),
        .I1(\inst/des_encrypt_instance/right[7] [25]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [12]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [12]),
        .I4(s_axis_tdata[82]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [38]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[56]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [24]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [29]),
        .I1(\inst/des_encrypt_instance/right[7] [26]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [29]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [29]),
        .I4(s_axis_tdata[124]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [39]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [5]),
        .I4(s_axis_tdata[105]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [40]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[7] [28]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [21]),
        .I4(s_axis_tdata[100]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [41]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [8]),
        .I4(s_axis_tdata[122]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [36]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_34 
       (.I0(s_axis_tdata[115]),
        .I1(s_axis_tdata[0]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [37]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_35 
       (.I0(s_axis_tdata[98]),
        .I1(s_axis_tdata[8]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [38]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_36 
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_tdata[16]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_37 
       (.I0(s_axis_tdata[121]),
        .I1(s_axis_tdata[24]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [40]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_38 
       (.I0(s_axis_tdata[116]),
        .I1(s_axis_tdata[32]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_39 
       (.I0(s_axis_tdata[75]),
        .I1(s_axis_tdata[58]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [36]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[56]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_40 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[116]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [37]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_41 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [12]),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[67]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [38]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_42 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [29]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[105]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_43 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .I1(s_axis_tdata[24]),
        .I2(s_axis_tdata[90]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [40]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_44 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .I1(s_axis_tdata[32]),
        .I2(s_axis_tdata[81]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[56]_INST_0_i_45 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .I1(s_axis_tdata[58]),
        .I2(s_axis_tdata[107]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [36]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .I1(s_axis_tdata[0]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [18]),
        .I3(s_axis_tdata[81]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [37]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [12]),
        .I1(s_axis_tdata[8]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [12]),
        .I3(s_axis_tdata[99]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [38]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [29]),
        .I1(s_axis_tdata[16]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [29]),
        .I3(s_axis_tdata[74]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [39]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .I1(s_axis_tdata[24]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [5]),
        .I3(s_axis_tdata[122]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [40]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[56]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .I1(s_axis_tdata[32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [21]),
        .I3(s_axis_tdata[113]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [41]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[56]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .I1(s_axis_tdata[58]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [8]),
        .I3(s_axis_tdata[108]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [36]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [18]),
        .I1(s_axis_tdata[0]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [18]),
        .I4(s_axis_tdata[113]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [37]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [12]),
        .I1(s_axis_tdata[8]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [12]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [12]),
        .I4(s_axis_tdata[100]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [38]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [29]),
        .I1(s_axis_tdata[16]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [29]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [29]),
        .I4(s_axis_tdata[106]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [39]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [5]),
        .I1(s_axis_tdata[24]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [5]),
        .I4(s_axis_tdata[91]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [40]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [21]),
        .I1(s_axis_tdata[32]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [21]),
        .I4(s_axis_tdata[82]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [41]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[56]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .I1(s_axis_tdata[58]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [8]),
        .I4(s_axis_tdata[73]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [36]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_6 
       (.I0(s_axis_tdata[74]),
        .I1(\inst/des_encrypt_instance/right[7] [24]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [37]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_7 
       (.I0(s_axis_tdata[124]),
        .I1(\inst/des_encrypt_instance/right[7] [25]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [38]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_8 
       (.I0(s_axis_tdata[67]),
        .I1(\inst/des_encrypt_instance/right[7] [26]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[56]_INST_0_i_9 
       (.I0(s_axis_tdata[115]),
        .I1(\inst/des_encrypt_instance/right[7] [27]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [40]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]),
        .I1(\inst/des_encrypt_instance/right[7] [31]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [24]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [24]),
        .O(m_axis_tdata[57]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[57]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [24]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[57]_INST_0_i_10 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .I1(s_axis_tdata[33]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [21]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [21]),
        .I4(s_axis_tdata[90]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [41]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[57]_INST_0_i_11 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .I1(s_axis_tdata[59]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [8]),
        .I4(s_axis_tdata[81]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [36]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[57]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[57]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [24]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[57]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [24]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[57]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [24]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_16 
       (.I0(s_axis_tdata[90]),
        .I1(\inst/des_encrypt_instance/right[8] [24]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [37]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_17 
       (.I0(s_axis_tdata[73]),
        .I1(\inst/des_encrypt_instance/right[8] [25]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [38]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_18 
       (.I0(s_axis_tdata[83]),
        .I1(\inst/des_encrypt_instance/right[8] [26]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_19 
       (.I0(s_axis_tdata[100]),
        .I1(\inst/des_encrypt_instance/right[8] [27]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [40]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [24]),
        .I1(s_axis_tdata[56]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [24]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [24]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [24]),
        .O(\inst/des_encrypt_instance/right[7] [31]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_20 
       (.I0(s_axis_tdata[122]),
        .I1(\inst/des_encrypt_instance/right[8] [28]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_21 
       (.I0(s_axis_tdata[113]),
        .I1(\inst/des_encrypt_instance/right[8] [23]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [36]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[8] [24]),
        .I2(s_axis_tdata[122]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [37]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [12]),
        .I1(\inst/des_encrypt_instance/right[8] [25]),
        .I2(s_axis_tdata[105]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [38]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [29]),
        .I1(\inst/des_encrypt_instance/right[8] [26]),
        .I2(s_axis_tdata[115]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[8] [27]),
        .I2(s_axis_tdata[65]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [40]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[8] [28]),
        .I2(s_axis_tdata[91]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[8] [23]),
        .I2(s_axis_tdata[82]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [36]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [18]),
        .I1(\inst/des_encrypt_instance/right[8] [24]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [18]),
        .I3(s_axis_tdata[91]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [37]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [12]),
        .I1(\inst/des_encrypt_instance/right[8] [25]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [12]),
        .I3(s_axis_tdata[74]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [38]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[57]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [29]),
        .I1(\inst/des_encrypt_instance/right[8] [26]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [29]),
        .I3(s_axis_tdata[116]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [39]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [5]),
        .I1(\inst/des_encrypt_instance/right[8] [27]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [5]),
        .I3(s_axis_tdata[97]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [40]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [21]),
        .I1(\inst/des_encrypt_instance/right[8] [28]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [21]),
        .I3(s_axis_tdata[123]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [41]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[8] [23]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [8]),
        .I3(s_axis_tdata[114]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [36]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[57]_INST_0_i_34 
       (.I0(s_axis_tdata[107]),
        .I1(s_axis_tdata[1]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [37]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[57]_INST_0_i_35 
       (.I0(s_axis_tdata[90]),
        .I1(s_axis_tdata[9]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [38]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[57]_INST_0_i_36 
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_tdata[17]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[57]_INST_0_i_37 
       (.I0(s_axis_tdata[113]),
        .I1(s_axis_tdata[25]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [40]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[57]_INST_0_i_38 
       (.I0(s_axis_tdata[108]),
        .I1(s_axis_tdata[33]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[57]_INST_0_i_39 
       (.I0(s_axis_tdata[67]),
        .I1(s_axis_tdata[59]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [36]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[57]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [24]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_40 
       (.I0(s_axis_tdata[100]),
        .I1(s_axis_tdata[1]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [37]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_41 
       (.I0(s_axis_tdata[114]),
        .I1(s_axis_tdata[9]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [38]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_42 
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[17]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_43 
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_tdata[25]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [40]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_44 
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_tdata[33]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[57]_INST_0_i_45 
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_tdata[59]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [36]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .I1(s_axis_tdata[1]),
        .I2(s_axis_tdata[65]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [37]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [12]),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[83]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [38]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [29]),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[121]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [39]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .I1(s_axis_tdata[25]),
        .I2(s_axis_tdata[106]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [40]));
  LUT6 #(
    .INIT(64'hB15A72966C935B64)) 
    \m_axis_tdata[57]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [37]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [38]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [39]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [40]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [41]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [36]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [24]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .I1(s_axis_tdata[33]),
        .I2(s_axis_tdata[97]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [41]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[57]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .I1(s_axis_tdata[59]),
        .I2(s_axis_tdata[123]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [36]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .I1(s_axis_tdata[1]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [18]),
        .I3(s_axis_tdata[97]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [37]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [12]),
        .I1(s_axis_tdata[9]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [12]),
        .I3(s_axis_tdata[115]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [38]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [29]),
        .I1(s_axis_tdata[17]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [29]),
        .I3(s_axis_tdata[90]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [39]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .I1(s_axis_tdata[25]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [5]),
        .I3(s_axis_tdata[75]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [40]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [21]),
        .I1(s_axis_tdata[33]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [21]),
        .I3(s_axis_tdata[66]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [21]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [41]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[57]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .I1(s_axis_tdata[59]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [8]),
        .I3(s_axis_tdata[124]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [36]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[57]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [18]),
        .I1(s_axis_tdata[1]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [18]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [18]),
        .I4(s_axis_tdata[121]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [18]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [37]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[57]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [12]),
        .I1(s_axis_tdata[9]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [12]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [12]),
        .I4(s_axis_tdata[108]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [38]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[57]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [29]),
        .I1(s_axis_tdata[17]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [29]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [29]),
        .I4(s_axis_tdata[114]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [29]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [39]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[57]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [5]),
        .I1(s_axis_tdata[25]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [5]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [5]),
        .I4(s_axis_tdata[99]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [5]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [40]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[8] [23]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [8]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [8]),
        .O(m_axis_tdata[58]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[58]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[58]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]),
        .I1(s_axis_tdata[59]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [8]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/right[8] [23]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[58]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[58]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[58]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[58]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[58]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[58]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[58]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]),
        .I1(\inst/des_encrypt_instance/right[7] [23]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [8]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [8]),
        .O(m_axis_tdata[59]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[59]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[59]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]),
        .I1(s_axis_tdata[58]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [8]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [8]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [8]),
        .O(\inst/des_encrypt_instance/right[7] [23]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[59]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[59]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[59]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[59]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[59]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[59]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [8]));
  LUT6 #(
    .INIT(64'h87787A893C879279)) 
    \m_axis_tdata[59]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [15]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [16]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [12]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [17]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [8]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [0]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [0]),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[5]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[5]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .I1(s_axis_tdata[4]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [0]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/right[7] [8]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[5]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[5]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[5]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[5]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[5]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[5]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [0]));
  LUT6 #(
    .INIT(64'hA719A16E5A366E51)) 
    \m_axis_tdata[5]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [1]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [2]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [3]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [4]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [0]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [5]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[8] [15]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [9]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [9]),
        .O(m_axis_tdata[60]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[60]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [9]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_10 
       (.I0(s_axis_tdata[68]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_11 
       (.I0(s_axis_tdata[94]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [12]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[60]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[60]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [9]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[60]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [9]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[60]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [9]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_16 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(s_axis_tdata[94]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [13]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_17 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [14]),
        .I1(\inst/des_encrypt_instance/right[7] [9]),
        .I2(s_axis_tdata[103]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_18 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(s_axis_tdata[85]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [16]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_19 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [22]),
        .I1(\inst/des_encrypt_instance/right[7] [10]),
        .I2(s_axis_tdata[68]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .I1(s_axis_tdata[61]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [9]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/right[8] [15]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_20 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(s_axis_tdata[71]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_21 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(s_axis_tdata[126]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [0]),
        .I3(s_axis_tdata[126]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [14]),
        .I1(\inst/des_encrypt_instance/right[7] [9]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [14]),
        .I3(s_axis_tdata[70]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [25]),
        .I3(s_axis_tdata[117]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [16]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [22]),
        .I1(\inst/des_encrypt_instance/right[7] [10]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [22]),
        .I3(s_axis_tdata[71]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [4]),
        .I3(s_axis_tdata[103]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [16]),
        .I3(s_axis_tdata[93]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [0]),
        .I4(s_axis_tdata[85]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [14]),
        .I1(\inst/des_encrypt_instance/right[7] [9]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [14]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [14]),
        .I4(s_axis_tdata[94]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [14]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[60]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [9]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [25]),
        .I4(s_axis_tdata[76]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [16]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [22]),
        .I1(\inst/des_encrypt_instance/right[7] [10]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [22]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [22]),
        .I4(s_axis_tdata[95]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[7] [12]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [4]),
        .I4(s_axis_tdata[127]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [17]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [16]),
        .I4(s_axis_tdata[117]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [12]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_34 
       (.I0(s_axis_tdata[101]),
        .I1(s_axis_tdata[4]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_35 
       (.I0(s_axis_tdata[110]),
        .I1(s_axis_tdata[12]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_36 
       (.I0(s_axis_tdata[92]),
        .I1(s_axis_tdata[28]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_37 
       (.I0(s_axis_tdata[111]),
        .I1(s_axis_tdata[20]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [15]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_38 
       (.I0(s_axis_tdata[78]),
        .I1(s_axis_tdata[36]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_39 
       (.I0(s_axis_tdata[68]),
        .I1(s_axis_tdata[62]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [12]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[60]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [9]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_40 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[68]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_41 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [14]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[77]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_42 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .I1(s_axis_tdata[28]),
        .I2(s_axis_tdata[95]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_43 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [22]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[78]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_44 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .I1(s_axis_tdata[36]),
        .I2(s_axis_tdata[110]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[60]_INST_0_i_45 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .I1(s_axis_tdata[62]),
        .I2(s_axis_tdata[71]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .I1(s_axis_tdata[4]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [0]),
        .I3(s_axis_tdata[71]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [14]),
        .I1(s_axis_tdata[12]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [14]),
        .I3(s_axis_tdata[109]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .I1(s_axis_tdata[28]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [25]),
        .I3(s_axis_tdata[127]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [16]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [22]),
        .I1(s_axis_tdata[20]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [22]),
        .I3(s_axis_tdata[110]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [15]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[60]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .I1(s_axis_tdata[36]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [4]),
        .I3(s_axis_tdata[77]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[60]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .I1(s_axis_tdata[62]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [16]),
        .I3(s_axis_tdata[103]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [0]),
        .I1(s_axis_tdata[4]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [0]),
        .I4(s_axis_tdata[103]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [14]),
        .I1(s_axis_tdata[12]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [14]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [14]),
        .I4(s_axis_tdata[76]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [14]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [25]),
        .I1(s_axis_tdata[28]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [25]),
        .I4(s_axis_tdata[94]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [16]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [22]),
        .I1(s_axis_tdata[20]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [22]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [22]),
        .I4(s_axis_tdata[77]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [4]),
        .I1(s_axis_tdata[36]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [4]),
        .I4(s_axis_tdata[109]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [17]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[60]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .I1(s_axis_tdata[62]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [16]),
        .I4(s_axis_tdata[70]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [12]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_6 
       (.I0(s_axis_tdata[127]),
        .I1(\inst/des_encrypt_instance/right[7] [8]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [13]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_7 
       (.I0(s_axis_tdata[71]),
        .I1(\inst/des_encrypt_instance/right[7] [9]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_8 
       (.I0(s_axis_tdata[118]),
        .I1(\inst/des_encrypt_instance/right[7] [11]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [16]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[60]_INST_0_i_9 
       (.I0(s_axis_tdata[101]),
        .I1(\inst/des_encrypt_instance/right[7] [10]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [9]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [9]),
        .O(m_axis_tdata[61]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[61]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[61]_INST_0_i_10 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .I1(s_axis_tdata[37]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [4]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [4]),
        .I4(s_axis_tdata[117]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [17]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[61]_INST_0_i_11 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .I1(s_axis_tdata[63]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [16]),
        .I4(s_axis_tdata[78]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [12]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[61]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[61]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [9]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[61]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [9]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[61]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [9]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_16 
       (.I0(s_axis_tdata[78]),
        .I1(\inst/des_encrypt_instance/right[8] [8]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [13]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_17 
       (.I0(s_axis_tdata[87]),
        .I1(\inst/des_encrypt_instance/right[8] [9]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_18 
       (.I0(s_axis_tdata[69]),
        .I1(\inst/des_encrypt_instance/right[8] [11]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [16]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_19 
       (.I0(s_axis_tdata[117]),
        .I1(\inst/des_encrypt_instance/right[8] [10]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .I1(s_axis_tdata[60]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [9]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/right[7] [15]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_20 
       (.I0(s_axis_tdata[84]),
        .I1(\inst/des_encrypt_instance/right[8] [12]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_21 
       (.I0(s_axis_tdata[110]),
        .I1(\inst/des_encrypt_instance/right[8] [7]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [12]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[8] [8]),
        .I2(s_axis_tdata[110]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [13]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [14]),
        .I1(\inst/des_encrypt_instance/right[8] [9]),
        .I2(s_axis_tdata[119]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[8] [11]),
        .I2(s_axis_tdata[101]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [16]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [22]),
        .I1(\inst/des_encrypt_instance/right[8] [10]),
        .I2(s_axis_tdata[84]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [15]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[8] [12]),
        .I2(s_axis_tdata[87]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[8] [7]),
        .I2(s_axis_tdata[77]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [0]),
        .I1(\inst/des_encrypt_instance/right[8] [8]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [0]),
        .I3(s_axis_tdata[77]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [14]),
        .I1(\inst/des_encrypt_instance/right[8] [9]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [14]),
        .I3(s_axis_tdata[86]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [14]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[61]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [25]),
        .I1(\inst/des_encrypt_instance/right[8] [11]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [25]),
        .I3(s_axis_tdata[68]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [16]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [22]),
        .I1(\inst/des_encrypt_instance/right[8] [10]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [22]),
        .I3(s_axis_tdata[87]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [4]),
        .I1(\inst/des_encrypt_instance/right[8] [12]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [4]),
        .I3(s_axis_tdata[119]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[8] [7]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [16]),
        .I3(s_axis_tdata[109]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [12]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[61]_INST_0_i_34 
       (.I0(s_axis_tdata[93]),
        .I1(s_axis_tdata[5]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [13]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[61]_INST_0_i_35 
       (.I0(s_axis_tdata[102]),
        .I1(s_axis_tdata[13]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[61]_INST_0_i_36 
       (.I0(s_axis_tdata[84]),
        .I1(s_axis_tdata[29]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [16]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[61]_INST_0_i_37 
       (.I0(s_axis_tdata[103]),
        .I1(s_axis_tdata[21]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [15]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[61]_INST_0_i_38 
       (.I0(s_axis_tdata[70]),
        .I1(s_axis_tdata[37]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[61]_INST_0_i_39 
       (.I0(s_axis_tdata[125]),
        .I1(s_axis_tdata[63]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [12]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[61]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [9]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_40 
       (.I0(s_axis_tdata[117]),
        .I1(s_axis_tdata[5]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [13]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_41 
       (.I0(s_axis_tdata[126]),
        .I1(s_axis_tdata[13]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_42 
       (.I0(s_axis_tdata[79]),
        .I1(s_axis_tdata[29]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [16]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_43 
       (.I0(s_axis_tdata[127]),
        .I1(s_axis_tdata[21]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [15]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_44 
       (.I0(s_axis_tdata[94]),
        .I1(s_axis_tdata[37]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[61]_INST_0_i_45 
       (.I0(s_axis_tdata[84]),
        .I1(s_axis_tdata[63]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [12]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[84]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [13]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [14]),
        .I1(s_axis_tdata[13]),
        .I2(s_axis_tdata[93]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [14]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .I1(s_axis_tdata[29]),
        .I2(s_axis_tdata[111]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [16]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [22]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[94]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [15]));
  LUT6 #(
    .INIT(64'hC3A6A9592E5976A4)) 
    \m_axis_tdata[61]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [13]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [14]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [16]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [15]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [17]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [12]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [9]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .I1(s_axis_tdata[37]),
        .I2(s_axis_tdata[126]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [17]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[61]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .I1(s_axis_tdata[63]),
        .I2(s_axis_tdata[87]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .I1(s_axis_tdata[5]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [0]),
        .I3(s_axis_tdata[87]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [13]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [14]),
        .I1(s_axis_tdata[13]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [14]),
        .I3(s_axis_tdata[125]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [14]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .I1(s_axis_tdata[29]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [25]),
        .I3(s_axis_tdata[78]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [16]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [22]),
        .I1(s_axis_tdata[21]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [22]),
        .I3(s_axis_tdata[126]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [4]),
        .I1(s_axis_tdata[37]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [4]),
        .I3(s_axis_tdata[93]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [4]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[61]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .I1(s_axis_tdata[63]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [16]),
        .I3(s_axis_tdata[119]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [12]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[61]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [0]),
        .I1(s_axis_tdata[5]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [0]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [0]),
        .I4(s_axis_tdata[111]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [0]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[61]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [14]),
        .I1(s_axis_tdata[13]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [14]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [14]),
        .I4(s_axis_tdata[84]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [14]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [14]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[61]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [25]),
        .I1(s_axis_tdata[29]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [25]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [25]),
        .I4(s_axis_tdata[102]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [25]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [16]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[61]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [22]),
        .I1(s_axis_tdata[21]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [22]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [22]),
        .I4(s_axis_tdata[85]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [22]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[8] [7]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [16]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [16]),
        .O(m_axis_tdata[62]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[62]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [16]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_10 
       (.I0(s_axis_tdata[121]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_11 
       (.I0(s_axis_tdata[122]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [29]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[62]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[62]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [16]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[62]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [16]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[62]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [16]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_16 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(s_axis_tdata[67]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [25]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_17 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [7]),
        .I1(\inst/des_encrypt_instance/right[7] [17]),
        .I2(s_axis_tdata[123]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [26]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_18 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [23]),
        .I1(\inst/des_encrypt_instance/right[7] [18]),
        .I2(s_axis_tdata[73]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_19 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(s_axis_tdata[105]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [16]),
        .I1(s_axis_tdata[63]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [16]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/right[8] [7]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_20 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(s_axis_tdata[90]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_21 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(s_axis_tdata[91]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/inp [29]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [1]),
        .I3(s_axis_tdata[99]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [7]),
        .I1(\inst/des_encrypt_instance/right[7] [17]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [7]),
        .I3(s_axis_tdata[124]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [23]),
        .I1(\inst/des_encrypt_instance/right[7] [18]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [23]),
        .I3(s_axis_tdata[105]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [27]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [9]),
        .I3(s_axis_tdata[74]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [13]),
        .I3(s_axis_tdata[122]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [28]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [31]),
        .I3(s_axis_tdata[123]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/inp [29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [1]),
        .I4(s_axis_tdata[123]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [25]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [7]),
        .I1(\inst/des_encrypt_instance/right[7] [17]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [7]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [7]),
        .I4(s_axis_tdata[81]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [26]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[62]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [16]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [23]),
        .I1(\inst/des_encrypt_instance/right[7] [18]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [23]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [23]),
        .I4(s_axis_tdata[66]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [27]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [9]),
        .I4(s_axis_tdata[98]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [24]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[7] [19]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [13]),
        .I4(s_axis_tdata[83]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [28]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[7] [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [31]),
        .I4(s_axis_tdata[116]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/inp [29]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_34 
       (.I0(s_axis_tdata[108]),
        .I1(s_axis_tdata[2]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_35 
       (.I0(s_axis_tdata[97]),
        .I1(s_axis_tdata[10]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_36 
       (.I0(s_axis_tdata[82]),
        .I1(s_axis_tdata[18]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_37 
       (.I0(s_axis_tdata[114]),
        .I1(s_axis_tdata[60]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [24]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_38 
       (.I0(s_axis_tdata[99]),
        .I1(s_axis_tdata[26]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_39 
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_tdata[34]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/inp [29]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[62]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_40 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .I1(s_axis_tdata[2]),
        .I2(s_axis_tdata[73]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_41 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [7]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[66]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_42 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [23]),
        .I1(s_axis_tdata[18]),
        .I2(s_axis_tdata[114]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_43 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .I1(s_axis_tdata[60]),
        .I2(s_axis_tdata[83]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_44 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .I1(s_axis_tdata[26]),
        .I2(s_axis_tdata[100]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[62]_INST_0_i_45 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .I1(s_axis_tdata[34]),
        .I2(s_axis_tdata[97]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/inp [29]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .I1(s_axis_tdata[2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [1]),
        .I3(s_axis_tdata[105]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [7]),
        .I1(s_axis_tdata[10]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [7]),
        .I3(s_axis_tdata[98]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [23]),
        .I1(s_axis_tdata[18]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [23]),
        .I3(s_axis_tdata[83]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [27]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .I1(s_axis_tdata[60]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [9]),
        .I3(s_axis_tdata[115]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [24]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[62]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [16]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .I1(s_axis_tdata[26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [13]),
        .I3(s_axis_tdata[65]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [28]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[62]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .I1(s_axis_tdata[34]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [31]),
        .I3(s_axis_tdata[66]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/inp [29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [1]),
        .I1(s_axis_tdata[2]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [1]),
        .I4(s_axis_tdata[74]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [25]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [7]),
        .I1(s_axis_tdata[10]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [7]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [7]),
        .I4(s_axis_tdata[67]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [26]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [23]),
        .I1(s_axis_tdata[18]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [23]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [23]),
        .I4(s_axis_tdata[115]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [27]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [9]),
        .I1(s_axis_tdata[60]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [9]),
        .I4(s_axis_tdata[116]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [24]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [13]),
        .I1(s_axis_tdata[26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [13]),
        .I4(s_axis_tdata[97]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [28]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[62]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [31]),
        .I1(s_axis_tdata[34]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [31]),
        .I4(s_axis_tdata[98]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/inp [29]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_6 
       (.I0(s_axis_tdata[98]),
        .I1(\inst/des_encrypt_instance/right[7] [16]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [25]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_7 
       (.I0(s_axis_tdata[91]),
        .I1(\inst/des_encrypt_instance/right[7] [17]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [26]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_8 
       (.I0(s_axis_tdata[108]),
        .I1(\inst/des_encrypt_instance/right[7] [18]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[62]_INST_0_i_9 
       (.I0(s_axis_tdata[73]),
        .I1(\inst/des_encrypt_instance/right[7] [15]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/inp [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]),
        .I1(\inst/des_encrypt_instance/right[7] [7]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [16]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [16]),
        .O(m_axis_tdata[63]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[63]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [16]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[63]_INST_0_i_10 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .I1(s_axis_tdata[27]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [13]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [13]),
        .I4(s_axis_tdata[105]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [28]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[63]_INST_0_i_11 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .I1(s_axis_tdata[35]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [31]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [31]),
        .I4(s_axis_tdata[106]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [29]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[63]_INST_0_i_12 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[63]_INST_0_i_13 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [16]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[63]_INST_0_i_14 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [16]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[63]_INST_0_i_15 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [16]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_16 
       (.I0(s_axis_tdata[114]),
        .I1(\inst/des_encrypt_instance/right[8] [16]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [25]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_17 
       (.I0(s_axis_tdata[107]),
        .I1(\inst/des_encrypt_instance/right[8] [17]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [26]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_18 
       (.I0(s_axis_tdata[124]),
        .I1(\inst/des_encrypt_instance/right[8] [18]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_19 
       (.I0(s_axis_tdata[89]),
        .I1(\inst/des_encrypt_instance/right[8] [15]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [16]),
        .I1(s_axis_tdata[62]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [16]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [16]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [16]),
        .O(\inst/des_encrypt_instance/right[7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_20 
       (.I0(s_axis_tdata[74]),
        .I1(\inst/des_encrypt_instance/right[8] [19]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_21 
       (.I0(s_axis_tdata[75]),
        .I1(\inst/des_encrypt_instance/right[8] [20]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/inp [29]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_22 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[8] [16]),
        .I2(s_axis_tdata[83]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [25]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_23 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [7]),
        .I1(\inst/des_encrypt_instance/right[8] [17]),
        .I2(s_axis_tdata[108]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [26]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_24 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [23]),
        .I1(\inst/des_encrypt_instance/right[8] [18]),
        .I2(s_axis_tdata[89]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_25 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[8] [15]),
        .I2(s_axis_tdata[121]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [24]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_26 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[8] [19]),
        .I2(s_axis_tdata[106]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_27 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[8] [20]),
        .I2(s_axis_tdata[107]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/inp [29]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_28 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [1]),
        .I1(\inst/des_encrypt_instance/right[8] [16]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [1]),
        .I3(s_axis_tdata[115]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_29 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [7]),
        .I1(\inst/des_encrypt_instance/right[8] [17]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [7]),
        .I3(s_axis_tdata[73]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [26]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[63]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [16]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_30 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [23]),
        .I1(\inst/des_encrypt_instance/right[8] [18]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [23]),
        .I3(s_axis_tdata[121]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [27]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_31 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [9]),
        .I1(\inst/des_encrypt_instance/right[8] [15]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [9]),
        .I3(s_axis_tdata[90]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_32 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [13]),
        .I1(\inst/des_encrypt_instance/right[8] [19]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [13]),
        .I3(s_axis_tdata[75]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [28]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_33 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [31]),
        .I1(\inst/des_encrypt_instance/right[8] [20]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [31]),
        .I3(s_axis_tdata[108]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/inp [29]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[63]_INST_0_i_34 
       (.I0(s_axis_tdata[100]),
        .I1(s_axis_tdata[3]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [25]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[63]_INST_0_i_35 
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_tdata[11]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [26]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[63]_INST_0_i_36 
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_tdata[19]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[63]_INST_0_i_37 
       (.I0(s_axis_tdata[106]),
        .I1(s_axis_tdata[61]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [24]));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[63]_INST_0_i_38 
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_tdata[27]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tdata[63]_INST_0_i_39 
       (.I0(s_axis_tdata[124]),
        .I1(s_axis_tdata[35]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/inp [29]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[63]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [16]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_40 
       (.I0(s_axis_tdata[124]),
        .I1(s_axis_tdata[3]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [25]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_41 
       (.I0(s_axis_tdata[113]),
        .I1(s_axis_tdata[11]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [26]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_42 
       (.I0(s_axis_tdata[98]),
        .I1(s_axis_tdata[19]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_43 
       (.I0(s_axis_tdata[67]),
        .I1(s_axis_tdata[61]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [24]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_44 
       (.I0(s_axis_tdata[115]),
        .I1(s_axis_tdata[27]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \m_axis_tdata[63]_INST_0_i_45 
       (.I0(s_axis_tdata[81]),
        .I1(s_axis_tdata[35]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/inp [29]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_46 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .I1(s_axis_tdata[3]),
        .I2(s_axis_tdata[89]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [25]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_47 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [7]),
        .I1(s_axis_tdata[11]),
        .I2(s_axis_tdata[82]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [26]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_48 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [23]),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[67]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [27]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_49 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .I1(s_axis_tdata[61]),
        .I2(s_axis_tdata[99]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [24]));
  LUT6 #(
    .INIT(64'h673919E1D6A526CA)) 
    \m_axis_tdata[63]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [25]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [26]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [27]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [24]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [28]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [29]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [16]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_50 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .I1(s_axis_tdata[27]),
        .I2(s_axis_tdata[116]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [28]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \m_axis_tdata[63]_INST_0_i_51 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .I1(s_axis_tdata[35]),
        .I2(s_axis_tdata[113]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/inp [29]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_52 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .I1(s_axis_tdata[3]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [1]),
        .I3(s_axis_tdata[121]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [25]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_53 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [7]),
        .I1(s_axis_tdata[11]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [7]),
        .I3(s_axis_tdata[114]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [26]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_54 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [23]),
        .I1(s_axis_tdata[19]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [23]),
        .I3(s_axis_tdata[99]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [27]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_55 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .I1(s_axis_tdata[61]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [9]),
        .I3(s_axis_tdata[100]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [24]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_56 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [13]),
        .I1(s_axis_tdata[27]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [13]),
        .I3(s_axis_tdata[81]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [13]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [28]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[63]_INST_0_i_57 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [31]),
        .I1(s_axis_tdata[35]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [31]),
        .I3(s_axis_tdata[82]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/substituted [31]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/inp [29]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[63]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [1]),
        .I1(s_axis_tdata[3]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [1]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [1]),
        .I4(s_axis_tdata[82]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [1]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [25]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[63]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [7]),
        .I1(s_axis_tdata[11]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [7]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [7]),
        .I4(s_axis_tdata[75]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [7]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [26]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[63]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [23]),
        .I1(s_axis_tdata[19]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [23]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [23]),
        .I4(s_axis_tdata[123]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [23]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [27]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \m_axis_tdata[63]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [9]),
        .I1(s_axis_tdata[61]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [9]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [9]),
        .I4(s_axis_tdata[124]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/substituted [9]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/inp [24]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[8] [0]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [15]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [15]),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[6]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[6]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]),
        .I1(s_axis_tdata[7]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [15]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/right[8] [0]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[6]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[6]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[6]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[6]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[6]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[6]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[6]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]),
        .I1(\inst/des_encrypt_instance/right[7] [0]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [15]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [15]),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[7]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[7]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]),
        .I1(s_axis_tdata[6]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [15]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [15]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [15]),
        .O(\inst/des_encrypt_instance/right[7] [0]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[7]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[7]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[7]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[7]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[7]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[7]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [15]));
  LUT6 #(
    .INIT(64'h2D63467AD619B14B)) 
    \m_axis_tdata[7]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/substituted [12]),
        .I1(\inst/des_encrypt_instance/right[8] [25]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/substituted [12]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/substituted [12]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/substituted [12]),
        .O(m_axis_tdata[8]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[8]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[9].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[9].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[9].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[9].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[9].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[9].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[9].round_instance/substituted [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[8]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/substituted [12]),
        .I1(s_axis_tdata[9]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/substituted [12]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/substituted [12]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/right[8] [25]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[8]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[11].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[11].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[11].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[11].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[11].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[11].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[11].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[8]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[13].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[13].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[13].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[13].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[13].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[13].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[13].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[8]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[15].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[15].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[15].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[15].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[15].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[15].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[15].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[8]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[1].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[1].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[1].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[1].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[1].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[1].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[1].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[8]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[3].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[3].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[3].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[3].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[3].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[3].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[3].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[8]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[5].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[5].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[5].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[5].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[5].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[5].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[5].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[8]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[7].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[7].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[7].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[7].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[7].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[7].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[7].round_instance/substituted [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/substituted [12]),
        .I1(\inst/des_encrypt_instance/right[7] [25]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/substituted [12]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/substituted [12]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/substituted [12]),
        .O(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[9]_INST_0_i_1 
       (.I0(\inst/des_encrypt_instance/u0[8].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[8].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[8].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[8].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[8].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[8].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[8].round_instance/substituted [12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \m_axis_tdata[9]_INST_0_i_2 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/substituted [12]),
        .I1(s_axis_tdata[8]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/substituted [12]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/substituted [12]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/substituted [12]),
        .O(\inst/des_encrypt_instance/right[7] [25]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[9]_INST_0_i_3 
       (.I0(\inst/des_encrypt_instance/u0[10].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[10].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[10].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[10].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[10].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[10].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[10].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[9]_INST_0_i_4 
       (.I0(\inst/des_encrypt_instance/u0[12].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[12].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[12].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[12].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[12].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[12].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[12].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[9]_INST_0_i_5 
       (.I0(\inst/des_encrypt_instance/u0[14].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[14].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[14].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[14].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[14].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[14].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[14].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[9]_INST_0_i_6 
       (.I0(\inst/des_encrypt_instance/u0[0].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[0].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[0].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[0].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[0].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[0].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[0].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[9]_INST_0_i_7 
       (.I0(\inst/des_encrypt_instance/u0[2].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[2].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[2].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[2].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[2].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[2].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[2].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[9]_INST_0_i_8 
       (.I0(\inst/des_encrypt_instance/u0[4].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[4].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[4].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[4].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[4].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[4].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[4].round_instance/substituted [12]));
  LUT6 #(
    .INIT(64'hE14E6497AD91C978)) 
    \m_axis_tdata[9]_INST_0_i_9 
       (.I0(\inst/des_encrypt_instance/u0[6].round_instance/inp [19]),
        .I1(\inst/des_encrypt_instance/u0[6].round_instance/inp [20]),
        .I2(\inst/des_encrypt_instance/u0[6].round_instance/inp [21]),
        .I3(\inst/des_encrypt_instance/u0[6].round_instance/inp [22]),
        .I4(\inst/des_encrypt_instance/u0[6].round_instance/inp [23]),
        .I5(\inst/des_encrypt_instance/u0[6].round_instance/inp [18]),
        .O(\inst/des_encrypt_instance/u0[6].round_instance/substituted [12]));
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
