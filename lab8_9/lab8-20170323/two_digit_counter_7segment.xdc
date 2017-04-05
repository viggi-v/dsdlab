set_property PACKAGE_PIN U9 [get_ports enable]

set_property PACKAGE_PIN F15 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

set_property PACKAGE_PIN P2 [get_ports locked]
set_property IOSTANDARD LVCMOS33 [get_ports locked]

set_property PACKAGE_PIN E3 [get_ports clkin]
set_property IOSTANDARD LVCMOS33 [get_ports clkin]

create_clock -period 10.000 -name clkin -waveform {0.000 5.000} [get_ports clkin]




set_property PACKAGE_PIN M1 [get_ports {an_en[7]}]
set_property PACKAGE_PIN L1 [get_ports {an_en[6]}]
set_property PACKAGE_PIN N4 [get_ports {an_en[5]}]
set_property PACKAGE_PIN N2 [get_ports {an_en[4]}]
set_property PACKAGE_PIN N5 [get_ports {an_en[3]}]
set_property PACKAGE_PIN M3 [get_ports {an_en[2]}]
set_property PACKAGE_PIN M6 [get_ports {an_en[1]}]
set_property PACKAGE_PIN N6 [get_ports {an_en[0]}]

set_property PACKAGE_PIN T5 [get_ports {dout[4]}]
set_property PACKAGE_PIN T4 [get_ports {dout[5]}]
set_property PACKAGE_PIN U7 [get_ports {dout[6]}]
set_property PACKAGE_PIN U6 [get_ports {dout[7]}]
set_property PACKAGE_PIN T6 [get_ports {dout[3]}]
set_property PACKAGE_PIN R8 [get_ports {dout[2]}]
set_property PACKAGE_PIN V9 [get_ports {dout[1]}]
set_property PACKAGE_PIN T8 [get_ports {dout[0]}]

set_property PACKAGE_PIN M4 [get_ports {seg7[7]}]
set_property PACKAGE_PIN L6 [get_ports {seg7[6]}]
set_property PACKAGE_PIN M2 [get_ports {seg7[5]}]
set_property PACKAGE_PIN K3 [get_ports {seg7[4]}]
set_property PACKAGE_PIN L4 [get_ports {seg7[3]}]
set_property PACKAGE_PIN L5 [get_ports {seg7[2]}]
set_property PACKAGE_PIN N1 [get_ports {seg7[1]}]
set_property PACKAGE_PIN L3 [get_ports {seg7[0]}]


set_property PACKAGE_PIN P4 [get_ports resetc]


