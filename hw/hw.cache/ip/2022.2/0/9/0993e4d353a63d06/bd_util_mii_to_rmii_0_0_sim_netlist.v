// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Apr 24 23:39:00 2024
// Host        : killer_hasher running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_util_mii_to_rmii_0_0_sim_netlist.v
// Design      : bd_util_mii_to_rmii_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_util_mii_to_rmii_0_0,util_mii_to_rmii,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "util_mii_to_rmii,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (mac_tx_en,
    mac_txd,
    mac_tx_er,
    mii_tx_clk,
    mii_rx_clk,
    mii_col,
    mii_crs,
    mii_rx_dv,
    mii_rx_er,
    mii_rxd,
    rmii_txd,
    rmii_tx_en,
    phy_rxd,
    phy_crs_dv,
    phy_rx_er,
    ref_clk,
    reset_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TX_EN" *) input mac_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TXD" *) input [3:0]mac_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TX_ER" *) input mac_tx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TX_CLK" *) output mii_tx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_CLK" *) output mii_rx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII COL" *) output mii_col;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII CRS" *) output mii_crs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_DV" *) output mii_rx_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_ER" *) output mii_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RXD" *) output [3:0]mii_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII TXD" *) output [1:0]rmii_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII TX_EN" *) output rmii_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII RXD" *) input [1:0]phy_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII CRS_DV" *) input phy_crs_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII RX_ER" *) input phy_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ref_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ref_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_phy_clk, INSERT_VIP 0" *) input ref_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;

  wire mac_tx_en;
  wire mac_tx_er;
  wire [3:0]mac_txd;
  wire mii_col;
  wire mii_crs;
  wire mii_rx_clk;
  wire mii_rx_dv;
  wire mii_rx_er;
  wire [3:0]mii_rxd;
  wire mii_tx_clk;
  wire phy_crs_dv;
  wire phy_rx_er;
  wire [1:0]phy_rxd;
  wire ref_clk;
  wire reset_n;
  wire rmii_tx_en;
  wire [1:0]rmii_txd;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_mii_to_rmii inst
       (.mac_tx_en(mac_tx_en),
        .mac_tx_er(mac_tx_er),
        .mac_txd(mac_txd),
        .mii_col(mii_col),
        .mii_crs(mii_crs),
        .mii_rx_clk(mii_rx_clk),
        .mii_rx_dv(mii_rx_dv),
        .mii_rx_er(mii_rx_er),
        .mii_rxd(mii_rxd),
        .mii_tx_clk(mii_tx_clk),
        .phy_crs_dv(phy_crs_dv),
        .phy_rx_er(phy_rx_er),
        .phy_rxd(phy_rxd),
        .ref_clk(ref_clk),
        .reset_n(reset_n),
        .rmii_tx_en(rmii_tx_en),
        .rmii_txd(rmii_txd));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mac_phy_link
   (rmii_tx_en_r,
    mii_tx_clk_10_100_r,
    \rmii_txd_r_reg[1]_0 ,
    p_0_in,
    mac_tx_er_r2,
    ref_clk,
    mac_tx_en_r2,
    reset_n,
    Q);
  output rmii_tx_en_r;
  output mii_tx_clk_10_100_r;
  output [1:0]\rmii_txd_r_reg[1]_0 ;
  input p_0_in;
  input mac_tx_er_r2;
  input ref_clk;
  input mac_tx_en_r2;
  input reset_n;
  input [3:0]Q;

  wire [3:0]Q;
  wire mac_tx_en_r;
  wire mac_tx_en_r2;
  wire mac_tx_er_r;
  wire mac_tx_er_r2;
  wire \mac_txd_r_reg_n_0_[0] ;
  wire \mac_txd_r_reg_n_0_[1] ;
  wire \mac_txd_r_reg_n_0_[3] ;
  wire mii_tx_clk_10_100_r;
  wire mii_tx_clk_10_100_r_i_1_n_0;
  wire \num_r[3]_i_1_n_0 ;
  wire [3:0]num_r_reg;
  wire [3:0]num_w;
  wire p_0_in;
  wire p_0_in_0;
  wire ref_clk;
  wire reset_n;
  wire rising_tx_clk_r0;
  wire rising_tx_clk_r01_out;
  wire rising_tx_clk_r0_i_1_n_0;
  wire rising_tx_clk_r1;
  wire rising_tx_clk_r1_i_1_n_0;
  wire rmii_tx_en_r;
  wire \rmii_txd_r[0]_i_1_n_0 ;
  wire \rmii_txd_r[1]_i_1_n_0 ;
  wire [1:0]\rmii_txd_r_reg[1]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    mac_tx_en_r_reg
       (.C(ref_clk),
        .CE(rising_tx_clk_r1),
        .D(mac_tx_en_r2),
        .Q(mac_tx_en_r),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mac_tx_er_r_reg
       (.C(ref_clk),
        .CE(rising_tx_clk_r1),
        .D(mac_tx_er_r2),
        .Q(mac_tx_er_r),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r_reg[0] 
       (.C(ref_clk),
        .CE(rising_tx_clk_r1),
        .D(Q[0]),
        .Q(\mac_txd_r_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r_reg[1] 
       (.C(ref_clk),
        .CE(rising_tx_clk_r1),
        .D(Q[1]),
        .Q(\mac_txd_r_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r_reg[2] 
       (.C(ref_clk),
        .CE(rising_tx_clk_r1),
        .D(Q[2]),
        .Q(p_0_in_0),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r_reg[3] 
       (.C(ref_clk),
        .CE(rising_tx_clk_r1),
        .D(Q[3]),
        .Q(\mac_txd_r_reg_n_0_[3] ),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    mii_tx_clk_10_100_r_i_1
       (.I0(num_r_reg[1]),
        .I1(num_r_reg[0]),
        .I2(num_r_reg[3]),
        .I3(num_r_reg[2]),
        .I4(mii_tx_clk_10_100_r),
        .O(mii_tx_clk_10_100_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mii_tx_clk_10_100_r_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_tx_clk_10_100_r_i_1_n_0),
        .Q(mii_tx_clk_10_100_r),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \num_r[0]_i_1 
       (.I0(num_r_reg[0]),
        .O(num_w[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \num_r[1]_i_1 
       (.I0(num_r_reg[0]),
        .I1(num_r_reg[1]),
        .O(num_w[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \num_r[2]_i_1 
       (.I0(num_r_reg[0]),
        .I1(num_r_reg[1]),
        .I2(num_r_reg[2]),
        .O(num_w[2]));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \num_r[3]_i_1 
       (.I0(num_r_reg[1]),
        .I1(num_r_reg[0]),
        .I2(num_r_reg[3]),
        .I3(num_r_reg[2]),
        .I4(reset_n),
        .O(\num_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \num_r[3]_i_2 
       (.I0(num_r_reg[1]),
        .I1(num_r_reg[0]),
        .I2(num_r_reg[2]),
        .I3(num_r_reg[3]),
        .O(num_w[3]));
  FDRE #(
    .INIT(1'b0)) 
    \num_r_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(num_w[0]),
        .Q(num_r_reg[0]),
        .R(\num_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_r_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(num_w[1]),
        .Q(num_r_reg[1]),
        .R(\num_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_r_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(num_w[2]),
        .Q(num_r_reg[2]),
        .R(\num_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_r_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(num_w[3]),
        .Q(num_r_reg[3]),
        .R(\num_r[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    rising_tx_clk_r0_i_1
       (.I0(rising_tx_clk_r0),
        .I1(mii_tx_clk_10_100_r),
        .I2(rising_tx_clk_r01_out),
        .O(rising_tx_clk_r0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    rising_tx_clk_r0_i_2
       (.I0(num_r_reg[1]),
        .I1(num_r_reg[0]),
        .I2(num_r_reg[3]),
        .I3(num_r_reg[2]),
        .I4(reset_n),
        .O(rising_tx_clk_r01_out));
  FDRE #(
    .INIT(1'b0)) 
    rising_tx_clk_r0_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rising_tx_clk_r0_i_1_n_0),
        .Q(rising_tx_clk_r0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rising_tx_clk_r1_i_1
       (.I0(rising_tx_clk_r0),
        .I1(rising_tx_clk_r01_out),
        .I2(rising_tx_clk_r1),
        .O(rising_tx_clk_r1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rising_tx_clk_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rising_tx_clk_r1_i_1_n_0),
        .Q(rising_tx_clk_r1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rmii_tx_en_r_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_tx_en_r),
        .Q(rmii_tx_en_r),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h4B78)) 
    \rmii_txd_r[0]_i_1 
       (.I0(\mac_txd_r_reg_n_0_[0] ),
        .I1(mii_tx_clk_10_100_r),
        .I2(mac_tx_er_r),
        .I3(p_0_in_0),
        .O(\rmii_txd_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFB8)) 
    \rmii_txd_r[1]_i_1 
       (.I0(\mac_txd_r_reg_n_0_[1] ),
        .I1(mii_tx_clk_10_100_r),
        .I2(\mac_txd_r_reg_n_0_[3] ),
        .I3(mac_tx_er_r),
        .O(\rmii_txd_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rmii_txd_r_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\rmii_txd_r[0]_i_1_n_0 ),
        .Q(\rmii_txd_r_reg[1]_0 [0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rmii_txd_r_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\rmii_txd_r[1]_i_1_n_0 ),
        .Q(\rmii_txd_r_reg[1]_0 [1]),
        .R(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_phy_mac_link
   (SR,
    mii_crs,
    mii_rx_er_r2,
    mii_rx_clk_10_100_r,
    mii_rx_dv_r0_reg_0,
    D,
    mii_rx_dv_r2,
    phy_crs_dv_r2,
    ref_clk,
    phy_rx_er_r2,
    reset_n,
    mac_tx_en_r2,
    Q);
  output [0:0]SR;
  output mii_crs;
  output mii_rx_er_r2;
  output mii_rx_clk_10_100_r;
  output mii_rx_dv_r0_reg_0;
  output [3:0]D;
  output mii_rx_dv_r2;
  input phy_crs_dv_r2;
  input ref_clk;
  input phy_rx_er_r2;
  input reset_n;
  input mac_tx_en_r2;
  input [1:0]Q;

  wire [3:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire clk_phase_r;
  wire clk_phase_r_i_1_n_0;
  wire data_valid;
  wire data_valid_d;
  wire data_valid_i_1_n_0;
  wire [1:0]eopack_r;
  wire \eopack_r[0]_i_1_n_0 ;
  wire \eopack_r[1]_i_1_n_0 ;
  wire mac_tx_en_r2;
  wire mii_crs;
  wire mii_crs_r2;
  wire mii_rx_clk_10_100_r;
  wire mii_rx_clk_10_100_r_i_1_n_0;
  wire mii_rx_dv_r0_reg_0;
  wire mii_rx_dv_r2;
  wire mii_rx_er_r0;
  wire mii_rx_er_r1;
  wire mii_rx_er_r2;
  wire \mii_rxd_r0_reg_n_0_[0] ;
  wire \mii_rxd_r0_reg_n_0_[1] ;
  wire [3:0]mii_rxd_r1;
  wire mii_rxd_r10;
  wire [3:0]mii_rxd_r2;
  wire nibble_valid;
  wire nibble_valid_i_1_n_0;
  wire \num_r[0]_i_1__0_n_0 ;
  wire \num_r[1]_i_1__0_n_0 ;
  wire \num_r[2]_i_1__0_n_0 ;
  wire \num_r[3]_i_1__0_n_0 ;
  wire \num_r[3]_i_2__0_n_0 ;
  wire [3:0]num_r_reg;
  wire [1:0]p_0_in;
  wire phy_crs_dv_r2;
  wire phy_rx_er_r2;
  wire ref_clk;
  wire reset_n;
  wire [1:0]sopack_r;
  wire \sopack_r[0]_i_1_n_0 ;
  wire \sopack_r[0]_i_2_n_0 ;
  wire \sopack_r[1]_i_1_n_0 ;

  LUT4 #(
    .INIT(16'hFB08)) 
    clk_phase_r_i_1
       (.I0(mii_rx_clk_10_100_r),
        .I1(sopack_r[0]),
        .I2(sopack_r[1]),
        .I3(clk_phase_r),
        .O(clk_phase_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_phase_r_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(clk_phase_r_i_1_n_0),
        .Q(clk_phase_r),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_d_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_valid),
        .Q(data_valid_d),
        .R(SR));
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    data_valid_i_1
       (.I0(sopack_r[1]),
        .I1(sopack_r[0]),
        .I2(eopack_r[1]),
        .I3(eopack_r[0]),
        .I4(data_valid),
        .O(data_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    data_valid_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(data_valid_i_1_n_0),
        .Q(data_valid),
        .R(SR));
  LUT6 #(
    .INIT(64'hD0D0D0DD00000000)) 
    \eopack_r[0]_i_1 
       (.I0(sopack_r[0]),
        .I1(sopack_r[1]),
        .I2(eopack_r[0]),
        .I3(mii_crs),
        .I4(mii_crs_r2),
        .I5(reset_n),
        .O(\eopack_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \eopack_r[1]_i_1 
       (.I0(eopack_r[0]),
        .I1(reset_n),
        .I2(sopack_r[0]),
        .I3(sopack_r[1]),
        .O(\eopack_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \eopack_r_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\eopack_r[0]_i_1_n_0 ),
        .Q(eopack_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \eopack_r_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\eopack_r[1]_i_1_n_0 ),
        .Q(eopack_r[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    mii_col_r1_i_1
       (.I0(mii_crs_r2),
        .I1(mac_tx_en_r2),
        .O(mii_rx_dv_r0_reg_0));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    mii_rx_clk_10_100_r_i_1
       (.I0(num_r_reg[1]),
        .I1(num_r_reg[0]),
        .I2(num_r_reg[3]),
        .I3(num_r_reg[2]),
        .I4(mii_rx_clk_10_100_r),
        .O(mii_rx_clk_10_100_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_clk_10_100_r_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rx_clk_10_100_r_i_1_n_0),
        .Q(mii_rx_clk_10_100_r),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_dv_r0_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_crs_dv_r2),
        .Q(mii_crs_r2),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    mii_rx_dv_r1_i_1
       (.I0(data_valid),
        .I1(clk_phase_r),
        .I2(data_valid_d),
        .O(mii_rx_dv_r2));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_dv_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_crs_r2),
        .Q(mii_crs),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_er_r0_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_rx_er_r2),
        .Q(mii_rx_er_r0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_er_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rx_er_r0),
        .Q(mii_rx_er_r1),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_er_r2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rx_er_r1),
        .Q(mii_rx_er_r2),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r0_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\mii_rxd_r0_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r0_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\mii_rxd_r0_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r0_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(p_0_in[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r0_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(p_0_in[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \mii_rxd_r1[0]_i_1 
       (.I0(data_valid_d),
        .I1(data_valid),
        .I2(mii_rxd_r2[0]),
        .I3(clk_phase_r),
        .I4(mii_rxd_r1[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \mii_rxd_r1[1]_i_1 
       (.I0(data_valid_d),
        .I1(data_valid),
        .I2(mii_rxd_r2[1]),
        .I3(clk_phase_r),
        .I4(mii_rxd_r1[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \mii_rxd_r1[2]_i_1 
       (.I0(data_valid_d),
        .I1(data_valid),
        .I2(mii_rxd_r2[2]),
        .I3(clk_phase_r),
        .I4(mii_rxd_r1[2]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'hBA)) 
    \mii_rxd_r1[3]_i_1 
       (.I0(nibble_valid),
        .I1(sopack_r[1]),
        .I2(sopack_r[0]),
        .O(mii_rxd_r10));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \mii_rxd_r1[3]_i_1__0 
       (.I0(data_valid_d),
        .I1(data_valid),
        .I2(mii_rxd_r2[3]),
        .I3(clk_phase_r),
        .I4(mii_rxd_r1[3]),
        .O(D[3]));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r1_reg[0] 
       (.C(ref_clk),
        .CE(mii_rxd_r10),
        .D(\mii_rxd_r0_reg_n_0_[0] ),
        .Q(mii_rxd_r1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r1_reg[1] 
       (.C(ref_clk),
        .CE(mii_rxd_r10),
        .D(\mii_rxd_r0_reg_n_0_[1] ),
        .Q(mii_rxd_r1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r1_reg[2] 
       (.C(ref_clk),
        .CE(mii_rxd_r10),
        .D(p_0_in[0]),
        .Q(mii_rxd_r1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r1_reg[3] 
       (.C(ref_clk),
        .CE(mii_rxd_r10),
        .D(p_0_in[1]),
        .Q(mii_rxd_r1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r2_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rxd_r1[0]),
        .Q(mii_rxd_r2[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r2_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rxd_r1[1]),
        .Q(mii_rxd_r2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r2_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rxd_r1[2]),
        .Q(mii_rxd_r2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r2_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rxd_r1[3]),
        .Q(mii_rxd_r2[3]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    mii_tx_clk_r1_i_1
       (.I0(reset_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    nibble_valid_i_1
       (.I0(reset_n),
        .I1(sopack_r[0]),
        .I2(sopack_r[1]),
        .I3(nibble_valid),
        .O(nibble_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    nibble_valid_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(nibble_valid_i_1_n_0),
        .Q(nibble_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \num_r[0]_i_1__0 
       (.I0(num_r_reg[0]),
        .O(\num_r[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \num_r[1]_i_1__0 
       (.I0(num_r_reg[0]),
        .I1(num_r_reg[1]),
        .O(\num_r[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \num_r[2]_i_1__0 
       (.I0(num_r_reg[0]),
        .I1(num_r_reg[1]),
        .I2(num_r_reg[2]),
        .O(\num_r[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \num_r[3]_i_1__0 
       (.I0(num_r_reg[1]),
        .I1(num_r_reg[0]),
        .I2(num_r_reg[3]),
        .I3(num_r_reg[2]),
        .I4(reset_n),
        .O(\num_r[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \num_r[3]_i_2__0 
       (.I0(num_r_reg[1]),
        .I1(num_r_reg[0]),
        .I2(num_r_reg[2]),
        .I3(num_r_reg[3]),
        .O(\num_r[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_r_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\num_r[0]_i_1__0_n_0 ),
        .Q(num_r_reg[0]),
        .R(\num_r[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_r_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\num_r[1]_i_1__0_n_0 ),
        .Q(num_r_reg[1]),
        .R(\num_r[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_r_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\num_r[2]_i_1__0_n_0 ),
        .Q(num_r_reg[2]),
        .R(\num_r[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \num_r_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\num_r[3]_i_2__0_n_0 ),
        .Q(num_r_reg[3]),
        .R(\num_r[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000BAAA)) 
    \sopack_r[0]_i_1 
       (.I0(sopack_r[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(mii_crs_r2),
        .I4(\sopack_r[0]_i_2_n_0 ),
        .O(\sopack_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \sopack_r[0]_i_2 
       (.I0(eopack_r[1]),
        .I1(eopack_r[0]),
        .I2(reset_n),
        .O(\sopack_r[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \sopack_r[1]_i_1 
       (.I0(sopack_r[0]),
        .I1(reset_n),
        .I2(eopack_r[0]),
        .I3(eopack_r[1]),
        .O(\sopack_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sopack_r_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\sopack_r[0]_i_1_n_0 ),
        .Q(sopack_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sopack_r_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(\sopack_r[1]_i_1_n_0 ),
        .Q(sopack_r[1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_mii_to_rmii
   (mii_crs,
    mii_tx_clk,
    mii_rx_clk,
    mii_col,
    mii_rx_dv,
    mii_rx_er,
    mii_rxd,
    rmii_txd,
    rmii_tx_en,
    reset_n,
    mac_tx_en,
    ref_clk,
    mac_tx_er,
    mac_txd,
    phy_rxd,
    phy_crs_dv,
    phy_rx_er);
  output mii_crs;
  output mii_tx_clk;
  output mii_rx_clk;
  output mii_col;
  output mii_rx_dv;
  output mii_rx_er;
  output [3:0]mii_rxd;
  output [1:0]rmii_txd;
  output rmii_tx_en;
  input reset_n;
  input mac_tx_en;
  input ref_clk;
  input mac_tx_er;
  input [3:0]mac_txd;
  input [1:0]phy_rxd;
  input phy_crs_dv;
  input phy_rx_er;

  wire mac_phy_link_inst_n_2;
  wire mac_phy_link_inst_n_3;
  wire mac_tx_en;
  wire mac_tx_en_r1;
  wire mac_tx_en_r2;
  wire mac_tx_er;
  wire mac_tx_er_r1;
  wire mac_tx_er_r2;
  wire [3:0]mac_txd;
  wire [3:0]mac_txd_r1;
  wire [3:0]mac_txd_r2;
  wire mii_col;
  wire mii_crs;
  wire mii_rx_clk;
  wire mii_rx_clk_10_100_r;
  wire mii_rx_dv;
  wire mii_rx_dv_r2;
  wire mii_rx_er;
  wire mii_rx_er_r2;
  wire [3:0]mii_rxd;
  wire [3:0]mii_rxd_r2;
  wire mii_tx_clk;
  wire mii_tx_clk_10_100_r;
  wire p_0_in;
  wire phy_crs_dv;
  wire phy_crs_dv_r1;
  wire phy_crs_dv_r2;
  wire phy_mac_link_inst_n_4;
  wire phy_rx_er;
  wire phy_rx_er_r1;
  wire phy_rx_er_r2;
  wire phy_rx_er_r2_i_1_n_0;
  wire [1:0]phy_rxd;
  wire [1:0]phy_rxd_r1;
  wire [1:0]phy_rxd_r2;
  wire ref_clk;
  wire reset_n;
  wire rmii_tx_en;
  wire rmii_tx_en_r;
  wire [1:0]rmii_txd;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mac_phy_link mac_phy_link_inst
       (.Q(mac_txd_r2),
        .mac_tx_en_r2(mac_tx_en_r2),
        .mac_tx_er_r2(mac_tx_er_r2),
        .mii_tx_clk_10_100_r(mii_tx_clk_10_100_r),
        .p_0_in(p_0_in),
        .ref_clk(ref_clk),
        .reset_n(reset_n),
        .rmii_tx_en_r(rmii_tx_en_r),
        .\rmii_txd_r_reg[1]_0 ({mac_phy_link_inst_n_2,mac_phy_link_inst_n_3}));
  FDRE #(
    .INIT(1'b0)) 
    mac_tx_en_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_tx_en),
        .Q(mac_tx_en_r1),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mac_tx_en_r2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_tx_en_r1),
        .Q(mac_tx_en_r2),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mac_tx_er_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_tx_er),
        .Q(mac_tx_er_r1),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mac_tx_er_r2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_tx_er_r1),
        .Q(mac_tx_er_r2),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_txd[0]),
        .Q(mac_txd_r1[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_txd[1]),
        .Q(mac_txd_r1[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r1_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_txd[2]),
        .Q(mac_txd_r1[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r1_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_txd[3]),
        .Q(mac_txd_r1[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r2_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_txd_r1[0]),
        .Q(mac_txd_r2[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r2_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_txd_r1[1]),
        .Q(mac_txd_r2[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r2_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_txd_r1[2]),
        .Q(mac_txd_r2[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mac_txd_r2_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_txd_r1[3]),
        .Q(mac_txd_r2[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mii_col_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_mac_link_inst_n_4),
        .Q(mii_col),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_clk_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rx_clk_10_100_r),
        .Q(mii_rx_clk),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_dv_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rx_dv_r2),
        .Q(mii_rx_dv),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mii_rx_er_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rx_er_r2),
        .Q(mii_rx_er),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rxd_r2[0]),
        .Q(mii_rxd[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rxd_r2[1]),
        .Q(mii_rxd[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r1_reg[2] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rxd_r2[2]),
        .Q(mii_rxd[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \mii_rxd_r1_reg[3] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_rxd_r2[3]),
        .Q(mii_rxd[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    mii_tx_clk_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(mii_tx_clk_10_100_r),
        .Q(mii_tx_clk),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    phy_crs_dv_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_crs_dv),
        .Q(phy_crs_dv_r1),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    phy_crs_dv_r2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_crs_dv_r1),
        .Q(phy_crs_dv_r2),
        .R(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_phy_mac_link phy_mac_link_inst
       (.D(mii_rxd_r2),
        .Q(phy_rxd_r2),
        .SR(p_0_in),
        .mac_tx_en_r2(mac_tx_en_r2),
        .mii_crs(mii_crs),
        .mii_rx_clk_10_100_r(mii_rx_clk_10_100_r),
        .mii_rx_dv_r0_reg_0(phy_mac_link_inst_n_4),
        .mii_rx_dv_r2(mii_rx_dv_r2),
        .mii_rx_er_r2(mii_rx_er_r2),
        .phy_crs_dv_r2(phy_crs_dv_r2),
        .phy_rx_er_r2(phy_rx_er_r2),
        .ref_clk(ref_clk),
        .reset_n(reset_n));
  FDRE #(
    .INIT(1'b0)) 
    phy_rx_er_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_rx_er),
        .Q(phy_rx_er_r1),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'hB8)) 
    phy_rx_er_r2_i_1
       (.I0(phy_rx_er_r1),
        .I1(reset_n),
        .I2(phy_rx_er_r2),
        .O(phy_rx_er_r2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    phy_rx_er_r2_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_rx_er_r2_i_1_n_0),
        .Q(phy_rx_er_r2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \phy_rxd_r1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_rxd[0]),
        .Q(phy_rxd_r1[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \phy_rxd_r1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_rxd[1]),
        .Q(phy_rxd_r1[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \phy_rxd_r2_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_rxd_r1[0]),
        .Q(phy_rxd_r2[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \phy_rxd_r2_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(phy_rxd_r1[1]),
        .Q(phy_rxd_r2[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    rmii_tx_en_r1_reg
       (.C(ref_clk),
        .CE(1'b1),
        .D(rmii_tx_en_r),
        .Q(rmii_tx_en),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rmii_txd_r1_reg[0] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_phy_link_inst_n_3),
        .Q(rmii_txd[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rmii_txd_r1_reg[1] 
       (.C(ref_clk),
        .CE(1'b1),
        .D(mac_phy_link_inst_n_2),
        .Q(rmii_txd[1]),
        .R(p_0_in));
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
