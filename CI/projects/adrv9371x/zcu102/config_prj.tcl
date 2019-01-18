# Add 1 extra AXI master ports to the interconnect
set_property -dict [list CONFIG.NUM_MI {14}] [get_bd_cells axi_cpu_interconnect]
#connect_bd_net -net [get_bd_nets axi_adrv9371_rx_clkgen] [get_bd_pins axi_cpu_interconnect/M13_ACLK] [get_bd_pins axi_ad9371_rx_clkgen/clk_0]
connect_bd_net [get_bd_pins sys_rstgen/interconnect_aresetn] [get_bd_pins axi_cpu_interconnect/M13_ARESETN]
