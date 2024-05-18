-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Apr 24 23:39:00 2024
-- Host        : killer_hasher running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_util_mii_to_rmii_0_0_sim_netlist.vhdl
-- Design      : bd_util_mii_to_rmii_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mac_phy_link is
  port (
    rmii_tx_en_r : out STD_LOGIC;
    mii_tx_clk_10_100_r : out STD_LOGIC;
    \rmii_txd_r_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC;
    mac_tx_er_r2 : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    mac_tx_en_r2 : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mac_phy_link;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mac_phy_link is
  signal mac_tx_en_r : STD_LOGIC;
  signal mac_tx_er_r : STD_LOGIC;
  signal \mac_txd_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \mac_txd_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \mac_txd_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \^mii_tx_clk_10_100_r\ : STD_LOGIC;
  signal mii_tx_clk_10_100_r_i_1_n_0 : STD_LOGIC;
  signal \num_r[3]_i_1_n_0\ : STD_LOGIC;
  signal num_r_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal num_w : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal rising_tx_clk_r0 : STD_LOGIC;
  signal rising_tx_clk_r01_out : STD_LOGIC;
  signal rising_tx_clk_r0_i_1_n_0 : STD_LOGIC;
  signal rising_tx_clk_r1 : STD_LOGIC;
  signal rising_tx_clk_r1_i_1_n_0 : STD_LOGIC;
  signal \rmii_txd_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \rmii_txd_r[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \num_r[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \num_r[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \num_r[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of rising_tx_clk_r0_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of rising_tx_clk_r0_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of rising_tx_clk_r1_i_1 : label is "soft_lutpair1";
begin
  mii_tx_clk_10_100_r <= \^mii_tx_clk_10_100_r\;
mac_tx_en_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => rising_tx_clk_r1,
      D => mac_tx_en_r2,
      Q => mac_tx_en_r,
      R => p_0_in
    );
mac_tx_er_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => rising_tx_clk_r1,
      D => mac_tx_er_r2,
      Q => mac_tx_er_r,
      R => p_0_in
    );
\mac_txd_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => rising_tx_clk_r1,
      D => Q(0),
      Q => \mac_txd_r_reg_n_0_[0]\,
      R => p_0_in
    );
\mac_txd_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => rising_tx_clk_r1,
      D => Q(1),
      Q => \mac_txd_r_reg_n_0_[1]\,
      R => p_0_in
    );
\mac_txd_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => rising_tx_clk_r1,
      D => Q(2),
      Q => p_0_in_0,
      R => p_0_in
    );
\mac_txd_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => rising_tx_clk_r1,
      D => Q(3),
      Q => \mac_txd_r_reg_n_0_[3]\,
      R => p_0_in
    );
mii_tx_clk_10_100_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => num_r_reg(1),
      I1 => num_r_reg(0),
      I2 => num_r_reg(3),
      I3 => num_r_reg(2),
      I4 => \^mii_tx_clk_10_100_r\,
      O => mii_tx_clk_10_100_r_i_1_n_0
    );
mii_tx_clk_10_100_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_tx_clk_10_100_r_i_1_n_0,
      Q => \^mii_tx_clk_10_100_r\,
      R => p_0_in
    );
\num_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_r_reg(0),
      O => num_w(0)
    );
\num_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => num_r_reg(0),
      I1 => num_r_reg(1),
      O => num_w(1)
    );
\num_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => num_r_reg(0),
      I1 => num_r_reg(1),
      I2 => num_r_reg(2),
      O => num_w(2)
    );
\num_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => num_r_reg(1),
      I1 => num_r_reg(0),
      I2 => num_r_reg(3),
      I3 => num_r_reg(2),
      I4 => reset_n,
      O => \num_r[3]_i_1_n_0\
    );
\num_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => num_r_reg(1),
      I1 => num_r_reg(0),
      I2 => num_r_reg(2),
      I3 => num_r_reg(3),
      O => num_w(3)
    );
\num_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => num_w(0),
      Q => num_r_reg(0),
      R => \num_r[3]_i_1_n_0\
    );
