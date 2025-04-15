// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 15 22:54:02 2025
// Host        : DefconeONE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Thies/xillinx/BScThesis/BScThesis.gen/sources_1/bd/design_1/ip/design_1_SDES_encrypt_0_0/design_1_SDES_encrypt_0_0_sim_netlist.v
// Design      : design_1_SDES_encrypt_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_SDES_encrypt_0_0,SDES_encrypt,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SDES_encrypt,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_SDES_encrypt_0_0
   (inp,
    key,
    outp);
  input [0:7]inp;
  input [0:9]key;
  output [0:7]outp;

  wire [0:7]inp;
  wire [0:3]\inst/pi1_instance/left ;
  wire [0:3]\inst/pi2_instance/left ;
  wire [0:9]key;
  wire [0:7]outp;
  wire \outp[0]_INST_0_i_4_n_0 ;
  wire \outp[2]_INST_0_i_1_n_0 ;
  wire \outp[2]_INST_0_i_2_n_0 ;
  wire \outp[2]_INST_0_i_3_n_0 ;
  wire \outp[4]_INST_0_i_1_n_0 ;
  wire \outp[4]_INST_0_i_2_n_0 ;
  wire \outp[4]_INST_0_i_3_n_0 ;

  LUT6 #(
    .INIT(64'h59292959A6D6D6A6)) 
    \outp[0]_INST_0 
       (.I0(\inst/pi2_instance/left [3]),
        .I1(\inst/pi2_instance/left [1]),
        .I2(\inst/pi2_instance/left [0]),
        .I3(outp[7]),
        .I4(key[5]),
        .I5(inp[6]),
        .O(outp[0]));
  LUT6 #(
    .INIT(64'h9666969669696996)) 
    \outp[0]_INST_0_i_1 
       (.I0(key[4]),
        .I1(inp[2]),
        .I2(\outp[4]_INST_0_i_3_n_0 ),
        .I3(\outp[4]_INST_0_i_2_n_0 ),
        .I4(\outp[4]_INST_0_i_1_n_0 ),
        .I5(\outp[0]_INST_0_i_4_n_0 ),
        .O(\inst/pi2_instance/left [3]));
  LUT6 #(
    .INIT(64'h6999966999666969)) 
    \outp[0]_INST_0_i_2 
       (.I0(key[2]),
        .I1(inp[1]),
        .I2(\inst/pi1_instance/left [2]),
        .I3(\inst/pi1_instance/left [3]),
        .I4(\inst/pi1_instance/left [0]),
        .I5(\inst/pi1_instance/left [1]),
        .O(\inst/pi2_instance/left [1]));
  LUT6 #(
    .INIT(64'h9966699996999666)) 
    \outp[0]_INST_0_i_3 
       (.I0(key[7]),
        .I1(inp[0]),
        .I2(\inst/pi1_instance/left [2]),
        .I3(\inst/pi1_instance/left [0]),
        .I4(\inst/pi1_instance/left [1]),
        .I5(\inst/pi1_instance/left [3]),
        .O(\inst/pi2_instance/left [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[0]_INST_0_i_4 
       (.I0(key[9]),
        .I1(inp[6]),
        .O(\outp[0]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[0]_INST_0_i_5 
       (.I0(key[8]),
        .I1(inp[7]),
        .O(\inst/pi1_instance/left [2]));
  LUT6 #(
    .INIT(64'h24979724DB6868DB)) 
    \outp[1]_INST_0 
       (.I0(\inst/pi2_instance/left [1]),
        .I1(\inst/pi2_instance/left [0]),
        .I2(\inst/pi2_instance/left [3]),
        .I3(outp[7]),
        .I4(key[5]),
        .I5(inp[3]),
        .O(outp[1]));
  LUT6 #(
    .INIT(64'h99F0666F660F9990)) 
    \outp[2]_INST_0 
       (.I0(key[8]),
        .I1(outp[6]),
        .I2(\outp[2]_INST_0_i_1_n_0 ),
        .I3(\outp[2]_INST_0_i_2_n_0 ),
        .I4(\outp[2]_INST_0_i_3_n_0 ),
        .I5(inp[4]),
        .O(outp[2]));
  LUT6 #(
    .INIT(64'h5A5A9966A5A55A5A)) 
    \outp[2]_INST_0_i_1 
       (.I0(inp[5]),
        .I1(key[9]),
        .I2(inp[6]),
        .I3(\outp[4]_INST_0_i_3_n_0 ),
        .I4(\outp[4]_INST_0_i_1_n_0 ),
        .I5(\outp[4]_INST_0_i_2_n_0 ),
        .O(\outp[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96956A69665AA599)) 
    \outp[2]_INST_0_i_2 
       (.I0(inp[1]),
        .I1(\inst/pi1_instance/left [2]),
        .I2(\inst/pi1_instance/left [3]),
        .I3(key[0]),
        .I4(inp[6]),
        .I5(\inst/pi1_instance/left [1]),
        .O(\outp[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9666969669696996)) 
    \outp[2]_INST_0_i_3 
       (.I0(key[1]),
        .I1(inp[2]),
        .I2(\outp[4]_INST_0_i_3_n_0 ),
        .I3(\outp[4]_INST_0_i_2_n_0 ),
        .I4(\outp[4]_INST_0_i_1_n_0 ),
        .I5(\outp[0]_INST_0_i_4_n_0 ),
        .O(\outp[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h24979724DB6868DB)) 
    \outp[3]_INST_0 
       (.I0(\inst/pi1_instance/left [1]),
        .I1(\inst/pi1_instance/left [0]),
        .I2(\inst/pi1_instance/left [3]),
        .I3(inp[7]),
        .I4(key[8]),
        .I5(inp[1]),
        .O(outp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[3]_INST_0_i_1 
       (.I0(key[6]),
        .I1(inp[3]),
        .O(\inst/pi1_instance/left [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[3]_INST_0_i_2 
       (.I0(key[0]),
        .I1(inp[6]),
        .O(\inst/pi1_instance/left [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[3]_INST_0_i_3 
       (.I0(key[3]),
        .I1(inp[4]),
        .O(\inst/pi1_instance/left [3]));
  LUT6 #(
    .INIT(64'h99F0666F660F9990)) 
    \outp[4]_INST_0 
       (.I0(key[9]),
        .I1(inp[6]),
        .I2(\outp[4]_INST_0_i_1_n_0 ),
        .I3(\outp[4]_INST_0_i_2_n_0 ),
        .I4(\outp[4]_INST_0_i_3_n_0 ),
        .I5(inp[2]),
        .O(outp[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[4]_INST_0_i_1 
       (.I0(key[7]),
        .I1(inp[7]),
        .O(\outp[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[4]_INST_0_i_2 
       (.I0(key[5]),
        .I1(inp[3]),
        .O(\outp[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outp[4]_INST_0_i_3 
       (.I0(key[2]),
        .I1(inp[4]),
        .O(\outp[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9B46469B64B9B964)) 
    \outp[5]_INST_0 
       (.I0(\outp[2]_INST_0_i_2_n_0 ),
        .I1(\outp[2]_INST_0_i_1_n_0 ),
        .I2(\outp[2]_INST_0_i_3_n_0 ),
        .I3(outp[6]),
        .I4(key[8]),
        .I5(inp[7]),
        .O(outp[5]));
  LUT6 #(
    .INIT(64'h59292959A6D6D6A6)) 
    \outp[6]_INST_0 
       (.I0(\inst/pi1_instance/left [3]),
        .I1(\inst/pi1_instance/left [1]),
        .I2(\inst/pi1_instance/left [0]),
        .I3(inp[7]),
        .I4(key[8]),
        .I5(inp[0]),
        .O(outp[6]));
  LUT6 #(
    .INIT(64'h9B46469B64B9B964)) 
    \outp[7]_INST_0 
       (.I0(\outp[4]_INST_0_i_2_n_0 ),
        .I1(\outp[4]_INST_0_i_1_n_0 ),
        .I2(\outp[4]_INST_0_i_3_n_0 ),
        .I3(inp[6]),
        .I4(key[9]),
        .I5(inp[5]),
        .O(outp[7]));
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
