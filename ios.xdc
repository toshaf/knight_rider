# 100 MHz PL clock
set_property PACKAGE_PIN Y9 [get_ports clock]
set_property IOSTANDARD LVCMOS18 [get_ports clock]

# LD0
set_property DRIVE 12 [get_ports leds_out[0]]
set_property SLEW SLOW [get_ports leds_out[0]]
set_property PACKAGE_PIN T22 [get_ports leds_out[0]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_out[0]]

# LD1
set_property DRIVE 12 [get_ports leds_out[1]]
set_property SLEW SLOW [get_ports leds_out[1]]
set_property PACKAGE_PIN T21 [get_ports leds_out[1]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_out[1]]

# LD2
set_property DRIVE 12 [get_ports leds_out[2]]
set_property SLEW SLOW [get_ports leds_out[2]]
set_property PACKAGE_PIN U22 [get_ports leds_out[2]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_out[2]]

# LD3
set_property DRIVE 12 [get_ports leds_out[3]]
set_property SLEW SLOW [get_ports leds_out[3]]
set_property PACKAGE_PIN U21 [get_ports leds_out[3]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_out[3]]

# LD4
set_property DRIVE 12 [get_ports leds_out[4]]
set_property SLEW SLOW [get_ports leds_out[4]]
set_property PACKAGE_PIN V22 [get_ports leds_out[4]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_out[4]]

# LD5
set_property DRIVE 12 [get_ports leds_out[5]]
set_property SLEW SLOW [get_ports leds_out[5]]
set_property PACKAGE_PIN W22 [get_ports leds_out[5]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_out[5]]

# LD6
set_property DRIVE 12 [get_ports leds_out[6]]
set_property SLEW SLOW [get_ports leds_out[6]]
set_property PACKAGE_PIN U19 [get_ports leds_out[6]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_out[6]]

# LD7
set_property DRIVE 12 [get_ports leds_out[7]]
set_property SLEW SLOW [get_ports leds_out[7]]
set_property PACKAGE_PIN U14 [get_ports leds_out[7]]
set_property IOSTANDARD LVCMOS33 [get_ports leds_out[7]]

#revert back to original instance
current_instance -quiet