\num_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => num_w(1),
      Q => num_r_reg(1),
      R => \num_r[3]_i_1_n_0\
    );
\num_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => num_w(2),
      Q => num_r_reg(2),
      R => \num_r[3]_i_1_n_0\
    );
\num_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => num_w(3),
      Q => num_r_reg(3),
      R => \num_r[3]_i_1_n_0\
    );
rising_tx_clk_r0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => rising_tx_clk_r0,
      I1 => \^mii_tx_clk_10_100_r\,
      I2 => rising_tx_clk_r01_out,
      O => rising_tx_clk_r0_i_1_n_0
    );
rising_tx_clk_r0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => num_r_reg(1),
      I1 => num_r_reg(0),
      I2 => num_r_reg(3),
      I3 => num_r_reg(2),
      I4 => reset_n,
      O => rising_tx_clk_r01_out
    );
rising_tx_clk_r0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => rising_tx_clk_r0_i_1_n_0,
      Q => rising_tx_clk_r0,
      R => '0'
    );
rising_tx_clk_r1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rising_tx_clk_r0,
      I1 => rising_tx_clk_r01_out,
      I2 => rising_tx_clk_r1,
      O => rising_tx_clk_r1_i_1_n_0
    );
rising_tx_clk_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => rising_tx_clk_r1_i_1_n_0,
      Q => rising_tx_clk_r1,
      R => '0'
    );
rmii_tx_en_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_tx_en_r,
      Q => rmii_tx_en_r,
      R => p_0_in
    );
\rmii_txd_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B78"
    )
        port map (
      I0 => \mac_txd_r_reg_n_0_[0]\,
      I1 => \^mii_tx_clk_10_100_r\,
      I2 => mac_tx_er_r,
      I3 => p_0_in_0,
      O => \rmii_txd_r[0]_i_1_n_0\
    );
\rmii_txd_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => \mac_txd_r_reg_n_0_[1]\,
      I1 => \^mii_tx_clk_10_100_r\,
      I2 => \mac_txd_r_reg_n_0_[3]\,
      I3 => mac_tx_er_r,
      O => \rmii_txd_r[1]_i_1_n_0\
    );
\rmii_txd_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \rmii_txd_r[0]_i_1_n_0\,
      Q => \rmii_txd_r_reg[1]_0\(0),
      R => p_0_in
    );
