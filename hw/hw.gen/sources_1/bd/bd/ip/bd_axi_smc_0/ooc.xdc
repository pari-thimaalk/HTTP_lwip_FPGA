# aclk {FREQ_HZ 166666667 CLK_DOMAIN bd_mig_7series_0_0_ui_clk PHASE 0} aclk1 {FREQ_HZ 100000000 CLK_DOMAIN /clk_wiz_1_clk_out1 PHASE 0.0}
# Clock Domain: bd_mig_7series_0_0_ui_clk
create_clock -name aclk -period 6.000 [get_ports aclk]
# Clock Domain: /clk_wiz_1_clk_out1
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
