-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon May 26 19:01:11 2025
-- Host        : DefconeONE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Thies/xillinx/BScThesis/BScThesis.gen/sources_1/bd/sdes_decrypt_bd/ip/sdes_decrypt_bd_sdes_decrypt_0_0_1/sdes_decrypt_bd_sdes_decrypt_0_0_sim_netlist.vhdl
-- Design      : sdes_decrypt_bd_sdes_decrypt_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sdes_decrypt_bd_sdes_decrypt_0_0_SDES_decrypt is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \outp_reg[6]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sdes_decrypt_bd_sdes_decrypt_0_0_SDES_decrypt : entity is "SDES_decrypt";
end sdes_decrypt_bd_sdes_decrypt_0_0_SDES_decrypt;

architecture STRUCTURE of sdes_decrypt_bd_sdes_decrypt_0_0_SDES_decrypt is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \outp[0]_i_4_n_0\ : STD_LOGIC;
  signal \outp[0]_i_7_n_0\ : STD_LOGIC;
  signal \outp[2]_i_4_n_0\ : STD_LOGIC;
  signal \outp[3]_i_2_n_0\ : STD_LOGIC;
  signal \outp[4]_i_4_n_0\ : STD_LOGIC;
  signal \pi1/bits_left1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pi1/bits_right1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pi1/p_0_in\ : STD_LOGIC;
  signal pi1_outp : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \pi2/bits_left1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pi2/bits_right1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pi2/p_0_in\ : STD_LOGIC;
  signal pi2_outp : STD_LOGIC_VECTOR ( 0 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \outp[0]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outp[0]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \outp[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outp[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \outp[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \outp[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \outp[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \outp[4]_i_4\ : label is "soft_lutpair2";
begin
  AR(0) <= \^ar\(0);
\outp[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2959D6A6"
    )
        port map (
      I0 => \pi2/bits_left1\(0),
      I1 => \outp[0]_i_4_n_0\,
      I2 => \pi2/bits_left1\(1),
      I3 => \pi2/p_0_in\,
      I4 => \outp_reg[6]_0\(1),
      O => pi2_outp(3)
    );
\outp[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^ar\(0)
    );
\outp[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666969669696996"
    )
        port map (
      I0 => Q(6),
      I1 => \outp_reg[6]_0\(5),
      I2 => \outp[4]_i_4_n_0\,
      I3 => \pi1/bits_right1\(0),
      I4 => \pi1/bits_right1\(1),
      I5 => \outp[0]_i_7_n_0\,
      O => \pi2/bits_left1\(0)
    );
\outp[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966999666969"
    )
        port map (
      I0 => Q(3),
      I1 => \outp_reg[6]_0\(6),
      I2 => \pi1/p_0_in\,
      I3 => \pi1/bits_left1\(0),
      I4 => \pi1/bits_left1\(1),
      I5 => \outp[3]_i_2_n_0\,
      O => \outp[0]_i_4_n_0\
    );
\outp[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9966699996999666"
    )
        port map (
      I0 => Q(9),
      I1 => \outp_reg[6]_0\(7),
      I2 => \pi1/p_0_in\,
      I3 => \pi1/bits_left1\(1),
      I4 => \outp[3]_i_2_n_0\,
      I5 => \pi1/bits_left1\(0),
      O => \pi2/bits_left1\(1)
    );
\outp[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A9966A5A55A5A"
    )
        port map (
      I0 => \outp_reg[6]_0\(2),
      I1 => Q(1),
      I2 => \outp_reg[6]_0\(1),
      I3 => \outp[4]_i_4_n_0\,
      I4 => \pi1/bits_right1\(1),
      I5 => \pi1/bits_right1\(0),
      O => \pi2/p_0_in\
    );
\outp[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => \outp_reg[6]_0\(1),
      O => \outp[0]_i_7_n_0\
    );
\outp[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(4),
      I1 => \outp_reg[6]_0\(0),
      O => \pi1/p_0_in\
    );
\outp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"972468DB"
    )
        port map (
      I0 => \outp[0]_i_4_n_0\,
      I1 => \pi2/bits_left1\(1),
      I2 => \pi2/bits_left1\(0),
      I3 => \pi2/p_0_in\,
      I4 => \outp_reg[6]_0\(4),
      O => pi2_outp(0)
    );
\outp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0666F660F9990"
    )
        port map (
      I0 => Q(0),
      I1 => pi1_outp(3),
      I2 => \pi2/bits_right1\(1),
      I3 => \pi2/bits_right1\(0),
      I4 => \outp[2]_i_4_n_0\,
      I5 => \outp_reg[6]_0\(3),
      O => pi2_outp(2)
    );
\outp[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696996669699696"
    )
        port map (
      I0 => Q(2),
      I1 => \outp_reg[6]_0\(2),
      I2 => \outp[0]_i_7_n_0\,
      I3 => \outp[4]_i_4_n_0\,
      I4 => \pi1/bits_right1\(1),
      I5 => \pi1/bits_right1\(0),
      O => \pi2/bits_right1\(1)
    );
\outp[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5995AA59966A5A5"
    )
        port map (
      I0 => \outp_reg[6]_0\(6),
      I1 => Q(4),
      I2 => \outp_reg[6]_0\(0),
      I3 => \pi1/bits_left1\(0),
      I4 => \pi1/bits_left1\(1),
      I5 => \outp[3]_i_2_n_0\,
      O => \pi2/bits_right1\(0)
    );
\outp[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666969669696996"
    )
        port map (
      I0 => Q(7),
      I1 => \outp_reg[6]_0\(5),
      I2 => \outp[4]_i_4_n_0\,
      I3 => \pi1/bits_right1\(0),
      I4 => \pi1/bits_right1\(1),
      I5 => \outp[0]_i_7_n_0\,
      O => \outp[2]_i_4_n_0\
    );
\outp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24979724DB6868DB"
    )
        port map (
      I0 => \outp[3]_i_2_n_0\,
      I1 => \pi1/bits_left1\(1),
      I2 => \pi1/bits_left1\(0),
      I3 => \outp_reg[6]_0\(0),
      I4 => Q(4),
      I5 => \outp_reg[6]_0\(6),
      O => pi1_outp(0)
    );
\outp[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(7),
      I1 => \outp_reg[6]_0\(4),
      O => \outp[3]_i_2_n_0\
    );
\outp[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(2),
      I1 => \outp_reg[6]_0\(1),
      O => \pi1/bits_left1\(1)
    );
\outp[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(5),
      I1 => \outp_reg[6]_0\(3),
      O => \pi1/bits_left1\(0)
    );
\outp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0666F660F9990"
    )
        port map (
      I0 => Q(1),
      I1 => \outp_reg[6]_0\(1),
      I2 => \pi1/bits_right1\(1),
      I3 => \pi1/bits_right1\(0),
      I4 => \outp[4]_i_4_n_0\,
      I5 => \outp_reg[6]_0\(5),
      O => pi1_outp(2)
    );
\outp[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => \outp_reg[6]_0\(0),
      O => \pi1/bits_right1\(1)
    );
\outp[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(9),
      I1 => \outp_reg[6]_0\(4),
      O => \pi1/bits_right1\(0)
    );
\outp[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(8),
      I1 => \outp_reg[6]_0\(3),
      O => \outp[4]_i_4_n_0\
    );
\outp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B46469B64B9B964"
    )
        port map (
      I0 => \pi2/bits_right1\(0),
      I1 => \pi2/bits_right1\(1),
      I2 => \outp[2]_i_4_n_0\,
      I3 => pi1_outp(3),
      I4 => Q(0),
      I5 => \outp_reg[6]_0\(0),
      O => pi2_outp(1)
    );
\outp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59292959A6D6D6A6"
    )
        port map (
      I0 => \pi1/bits_left1\(0),
      I1 => \outp[3]_i_2_n_0\,
      I2 => \pi1/bits_left1\(1),
      I3 => \outp_reg[6]_0\(0),
      I4 => Q(4),
      I5 => \outp_reg[6]_0\(7),
      O => pi1_outp(3)
    );