\rmii_txd_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \rmii_txd_r[1]_i_1_n_0\,
      Q => \rmii_txd_r_reg[1]_0\(1),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_phy_mac_link is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mii_crs : out STD_LOGIC;
    mii_rx_er_r2 : out STD_LOGIC;
    mii_rx_clk_10_100_r : out STD_LOGIC;
    mii_rx_dv_r0_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_rx_dv_r2 : out STD_LOGIC;
    phy_crs_dv_r2 : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    phy_rx_er_r2 : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    mac_tx_en_r2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_phy_mac_link;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_phy_mac_link is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_phase_r : STD_LOGIC;
  signal clk_phase_r_i_1_n_0 : STD_LOGIC;
  signal data_valid : STD_LOGIC;
  signal data_valid_d : STD_LOGIC;
  signal data_valid_i_1_n_0 : STD_LOGIC;
  signal eopack_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \eopack_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \eopack_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \^mii_crs\ : STD_LOGIC;
  signal mii_crs_r2 : STD_LOGIC;
  signal \^mii_rx_clk_10_100_r\ : STD_LOGIC;
  signal mii_rx_clk_10_100_r_i_1_n_0 : STD_LOGIC;
  signal mii_rx_er_r0 : STD_LOGIC;
  signal mii_rx_er_r1 : STD_LOGIC;
  signal \mii_rxd_r0_reg_n_0_[0]\ : STD_LOGIC;
  signal \mii_rxd_r0_reg_n_0_[1]\ : STD_LOGIC;
  signal mii_rxd_r1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mii_rxd_r10 : STD_LOGIC;
  signal mii_rxd_r2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal nibble_valid : STD_LOGIC;
  signal nibble_valid_i_1_n_0 : STD_LOGIC;
  signal \num_r[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_r[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_r[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_r[3]_i_2__0_n_0\ : STD_LOGIC;
  signal num_r_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sopack_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sopack_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \sopack_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \sopack_r[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \eopack_r[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of mii_rx_dv_r1_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mii_rxd_r1[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of nibble_valid_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \num_r[0]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \num_r[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \num_r[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \num_r[3]_i_2__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sopack_r[0]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sopack_r[1]_i_1\ : label is "soft_lutpair6";
begin
  SR(0) <= \^sr\(0);
  mii_crs <= \^mii_crs\;
  mii_rx_clk_10_100_r <= \^mii_rx_clk_10_100_r\;
clk_phase_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \^mii_rx_clk_10_100_r\,
      I1 => sopack_r(0),
      I2 => sopack_r(1),
      I3 => clk_phase_r,
      O => clk_phase_r_i_1_n_0
    );
clk_phase_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => clk_phase_r_i_1_n_0,
      Q => clk_phase_r,
      R => \^sr\(0)
    );
data_valid_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => data_valid,
      Q => data_valid_d,
      R => \^sr\(0)
    );
data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FF4444"
    )
        port map (
      I0 => sopack_r(1),
      I1 => sopack_r(0),
      I2 => eopack_r(1),
      I3 => eopack_r(0),
      I4 => data_valid,
      O => data_valid_i_1_n_0
    );
data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => data_valid_i_1_n_0,
      Q => data_valid,
      R => \^sr\(0)
    );
\eopack_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0DD00000000"
    )
        port map (
      I0 => sopack_r(0),
      I1 => sopack_r(1),
      I2 => eopack_r(0),
      I3 => \^mii_crs\,
      I4 => mii_crs_r2,
      I5 => reset_n,
      O => \eopack_r[0]_i_1_n_0\
    );
\eopack_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => eopack_r(0),
      I1 => reset_n,
      I2 => sopack_r(0),
      I3 => sopack_r(1),
      O => \eopack_r[1]_i_1_n_0\
    );
\eopack_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \eopack_r[0]_i_1_n_0\,
      Q => eopack_r(0),
      R => '0'
    );
\eopack_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \eopack_r[1]_i_1_n_0\,
      Q => eopack_r(1),
      R => '0'
    );
mii_col_r1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mii_crs_r2,
      I1 => mac_tx_en_r2,
      O => mii_rx_dv_r0_reg_0
    );
mii_rx_clk_10_100_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => num_r_reg(1),
      I1 => num_r_reg(0),
      I2 => num_r_reg(3),
      I3 => num_r_reg(2),
      I4 => \^mii_rx_clk_10_100_r\,
      O => mii_rx_clk_10_100_r_i_1_n_0
    );
mii_rx_clk_10_100_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rx_clk_10_100_r_i_1_n_0,
      Q => \^mii_rx_clk_10_100_r\,
      R => \^sr\(0)
    );
mii_rx_dv_r0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_crs_dv_r2,
      Q => mii_crs_r2,
      R => \^sr\(0)
    );
mii_rx_dv_r1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_valid,
      I1 => clk_phase_r,
      I2 => data_valid_d,
      O => mii_rx_dv_r2
    );
mii_rx_dv_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_crs_r2,
      Q => \^mii_crs\,
      R => \^sr\(0)
    );
mii_rx_er_r0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_rx_er_r2,
      Q => mii_rx_er_r0,
      R => \^sr\(0)
    );
mii_rx_er_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rx_er_r0,
      Q => mii_rx_er_r1,
      R => \^sr\(0)
    );
mii_rx_er_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rx_er_r1,
      Q => mii_rx_er_r2,
      R => \^sr\(0)
    );
\mii_rxd_r0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => p_0_in(0),
      Q => \mii_rxd_r0_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\mii_rxd_r0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => p_0_in(1),
      Q => \mii_rxd_r0_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\mii_rxd_r0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => Q(0),
      Q => p_0_in(0),
      R => \^sr\(0)
    );
\mii_rxd_r0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => Q(1),
      Q => p_0_in(1),
      R => \^sr\(0)
    );
