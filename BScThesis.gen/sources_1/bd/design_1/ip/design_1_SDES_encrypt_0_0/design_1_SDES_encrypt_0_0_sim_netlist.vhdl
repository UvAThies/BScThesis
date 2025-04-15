-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Apr 15 22:54:02 2025
-- Host        : DefconeONE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Thies/xillinx/BScThesis/BScThesis.gen/sources_1/bd/design_1/ip/design_1_SDES_encrypt_0_0/design_1_SDES_encrypt_0_0_sim_netlist.vhdl
-- Design      : design_1_SDES_encrypt_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SDES_encrypt_0_0 is
  port (
    inp : in STD_LOGIC_VECTOR ( 0 to 7 );
    key : in STD_LOGIC_VECTOR ( 0 to 9 );
    outp : out STD_LOGIC_VECTOR ( 0 to 7 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SDES_encrypt_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SDES_encrypt_0_0 : entity is "design_1_SDES_encrypt_0_0,SDES_encrypt,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_SDES_encrypt_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_SDES_encrypt_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_SDES_encrypt_0_0 : entity is "SDES_encrypt,Vivado 2024.2";
end design_1_SDES_encrypt_0_0;

architecture STRUCTURE of design_1_SDES_encrypt_0_0 is
  signal \inst/pi1_instance/left\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \inst/pi2_instance/left\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \^outp\ : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \outp[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \outp[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outp[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outp[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \outp[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \outp[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \outp[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \outp[0]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outp[0]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \outp[3]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outp[3]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outp[3]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \outp[4]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \outp[4]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outp[4]_INST_0_i_3\ : label is "soft_lutpair2";
begin
  outp(0 to 7) <= \^outp\(0 to 7);
\outp[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59292959A6D6D6A6"
    )
        port map (
      I0 => \inst/pi2_instance/left\(3),
      I1 => \inst/pi2_instance/left\(1),
      I2 => \inst/pi2_instance/left\(0),
      I3 => \^outp\(7),
      I4 => key(5),
      I5 => inp(6),
      O => \^outp\(0)
    );
\outp[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666969669696996"
    )
        port map (
      I0 => key(4),
      I1 => inp(2),
      I2 => \outp[4]_INST_0_i_3_n_0\,
      I3 => \outp[4]_INST_0_i_2_n_0\,
      I4 => \outp[4]_INST_0_i_1_n_0\,
      I5 => \outp[0]_INST_0_i_4_n_0\,
      O => \inst/pi2_instance/left\(3)
    );
\outp[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966999666969"
    )
        port map (
      I0 => key(2),
      I1 => inp(1),
      I2 => \inst/pi1_instance/left\(2),
      I3 => \inst/pi1_instance/left\(3),
      I4 => \inst/pi1_instance/left\(0),
      I5 => \inst/pi1_instance/left\(1),
      O => \inst/pi2_instance/left\(1)
    );
\outp[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9966699996999666"
    )
        port map (
      I0 => key(7),
      I1 => inp(0),
      I2 => \inst/pi1_instance/left\(2),
      I3 => \inst/pi1_instance/left\(0),
      I4 => \inst/pi1_instance/left\(1),
      I5 => \inst/pi1_instance/left\(3),
      O => \inst/pi2_instance/left\(0)
    );
\outp[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => key(9),
      I1 => inp(6),
      O => \outp[0]_INST_0_i_4_n_0\
    );
\outp[0]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => key(8),
      I1 => inp(7),
      O => \inst/pi1_instance/left\(2)
    );
\outp[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24979724DB6868DB"
    )
        port map (
      I0 => \inst/pi2_instance/left\(1),
      I1 => \inst/pi2_instance/left\(0),
      I2 => \inst/pi2_instance/left\(3),
      I3 => \^outp\(7),
      I4 => key(5),
      I5 => inp(3),
      O => \^outp\(1)
    );
\outp[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0666F660F9990"
    )
        port map (
      I0 => key(8),
      I1 => \^outp\(6),
      I2 => \outp[2]_INST_0_i_1_n_0\,
      I3 => \outp[2]_INST_0_i_2_n_0\,
      I4 => \outp[2]_INST_0_i_3_n_0\,
      I5 => inp(4),
      O => \^outp\(2)
    );
\outp[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A9966A5A55A5A"
    )
        port map (
      I0 => inp(5),
      I1 => key(9),
      I2 => inp(6),
      I3 => \outp[4]_INST_0_i_3_n_0\,
      I4 => \outp[4]_INST_0_i_1_n_0\,
      I5 => \outp[4]_INST_0_i_2_n_0\,
      O => \outp[2]_INST_0_i_1_n_0\
    );
\outp[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96956A69665AA599"
    )
        port map (
      I0 => inp(1),
      I1 => \inst/pi1_instance/left\(2),
      I2 => \inst/pi1_instance/left\(3),
      I3 => key(0),
      I4 => inp(6),
      I5 => \inst/pi1_instance/left\(1),
      O => \outp[2]_INST_0_i_2_n_0\
    );
\outp[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666969669696996"
    )
        port map (
      I0 => key(1),
      I1 => inp(2),
      I2 => \outp[4]_INST_0_i_3_n_0\,
      I3 => \outp[4]_INST_0_i_2_n_0\,
      I4 => \outp[4]_INST_0_i_1_n_0\,
      I5 => \outp[0]_INST_0_i_4_n_0\,
      O => \outp[2]_INST_0_i_3_n_0\
    );
\outp[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24979724DB6868DB"
    )
        port map (
      I0 => \inst/pi1_instance/left\(1),
      I1 => \inst/pi1_instance/left\(0),
      I2 => \inst/pi1_instance/left\(3),
      I3 => inp(7),
      I4 => key(8),
      I5 => inp(1),
      O => \^outp\(3)
    );
\outp[3]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => key(6),
      I1 => inp(3),
      O => \inst/pi1_instance/left\(1)
    );
\outp[3]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => key(0),
      I1 => inp(6),
      O => \inst/pi1_instance/left\(0)
    );
\outp[3]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => key(3),
      I1 => inp(4),
      O => \inst/pi1_instance/left\(3)
    );
\outp[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0666F660F9990"
    )
        port map (
      I0 => key(9),
      I1 => inp(6),
      I2 => \outp[4]_INST_0_i_1_n_0\,
      I3 => \outp[4]_INST_0_i_2_n_0\,
      I4 => \outp[4]_INST_0_i_3_n_0\,
      I5 => inp(2),
      O => \^outp\(4)
    );
\outp[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => key(7),
      I1 => inp(7),
      O => \outp[4]_INST_0_i_1_n_0\
    );
\outp[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => key(5),
      I1 => inp(3),
      O => \outp[4]_INST_0_i_2_n_0\
    );
\outp[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => key(2),
      I1 => inp(4),
      O => \outp[4]_INST_0_i_3_n_0\
    );
\outp[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B46469B64B9B964"
    )
        port map (
      I0 => \outp[2]_INST_0_i_2_n_0\,
      I1 => \outp[2]_INST_0_i_1_n_0\,
      I2 => \outp[2]_INST_0_i_3_n_0\,
      I3 => \^outp\(6),
      I4 => key(8),
      I5 => inp(7),
      O => \^outp\(5)
    );
\outp[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59292959A6D6D6A6"
    )
        port map (
      I0 => \inst/pi1_instance/left\(3),
      I1 => \inst/pi1_instance/left\(1),
      I2 => \inst/pi1_instance/left\(0),
      I3 => inp(7),
      I4 => key(8),
      I5 => inp(0),
      O => \^outp\(6)
    );
\outp[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B46469B64B9B964"
    )
        port map (
      I0 => \outp[4]_INST_0_i_2_n_0\,
      I1 => \outp[4]_INST_0_i_1_n_0\,
      I2 => \outp[4]_INST_0_i_3_n_0\,
      I3 => inp(6),
      I4 => key(9),
      I5 => inp(5),
      O => \^outp\(7)
    );
end STRUCTURE;