\outp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B46469B64B9B964"
    )
        port map (
      I0 => \pi1/bits_right1\(0),
      I1 => \pi1/bits_right1\(1),
      I2 => \outp[4]_i_4_n_0\,
      I3 => \outp_reg[6]_0\(1),
      I4 => Q(1),
      I5 => \outp_reg[6]_0\(2),
      O => pi1_outp(1)
    );
\outp_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => pi2_outp(3),
      Q => m_axis_tdata(7)
    );
\outp_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => pi2_outp(0),
      Q => m_axis_tdata(6)
    );
\outp_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => pi2_outp(2),
      Q => m_axis_tdata(5)
    );
\outp_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => pi1_outp(0),
      Q => m_axis_tdata(4)
    );
\outp_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => pi1_outp(2),
      Q => m_axis_tdata(3)
    );
\outp_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => pi2_outp(1),
      Q => m_axis_tdata(2)
    );
\outp_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => pi1_outp(3),
      Q => m_axis_tdata(1)
    );
\outp_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => pi1_outp(1),
      Q => m_axis_tdata(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sdes_decrypt_bd_sdes_decrypt_0_0_axi_interface_sdes_decrypt is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 17 downto 0 );
    aresetn : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of sdes_decrypt_bd_sdes_decrypt_0_0_axi_interface_sdes_decrypt : entity is "axi_interface_sdes_decrypt";