\mii_rxd_r1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => data_valid_d,
      I1 => data_valid,
      I2 => mii_rxd_r2(0),
      I3 => clk_phase_r,
      I4 => mii_rxd_r1(0),
      O => D(0)
    );
\mii_rxd_r1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => data_valid_d,
      I1 => data_valid,
      I2 => mii_rxd_r2(1),
      I3 => clk_phase_r,
      I4 => mii_rxd_r1(1),
      O => D(1)
    );
\mii_rxd_r1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => data_valid_d,
      I1 => data_valid,
      I2 => mii_rxd_r2(2),
      I3 => clk_phase_r,
      I4 => mii_rxd_r1(2),
      O => D(2)
    );
\mii_rxd_r1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => nibble_valid,
      I1 => sopack_r(1),
      I2 => sopack_r(0),
      O => mii_rxd_r10
    );
\mii_rxd_r1[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => data_valid_d,
      I1 => data_valid,
      I2 => mii_rxd_r2(3),
      I3 => clk_phase_r,
      I4 => mii_rxd_r1(3),
      O => D(3)
    );
\mii_rxd_r1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => mii_rxd_r10,
      D => \mii_rxd_r0_reg_n_0_[0]\,
      Q => mii_rxd_r1(0),
      R => \^sr\(0)
    );
\mii_rxd_r1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => mii_rxd_r10,
      D => \mii_rxd_r0_reg_n_0_[1]\,
      Q => mii_rxd_r1(1),
      R => \^sr\(0)
    );
\mii_rxd_r1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => mii_rxd_r10,
      D => p_0_in(0),
      Q => mii_rxd_r1(2),
      R => \^sr\(0)
    );
\mii_rxd_r1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => mii_rxd_r10,
      D => p_0_in(1),
      Q => mii_rxd_r1(3),
      R => \^sr\(0)
    );
\mii_rxd_r2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rxd_r1(0),
      Q => mii_rxd_r2(0),
      R => \^sr\(0)
    );
\mii_rxd_r2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rxd_r1(1),
      Q => mii_rxd_r2(1),
      R => \^sr\(0)
    );
\mii_rxd_r2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rxd_r1(2),
      Q => mii_rxd_r2(2),
      R => \^sr\(0)
    );
\mii_rxd_r2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rxd_r1(3),
      Q => mii_rxd_r2(3),
      R => \^sr\(0)
    );
mii_tx_clk_r1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => \^sr\(0)
    );
nibble_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A2"
    )
        port map (
      I0 => reset_n,
      I1 => sopack_r(0),
      I2 => sopack_r(1),
      I3 => nibble_valid,
      O => nibble_valid_i_1_n_0
    );
nibble_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => nibble_valid_i_1_n_0,
      Q => nibble_valid,
      R => '0'
    );
\num_r[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => num_r_reg(0),
      O => \num_r[0]_i_1__0_n_0\
    );
\num_r[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => num_r_reg(0),
      I1 => num_r_reg(1),
      O => \num_r[1]_i_1__0_n_0\
    );
\num_r[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => num_r_reg(0),
      I1 => num_r_reg(1),
      I2 => num_r_reg(2),
      O => \num_r[2]_i_1__0_n_0\
    );
\num_r[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => num_r_reg(1),
      I1 => num_r_reg(0),
      I2 => num_r_reg(3),
      I3 => num_r_reg(2),
      I4 => reset_n,
      O => \num_r[3]_i_1__0_n_0\
    );
\num_r[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => num_r_reg(1),
      I1 => num_r_reg(0),
      I2 => num_r_reg(2),
      I3 => num_r_reg(3),
      O => \num_r[3]_i_2__0_n_0\
    );
\num_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \num_r[0]_i_1__0_n_0\,
      Q => num_r_reg(0),
      R => \num_r[3]_i_1__0_n_0\
    );
\num_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \num_r[1]_i_1__0_n_0\,
      Q => num_r_reg(1),
      R => \num_r[3]_i_1__0_n_0\
    );
\num_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \num_r[2]_i_1__0_n_0\,
      Q => num_r_reg(2),
      R => \num_r[3]_i_1__0_n_0\
    );
