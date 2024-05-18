// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: analog.com:user:util_mii_to_rmii:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_util_mii_to_rmii_0_0 (
  mac_tx_en,
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
  reset_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TX_EN" *)
input wire mac_tx_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TXD" *)
input wire [3 : 0] mac_txd;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TX_ER" *)
input wire mac_tx_er;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TX_CLK" *)
output wire mii_tx_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_CLK" *)
output wire mii_rx_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII COL" *)
output wire mii_col;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII CRS" *)
output wire mii_crs;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_DV" *)
output wire mii_rx_dv;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_ER" *)
output wire mii_rx_er;
(* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RXD" *)
output wire [3 : 0] mii_rxd;
(* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII TXD" *)
output wire [1 : 0] rmii_txd;
(* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII TX_EN" *)
output wire rmii_tx_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII RXD" *)
input wire [1 : 0] phy_rxd;
(* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII CRS_DV" *)
input wire phy_crs_dv;
(* X_INTERFACE_INFO = "xilinx.com:interface:rmii:1.0 RMII RX_ER" *)
input wire phy_rx_er;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ref_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_phy_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ref_clk CLK" *)
input wire ref_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;

  util_mii_to_rmii #(
    .INTF_CFG(0),
    .RATE_10_100(0)
  ) inst (
    .mac_tx_en(mac_tx_en),
    .mac_txd(mac_txd),
    .mac_tx_er(mac_tx_er),
    .mii_tx_clk(mii_tx_clk),
    .mii_rx_clk(mii_rx_clk),
    .mii_col(mii_col),
    .mii_crs(mii_crs),
    .mii_rx_dv(mii_rx_dv),
    .mii_rx_er(mii_rx_er),
    .mii_rxd(mii_rxd),
    .rmii_txd(rmii_txd),
    .rmii_tx_en(rmii_tx_en),
    .phy_rxd(phy_rxd),
    .phy_crs_dv(phy_crs_dv),
    .phy_rx_er(phy_rx_er),
    .ref_clk(ref_clk),
    .reset_n(reset_n)
  );
endmodule
