`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2024 10:39:32 PM
// Design Name: 
// Module Name: mb_eth_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mb_eth_top(

    input logic clk_100mhz,
    input logic crs,
    input logic phy_clk,
//    input logic rx_er,
    input logic [1:0] rxd,
    input logic sys_rst,
    input logic uart_rxd,
    input logic usb_spi_miso,
    input logic [0:0] gpio_usb_int_tri_i,
    
    inout logic mdio_rtl_0_mdio_io,
    inout logic [15:0] ddr3_dq,
    inout logic [1:0] ddr3_dqs_n,
    inout logic [1:0] ddr3_dqs_p,
    
    output logic [12:0] ddr3_addr,
    output logic [2:0] ddr3_ba,
    output logic ddr3_cas_n,
    output logic [0:0] ddr3_ck_n,
    output logic [0:0] ddr3_ck_p,
    output logic [0:0] ddr3_cke,
    output logic [1:0] ddr3_dm,
    output logic [0:0] ddr3_odt,
    output logic ddr3_ras_n,
    output logic ddr3_reset_n,
    output logic ddr3_we_n,
//    output logic init_calib_complete,
    output logic mdio_rtl_0_mdc,
    output logic tx_en,
    output logic [1:0] txd,
    output logic uart_txd,
    output logic usb_spi_mosi,
    output logic usb_spi_sclk,
    output logic [0:0] usb_spi_ss,
    output logic [0:0] gpio_usb_rst_tri_o,
    output logic HDMI_0_tmds_clk_n,
    output logic HDMI_0_tmds_clk_p,
    output logic [2:0]HDMI_0_tmds_data_n,
    output logic [2:0]HDMI_0_tmds_data_p

    );
    
    logic init_calib_complete, rx_er;
    logic [31:0] gpio_usb_keycode_0_tri_o;
    logic [31:0] gpio_usb_keycode_1_tri_o;
    assign rx_er = 1'b0;
    bd_wrapper fml(.*);
//      bd_1_wrapper fml2(.*);
endmodule