\num_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \num_r[3]_i_2__0_n_0\,
      Q => num_r_reg(3),
      R => \num_r[3]_i_1__0_n_0\
    );
\sopack_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BAAA"
    )
        port map (
      I0 => sopack_r(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => mii_crs_r2,
      I4 => \sopack_r[0]_i_2_n_0\,
      O => \sopack_r[0]_i_1_n_0\
    );
\sopack_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => eopack_r(1),
      I1 => eopack_r(0),
      I2 => reset_n,
      O => \sopack_r[0]_i_2_n_0\
    );
\sopack_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => sopack_r(0),
      I1 => reset_n,
      I2 => eopack_r(0),
      I3 => eopack_r(1),
      O => \sopack_r[1]_i_1_n_0\
    );
\sopack_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \sopack_r[0]_i_1_n_0\,
      Q => sopack_r(0),
      R => '0'
    );
\sopack_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \sopack_r[1]_i_1_n_0\,
      Q => sopack_r(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_mii_to_rmii is
  port (
    mii_crs : out STD_LOGIC;
    mii_tx_clk : out STD_LOGIC;
    mii_rx_clk : out STD_LOGIC;
    mii_col : out STD_LOGIC;
    mii_rx_dv : out STD_LOGIC;
    mii_rx_er : out STD_LOGIC;
    mii_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rmii_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii_tx_en : out STD_LOGIC;
    reset_n : in STD_LOGIC;
    mac_tx_en : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    mac_tx_er : in STD_LOGIC;
    mac_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    phy_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    phy_crs_dv : in STD_LOGIC;
    phy_rx_er : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_mii_to_rmii;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_mii_to_rmii is
  signal mac_phy_link_inst_n_2 : STD_LOGIC;
  signal mac_phy_link_inst_n_3 : STD_LOGIC;
  signal mac_tx_en_r1 : STD_LOGIC;
  signal mac_tx_en_r2 : STD_LOGIC;
  signal mac_tx_er_r1 : STD_LOGIC;
  signal mac_tx_er_r2 : STD_LOGIC;
  signal mac_txd_r1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mac_txd_r2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mii_rx_clk_10_100_r : STD_LOGIC;
  signal mii_rx_dv_r2 : STD_LOGIC;
  signal mii_rx_er_r2 : STD_LOGIC;
  signal mii_rxd_r2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mii_tx_clk_10_100_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal phy_crs_dv_r1 : STD_LOGIC;
  signal phy_crs_dv_r2 : STD_LOGIC;
  signal phy_mac_link_inst_n_4 : STD_LOGIC;
  signal phy_rx_er_r1 : STD_LOGIC;
  signal phy_rx_er_r2 : STD_LOGIC;
  signal phy_rx_er_r2_i_1_n_0 : STD_LOGIC;
  signal phy_rxd_r1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal phy_rxd_r2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rmii_tx_en_r : STD_LOGIC;
begin
mac_phy_link_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mac_phy_link
     port map (
      Q(3 downto 0) => mac_txd_r2(3 downto 0),
      mac_tx_en_r2 => mac_tx_en_r2,
      mac_tx_er_r2 => mac_tx_er_r2,
      mii_tx_clk_10_100_r => mii_tx_clk_10_100_r,
      p_0_in => p_0_in,
      ref_clk => ref_clk,
      reset_n => reset_n,
      rmii_tx_en_r => rmii_tx_en_r,
      \rmii_txd_r_reg[1]_0\(1) => mac_phy_link_inst_n_2,
      \rmii_txd_r_reg[1]_0\(0) => mac_phy_link_inst_n_3
    );
mac_tx_en_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_tx_en,
      Q => mac_tx_en_r1,
      R => p_0_in
    );
mac_tx_en_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_tx_en_r1,
      Q => mac_tx_en_r2,
      R => p_0_in
    );
mac_tx_er_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_tx_er,
      Q => mac_tx_er_r1,
      R => p_0_in
    );
mac_tx_er_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_tx_er_r1,
      Q => mac_tx_er_r2,
      R => p_0_in
    );