end sdes_decrypt_bd_sdes_decrypt_0_0_axi_interface_sdes_decrypt;

architecture STRUCTURE of sdes_decrypt_bd_sdes_decrypt_0_0_axi_interface_sdes_decrypt is
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal input_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal input_reg0 : STD_LOGIC;
  signal key_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal last_reg_i_1_n_0 : STD_LOGIC;
  signal last_reg_reg_n_0 : STD_LOGIC;
  signal sdes_decrypt_instance_n_0 : STD_LOGIC;
  signal valid_reg_i_1_n_0 : STD_LOGIC;
  signal valid_reg_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of valid_reg_i_1 : label is "soft_lutpair4";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C2C0"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => m_axis_tready,
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg_n_0_[1]\,
      I2 => m_axis_tready,
      O => \counter[1]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => sdes_decrypt_instance_n_0,
      D => \counter[0]_i_1_n_0\,
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => sdes_decrypt_instance_n_0,
      D => \counter[1]_i_1_n_0\,
      Q => \counter_reg_n_0_[1]\
    );
\input_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      O => input_reg0
    );
\input_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(0),
      Q => input_reg(0)
    );
\input_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(1),
      Q => input_reg(1)
    );
\input_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(2),
      Q => input_reg(2)
    );
\input_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(3),
      Q => input_reg(3)
    );
\input_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(4),
      Q => input_reg(4)
    );
\input_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(5),
      Q => input_reg(5)
    );
\input_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(6),
      Q => input_reg(6)
    );
\input_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(7),
      Q => input_reg(7)
    );
\key_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(8),
      Q => key_reg(0)
    );
\key_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(9),
      Q => key_reg(1)
    );
\key_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(10),
      Q => key_reg(2)
    );
\key_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(11),
      Q => key_reg(3)
    );
\key_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(12),
      Q => key_reg(4)
    );
\key_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(13),
      Q => key_reg(5)
    );
\key_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(14),
      Q => key_reg(6)
    );
\key_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(15),
      Q => key_reg(7)
    );
\key_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(16),
      Q => key_reg(8)
    );
\key_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => input_reg0,
      CLR => sdes_decrypt_instance_n_0,
      D => s_axis_tdata(17),
      Q => key_reg(9)
    );
last_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBFFFF00080000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tvalid,
      I2 => \counter_reg_n_0_[0]\,
      I3 => \counter_reg_n_0_[1]\,
      I4 => m_axis_tready,
      I5 => last_reg_reg_n_0,
      O => last_reg_i_1_n_0
    );
last_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => sdes_decrypt_instance_n_0,
      D => last_reg_i_1_n_0,
      Q => last_reg_reg_n_0
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => last_reg_reg_n_0,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      O => m_axis_tlast
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => valid_reg_reg_n_0,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[0]\,
      I2 => m_axis_tready,
      O => s_axis_tready
    );
sdes_decrypt_instance: entity work.sdes_decrypt_bd_sdes_decrypt_0_0_SDES_decrypt
     port map (
      AR(0) => sdes_decrypt_instance_n_0,
      Q(9 downto 0) => key_reg(9 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      \outp_reg[6]_0\(7 downto 0) => input_reg(7 downto 0)
    );
valid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFF0200"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \counter_reg_n_0_[0]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => m_axis_tready,
      I4 => valid_reg_reg_n_0,
      O => valid_reg_i_1_n_0
    );
valid_reg_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => sdes_decrypt_instance_n_0,
      D => valid_reg_i_1_n_0,
      Q => valid_reg_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sdes_decrypt_bd_sdes_decrypt_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sdes_decrypt_bd_sdes_decrypt_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of sdes_decrypt_bd_sdes_decrypt_0_0 : entity is "sdes_decrypt_bd_sdes_decrypt_0_0,axi_interface_sdes_decrypt,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of sdes_decrypt_bd_sdes_decrypt_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of sdes_decrypt_bd_sdes_decrypt_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of sdes_decrypt_bd_sdes_decrypt_0_0 : entity is "axi_interface_sdes_decrypt,Vivado 2024.2";
end sdes_decrypt_bd_sdes_decrypt_0_0;

architecture STRUCTURE of sdes_decrypt_bd_sdes_decrypt_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN sdes_decrypt_bd_zynqcore_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_MODE of m_axis_tready : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN sdes_decrypt_bd_zynqcore_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_MODE of s_axis_tready : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN sdes_decrypt_bd_zynqcore_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7 downto 0) <= \^m_axis_tdata\(7 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.sdes_decrypt_bd_sdes_decrypt_0_0_axi_interface_sdes_decrypt
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(7 downto 0) => \^m_axis_tdata\(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(17 downto 0) => s_axis_tdata(17 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
