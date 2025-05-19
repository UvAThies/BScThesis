-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon May 19 16:59:22 2025
-- Host        : DefconeONE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Thies/xillinx/BScThesis/BScThesis.gen/sources_1/bd/sdes_encrypt_bd/ip/sdes_encrypt_bd_sdes_encrypt_0_0_5/sdes_encrypt_bd_sdes_encrypt_0_0_sim_netlist.vhdl
-- Design      : sdes_encrypt_bd_sdes_encrypt_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sdes_encrypt_bd_sdes_encrypt_0_0 is
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
  attribute NotValidForBitStream of sdes_encrypt_bd_sdes_encrypt_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of sdes_encrypt_bd_sdes_encrypt_0_0 : entity is "sdes_encrypt_bd_sdes_encrypt_0_0,axi_interface_sdes_encrypt,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of sdes_encrypt_bd_sdes_encrypt_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of sdes_encrypt_bd_sdes_encrypt_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of sdes_encrypt_bd_sdes_encrypt_0_0 : entity is "axi_interface_sdes_encrypt,Vivado 2024.2";
end sdes_encrypt_bd_sdes_encrypt_0_0;

architecture STRUCTURE of sdes_encrypt_bd_sdes_encrypt_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \inst/sdes_encrypt_instance/pi1_instance/bits_left1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \inst/sdes_encrypt_instance/pi1_instance/bits_right1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \inst/sdes_encrypt_instance/pi1_instance/p_0_in\ : STD_LOGIC;
  signal \inst/sdes_encrypt_instance/pi2_instance/bits_left1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \inst/sdes_encrypt_instance/pi2_instance/bits_right1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \m_axis_tdata[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN sdes_encrypt_bd_zynqcore_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_MODE of m_axis_tready : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN sdes_encrypt_bd_zynqcore_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_MODE of s_axis_tready : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN sdes_encrypt_bd_zynqcore_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tlast\ <= s_axis_tlast;
  \^s_axis_tvalid\ <= s_axis_tvalid;
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
  m_axis_tlast <= \^s_axis_tlast\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B46469B64B9B964"
    )
        port map (
      I0 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(0),
      I1 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(1),
      I2 => \m_axis_tdata[3]_INST_0_i_3_n_0\,
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(8),
      I5 => s_axis_tdata(2),
      O => \^m_axis_tdata\(0)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59292959A6D6D6A6"
    )
        port map (
      I0 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(0),
      I1 => \m_axis_tdata[4]_INST_0_i_1_n_0\,
      I2 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(1),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(9),
      I5 => s_axis_tdata(7),
      O => \^m_axis_tdata\(1)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B46469B64B9B964"
    )
        port map (
      I0 => \inst/sdes_encrypt_instance/pi2_instance/bits_right1\(0),
      I1 => \inst/sdes_encrypt_instance/pi2_instance/bits_right1\(1),
      I2 => \m_axis_tdata[5]_INST_0_i_3_n_0\,
      I3 => \^m_axis_tdata\(1),
      I4 => s_axis_tdata(9),
      I5 => s_axis_tdata(0),
      O => \^m_axis_tdata\(2)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0666F660F9990"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => s_axis_tdata(1),
      I2 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(1),
      I3 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(0),
      I4 => \m_axis_tdata[3]_INST_0_i_3_n_0\,
      I5 => s_axis_tdata(5),
      O => \^m_axis_tdata\(3)
    );
\m_axis_tdata[3]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => s_axis_tdata(0),
      O => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(1)
    );
\m_axis_tdata[3]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => s_axis_tdata(4),
      O => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(0)
    );
\m_axis_tdata[3]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(3),
      O => \m_axis_tdata[3]_INST_0_i_3_n_0\
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24979724DB6868DB"
    )
        port map (
      I0 => \m_axis_tdata[4]_INST_0_i_1_n_0\,
      I1 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(1),
      I2 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(0),
      I3 => s_axis_tdata(0),
      I4 => s_axis_tdata(9),
      I5 => s_axis_tdata(6),
      O => \^m_axis_tdata\(4)
    );
\m_axis_tdata[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => s_axis_tdata(4),
      O => \m_axis_tdata[4]_INST_0_i_1_n_0\
    );
