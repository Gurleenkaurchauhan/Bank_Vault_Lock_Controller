# Clock
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Switches
set_property PACKAGE_PIN V17 [get_ports {sw[0]}]
set_property PACKAGE_PIN V16 [get_ports {sw[1]}]
set_property PACKAGE_PIN W16 [get_ports {sw[2]}]
set_property PACKAGE_PIN W17 [get_ports {sw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[*]}]

# Buttons
set_property PACKAGE_PIN U18 [get_ports btnC]
set_property PACKAGE_PIN T18 [get_ports btnU]
set_property IOSTANDARD LVCMOS33 [get_ports btnC]
set_property IOSTANDARD LVCMOS33 [get_ports btnU]

# 7-Segment Display: Segments a-g
set_property PACKAGE_PIN U2 [get_ports {seg[0]}]
set_property PACKAGE_PIN U4 [get_ports {seg[1]}]
set_property PACKAGE_PIN V4 [get_ports {seg[2]}]
set_property PACKAGE_PIN W4 [get_ports {seg[3]}]
set_property PACKAGE_PIN W3 [get_ports {seg[4]}]
set_property PACKAGE_PIN V2 [get_ports {seg[5]}]
set_property PACKAGE_PIN U1 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[*]}]

# 7-Segment Display: Digit control an[3:0]
set_property PACKAGE_PIN W7 [get_ports {an[0]}]
set_property PACKAGE_PIN W6 [get_ports {an[1]}]
set_property PACKAGE_PIN U8 [get_ports {an[2]}]
set_property PACKAGE_PIN V8 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[*]}]
