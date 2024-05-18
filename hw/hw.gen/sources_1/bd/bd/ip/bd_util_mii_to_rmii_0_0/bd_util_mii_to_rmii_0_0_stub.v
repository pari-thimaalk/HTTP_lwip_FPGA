// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Apr 24 23:39:00 2024
// Host        : killer_hasher running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/aadit/Documents/ECE_385/385group/Final_proj/final_proj_new/hw/hw.gen/sources_1/bd/bd/ip/bd_util_mii_to_rmii_0_0/bd_util_mii_to_rmii_0_0_stub.v
// Design      : bd_util_mii_to_rmii_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_mii_to_rmii,Vivado 2022.2" *)
module bd_util_mii_to_rmii_0_0(mac_tx_en, mac_txd, mac_tx_er, mii_tx_clk, 
  mii_rx_clk, mii_col, mii_crs, mii_rx_dv, mii_rx_er, mii_rxd, rmii_txd, rmii_tx_en, phy_rxd, 
  phy_crs_dv, phy_rx_er, ref_clk, reset_n)
/* synthesis syn_black_box black_box_pad_pin="mac_tx_en,mac_txd[3:0],mac_tx_er,mii_tx_clk,mii_rx_clk,mii_col,mii_crs,mii_rx_dv,mii_rx_er,mii_rxd[3:0],rmii_txd[1:0],rmii_tx_en,phy_rxd[1:0],phy_crs_dv,phy_rx_er,ref_clk,reset_n" */;
  input mac_tx_en;
  input [3:0]mac_txd;
  input mac_tx_er;
  output mii_tx_clk;
  output mii_rx_clk;
  output mii_col;
  output mii_crs;
  output mii_rx_dv;
  output mii_rx_er;
  output [3:0]mii_rxd;
  output [1:0]rmii_txd;
  output rmii_tx_en;
  input [1:0]phy_rxd;
  input phy_crs_dv;
  input phy_rx_er;
  input ref_clk;
  input reset_n;
endmodule
