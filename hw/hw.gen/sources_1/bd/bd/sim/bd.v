//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Wed May  1 23:08:17 2024
//Host        : killer_hasher running 64-bit major release  (build 9200)
//Command     : generate_target bd.bd
//Design      : bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=24,numReposBlks=23,numNonXlnxBlks=1,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=8,da_board_cnt=6,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd.hwdef" *) 
module bd
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
    mdio_rtl_0_mdio_i,
    mdio_rtl_0_mdio_o,
    mdio_rtl_0_mdio_t,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI_0 TMDS_CLK_N" *) output HDMI_0_tmds_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI_0 TMDS_CLK_P" *) output HDMI_0_tmds_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI_0 TMDS_DATA_N" *) output [2:0]HDMI_0_tmds_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 HDMI_0 TMDS_DATA_P" *) output [2:0]HDMI_0_tmds_data_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN bd_clk_100mhz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100mhz;
  input crs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [12:0]ddr3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 BA" *) output [2:0]ddr3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CAS_N" *) output ddr3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_N" *) output [0:0]ddr3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CK_P" *) output [0:0]ddr3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 CKE" *) output [0:0]ddr3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DM" *) output [1:0]ddr3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQ" *) inout [15:0]ddr3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_N" *) inout [1:0]ddr3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 DQS_P" *) inout [1:0]ddr3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 ODT" *) output [0:0]ddr3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RAS_N" *) output ddr3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 RESET_N" *) output ddr3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr3 WE_N" *) output ddr3_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_usb_int TRI_I" *) input [0:0]gpio_usb_int_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_usb_keycode_0 TRI_O" *) output [31:0]gpio_usb_keycode_0_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_usb_keycode_1 TRI_O" *) output [31:0]gpio_usb_keycode_1_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 gpio_usb_rst TRI_O" *) output [0:0]gpio_usb_rst_tri_o;
  output init_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_rtl_0 MDC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mdio_rtl_0, CAN_DEBUG false" *) output mdio_rtl_0_mdc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_rtl_0 MDIO_I" *) input mdio_rtl_0_mdio_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_rtl_0 MDIO_O" *) output mdio_rtl_0_mdio_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mdio:1.0 mdio_rtl_0 MDIO_T" *) output mdio_rtl_0_mdio_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PHY_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PHY_CLK, CLK_DOMAIN bd_phy_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input phy_clk;
  input rx_er;
  input [1:0]rxd;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input sys_rst;
  output tx_en;
  output [1:0]txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart RxD" *) input uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 uart TxD" *) output uart_txd;
  input usb_spi_miso;
  output usb_spi_mosi;
  output usb_spi_sclk;
  output [0:0]usb_spi_ss;

  wire axi_ethernetlite_0_MDIO_MDC;
  wire axi_ethernetlite_0_MDIO_MDIO_I;
  wire axi_ethernetlite_0_MDIO_MDIO_O;
  wire axi_ethernetlite_0_MDIO_MDIO_T;
  wire axi_ethernetlite_0_ip2intc_irpt;
  wire axi_ethernetlite_0_phy_rst_n;
  wire [3:0]axi_ethernetlite_0_phy_tx_data;
  wire axi_ethernetlite_0_phy_tx_en;
  wire axi_intc_0_interrupt_INTERRUPT;
  wire [26:0]axi_smc_M00_AXI_ARADDR;
  wire [1:0]axi_smc_M00_AXI_ARBURST;
  wire [3:0]axi_smc_M00_AXI_ARCACHE;
  wire [7:0]axi_smc_M00_AXI_ARLEN;
  wire [0:0]axi_smc_M00_AXI_ARLOCK;
  wire [2:0]axi_smc_M00_AXI_ARPROT;
  wire [3:0]axi_smc_M00_AXI_ARQOS;
  wire axi_smc_M00_AXI_ARREADY;
  wire [2:0]axi_smc_M00_AXI_ARSIZE;
  wire axi_smc_M00_AXI_ARVALID;
  wire [26:0]axi_smc_M00_AXI_AWADDR;
  wire [1:0]axi_smc_M00_AXI_AWBURST;
  wire [3:0]axi_smc_M00_AXI_AWCACHE;
  wire [7:0]axi_smc_M00_AXI_AWLEN;
  wire [0:0]axi_smc_M00_AXI_AWLOCK;
  wire [2:0]axi_smc_M00_AXI_AWPROT;
  wire [3:0]axi_smc_M00_AXI_AWQOS;
  wire axi_smc_M00_AXI_AWREADY;
  wire [2:0]axi_smc_M00_AXI_AWSIZE;
  wire axi_smc_M00_AXI_AWVALID;
  wire axi_smc_M00_AXI_BREADY;
  wire [1:0]axi_smc_M00_AXI_BRESP;
  wire axi_smc_M00_AXI_BVALID;
  wire [63:0]axi_smc_M00_AXI_RDATA;
  wire axi_smc_M00_AXI_RLAST;
  wire axi_smc_M00_AXI_RREADY;
  wire [1:0]axi_smc_M00_AXI_RRESP;
  wire axi_smc_M00_AXI_RVALID;
  wire [63:0]axi_smc_M00_AXI_WDATA;
  wire axi_smc_M00_AXI_WLAST;
  wire axi_smc_M00_AXI_WREADY;
  wire [7:0]axi_smc_M00_AXI_WSTRB;
  wire axi_smc_M00_AXI_WVALID;
  wire [3:0]axi_smc_M01_AXI_ARADDR;
  wire axi_smc_M01_AXI_ARREADY;
  wire axi_smc_M01_AXI_ARVALID;
  wire [3:0]axi_smc_M01_AXI_AWADDR;
  wire axi_smc_M01_AXI_AWREADY;
  wire axi_smc_M01_AXI_AWVALID;
  wire axi_smc_M01_AXI_BREADY;
  wire [1:0]axi_smc_M01_AXI_BRESP;
  wire axi_smc_M01_AXI_BVALID;
  wire [31:0]axi_smc_M01_AXI_RDATA;
  wire axi_smc_M01_AXI_RREADY;
  wire [1:0]axi_smc_M01_AXI_RRESP;
  wire axi_smc_M01_AXI_RVALID;
  wire [31:0]axi_smc_M01_AXI_WDATA;
  wire axi_smc_M01_AXI_WREADY;
  wire [3:0]axi_smc_M01_AXI_WSTRB;
  wire axi_smc_M01_AXI_WVALID;
  wire [8:0]axi_smc_M02_AXI_ARADDR;
  wire axi_smc_M02_AXI_ARREADY;
  wire axi_smc_M02_AXI_ARVALID;
  wire [8:0]axi_smc_M02_AXI_AWADDR;
  wire axi_smc_M02_AXI_AWREADY;
  wire axi_smc_M02_AXI_AWVALID;
  wire axi_smc_M02_AXI_BREADY;
  wire [1:0]axi_smc_M02_AXI_BRESP;
  wire axi_smc_M02_AXI_BVALID;
  wire [31:0]axi_smc_M02_AXI_RDATA;
  wire axi_smc_M02_AXI_RREADY;
  wire [1:0]axi_smc_M02_AXI_RRESP;
  wire axi_smc_M02_AXI_RVALID;
  wire [31:0]axi_smc_M02_AXI_WDATA;
  wire axi_smc_M02_AXI_WREADY;
  wire [3:0]axi_smc_M02_AXI_WSTRB;
  wire axi_smc_M02_AXI_WVALID;
  wire [12:0]axi_smc_M03_AXI_ARADDR;
  wire axi_smc_M03_AXI_ARREADY;
  wire axi_smc_M03_AXI_ARVALID;
  wire [12:0]axi_smc_M03_AXI_AWADDR;
  wire axi_smc_M03_AXI_AWREADY;
  wire axi_smc_M03_AXI_AWVALID;
  wire axi_smc_M03_AXI_BREADY;
  wire [1:0]axi_smc_M03_AXI_BRESP;
  wire axi_smc_M03_AXI_BVALID;
  wire [31:0]axi_smc_M03_AXI_RDATA;
  wire axi_smc_M03_AXI_RREADY;
  wire [1:0]axi_smc_M03_AXI_RRESP;
  wire axi_smc_M03_AXI_RVALID;
  wire [31:0]axi_smc_M03_AXI_WDATA;
  wire axi_smc_M03_AXI_WREADY;
  wire [3:0]axi_smc_M03_AXI_WSTRB;
  wire axi_smc_M03_AXI_WVALID;
  wire [4:0]axi_smc_M04_AXI_ARADDR;
  wire axi_smc_M04_AXI_ARREADY;
  wire axi_smc_M04_AXI_ARVALID;
  wire [4:0]axi_smc_M04_AXI_AWADDR;
  wire axi_smc_M04_AXI_AWREADY;
  wire axi_smc_M04_AXI_AWVALID;
  wire axi_smc_M04_AXI_BREADY;
  wire [1:0]axi_smc_M04_AXI_BRESP;
  wire axi_smc_M04_AXI_BVALID;
  wire [31:0]axi_smc_M04_AXI_RDATA;
  wire axi_smc_M04_AXI_RREADY;
  wire [1:0]axi_smc_M04_AXI_RRESP;
  wire axi_smc_M04_AXI_RVALID;
  wire [31:0]axi_smc_M04_AXI_WDATA;
  wire axi_smc_M04_AXI_WREADY;
  wire [3:0]axi_smc_M04_AXI_WSTRB;
  wire axi_smc_M04_AXI_WVALID;
  wire [8:0]axi_smc_M05_AXI_ARADDR;
  wire axi_smc_M05_AXI_ARREADY;
  wire axi_smc_M05_AXI_ARVALID;
  wire [8:0]axi_smc_M05_AXI_AWADDR;
  wire axi_smc_M05_AXI_AWREADY;
  wire axi_smc_M05_AXI_AWVALID;
  wire axi_smc_M05_AXI_BREADY;
  wire [1:0]axi_smc_M05_AXI_BRESP;
  wire axi_smc_M05_AXI_BVALID;
  wire [31:0]axi_smc_M05_AXI_RDATA;
  wire axi_smc_M05_AXI_RREADY;
  wire [1:0]axi_smc_M05_AXI_RRESP;
  wire axi_smc_M05_AXI_RVALID;
  wire [31:0]axi_smc_M05_AXI_WDATA;
  wire axi_smc_M05_AXI_WREADY;
  wire [3:0]axi_smc_M05_AXI_WSTRB;
  wire axi_smc_M05_AXI_WVALID;
  wire [8:0]axi_smc_M06_AXI_ARADDR;
  wire axi_smc_M06_AXI_ARREADY;
  wire axi_smc_M06_AXI_ARVALID;
  wire [8:0]axi_smc_M06_AXI_AWADDR;
  wire axi_smc_M06_AXI_AWREADY;
  wire axi_smc_M06_AXI_AWVALID;
  wire axi_smc_M06_AXI_BREADY;
  wire [1:0]axi_smc_M06_AXI_BRESP;
  wire axi_smc_M06_AXI_BVALID;
  wire [31:0]axi_smc_M06_AXI_RDATA;
  wire axi_smc_M06_AXI_RREADY;
  wire [1:0]axi_smc_M06_AXI_RRESP;
  wire axi_smc_M06_AXI_RVALID;
  wire [31:0]axi_smc_M06_AXI_WDATA;
  wire axi_smc_M06_AXI_WREADY;
  wire [3:0]axi_smc_M06_AXI_WSTRB;
  wire axi_smc_M06_AXI_WVALID;
  wire [8:0]axi_smc_M07_AXI_ARADDR;
  wire axi_smc_M07_AXI_ARREADY;
  wire axi_smc_M07_AXI_ARVALID;
  wire [8:0]axi_smc_M07_AXI_AWADDR;
  wire axi_smc_M07_AXI_AWREADY;
  wire axi_smc_M07_AXI_AWVALID;
  wire axi_smc_M07_AXI_BREADY;
  wire [1:0]axi_smc_M07_AXI_BRESP;
  wire axi_smc_M07_AXI_BVALID;
  wire [31:0]axi_smc_M07_AXI_RDATA;
  wire axi_smc_M07_AXI_RREADY;
  wire [1:0]axi_smc_M07_AXI_RRESP;
  wire axi_smc_M07_AXI_RVALID;
  wire [31:0]axi_smc_M07_AXI_WDATA;
  wire axi_smc_M07_AXI_WREADY;
  wire [3:0]axi_smc_M07_AXI_WSTRB;
  wire axi_smc_M07_AXI_WVALID;
  wire [6:0]axi_smc_M08_AXI_ARADDR;
  wire axi_smc_M08_AXI_ARREADY;
  wire axi_smc_M08_AXI_ARVALID;
  wire [6:0]axi_smc_M08_AXI_AWADDR;
  wire axi_smc_M08_AXI_AWREADY;
  wire axi_smc_M08_AXI_AWVALID;
  wire axi_smc_M08_AXI_BREADY;
  wire [1:0]axi_smc_M08_AXI_BRESP;
  wire axi_smc_M08_AXI_BVALID;
  wire [31:0]axi_smc_M08_AXI_RDATA;
  wire axi_smc_M08_AXI_RREADY;
  wire [1:0]axi_smc_M08_AXI_RRESP;
  wire axi_smc_M08_AXI_RVALID;
  wire [31:0]axi_smc_M08_AXI_WDATA;
  wire axi_smc_M08_AXI_WREADY;
  wire [3:0]axi_smc_M08_AXI_WSTRB;
  wire axi_smc_M08_AXI_WVALID;
  wire [13:0]axi_smc_M09_AXI_ARADDR;
  wire [2:0]axi_smc_M09_AXI_ARPROT;
  wire axi_smc_M09_AXI_ARREADY;
  wire axi_smc_M09_AXI_ARVALID;
  wire [13:0]axi_smc_M09_AXI_AWADDR;
  wire [2:0]axi_smc_M09_AXI_AWPROT;
  wire axi_smc_M09_AXI_AWREADY;
  wire axi_smc_M09_AXI_AWVALID;
  wire axi_smc_M09_AXI_BREADY;
  wire [1:0]axi_smc_M09_AXI_BRESP;
  wire axi_smc_M09_AXI_BVALID;
  wire [31:0]axi_smc_M09_AXI_RDATA;
  wire axi_smc_M09_AXI_RREADY;
  wire [1:0]axi_smc_M09_AXI_RRESP;
  wire axi_smc_M09_AXI_RVALID;
  wire [31:0]axi_smc_M09_AXI_WDATA;
  wire axi_smc_M09_AXI_WREADY;
  wire [3:0]axi_smc_M09_AXI_WSTRB;
  wire axi_smc_M09_AXI_WVALID;
  wire axi_timer_0_interrupt;
  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_interrupt;
  wire clk_in1_0_1;
  wire clk_wiz_1_clk_out2;
  wire clk_wiz_1_clk_out3;
  wire clk_wiz_1_locked;
  wire crs_1;
  wire [0:0]gpio_usb_int_GPIO_TRI_I;
  wire gpio_usb_int_ip2intc_irpt;
  wire [31:0]gpio_usb_keycode_GPIO2_TRI_O;
  wire [31:0]gpio_usb_keycode_GPIO_TRI_O;
  wire [0:0]gpio_usb_rst_GPIO_TRI_O;
  wire hdmi_text_controller_0_HDMI_TMDS_CLK_N;
  wire hdmi_text_controller_0_HDMI_TMDS_CLK_P;
  wire [2:0]hdmi_text_controller_0_HDMI_TMDS_DATA_N;
  wire [2:0]hdmi_text_controller_0_HDMI_TMDS_DATA_P;
  wire mdm_1_debug_sys_rst;
  wire microblaze_0_Clk;
  wire [31:0]microblaze_0_M_AXI_DC_ARADDR;
  wire [1:0]microblaze_0_M_AXI_DC_ARBURST;
  wire [3:0]microblaze_0_M_AXI_DC_ARCACHE;
  wire [7:0]microblaze_0_M_AXI_DC_ARLEN;
  wire microblaze_0_M_AXI_DC_ARLOCK;
  wire [2:0]microblaze_0_M_AXI_DC_ARPROT;
  wire [3:0]microblaze_0_M_AXI_DC_ARQOS;
  wire microblaze_0_M_AXI_DC_ARREADY;
  wire [2:0]microblaze_0_M_AXI_DC_ARSIZE;
  wire microblaze_0_M_AXI_DC_ARVALID;
  wire [31:0]microblaze_0_M_AXI_DC_AWADDR;
  wire [1:0]microblaze_0_M_AXI_DC_AWBURST;
  wire [3:0]microblaze_0_M_AXI_DC_AWCACHE;
  wire [7:0]microblaze_0_M_AXI_DC_AWLEN;
  wire microblaze_0_M_AXI_DC_AWLOCK;
  wire [2:0]microblaze_0_M_AXI_DC_AWPROT;
  wire [3:0]microblaze_0_M_AXI_DC_AWQOS;
  wire microblaze_0_M_AXI_DC_AWREADY;
  wire [2:0]microblaze_0_M_AXI_DC_AWSIZE;
  wire microblaze_0_M_AXI_DC_AWVALID;
  wire microblaze_0_M_AXI_DC_BREADY;
  wire [1:0]microblaze_0_M_AXI_DC_BRESP;
  wire microblaze_0_M_AXI_DC_BVALID;
  wire [31:0]microblaze_0_M_AXI_DC_RDATA;
  wire microblaze_0_M_AXI_DC_RLAST;
  wire microblaze_0_M_AXI_DC_RREADY;
  wire [1:0]microblaze_0_M_AXI_DC_RRESP;
  wire microblaze_0_M_AXI_DC_RVALID;
  wire [31:0]microblaze_0_M_AXI_DC_WDATA;
  wire microblaze_0_M_AXI_DC_WLAST;
  wire microblaze_0_M_AXI_DC_WREADY;
  wire [3:0]microblaze_0_M_AXI_DC_WSTRB;
  wire microblaze_0_M_AXI_DC_WVALID;
  wire [31:0]microblaze_0_M_AXI_DP_ARADDR;
  wire [2:0]microblaze_0_M_AXI_DP_ARPROT;
  wire microblaze_0_M_AXI_DP_ARREADY;
  wire microblaze_0_M_AXI_DP_ARVALID;
  wire [31:0]microblaze_0_M_AXI_DP_AWADDR;
  wire [2:0]microblaze_0_M_AXI_DP_AWPROT;
  wire microblaze_0_M_AXI_DP_AWREADY;
  wire microblaze_0_M_AXI_DP_AWVALID;
  wire microblaze_0_M_AXI_DP_BREADY;
  wire [1:0]microblaze_0_M_AXI_DP_BRESP;
  wire microblaze_0_M_AXI_DP_BVALID;
  wire [31:0]microblaze_0_M_AXI_DP_RDATA;
  wire microblaze_0_M_AXI_DP_RREADY;
  wire [1:0]microblaze_0_M_AXI_DP_RRESP;
  wire microblaze_0_M_AXI_DP_RVALID;
  wire [31:0]microblaze_0_M_AXI_DP_WDATA;
  wire microblaze_0_M_AXI_DP_WREADY;
  wire [3:0]microblaze_0_M_AXI_DP_WSTRB;
  wire microblaze_0_M_AXI_DP_WVALID;
  wire [31:0]microblaze_0_M_AXI_IC_ARADDR;
  wire [1:0]microblaze_0_M_AXI_IC_ARBURST;
  wire [3:0]microblaze_0_M_AXI_IC_ARCACHE;
  wire [7:0]microblaze_0_M_AXI_IC_ARLEN;
  wire microblaze_0_M_AXI_IC_ARLOCK;
  wire [2:0]microblaze_0_M_AXI_IC_ARPROT;
  wire [3:0]microblaze_0_M_AXI_IC_ARQOS;
  wire microblaze_0_M_AXI_IC_ARREADY;
  wire [2:0]microblaze_0_M_AXI_IC_ARSIZE;
  wire microblaze_0_M_AXI_IC_ARVALID;
  wire [31:0]microblaze_0_M_AXI_IC_RDATA;
  wire microblaze_0_M_AXI_IC_RLAST;
  wire microblaze_0_M_AXI_IC_RREADY;
  wire [1:0]microblaze_0_M_AXI_IC_RRESP;
  wire microblaze_0_M_AXI_IC_RVALID;
  wire microblaze_0_debug_CAPTURE;
  wire microblaze_0_debug_CLK;
  wire microblaze_0_debug_DISABLE;
  wire [0:7]microblaze_0_debug_REG_EN;
  wire microblaze_0_debug_RST;
  wire microblaze_0_debug_SHIFT;
  wire microblaze_0_debug_TDI;
  wire microblaze_0_debug_TDO;
  wire microblaze_0_debug_UPDATE;
  wire [0:31]microblaze_0_dlmb_1_ABUS;
  wire microblaze_0_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_1_BE;
  wire microblaze_0_dlmb_1_CE;
  wire [0:31]microblaze_0_dlmb_1_READDBUS;
  wire microblaze_0_dlmb_1_READSTROBE;
  wire microblaze_0_dlmb_1_READY;
  wire microblaze_0_dlmb_1_UE;
  wire microblaze_0_dlmb_1_WAIT;
  wire [0:31]microblaze_0_dlmb_1_WRITEDBUS;
  wire microblaze_0_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_1_ABUS;
  wire microblaze_0_ilmb_1_ADDRSTROBE;
  wire microblaze_0_ilmb_1_CE;
  wire [0:31]microblaze_0_ilmb_1_READDBUS;
  wire microblaze_0_ilmb_1_READSTROBE;
  wire microblaze_0_ilmb_1_READY;
  wire microblaze_0_ilmb_1_UE;
  wire microblaze_0_ilmb_1_WAIT;
  wire [12:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [1:0]mig_7series_0_DDR3_DM;
  wire [15:0]mig_7series_0_DDR3_DQ;
  wire [1:0]mig_7series_0_DDR3_DQS_N;
  wire [1:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire phy_clk_1;
  wire reset_rtl_0_1;
  wire [0:0]rst_clk_wiz_1_100M_bus_struct_reset;
  wire rst_clk_wiz_1_100M_mb_reset;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn;
  wire [0:0]rst_mig_7series_0_166M_peripheral_aresetn;
  wire rx_er_1;
  wire [1:0]rxd_1;
  wire spi_usb_io0_o;
  wire spi_usb_ip2intc_irpt;
  wire spi_usb_sck_o;
  wire [0:0]spi_usb_ss_o;
  wire usb_spi_miso_1;
  wire util_mii_to_rmii_0_mii_col;
  wire util_mii_to_rmii_0_mii_crs;
  wire util_mii_to_rmii_0_mii_rx_clk;
  wire util_mii_to_rmii_0_mii_rx_dv;
  wire util_mii_to_rmii_0_mii_rx_er;
  wire [3:0]util_mii_to_rmii_0_mii_rxd;
  wire util_mii_to_rmii_0_mii_tx_clk;
  wire util_mii_to_rmii_0_rmii_tx_en;
  wire [1:0]util_mii_to_rmii_0_rmii_txd;
  wire [4:0]xlconcat_0_dout;

  assign HDMI_0_tmds_clk_n = hdmi_text_controller_0_HDMI_TMDS_CLK_N;
  assign HDMI_0_tmds_clk_p = hdmi_text_controller_0_HDMI_TMDS_CLK_P;
  assign HDMI_0_tmds_data_n[2:0] = hdmi_text_controller_0_HDMI_TMDS_DATA_N;
  assign HDMI_0_tmds_data_p[2:0] = hdmi_text_controller_0_HDMI_TMDS_DATA_P;
  assign axi_ethernetlite_0_MDIO_MDIO_I = mdio_rtl_0_mdio_i;
  assign axi_uartlite_0_UART_RxD = uart_rxd;
  assign clk_in1_0_1 = clk_100mhz;
  assign crs_1 = crs;
  assign ddr3_addr[12:0] = mig_7series_0_DDR3_ADDR;
  assign ddr3_ba[2:0] = mig_7series_0_DDR3_BA;
  assign ddr3_cas_n = mig_7series_0_DDR3_CAS_N;
  assign ddr3_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign ddr3_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign ddr3_cke[0] = mig_7series_0_DDR3_CKE;
  assign ddr3_dm[1:0] = mig_7series_0_DDR3_DM;
  assign ddr3_odt[0] = mig_7series_0_DDR3_ODT;
  assign ddr3_ras_n = mig_7series_0_DDR3_RAS_N;
  assign ddr3_reset_n = mig_7series_0_DDR3_RESET_N;
  assign ddr3_we_n = mig_7series_0_DDR3_WE_N;
  assign gpio_usb_int_GPIO_TRI_I = gpio_usb_int_tri_i[0];
  assign gpio_usb_keycode_0_tri_o[31:0] = gpio_usb_keycode_GPIO_TRI_O;
  assign gpio_usb_keycode_1_tri_o[31:0] = gpio_usb_keycode_GPIO2_TRI_O;
  assign gpio_usb_rst_tri_o[0] = gpio_usb_rst_GPIO_TRI_O;
  assign init_calib_complete = mig_7series_0_init_calib_complete;
  assign mdio_rtl_0_mdc = axi_ethernetlite_0_MDIO_MDC;
  assign mdio_rtl_0_mdio_o = axi_ethernetlite_0_MDIO_MDIO_O;
  assign mdio_rtl_0_mdio_t = axi_ethernetlite_0_MDIO_MDIO_T;
  assign phy_clk_1 = phy_clk;
  assign reset_rtl_0_1 = sys_rst;
  assign rx_er_1 = rx_er;
  assign rxd_1 = rxd[1:0];
  assign tx_en = util_mii_to_rmii_0_rmii_tx_en;
  assign txd[1:0] = util_mii_to_rmii_0_rmii_txd;
  assign uart_txd = axi_uartlite_0_UART_TxD;
  assign usb_spi_miso_1 = usb_spi_miso;
  assign usb_spi_mosi = spi_usb_io0_o;
  assign usb_spi_sclk = spi_usb_sck_o;
  assign usb_spi_ss[0] = spi_usb_ss_o;
  bd_axi_ethernetlite_0_0 axi_ethernetlite_0
       (.ip2intc_irpt(axi_ethernetlite_0_ip2intc_irpt),
        .phy_col(util_mii_to_rmii_0_mii_col),
        .phy_crs(util_mii_to_rmii_0_mii_crs),
        .phy_dv(util_mii_to_rmii_0_mii_rx_dv),
        .phy_mdc(axi_ethernetlite_0_MDIO_MDC),
        .phy_mdio_i(axi_ethernetlite_0_MDIO_MDIO_I),
        .phy_mdio_o(axi_ethernetlite_0_MDIO_MDIO_O),
        .phy_mdio_t(axi_ethernetlite_0_MDIO_MDIO_T),
        .phy_rst_n(axi_ethernetlite_0_phy_rst_n),
        .phy_rx_clk(util_mii_to_rmii_0_mii_rx_clk),
        .phy_rx_data(util_mii_to_rmii_0_mii_rxd),
        .phy_rx_er(util_mii_to_rmii_0_mii_rx_er),
        .phy_tx_clk(util_mii_to_rmii_0_mii_tx_clk),
        .phy_tx_data(axi_ethernetlite_0_phy_tx_data),
        .phy_tx_en(axi_ethernetlite_0_phy_tx_en),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_smc_M03_AXI_ARADDR),
        .s_axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M03_AXI_AWADDR),
        .s_axi_awready(axi_smc_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M03_AXI_AWVALID),
        .s_axi_bready(axi_smc_M03_AXI_BREADY),
        .s_axi_bresp(axi_smc_M03_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M03_AXI_BVALID),
        .s_axi_rdata(axi_smc_M03_AXI_RDATA),
        .s_axi_rready(axi_smc_M03_AXI_RREADY),
        .s_axi_rresp(axi_smc_M03_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M03_AXI_RVALID),
        .s_axi_wdata(axi_smc_M03_AXI_WDATA),
        .s_axi_wready(axi_smc_M03_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M03_AXI_WVALID));
  bd_axi_intc_0_0 axi_intc_0
       (.intr(xlconcat_0_dout),
        .irq(axi_intc_0_interrupt_INTERRUPT),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_smc_M02_AXI_ARADDR),
        .s_axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M02_AXI_AWADDR),
        .s_axi_awready(axi_smc_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M02_AXI_AWVALID),
        .s_axi_bready(axi_smc_M02_AXI_BREADY),
        .s_axi_bresp(axi_smc_M02_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M02_AXI_BVALID),
        .s_axi_rdata(axi_smc_M02_AXI_RDATA),
        .s_axi_rready(axi_smc_M02_AXI_RREADY),
        .s_axi_rresp(axi_smc_M02_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M02_AXI_RVALID),
        .s_axi_wdata(axi_smc_M02_AXI_WDATA),
        .s_axi_wready(axi_smc_M02_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M02_AXI_WVALID));
  bd_axi_smc_0 axi_smc
       (.M00_AXI_araddr(axi_smc_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_smc_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_smc_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_smc_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_smc_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_smc_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_smc_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_smc_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_smc_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_smc_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_smc_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_smc_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_smc_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_smc_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_smc_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_smc_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_smc_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_smc_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_smc_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_smc_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_smc_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_smc_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_smc_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_smc_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_smc_M00_AXI_RLAST),
        .M00_AXI_rready(axi_smc_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_smc_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_smc_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_smc_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_smc_M00_AXI_WLAST),
        .M00_AXI_wready(axi_smc_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_smc_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_smc_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_smc_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_smc_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_smc_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_smc_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_smc_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_smc_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_smc_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_smc_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_smc_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_smc_M01_AXI_RDATA),
        .M01_AXI_rready(axi_smc_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_smc_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_smc_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_smc_M01_AXI_WDATA),
        .M01_AXI_wready(axi_smc_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_smc_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_smc_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_smc_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_smc_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_smc_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_smc_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_smc_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_smc_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_smc_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_smc_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_smc_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_smc_M02_AXI_RDATA),
        .M02_AXI_rready(axi_smc_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_smc_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_smc_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_smc_M02_AXI_WDATA),
        .M02_AXI_wready(axi_smc_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_smc_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_smc_M02_AXI_WVALID),
        .M03_AXI_araddr(axi_smc_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_smc_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_smc_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_smc_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_smc_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_smc_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_smc_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_smc_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_smc_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_smc_M03_AXI_RDATA),
        .M03_AXI_rready(axi_smc_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_smc_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_smc_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_smc_M03_AXI_WDATA),
        .M03_AXI_wready(axi_smc_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_smc_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_smc_M03_AXI_WVALID),
        .M04_AXI_araddr(axi_smc_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_smc_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_smc_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_smc_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_smc_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_smc_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_smc_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_smc_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_smc_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_smc_M04_AXI_RDATA),
        .M04_AXI_rready(axi_smc_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_smc_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_smc_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_smc_M04_AXI_WDATA),
        .M04_AXI_wready(axi_smc_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_smc_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_smc_M04_AXI_WVALID),
        .M05_AXI_araddr(axi_smc_M05_AXI_ARADDR),
        .M05_AXI_arready(axi_smc_M05_AXI_ARREADY),
        .M05_AXI_arvalid(axi_smc_M05_AXI_ARVALID),
        .M05_AXI_awaddr(axi_smc_M05_AXI_AWADDR),
        .M05_AXI_awready(axi_smc_M05_AXI_AWREADY),
        .M05_AXI_awvalid(axi_smc_M05_AXI_AWVALID),
        .M05_AXI_bready(axi_smc_M05_AXI_BREADY),
        .M05_AXI_bresp(axi_smc_M05_AXI_BRESP),
        .M05_AXI_bvalid(axi_smc_M05_AXI_BVALID),
        .M05_AXI_rdata(axi_smc_M05_AXI_RDATA),
        .M05_AXI_rready(axi_smc_M05_AXI_RREADY),
        .M05_AXI_rresp(axi_smc_M05_AXI_RRESP),
        .M05_AXI_rvalid(axi_smc_M05_AXI_RVALID),
        .M05_AXI_wdata(axi_smc_M05_AXI_WDATA),
        .M05_AXI_wready(axi_smc_M05_AXI_WREADY),
        .M05_AXI_wstrb(axi_smc_M05_AXI_WSTRB),
        .M05_AXI_wvalid(axi_smc_M05_AXI_WVALID),
        .M06_AXI_araddr(axi_smc_M06_AXI_ARADDR),
        .M06_AXI_arready(axi_smc_M06_AXI_ARREADY),
        .M06_AXI_arvalid(axi_smc_M06_AXI_ARVALID),
        .M06_AXI_awaddr(axi_smc_M06_AXI_AWADDR),
        .M06_AXI_awready(axi_smc_M06_AXI_AWREADY),
        .M06_AXI_awvalid(axi_smc_M06_AXI_AWVALID),
        .M06_AXI_bready(axi_smc_M06_AXI_BREADY),
        .M06_AXI_bresp(axi_smc_M06_AXI_BRESP),
        .M06_AXI_bvalid(axi_smc_M06_AXI_BVALID),
        .M06_AXI_rdata(axi_smc_M06_AXI_RDATA),
        .M06_AXI_rready(axi_smc_M06_AXI_RREADY),
        .M06_AXI_rresp(axi_smc_M06_AXI_RRESP),
        .M06_AXI_rvalid(axi_smc_M06_AXI_RVALID),
        .M06_AXI_wdata(axi_smc_M06_AXI_WDATA),
        .M06_AXI_wready(axi_smc_M06_AXI_WREADY),
        .M06_AXI_wstrb(axi_smc_M06_AXI_WSTRB),
        .M06_AXI_wvalid(axi_smc_M06_AXI_WVALID),
        .M07_AXI_araddr(axi_smc_M07_AXI_ARADDR),
        .M07_AXI_arready(axi_smc_M07_AXI_ARREADY),
        .M07_AXI_arvalid(axi_smc_M07_AXI_ARVALID),
        .M07_AXI_awaddr(axi_smc_M07_AXI_AWADDR),
        .M07_AXI_awready(axi_smc_M07_AXI_AWREADY),
        .M07_AXI_awvalid(axi_smc_M07_AXI_AWVALID),
        .M07_AXI_bready(axi_smc_M07_AXI_BREADY),
        .M07_AXI_bresp(axi_smc_M07_AXI_BRESP),
        .M07_AXI_bvalid(axi_smc_M07_AXI_BVALID),
        .M07_AXI_rdata(axi_smc_M07_AXI_RDATA),
        .M07_AXI_rready(axi_smc_M07_AXI_RREADY),
        .M07_AXI_rresp(axi_smc_M07_AXI_RRESP),
        .M07_AXI_rvalid(axi_smc_M07_AXI_RVALID),
        .M07_AXI_wdata(axi_smc_M07_AXI_WDATA),
        .M07_AXI_wready(axi_smc_M07_AXI_WREADY),
        .M07_AXI_wstrb(axi_smc_M07_AXI_WSTRB),
        .M07_AXI_wvalid(axi_smc_M07_AXI_WVALID),
        .M08_AXI_araddr(axi_smc_M08_AXI_ARADDR),
        .M08_AXI_arready(axi_smc_M08_AXI_ARREADY),
        .M08_AXI_arvalid(axi_smc_M08_AXI_ARVALID),
        .M08_AXI_awaddr(axi_smc_M08_AXI_AWADDR),
        .M08_AXI_awready(axi_smc_M08_AXI_AWREADY),
        .M08_AXI_awvalid(axi_smc_M08_AXI_AWVALID),
        .M08_AXI_bready(axi_smc_M08_AXI_BREADY),
        .M08_AXI_bresp(axi_smc_M08_AXI_BRESP),
        .M08_AXI_bvalid(axi_smc_M08_AXI_BVALID),
        .M08_AXI_rdata(axi_smc_M08_AXI_RDATA),
        .M08_AXI_rready(axi_smc_M08_AXI_RREADY),
        .M08_AXI_rresp(axi_smc_M08_AXI_RRESP),
        .M08_AXI_rvalid(axi_smc_M08_AXI_RVALID),
        .M08_AXI_wdata(axi_smc_M08_AXI_WDATA),
        .M08_AXI_wready(axi_smc_M08_AXI_WREADY),
        .M08_AXI_wstrb(axi_smc_M08_AXI_WSTRB),
        .M08_AXI_wvalid(axi_smc_M08_AXI_WVALID),
        .M09_AXI_araddr(axi_smc_M09_AXI_ARADDR),
        .M09_AXI_arprot(axi_smc_M09_AXI_ARPROT),
        .M09_AXI_arready(axi_smc_M09_AXI_ARREADY),
        .M09_AXI_arvalid(axi_smc_M09_AXI_ARVALID),
        .M09_AXI_awaddr(axi_smc_M09_AXI_AWADDR),
        .M09_AXI_awprot(axi_smc_M09_AXI_AWPROT),
        .M09_AXI_awready(axi_smc_M09_AXI_AWREADY),
        .M09_AXI_awvalid(axi_smc_M09_AXI_AWVALID),
        .M09_AXI_bready(axi_smc_M09_AXI_BREADY),
        .M09_AXI_bresp(axi_smc_M09_AXI_BRESP),
        .M09_AXI_bvalid(axi_smc_M09_AXI_BVALID),
        .M09_AXI_rdata(axi_smc_M09_AXI_RDATA),
        .M09_AXI_rready(axi_smc_M09_AXI_RREADY),
        .M09_AXI_rresp(axi_smc_M09_AXI_RRESP),
        .M09_AXI_rvalid(axi_smc_M09_AXI_RVALID),
        .M09_AXI_wdata(axi_smc_M09_AXI_WDATA),
        .M09_AXI_wready(axi_smc_M09_AXI_WREADY),
        .M09_AXI_wstrb(axi_smc_M09_AXI_WSTRB),
        .M09_AXI_wvalid(axi_smc_M09_AXI_WVALID),
        .S00_AXI_araddr(microblaze_0_M_AXI_DC_ARADDR),
        .S00_AXI_arburst(microblaze_0_M_AXI_DC_ARBURST),
        .S00_AXI_arcache(microblaze_0_M_AXI_DC_ARCACHE),
        .S00_AXI_arlen(microblaze_0_M_AXI_DC_ARLEN),
        .S00_AXI_arlock(microblaze_0_M_AXI_DC_ARLOCK),
        .S00_AXI_arprot(microblaze_0_M_AXI_DC_ARPROT),
        .S00_AXI_arqos(microblaze_0_M_AXI_DC_ARQOS),
        .S00_AXI_arready(microblaze_0_M_AXI_DC_ARREADY),
        .S00_AXI_arsize(microblaze_0_M_AXI_DC_ARSIZE),
        .S00_AXI_arvalid(microblaze_0_M_AXI_DC_ARVALID),
        .S00_AXI_awaddr(microblaze_0_M_AXI_DC_AWADDR),
        .S00_AXI_awburst(microblaze_0_M_AXI_DC_AWBURST),
        .S00_AXI_awcache(microblaze_0_M_AXI_DC_AWCACHE),
        .S00_AXI_awlen(microblaze_0_M_AXI_DC_AWLEN),
        .S00_AXI_awlock(microblaze_0_M_AXI_DC_AWLOCK),
        .S00_AXI_awprot(microblaze_0_M_AXI_DC_AWPROT),
        .S00_AXI_awqos(microblaze_0_M_AXI_DC_AWQOS),
        .S00_AXI_awready(microblaze_0_M_AXI_DC_AWREADY),
        .S00_AXI_awsize(microblaze_0_M_AXI_DC_AWSIZE),
        .S00_AXI_awvalid(microblaze_0_M_AXI_DC_AWVALID),
        .S00_AXI_bready(microblaze_0_M_AXI_DC_BREADY),
        .S00_AXI_bresp(microblaze_0_M_AXI_DC_BRESP),
        .S00_AXI_bvalid(microblaze_0_M_AXI_DC_BVALID),
        .S00_AXI_rdata(microblaze_0_M_AXI_DC_RDATA),
        .S00_AXI_rlast(microblaze_0_M_AXI_DC_RLAST),
        .S00_AXI_rready(microblaze_0_M_AXI_DC_RREADY),
        .S00_AXI_rresp(microblaze_0_M_AXI_DC_RRESP),
        .S00_AXI_rvalid(microblaze_0_M_AXI_DC_RVALID),
        .S00_AXI_wdata(microblaze_0_M_AXI_DC_WDATA),
        .S00_AXI_wlast(microblaze_0_M_AXI_DC_WLAST),
        .S00_AXI_wready(microblaze_0_M_AXI_DC_WREADY),
        .S00_AXI_wstrb(microblaze_0_M_AXI_DC_WSTRB),
        .S00_AXI_wvalid(microblaze_0_M_AXI_DC_WVALID),
        .S01_AXI_araddr(microblaze_0_M_AXI_IC_ARADDR),
        .S01_AXI_arburst(microblaze_0_M_AXI_IC_ARBURST),
        .S01_AXI_arcache(microblaze_0_M_AXI_IC_ARCACHE),
        .S01_AXI_arlen(microblaze_0_M_AXI_IC_ARLEN),
        .S01_AXI_arlock(microblaze_0_M_AXI_IC_ARLOCK),
        .S01_AXI_arprot(microblaze_0_M_AXI_IC_ARPROT),
        .S01_AXI_arqos(microblaze_0_M_AXI_IC_ARQOS),
        .S01_AXI_arready(microblaze_0_M_AXI_IC_ARREADY),
        .S01_AXI_arsize(microblaze_0_M_AXI_IC_ARSIZE),
        .S01_AXI_arvalid(microblaze_0_M_AXI_IC_ARVALID),
        .S01_AXI_rdata(microblaze_0_M_AXI_IC_RDATA),
        .S01_AXI_rlast(microblaze_0_M_AXI_IC_RLAST),
        .S01_AXI_rready(microblaze_0_M_AXI_IC_RREADY),
        .S01_AXI_rresp(microblaze_0_M_AXI_IC_RRESP),
        .S01_AXI_rvalid(microblaze_0_M_AXI_IC_RVALID),
        .S02_AXI_araddr(microblaze_0_M_AXI_DP_ARADDR),
        .S02_AXI_arprot(microblaze_0_M_AXI_DP_ARPROT),
        .S02_AXI_arready(microblaze_0_M_AXI_DP_ARREADY),
        .S02_AXI_arvalid(microblaze_0_M_AXI_DP_ARVALID),
        .S02_AXI_awaddr(microblaze_0_M_AXI_DP_AWADDR),
        .S02_AXI_awprot(microblaze_0_M_AXI_DP_AWPROT),
        .S02_AXI_awready(microblaze_0_M_AXI_DP_AWREADY),
        .S02_AXI_awvalid(microblaze_0_M_AXI_DP_AWVALID),
        .S02_AXI_bready(microblaze_0_M_AXI_DP_BREADY),
        .S02_AXI_bresp(microblaze_0_M_AXI_DP_BRESP),
        .S02_AXI_bvalid(microblaze_0_M_AXI_DP_BVALID),
        .S02_AXI_rdata(microblaze_0_M_AXI_DP_RDATA),
        .S02_AXI_rready(microblaze_0_M_AXI_DP_RREADY),
        .S02_AXI_rresp(microblaze_0_M_AXI_DP_RRESP),
        .S02_AXI_rvalid(microblaze_0_M_AXI_DP_RVALID),
        .S02_AXI_wdata(microblaze_0_M_AXI_DP_WDATA),
        .S02_AXI_wready(microblaze_0_M_AXI_DP_WREADY),
        .S02_AXI_wstrb(microblaze_0_M_AXI_DP_WSTRB),
        .S02_AXI_wvalid(microblaze_0_M_AXI_DP_WVALID),
        .aclk(mig_7series_0_ui_clk),
        .aclk1(microblaze_0_Clk),
        .aresetn(rst_clk_wiz_1_100M_peripheral_aresetn));
  bd_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_smc_M04_AXI_ARADDR),
        .s_axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M04_AXI_AWADDR),
        .s_axi_awready(axi_smc_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M04_AXI_AWVALID),
        .s_axi_bready(axi_smc_M04_AXI_BREADY),
        .s_axi_bresp(axi_smc_M04_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M04_AXI_BVALID),
        .s_axi_rdata(axi_smc_M04_AXI_RDATA),
        .s_axi_rready(axi_smc_M04_AXI_RREADY),
        .s_axi_rresp(axi_smc_M04_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M04_AXI_RVALID),
        .s_axi_wdata(axi_smc_M04_AXI_WDATA),
        .s_axi_wready(axi_smc_M04_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M04_AXI_WVALID));
  bd_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_smc_M01_AXI_ARADDR),
        .s_axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M01_AXI_AWADDR),
        .s_axi_awready(axi_smc_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M01_AXI_AWVALID),
        .s_axi_bready(axi_smc_M01_AXI_BREADY),
        .s_axi_bresp(axi_smc_M01_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M01_AXI_BVALID),
        .s_axi_rdata(axi_smc_M01_AXI_RDATA),
        .s_axi_rready(axi_smc_M01_AXI_RREADY),
        .s_axi_rresp(axi_smc_M01_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M01_AXI_RVALID),
        .s_axi_wdata(axi_smc_M01_AXI_WDATA),
        .s_axi_wready(axi_smc_M01_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M01_AXI_WVALID),
        .tx(axi_uartlite_0_UART_TxD));
  bd_clk_wiz_1_0 clk_wiz_1
       (.clk_in1(clk_in1_0_1),
        .clk_out1(microblaze_0_Clk),
        .clk_out2(clk_wiz_1_clk_out2),
        .clk_out3(clk_wiz_1_clk_out3),
        .locked(clk_wiz_1_locked),
        .reset(reset_rtl_0_1));
  bd_axi_gpio_2_0 gpio_usb_int
       (.gpio_io_i(gpio_usb_int_GPIO_TRI_I),
        .ip2intc_irpt(gpio_usb_int_ip2intc_irpt),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_smc_M05_AXI_ARADDR),
        .s_axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M05_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M05_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M05_AXI_AWADDR),
        .s_axi_awready(axi_smc_M05_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M05_AXI_AWVALID),
        .s_axi_bready(axi_smc_M05_AXI_BREADY),
        .s_axi_bresp(axi_smc_M05_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M05_AXI_BVALID),
        .s_axi_rdata(axi_smc_M05_AXI_RDATA),
        .s_axi_rready(axi_smc_M05_AXI_RREADY),
        .s_axi_rresp(axi_smc_M05_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M05_AXI_RVALID),
        .s_axi_wdata(axi_smc_M05_AXI_WDATA),
        .s_axi_wready(axi_smc_M05_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M05_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M05_AXI_WVALID));
  bd_axi_gpio_0_0 gpio_usb_keycode
       (.gpio2_io_o(gpio_usb_keycode_GPIO2_TRI_O),
        .gpio_io_o(gpio_usb_keycode_GPIO_TRI_O),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_smc_M06_AXI_ARADDR),
        .s_axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M06_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M06_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M06_AXI_AWADDR),
        .s_axi_awready(axi_smc_M06_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M06_AXI_AWVALID),
        .s_axi_bready(axi_smc_M06_AXI_BREADY),
        .s_axi_bresp(axi_smc_M06_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M06_AXI_BVALID),
        .s_axi_rdata(axi_smc_M06_AXI_RDATA),
        .s_axi_rready(axi_smc_M06_AXI_RREADY),
        .s_axi_rresp(axi_smc_M06_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M06_AXI_RVALID),
        .s_axi_wdata(axi_smc_M06_AXI_WDATA),
        .s_axi_wready(axi_smc_M06_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M06_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M06_AXI_WVALID));
  bd_axi_gpio_1_0 gpio_usb_rst
       (.gpio_io_o(gpio_usb_rst_GPIO_TRI_O),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_smc_M07_AXI_ARADDR),
        .s_axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M07_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M07_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M07_AXI_AWADDR),
        .s_axi_awready(axi_smc_M07_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M07_AXI_AWVALID),
        .s_axi_bready(axi_smc_M07_AXI_BREADY),
        .s_axi_bresp(axi_smc_M07_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M07_AXI_BVALID),
        .s_axi_rdata(axi_smc_M07_AXI_RDATA),
        .s_axi_rready(axi_smc_M07_AXI_RREADY),
        .s_axi_rresp(axi_smc_M07_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M07_AXI_RVALID),
        .s_axi_wdata(axi_smc_M07_AXI_WDATA),
        .s_axi_wready(axi_smc_M07_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M07_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M07_AXI_WVALID));
  bd_hdmi_text_controller_0_1 hdmi_text_controller_0
       (.axi_aclk(mig_7series_0_ui_clk),
        .axi_araddr(axi_smc_M09_AXI_ARADDR),
        .axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .axi_arprot(axi_smc_M09_AXI_ARPROT),
        .axi_arready(axi_smc_M09_AXI_ARREADY),
        .axi_arvalid(axi_smc_M09_AXI_ARVALID),
        .axi_awaddr(axi_smc_M09_AXI_AWADDR),
        .axi_awprot(axi_smc_M09_AXI_AWPROT),
        .axi_awready(axi_smc_M09_AXI_AWREADY),
        .axi_awvalid(axi_smc_M09_AXI_AWVALID),
        .axi_bready(axi_smc_M09_AXI_BREADY),
        .axi_bresp(axi_smc_M09_AXI_BRESP),
        .axi_bvalid(axi_smc_M09_AXI_BVALID),
        .axi_rdata(axi_smc_M09_AXI_RDATA),
        .axi_rready(axi_smc_M09_AXI_RREADY),
        .axi_rresp(axi_smc_M09_AXI_RRESP),
        .axi_rvalid(axi_smc_M09_AXI_RVALID),
        .axi_wdata(axi_smc_M09_AXI_WDATA),
        .axi_wready(axi_smc_M09_AXI_WREADY),
        .axi_wstrb(axi_smc_M09_AXI_WSTRB),
        .axi_wvalid(axi_smc_M09_AXI_WVALID),
        .hdmi_clk_n(hdmi_text_controller_0_HDMI_TMDS_CLK_N),
        .hdmi_clk_p(hdmi_text_controller_0_HDMI_TMDS_CLK_P),
        .hdmi_tx_n(hdmi_text_controller_0_HDMI_TMDS_DATA_N),
        .hdmi_tx_p(hdmi_text_controller_0_HDMI_TMDS_DATA_P));
  bd_mdm_1_0 mdm_1
       (.Dbg_Capture_0(microblaze_0_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_0_debug_CLK),
        .Dbg_Disable_0(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En_0(microblaze_0_debug_REG_EN),
        .Dbg_Rst_0(microblaze_0_debug_RST),
        .Dbg_Shift_0(microblaze_0_debug_SHIFT),
        .Dbg_TDI_0(microblaze_0_debug_TDI),
        .Dbg_TDO_0(microblaze_0_debug_TDO),
        .Dbg_Update_0(microblaze_0_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  (* BMM_INFO_PROCESSOR = "microblaze-le > bd microblaze_0_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  bd_microblaze_0_0 microblaze_0
       (.Byte_Enable(microblaze_0_dlmb_1_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_0_dlmb_1_CE),
        .DReady(microblaze_0_dlmb_1_READY),
        .DUE(microblaze_0_dlmb_1_UE),
        .DWait(microblaze_0_dlmb_1_WAIT),
        .D_AS(microblaze_0_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_0_dlmb_1_ABUS),
        .Data_Read(microblaze_0_dlmb_1_READDBUS),
        .Data_Write(microblaze_0_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_0_debug_CAPTURE),
        .Dbg_Clk(microblaze_0_debug_CLK),
        .Dbg_Disable(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En(microblaze_0_debug_REG_EN),
        .Dbg_Shift(microblaze_0_debug_SHIFT),
        .Dbg_TDI(microblaze_0_debug_TDI),
        .Dbg_TDO(microblaze_0_debug_TDO),
        .Dbg_Update(microblaze_0_debug_UPDATE),
        .Debug_Rst(microblaze_0_debug_RST),
        .ICE(microblaze_0_ilmb_1_CE),
        .IFetch(microblaze_0_ilmb_1_READSTROBE),
        .IReady(microblaze_0_ilmb_1_READY),
        .IUE(microblaze_0_ilmb_1_UE),
        .IWAIT(microblaze_0_ilmb_1_WAIT),
        .I_AS(microblaze_0_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_0_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_0_ilmb_1_ABUS),
        .Interrupt(axi_intc_0_interrupt_INTERRUPT),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DC_ARADDR(microblaze_0_M_AXI_DC_ARADDR),
        .M_AXI_DC_ARBURST(microblaze_0_M_AXI_DC_ARBURST),
        .M_AXI_DC_ARCACHE(microblaze_0_M_AXI_DC_ARCACHE),
        .M_AXI_DC_ARLEN(microblaze_0_M_AXI_DC_ARLEN),
        .M_AXI_DC_ARLOCK(microblaze_0_M_AXI_DC_ARLOCK),
        .M_AXI_DC_ARPROT(microblaze_0_M_AXI_DC_ARPROT),
        .M_AXI_DC_ARQOS(microblaze_0_M_AXI_DC_ARQOS),
        .M_AXI_DC_ARREADY(microblaze_0_M_AXI_DC_ARREADY),
        .M_AXI_DC_ARSIZE(microblaze_0_M_AXI_DC_ARSIZE),
        .M_AXI_DC_ARVALID(microblaze_0_M_AXI_DC_ARVALID),
        .M_AXI_DC_AWADDR(microblaze_0_M_AXI_DC_AWADDR),
        .M_AXI_DC_AWBURST(microblaze_0_M_AXI_DC_AWBURST),
        .M_AXI_DC_AWCACHE(microblaze_0_M_AXI_DC_AWCACHE),
        .M_AXI_DC_AWLEN(microblaze_0_M_AXI_DC_AWLEN),
        .M_AXI_DC_AWLOCK(microblaze_0_M_AXI_DC_AWLOCK),
        .M_AXI_DC_AWPROT(microblaze_0_M_AXI_DC_AWPROT),
        .M_AXI_DC_AWQOS(microblaze_0_M_AXI_DC_AWQOS),
        .M_AXI_DC_AWREADY(microblaze_0_M_AXI_DC_AWREADY),
        .M_AXI_DC_AWSIZE(microblaze_0_M_AXI_DC_AWSIZE),
        .M_AXI_DC_AWVALID(microblaze_0_M_AXI_DC_AWVALID),
        .M_AXI_DC_BID(1'b0),
        .M_AXI_DC_BREADY(microblaze_0_M_AXI_DC_BREADY),
        .M_AXI_DC_BRESP(microblaze_0_M_AXI_DC_BRESP),
        .M_AXI_DC_BVALID(microblaze_0_M_AXI_DC_BVALID),
        .M_AXI_DC_RDATA(microblaze_0_M_AXI_DC_RDATA),
        .M_AXI_DC_RID(1'b0),
        .M_AXI_DC_RLAST(microblaze_0_M_AXI_DC_RLAST),
        .M_AXI_DC_RREADY(microblaze_0_M_AXI_DC_RREADY),
        .M_AXI_DC_RRESP(microblaze_0_M_AXI_DC_RRESP),
        .M_AXI_DC_RVALID(microblaze_0_M_AXI_DC_RVALID),
        .M_AXI_DC_WDATA(microblaze_0_M_AXI_DC_WDATA),
        .M_AXI_DC_WLAST(microblaze_0_M_AXI_DC_WLAST),
        .M_AXI_DC_WREADY(microblaze_0_M_AXI_DC_WREADY),
        .M_AXI_DC_WSTRB(microblaze_0_M_AXI_DC_WSTRB),
        .M_AXI_DC_WVALID(microblaze_0_M_AXI_DC_WVALID),
        .M_AXI_DP_ARADDR(microblaze_0_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_M_AXI_DP_WVALID),
        .M_AXI_IC_ARADDR(microblaze_0_M_AXI_IC_ARADDR),
        .M_AXI_IC_ARBURST(microblaze_0_M_AXI_IC_ARBURST),
        .M_AXI_IC_ARCACHE(microblaze_0_M_AXI_IC_ARCACHE),
        .M_AXI_IC_ARLEN(microblaze_0_M_AXI_IC_ARLEN),
        .M_AXI_IC_ARLOCK(microblaze_0_M_AXI_IC_ARLOCK),
        .M_AXI_IC_ARPROT(microblaze_0_M_AXI_IC_ARPROT),
        .M_AXI_IC_ARQOS(microblaze_0_M_AXI_IC_ARQOS),
        .M_AXI_IC_ARREADY(microblaze_0_M_AXI_IC_ARREADY),
        .M_AXI_IC_ARSIZE(microblaze_0_M_AXI_IC_ARSIZE),
        .M_AXI_IC_ARVALID(microblaze_0_M_AXI_IC_ARVALID),
        .M_AXI_IC_AWREADY(1'b0),
        .M_AXI_IC_BID(1'b0),
        .M_AXI_IC_BRESP({1'b0,1'b0}),
        .M_AXI_IC_BVALID(1'b0),
        .M_AXI_IC_RDATA(microblaze_0_M_AXI_IC_RDATA),
        .M_AXI_IC_RID(1'b0),
        .M_AXI_IC_RLAST(microblaze_0_M_AXI_IC_RLAST),
        .M_AXI_IC_RREADY(microblaze_0_M_AXI_IC_RREADY),
        .M_AXI_IC_RRESP(microblaze_0_M_AXI_IC_RRESP),
        .M_AXI_IC_RVALID(microblaze_0_M_AXI_IC_RVALID),
        .M_AXI_IC_WREADY(1'b0),
        .Read_Strobe(microblaze_0_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_1_100M_mb_reset),
        .Write_Strobe(microblaze_0_dlmb_1_WRITESTROBE));
  microblaze_0_local_memory_imp_1SYIHLX microblaze_0_local_memory
       (.DLMB_abus(microblaze_0_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_0_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_0_dlmb_1_BE),
        .DLMB_ce(microblaze_0_dlmb_1_CE),
        .DLMB_readdbus(microblaze_0_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_0_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_0_dlmb_1_READY),
        .DLMB_ue(microblaze_0_dlmb_1_UE),
        .DLMB_wait(microblaze_0_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_0_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_0_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_0_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ilmb_1_CE),
        .ILMB_readdbus(microblaze_0_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_0_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_0_ilmb_1_READY),
        .ILMB_ue(microblaze_0_ilmb_1_UE),
        .ILMB_wait(microblaze_0_ilmb_1_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(rst_clk_wiz_1_100M_bus_struct_reset));
  bd_mig_7series_0_0 mig_7series_0
       (.aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .clk_ref_i(clk_wiz_1_clk_out2),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(ddr3_dq[15:0]),
        .ddr3_dqs_n(ddr3_dqs_n[1:0]),
        .ddr3_dqs_p(ddr3_dqs_p[1:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_smc_M00_AXI_ARADDR),
        .s_axi_arburst(axi_smc_M00_AXI_ARBURST),
        .s_axi_arcache(axi_smc_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(axi_smc_M00_AXI_ARLEN),
        .s_axi_arlock(axi_smc_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_smc_M00_AXI_ARPROT),
        .s_axi_arqos(axi_smc_M00_AXI_ARQOS),
        .s_axi_arready(axi_smc_M00_AXI_ARREADY),
        .s_axi_arsize(axi_smc_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_smc_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M00_AXI_AWADDR),
        .s_axi_awburst(axi_smc_M00_AXI_AWBURST),
        .s_axi_awcache(axi_smc_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(axi_smc_M00_AXI_AWLEN),
        .s_axi_awlock(axi_smc_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_smc_M00_AXI_AWPROT),
        .s_axi_awqos(axi_smc_M00_AXI_AWQOS),
        .s_axi_awready(axi_smc_M00_AXI_AWREADY),
        .s_axi_awsize(axi_smc_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_smc_M00_AXI_AWVALID),
        .s_axi_bready(axi_smc_M00_AXI_BREADY),
        .s_axi_bresp(axi_smc_M00_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M00_AXI_BVALID),
        .s_axi_rdata(axi_smc_M00_AXI_RDATA),
        .s_axi_rlast(axi_smc_M00_AXI_RLAST),
        .s_axi_rready(axi_smc_M00_AXI_RREADY),
        .s_axi_rresp(axi_smc_M00_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M00_AXI_RVALID),
        .s_axi_wdata(axi_smc_M00_AXI_WDATA),
        .s_axi_wlast(axi_smc_M00_AXI_WLAST),
        .s_axi_wready(axi_smc_M00_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M00_AXI_WVALID),
        .sys_clk_i(clk_wiz_1_clk_out3),
        .sys_rst(reset_rtl_0_1),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  bd_rst_clk_wiz_1_100M_0 rst_clk_wiz_1_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_wiz_1_100M_bus_struct_reset),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_rtl_0_1),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_wiz_1_100M_mb_reset),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .slowest_sync_clk(microblaze_0_Clk));
  bd_rst_mig_7series_0_166M_0 rst_mig_7series_0_166M
       (.aux_reset_in(1'b1),
        .dcm_locked(mig_7series_0_mmcm_locked),
        .ext_reset_in(mig_7series_0_ui_clk_sync_rst),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .peripheral_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .slowest_sync_clk(mig_7series_0_ui_clk));
  bd_axi_quad_spi_0_0 spi_usb
       (.ext_spi_clk(microblaze_0_Clk),
        .io0_i(1'b0),
        .io0_o(spi_usb_io0_o),
        .io1_i(usb_spi_miso_1),
        .ip2intc_irpt(spi_usb_ip2intc_irpt),
        .s_axi_aclk(mig_7series_0_ui_clk),
        .s_axi_araddr(axi_smc_M08_AXI_ARADDR),
        .s_axi_aresetn(rst_mig_7series_0_166M_peripheral_aresetn),
        .s_axi_arready(axi_smc_M08_AXI_ARREADY),
        .s_axi_arvalid(axi_smc_M08_AXI_ARVALID),
        .s_axi_awaddr(axi_smc_M08_AXI_AWADDR),
        .s_axi_awready(axi_smc_M08_AXI_AWREADY),
        .s_axi_awvalid(axi_smc_M08_AXI_AWVALID),
        .s_axi_bready(axi_smc_M08_AXI_BREADY),
        .s_axi_bresp(axi_smc_M08_AXI_BRESP),
        .s_axi_bvalid(axi_smc_M08_AXI_BVALID),
        .s_axi_rdata(axi_smc_M08_AXI_RDATA),
        .s_axi_rready(axi_smc_M08_AXI_RREADY),
        .s_axi_rresp(axi_smc_M08_AXI_RRESP),
        .s_axi_rvalid(axi_smc_M08_AXI_RVALID),
        .s_axi_wdata(axi_smc_M08_AXI_WDATA),
        .s_axi_wready(axi_smc_M08_AXI_WREADY),
        .s_axi_wstrb(axi_smc_M08_AXI_WSTRB),
        .s_axi_wvalid(axi_smc_M08_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(spi_usb_sck_o),
        .ss_i(1'b0),
        .ss_o(spi_usb_ss_o));
  bd_util_mii_to_rmii_0_0 util_mii_to_rmii_0
       (.mac_tx_en(axi_ethernetlite_0_phy_tx_en),
        .mac_tx_er(1'b0),
        .mac_txd(axi_ethernetlite_0_phy_tx_data),
        .mii_col(util_mii_to_rmii_0_mii_col),
        .mii_crs(util_mii_to_rmii_0_mii_crs),
        .mii_rx_clk(util_mii_to_rmii_0_mii_rx_clk),
        .mii_rx_dv(util_mii_to_rmii_0_mii_rx_dv),
        .mii_rx_er(util_mii_to_rmii_0_mii_rx_er),
        .mii_rxd(util_mii_to_rmii_0_mii_rxd),
        .mii_tx_clk(util_mii_to_rmii_0_mii_tx_clk),
        .phy_crs_dv(crs_1),
        .phy_rx_er(rx_er_1),
        .phy_rxd(rxd_1),
        .ref_clk(phy_clk_1),
        .reset_n(axi_ethernetlite_0_phy_rst_n),
        .rmii_tx_en(util_mii_to_rmii_0_rmii_tx_en),
        .rmii_txd(util_mii_to_rmii_0_rmii_txd));
  bd_xlconcat_0_0 xlconcat_0
       (.In0(axi_uartlite_0_interrupt),
        .In1(axi_ethernetlite_0_ip2intc_irpt),
        .In2(axi_timer_0_interrupt),
        .In3(gpio_usb_int_ip2intc_irpt),
        .In4(spi_usb_ip2intc_irpt),
        .dout(xlconcat_0_dout));
endmodule

module microblaze_0_local_memory_imp_1SYIHLX
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_0_Clk;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > bd microblaze_0_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  bd_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  bd_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  bd_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  bd_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  bd_lmb_bram_0 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
endmodule
