//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Mon Apr  7 15:48:01 2025
//Host        : DefconeONE running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire [63:0]xlconstant_0_dout;
  wire [63:0]zeroes_dout;

  design_1_xlconstant_0_0 ones
       (.dout(xlconstant_0_dout));
  design_1_xor_32bit_0_0 xor_32bit_0
       (.\input ({zeroes_dout[31],zeroes_dout[30],zeroes_dout[29],zeroes_dout[28],zeroes_dout[27],zeroes_dout[26],zeroes_dout[25],zeroes_dout[24],zeroes_dout[23],zeroes_dout[22],zeroes_dout[21],zeroes_dout[20],zeroes_dout[19],zeroes_dout[18],zeroes_dout[17],zeroes_dout[16],zeroes_dout[15],zeroes_dout[14],zeroes_dout[13],zeroes_dout[12],zeroes_dout[11],zeroes_dout[10],zeroes_dout[9],zeroes_dout[8],zeroes_dout[7],zeroes_dout[6],zeroes_dout[5],zeroes_dout[4],zeroes_dout[3],zeroes_dout[2],zeroes_dout[1],zeroes_dout[0]}),
        .key({xlconstant_0_dout[31],xlconstant_0_dout[30],xlconstant_0_dout[29],xlconstant_0_dout[28],xlconstant_0_dout[27],xlconstant_0_dout[26],xlconstant_0_dout[25],xlconstant_0_dout[24],xlconstant_0_dout[23],xlconstant_0_dout[22],xlconstant_0_dout[21],xlconstant_0_dout[20],xlconstant_0_dout[19],xlconstant_0_dout[18],xlconstant_0_dout[17],xlconstant_0_dout[16],xlconstant_0_dout[15],xlconstant_0_dout[14],xlconstant_0_dout[13],xlconstant_0_dout[12],xlconstant_0_dout[11],xlconstant_0_dout[10],xlconstant_0_dout[9],xlconstant_0_dout[8],xlconstant_0_dout[7],xlconstant_0_dout[6],xlconstant_0_dout[5],xlconstant_0_dout[4],xlconstant_0_dout[3],xlconstant_0_dout[2],xlconstant_0_dout[1],xlconstant_0_dout[0]}));
  design_1_xor_32bit_1_0 xor_32bit_1
       (.\input ({xlconstant_0_dout[31],xlconstant_0_dout[30],xlconstant_0_dout[29],xlconstant_0_dout[28],xlconstant_0_dout[27],xlconstant_0_dout[26],xlconstant_0_dout[25],xlconstant_0_dout[24],xlconstant_0_dout[23],xlconstant_0_dout[22],xlconstant_0_dout[21],xlconstant_0_dout[20],xlconstant_0_dout[19],xlconstant_0_dout[18],xlconstant_0_dout[17],xlconstant_0_dout[16],xlconstant_0_dout[15],xlconstant_0_dout[14],xlconstant_0_dout[13],xlconstant_0_dout[12],xlconstant_0_dout[11],xlconstant_0_dout[10],xlconstant_0_dout[9],xlconstant_0_dout[8],xlconstant_0_dout[7],xlconstant_0_dout[6],xlconstant_0_dout[5],xlconstant_0_dout[4],xlconstant_0_dout[3],xlconstant_0_dout[2],xlconstant_0_dout[1],xlconstant_0_dout[0]}),
        .key({xlconstant_0_dout[31],xlconstant_0_dout[30],xlconstant_0_dout[29],xlconstant_0_dout[28],xlconstant_0_dout[27],xlconstant_0_dout[26],xlconstant_0_dout[25],xlconstant_0_dout[24],xlconstant_0_dout[23],xlconstant_0_dout[22],xlconstant_0_dout[21],xlconstant_0_dout[20],xlconstant_0_dout[19],xlconstant_0_dout[18],xlconstant_0_dout[17],xlconstant_0_dout[16],xlconstant_0_dout[15],xlconstant_0_dout[14],xlconstant_0_dout[13],xlconstant_0_dout[12],xlconstant_0_dout[11],xlconstant_0_dout[10],xlconstant_0_dout[9],xlconstant_0_dout[8],xlconstant_0_dout[7],xlconstant_0_dout[6],xlconstant_0_dout[5],xlconstant_0_dout[4],xlconstant_0_dout[3],xlconstant_0_dout[2],xlconstant_0_dout[1],xlconstant_0_dout[0]}));
  design_1_xlconstant_0_2 zeroes
       (.dout(zeroes_dout));
endmodule
