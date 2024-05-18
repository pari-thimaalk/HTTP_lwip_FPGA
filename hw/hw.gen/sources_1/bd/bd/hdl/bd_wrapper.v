//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed May  1 23:08:17 2024
//Host        : killer_hasher running 64-bit major release  (build 9200)
//Command     : generate_target bd_wrapper.bd
//Design      : bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_wrapper
   (HDMI_0_tmds_clk_n,
    HDMI_0_tmds_clk_p,
    HDMI_0_tmds_data_n,
    HDMI_0_tmds_data_p,
    clk_100mhz,
    crs,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n,
    gpio_usb_int_tri_i,
    gpio_usb_keycode_0_tri_o,
    gpio_usb_keycode_1_tri_o,
    gpio_usb_rst_tri_o,
    init_calib_complete,
    mdio_rtl_0_mdc,
    mdio_rtl_0_mdio_io,
    phy_clk,
    rx_er,
    rxd,
    sys_rst,
    tx_en,
    txd,
    uart_rxd,
    uart_txd,
    usb_spi_miso,
    usb_spi_mosi,
    usb_spi_sclk,
    usb_spi_ss);
  output HDMI_0_tmds_clk_n;
  output HDMI_0_tmds_clk_p;
  output [2:0]HDMI_0_tmds_data_n;
  output [2:0]HDMI_0_tmds_data_p;
  input clk_100mhz;
  input crs;
  output [12:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_cas_n;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_cke;
  output [1:0]ddr3_dm;
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_n;
  inout [1:0]ddr3_dqs_p;
  output [0:0]ddr3_odt;
  output ddr3_ras_n;
  output ddr3_reset_n;
  output ddr3_we_n;
  input [0:0]gpio_usb_int_tri_i;
  output [31:0]gpio_usb_keycode_0_tri_o;
  output [31:0]gpio_usb_keycode_1_tri_o;
  output [0:0]gpio_usb_rst_tri_o;
  output init_calib_complete;
  output mdio_rtl_0_mdc;
  inout mdio_rtl_0_mdio_io;
  input phy_clk;
  input rx_er;
  input [1:0]rxd;
  input sys_rst;
  output tx_en;
  output [1:0]txd;
  input uart_rxd;
  output uart_txd;
  input usb_spi_miso;
  output usb_spi_mosi;
  output usb_spi_sclk;
  output [0:0]usb_spi_ss;

  wire HDMI_0_tmds_clk_n;
  wire HDMI_0_tmds_clk_p;
  wire [2:0]HDMI_0_tmds_data_n;
  wire [2:0]HDMI_0_tmds_data_p;
  wire clk_100mhz;
  wire crs;
  wire [12:0]ddr3_addr;
  wire [2:0]ddr3_ba;
  wire ddr3_cas_n;
  wire [0:0]ddr3_ck_n;
  wire [0:0]ddr3_ck_p;
  wire [0:0]ddr3_cke;
  wire [1:0]ddr3_dm;
  wire [15:0]ddr3_dq;
  wire [1:0]ddr3_dqs_n;
  wire [1:0]ddr3_dqs_p;
  wire [0:0]ddr3_odt;
  wire ddr3_ras_n;
  wire ddr3_reset_n;
  wire ddr3_we_n;
  wire [0:0]gpio_usb_int_tri_i;
  wire [31:0]gpio_usb_keycode_0_tri_o;
  wire [31:0]gpio_usb_keycode_1_tri_o;
  wire [0:0]gpio_usb_rst_tri_o;
  wire init_calib_complete;
  wire mdio_rtl_0_mdc;
  wire mdio_rtl_0_mdio_i;
  wire mdio_rtl_0_mdio_io;
  wire mdio_rtl_0_mdio_o;
  wire mdio_rtl_0_mdio_t;
  wire phy_clk;
  wire rx_er;
  wire [1:0]rxd;
  wire sys_rst;
  wire tx_en;
  wire [1:0]txd;
  wire uart_rxd;
  wire uart_txd;
  wire usb_spi_miso;
  wire usb_spi_mosi;
  wire usb_spi_sclk;
  wire [0:0]usb_spi_ss;

  bd bd_i
       (.HDMI_0_tmds_clk_n(HDMI_0_tmds_clk_n),
        .HDMI_0_tmds_clk_p(HDMI_0_tmds_clk_p),
        .HDMI_0_tmds_data_n(HDMI_0_tmds_data_n),
        .HDMI_0_tmds_data_p(HDMI_0_tmds_data_p),
        .clk_100mhz(clk_100mhz),
        .crs(crs),
        .ddr3_addr(ddr3_addr),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_dm(ddr3_dm),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ddr3_odt),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_we_n(ddr3_we_n),
        .gpio_usb_int_tri_i(gpio_usb_int_tri_i),
        .gpio_usb_keycode_0_tri_o(gpio_usb_keycode_0_tri_o),
        .gpio_usb_keycode_1_tri_o(gpio_usb_keycode_1_tri_o),
        .gpio_usb_rst_tri_o(gpio_usb_rst_tri_o),
        .init_calib_complete(init_calib_complete),
        .mdio_rtl_0_mdc(mdio_rtl_0_mdc),
        .mdio_rtl_0_mdio_i(mdio_rtl_0_mdio_i),
        .mdio_rtl_0_mdio_o(mdio_rtl_0_mdio_o),
        .mdio_rtl_0_mdio_t(mdio_rtl_0_mdio_t),
        .phy_clk(phy_clk),
        .rx_er(rx_er),
        .rxd(rxd),
        .sys_rst(sys_rst),
        .tx_en(tx_en),
        .txd(txd),
        .uart_rxd(uart_rxd),
        .uart_txd(uart_txd),
        .usb_spi_miso(usb_spi_miso),
        .usb_spi_mosi(usb_spi_mosi),
        .usb_spi_sclk(usb_spi_sclk),
        .usb_spi_ss(usb_spi_ss));
  IOBUF mdio_rtl_0_mdio_iobuf
       (.I(mdio_rtl_0_mdio_o),
        .IO(mdio_rtl_0_mdio_io),
        .O(mdio_rtl_0_mdio_i),
        .T(mdio_rtl_0_mdio_t));
endmodule