\mac_txd_r1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_txd(0),
      Q => mac_txd_r1(0),
      R => p_0_in
    );
\mac_txd_r1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_txd(1),
      Q => mac_txd_r1(1),
      R => p_0_in
    );
\mac_txd_r1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_txd(2),
      Q => mac_txd_r1(2),
      R => p_0_in
    );
\mac_txd_r1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_txd(3),
      Q => mac_txd_r1(3),
      R => p_0_in
    );
\mac_txd_r2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_txd_r1(0),
      Q => mac_txd_r2(0),
      R => p_0_in
    );
\mac_txd_r2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_txd_r1(1),
      Q => mac_txd_r2(1),
      R => p_0_in
    );
\mac_txd_r2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_txd_r1(2),
      Q => mac_txd_r2(2),
      R => p_0_in
    );
\mac_txd_r2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_txd_r1(3),
      Q => mac_txd_r2(3),
      R => p_0_in
    );
mii_col_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_mac_link_inst_n_4,
      Q => mii_col,
      R => p_0_in
    );
mii_rx_clk_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rx_clk_10_100_r,
      Q => mii_rx_clk,
      R => p_0_in
    );
mii_rx_dv_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rx_dv_r2,
      Q => mii_rx_dv,
      R => p_0_in
    );
mii_rx_er_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rx_er_r2,
      Q => mii_rx_er,
      R => p_0_in
    );
\mii_rxd_r1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rxd_r2(0),
      Q => mii_rxd(0),
      R => p_0_in
    );
\mii_rxd_r1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rxd_r2(1),
      Q => mii_rxd(1),
      R => p_0_in
    );
\mii_rxd_r1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rxd_r2(2),
      Q => mii_rxd(2),
      R => p_0_in
    );
\mii_rxd_r1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_rxd_r2(3),
      Q => mii_rxd(3),
      R => p_0_in
    );
mii_tx_clk_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mii_tx_clk_10_100_r,
      Q => mii_tx_clk,
      R => p_0_in
    );
phy_crs_dv_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_crs_dv,
      Q => phy_crs_dv_r1,
      R => p_0_in
    );
phy_crs_dv_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_crs_dv_r1,
      Q => phy_crs_dv_r2,
      R => p_0_in
    );
phy_mac_link_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_phy_mac_link
     port map (
      D(3 downto 0) => mii_rxd_r2(3 downto 0),
      Q(1 downto 0) => phy_rxd_r2(1 downto 0),
      SR(0) => p_0_in,
      mac_tx_en_r2 => mac_tx_en_r2,
      mii_crs => mii_crs,
      mii_rx_clk_10_100_r => mii_rx_clk_10_100_r,
      mii_rx_dv_r0_reg_0 => phy_mac_link_inst_n_4,
      mii_rx_dv_r2 => mii_rx_dv_r2,
      mii_rx_er_r2 => mii_rx_er_r2,
      phy_crs_dv_r2 => phy_crs_dv_r2,
      phy_rx_er_r2 => phy_rx_er_r2,
      ref_clk => ref_clk,
      reset_n => reset_n
    );
phy_rx_er_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_rx_er,
      Q => phy_rx_er_r1,
      R => p_0_in
    );
phy_rx_er_r2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => phy_rx_er_r1,
      I1 => reset_n,
      I2 => phy_rx_er_r2,
      O => phy_rx_er_r2_i_1_n_0
    );
phy_rx_er_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_rx_er_r2_i_1_n_0,
      Q => phy_rx_er_r2,
      R => '0'
    );
\phy_rxd_r1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_rxd(0),
      Q => phy_rxd_r1(0),
      R => p_0_in
    );
\phy_rxd_r1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_rxd(1),
      Q => phy_rxd_r1(1),
      R => p_0_in
    );
\phy_rxd_r2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_rxd_r1(0),
      Q => phy_rxd_r2(0),
      R => p_0_in
    );
\phy_rxd_r2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => phy_rxd_r1(1),
      Q => phy_rxd_r2(1),
      R => p_0_in
    );
