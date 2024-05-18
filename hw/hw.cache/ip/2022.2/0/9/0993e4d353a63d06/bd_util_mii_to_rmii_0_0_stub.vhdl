-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Apr 24 23:39:00 2024
-- Host        : killer_hasher running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_util_mii_to_rmii_0_0_stub.vhdl
-- Design      : bd_util_mii_to_rmii_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mac_tx_en,mac_txd[3:0],mac_tx_er,mii_tx_clk,mii_rx_clk,mii_col,mii_crs,mii_rx_dv,mii_rx_er,mii_rxd[3:0],rmii_txd[1:0],rmii_tx_en,phy_rxd[1:0],phy_crs_dv,phy_rx_er,ref_clk,reset_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_mii_to_rmii,Vivado 2022.2";
begin
end;