\m_axis_tdata[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => s_axis_tdata(1),
      O => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(1)
    );
\m_axis_tdata[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => s_axis_tdata(3),
      O => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(0)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F0666F660F9990"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \^m_axis_tdata\(1),
      I2 => \inst/sdes_encrypt_instance/pi2_instance/bits_right1\(1),
      I3 => \inst/sdes_encrypt_instance/pi2_instance/bits_right1\(0),
      I4 => \m_axis_tdata[5]_INST_0_i_3_n_0\,
      I5 => s_axis_tdata(3),
      O => \^m_axis_tdata\(5)
    );
\m_axis_tdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A9966A5A55A5A"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(1),
      I3 => \m_axis_tdata[3]_INST_0_i_3_n_0\,
      I4 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(1),
      I5 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(0),
      O => \inst/sdes_encrypt_instance/pi2_instance/bits_right1\(1)
    );
\m_axis_tdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96956A69665AA599"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \inst/sdes_encrypt_instance/pi1_instance/p_0_in\,
      I2 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(0),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(1),
      I5 => \m_axis_tdata[4]_INST_0_i_1_n_0\,
      O => \inst/sdes_encrypt_instance/pi2_instance/bits_right1\(0)
    );
\m_axis_tdata[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666969669696996"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => s_axis_tdata(5),
      I2 => \m_axis_tdata[3]_INST_0_i_3_n_0\,
      I3 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(0),
      I4 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(1),
      I5 => \m_axis_tdata[7]_INST_0_i_4_n_0\,
      O => \m_axis_tdata[5]_INST_0_i_3_n_0\
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"24979724DB6868DB"
    )
        port map (
      I0 => \m_axis_tdata[7]_INST_0_i_2_n_0\,
      I1 => \inst/sdes_encrypt_instance/pi2_instance/bits_left1\(1),
      I2 => \inst/sdes_encrypt_instance/pi2_instance/bits_left1\(0),
      I3 => \^m_axis_tdata\(0),
      I4 => s_axis_tdata(12),
      I5 => s_axis_tdata(4),
      O => \^m_axis_tdata\(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59292959A6D6D6A6"
    )
        port map (
      I0 => \inst/sdes_encrypt_instance/pi2_instance/bits_left1\(0),
      I1 => \m_axis_tdata[7]_INST_0_i_2_n_0\,
      I2 => \inst/sdes_encrypt_instance/pi2_instance/bits_left1\(1),
      I3 => \^m_axis_tdata\(0),
      I4 => s_axis_tdata(12),
      I5 => s_axis_tdata(1),
      O => \^m_axis_tdata\(7)
    );
\m_axis_tdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666969669696996"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => s_axis_tdata(5),
      I2 => \m_axis_tdata[3]_INST_0_i_3_n_0\,
      I3 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(0),
      I4 => \inst/sdes_encrypt_instance/pi1_instance/bits_right1\(1),
      I5 => \m_axis_tdata[7]_INST_0_i_4_n_0\,
      O => \inst/sdes_encrypt_instance/pi2_instance/bits_left1\(0)
    );
\m_axis_tdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966999666969"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => s_axis_tdata(6),
      I2 => \inst/sdes_encrypt_instance/pi1_instance/p_0_in\,
      I3 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(0),
      I4 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(1),
      I5 => \m_axis_tdata[4]_INST_0_i_1_n_0\,
      O => \m_axis_tdata[7]_INST_0_i_2_n_0\
    );
\m_axis_tdata[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9966699996999666"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => s_axis_tdata(7),
      I2 => \inst/sdes_encrypt_instance/pi1_instance/p_0_in\,
      I3 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(1),
      I4 => \m_axis_tdata[4]_INST_0_i_1_n_0\,
      I5 => \inst/sdes_encrypt_instance/pi1_instance/bits_left1\(0),
      O => \inst/sdes_encrypt_instance/pi2_instance/bits_left1\(1)
    );
\m_axis_tdata[7]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => s_axis_tdata(1),
      O => \m_axis_tdata[7]_INST_0_i_4_n_0\
    );
\m_axis_tdata[7]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => s_axis_tdata(0),
      O => \inst/sdes_encrypt_instance/pi1_instance/p_0_in\
    );
end STRUCTURE;