rmii_tx_en_r1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => rmii_tx_en_r,
      Q => rmii_tx_en,
      R => p_0_in
    );
\rmii_txd_r1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_phy_link_inst_n_3,
      Q => rmii_txd(0),
      R => p_0_in
    );
\rmii_txd_r1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => mac_phy_link_inst_n_2,
      Q => rmii_txd(1),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    mac_tx_en : in STD_LOGIC;
    mac_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mac_tx_er : in STD_LOGIC;
    mii_tx_clk : out STD_LOGIC;
    mii_rx_clk : out STD_LOGIC;
    mii_col : out STD_LOGIC;
    mii_crs : out STD_LOGIC;
    mii_rx_dv : out STD_LOGIC;
    mii_rx_er : out STD_LOGIC;
    mii_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rmii_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii_tx_en : out STD_LOGIC;
    phy_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    phy_crs_dv : in STD_LOGIC;
    phy_rx_er : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_util_mii_to_rmii_0_0,util_mii_to_rmii,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "util_mii_to_rmii,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of mac_tx_en : signal is "xilinx.com:interface:mii:1.0 MII TX_EN";
  attribute X_INTERFACE_INFO of mac_tx_er : signal is "xilinx.com:interface:mii:1.0 MII TX_ER";
  attribute X_INTERFACE_INFO of mii_col : signal is "xilinx.com:interface:mii:1.0 MII COL";
  attribute X_INTERFACE_INFO of mii_crs : signal is "xilinx.com:interface:mii:1.0 MII CRS";
  attribute X_INTERFACE_INFO of mii_rx_clk : signal is "xilinx.com:interface:mii:1.0 MII RX_CLK";
  attribute X_INTERFACE_INFO of mii_rx_dv : signal is "xilinx.com:interface:mii:1.0 MII RX_DV";
  attribute X_INTERFACE_INFO of mii_rx_er : signal is "xilinx.com:interface:mii:1.0 MII RX_ER";
  attribute X_INTERFACE_INFO of mii_tx_clk : signal is "xilinx.com:interface:mii:1.0 MII TX_CLK";
  attribute X_INTERFACE_INFO of phy_crs_dv : signal is "xilinx.com:interface:rmii:1.0 RMII CRS_DV";
  attribute X_INTERFACE_INFO of phy_rx_er : signal is "xilinx.com:interface:rmii:1.0 RMII RX_ER";
  attribute X_INTERFACE_INFO of ref_clk : signal is "xilinx.com:signal:clock:1.0 ref_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ref_clk : signal is "XIL_INTERFACENAME ref_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_phy_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rmii_tx_en : signal is "xilinx.com:interface:rmii:1.0 RMII TX_EN";
  attribute X_INTERFACE_INFO of mac_txd : signal is "xilinx.com:interface:mii:1.0 MII TXD";
  attribute X_INTERFACE_INFO of mii_rxd : signal is "xilinx.com:interface:mii:1.0 MII RXD";
  attribute X_INTERFACE_INFO of phy_rxd : signal is "xilinx.com:interface:rmii:1.0 RMII RXD";
  attribute X_INTERFACE_INFO of rmii_txd : signal is "xilinx.com:interface:rmii:1.0 RMII TXD";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_mii_to_rmii
     port map (
      mac_tx_en => mac_tx_en,
      mac_tx_er => mac_tx_er,
      mac_txd(3 downto 0) => mac_txd(3 downto 0),
      mii_col => mii_col,
      mii_crs => mii_crs,
      mii_rx_clk => mii_rx_clk,
      mii_rx_dv => mii_rx_dv,
      mii_rx_er => mii_rx_er,
      mii_rxd(3 downto 0) => mii_rxd(3 downto 0),
      mii_tx_clk => mii_tx_clk,
      phy_crs_dv => phy_crs_dv,
      phy_rx_er => phy_rx_er,
      phy_rxd(1 downto 0) => phy_rxd(1 downto 0),
      ref_clk => ref_clk,
      reset_n => reset_n,
      rmii_tx_en => rmii_tx_en,
      rmii_txd(1 downto 0) => rmii_txd(1 downto 0)
    );
end STRUCTURE;
