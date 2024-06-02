# Creating SmartDesign "TOP"
set sd_name {TOP}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP1} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP2} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP3} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP4} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP5} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP6} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP7} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {DIP8} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FTDI_UART_D_TXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_SPI_MISO} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_50MHz} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_WP} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DI} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SWITCH1} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SWITCH2} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {mBUS_INT} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ACT_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BG0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FTDI_UART_D_RXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_20_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_9_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED4} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED5} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED6} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LED7} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_0_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_AN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_RST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_SPI_MOSI} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CLK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_POW} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_CMD_DIR} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_DIR_1_3} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_EN} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_VOLT_SEL} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DO} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_RESETN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VSC_TXDIS_SRESETN} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {WE_N} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_I2CSCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_I2CSDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_SPI_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MBUS_SPI_CS} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDIO_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO12} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO13} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO16} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO17} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO18} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO19} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO20} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO21} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO22} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO23} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO24} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO25} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO26} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO27} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RPI_GPIO6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CMD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_SS0} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {A} -port_direction {OUT} -port_range {[13:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {BA} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[15:0]} -port_is_pad {1}

sd_invert_pins -sd_name ${sd_name} -pin_names {DIP1}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP2}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP3}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP4}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP5}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP6}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP7}
sd_invert_pins -sd_name ${sd_name} -pin_names {DIP8}
sd_invert_pins -sd_name ${sd_name} -pin_names {SWITCH1}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MBUS_AN} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {MBUS_RST} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_RESETN} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {VSC_TXDIS_SRESETN} -value {VCC}
# Add CLOCKS_AND_RESETS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLOCKS_AND_RESETS} -instance_name {CLOCKS_AND_RESETS_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CLOCKS_AND_RESETS_0:RESETN_FIC2_CLK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CLOCKS_AND_RESETS_0:RESETN_FIC_1_CLK}



# Add FABRIC_PERIPHERALS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FABRIC_PERIPHERALS} -instance_name {FABRIC_PERIPHERALS_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[10:10]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[10:10]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[11:11]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[11:11]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[12:12]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[12:12]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[13:13]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[13:13]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[14:14]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[14:14]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[15:15]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[15:15]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[16:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[16:16]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[17:17]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[17:17]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[18:18]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[18:18]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[19:19]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[19:19]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[20:20]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[20:20]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[21:21]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[21:21]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[22:22]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[22:22]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[23:23]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[23:23]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[24:24]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[24:24]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[25:25]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[25:25]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[26:26]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[26:26]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[27:27]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[27:27]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[28:28]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[28:28]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[29:29]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[29:29]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[30:30]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[30:30]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[31:31]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[31:31]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:apb_test_status} -pin_slices {[9:9]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:apb_test_status[9:9]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[10:10]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[11:11]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[12:12]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[13:13]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[14:14]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[15:15]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[16:16]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[17:17]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[18:18]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[19:19]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[20:20]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[21:21]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[21:21]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[22:22]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[22:22]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[23:23]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[23:23]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[24:24]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[24:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[25:25]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[25:25]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[26:26]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[26:26]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[27:27]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[27:27]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[28:28]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[28:28]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[29:29]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[29:29]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[30:30]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[30:30]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[31:31]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[31:31]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[7:7]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[8:8]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:app_test_control} -pin_slices {[9:9]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:app_test_control[9:9]}



# Add OR2_LED1 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED1}



# Add OR2_LED2 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED2}



# Add OR2_LED3 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED3}



# Add OR2_LED4 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED4}



# Add OR2_LED5 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED5}



# Add OR2_LED6 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED6}



# Add OR2_LED7 instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {OR2} -instance_name {OR2_LED7}



# Add RISCV_SUBSYSTEM_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {RISCV_SUBSYSTEM} -instance_name {RISCV_SUBSYSTEM_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[0:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[0:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[10:10]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[10:10]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[11:11]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[11:11]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[12:12]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[12:12]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[13:13]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[13:13]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[14:14]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[14:14]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[15:15]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[15:15]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[16:16]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[16:16]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[17:17]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[17:17]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[18:18]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[18:18]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[19:19]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[19:19]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[1:1]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[1:1]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[20:20]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[20:20]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[21:21]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[21:21]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[22:22]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[22:22]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[23:23]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[23:23]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[24:24]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[24:24]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[25:25]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[25:25]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[26:26]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[26:26]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[27:27]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[27:27]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[28:28]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[28:28]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[29:29]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[29:29]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[30:30]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[30:30]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[31:31]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[31:31]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[32:32]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[32:32]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[33:33]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[33:33]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[34:34]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[34:34]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[35:35]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[35:35]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[36:36]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[36:36]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[37:37]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[37:37]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[38:38]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[38:38]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[39:39]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[39:39]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[40:40]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[40:40]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[41:41]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[41:41]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[42:42]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[42:42]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[43:43]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[43:43]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[44:44]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[44:44]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[45:45]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[45:45]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[46:46]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[46:46]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[47:47]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[47:47]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[48:48]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[48:48]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[49:49]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[49:49]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[50:50]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[50:50]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[51:51]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[51:51]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[52:52]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[52:52]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[53:53]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[53:53]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[54:54]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[54:54]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[55:55]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[55:55]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[56:56]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[56:56]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[57:57]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[57:57]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[58:58]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[58:58]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[5:5]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[5:5]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[6:6]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[6:6]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[7:7]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[7:7]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[8:8]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[8:8]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0} -pin_slices {[9:9]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[9:9]} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_F2M_24} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_F2M_25} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_F2M_26} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_F2M_27} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_F2M_28} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_F2M_30} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_F2M_31} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_26_OUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_27_OUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:GPIO_2_28_OUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:MSS_INT_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:FIC_1_AXI4_INITIATOR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:FIC_1_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM_0:FIC_2_AXI4_TARGET}



# Add scalar net connections
sd_create_scalar_net -sd_name ${sd_name} -net_name {MSS_WRAPPER_0_GPIO_2_M2F_21}
sd_connect_net_to_pins -sd_name ${sd_name} -net_name {MSS_WRAPPER_0_GPIO_2_M2F_21} -pin_names {"OR2_LED5:B" "RISCV_SUBSYSTEM_0:GPIO_2_M2F_21" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"ACT_N" "RISCV_SUBSYSTEM_0:ACT_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BG0" "RISCV_SUBSYSTEM_0:BG0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAS_N" "RISCV_SUBSYSTEM_0:CAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK0" "RISCV_SUBSYSTEM_0:CK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK0_N" "RISCV_SUBSYSTEM_0:CK0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE0" "RISCV_SUBSYSTEM_0:CKE0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:EXT_RST_N" "SWITCH2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:FIC_0_CLK" "FABRIC_PERIPHERALS_0:ACLK" "RISCV_SUBSYSTEM_0:FIC_0_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:FIC_1_CLK" "RISCV_SUBSYSTEM_0:FIC_1_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:FIC_2_CLK" "RISCV_SUBSYSTEM_0:FIC_2_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:FIC_3_CLK" "FABRIC_PERIPHERALS_0:PCLK" "RISCV_SUBSYSTEM_0:FIC_3_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:MSS_DLL_LOCKS" "RISCV_SUBSYSTEM_0:MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:MSS_RESETN" "RISCV_SUBSYSTEM_0:MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:MSS_TO_FABRIC_RESETN" "RISCV_SUBSYSTEM_0:MSS_RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:REF_CLK_50MHz" "REF_CLK_50MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:RESETN_FIC_0_CLK" "FABRIC_PERIPHERALS_0:ARESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS_0:RESETN_FIC_3_CLK" "FABRIC_PERIPHERALS_0:PRESETN" "RISCV_SUBSYSTEM_0:FIC_3_PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS0_N" "RISCV_SUBSYSTEM_0:CS0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP1" "FABRIC_PERIPHERALS_0:apb_test_status[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP2" "FABRIC_PERIPHERALS_0:apb_test_status[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP3" "FABRIC_PERIPHERALS_0:apb_test_status[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP4" "FABRIC_PERIPHERALS_0:apb_test_status[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP5" "FABRIC_PERIPHERALS_0:apb_test_status[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP6" "FABRIC_PERIPHERALS_0:apb_test_status[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP7" "FABRIC_PERIPHERALS_0:apb_test_status[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DIP8" "FABRIC_PERIPHERALS_0:apb_test_status[8:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:DMA_CONTROLLER_IRQ" "RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:apb_test_interrupt" "RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:apb_test_status[0:0]" "SWITCH1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:app_test_control[0:0]" "OR2_LED1:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:app_test_control[1:1]" "OR2_LED2:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:app_test_control[2:2]" "OR2_LED3:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:app_test_control[3:3]" "OR2_LED4:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:app_test_control[4:4]" "OR2_LED5:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:app_test_control[5:5]" "OR2_LED6:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:app_test_control[6:6]" "OR2_LED7:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FTDI_UART_D_RXD" "RISCV_SUBSYSTEM_0:MMUART_0_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FTDI_UART_D_TXD" "RISCV_SUBSYSTEM_0:MMUART_0_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_20_OUT" "RISCV_SUBSYSTEM_0:GPIO_1_20_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_9_OUT" "RISCV_SUBSYSTEM_0:GPIO_1_9_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED1" "OR2_LED1:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED2" "OR2_LED2:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED3" "OR2_LED3:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED4" "OR2_LED4:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED5" "OR2_LED5:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED6" "OR2_LED6:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"LED7" "OR2_LED7:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_0_MDC" "RISCV_SUBSYSTEM_0:MAC_0_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_I2CSCL" "RISCV_SUBSYSTEM_0:I2C_0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_I2CSDA" "RISCV_SUBSYSTEM_0:I2C_0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_SPI_CLK" "RISCV_SUBSYSTEM_0:SPI_0_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_SPI_CS" "RISCV_SUBSYSTEM_0:SPI_0_SS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_SPI_MISO" "RISCV_SUBSYSTEM_0:SPI_0_DI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MBUS_SPI_MOSI" "RISCV_SUBSYSTEM_0:SPI_0_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDIO_PAD" "RISCV_SUBSYSTEM_0:MDIO_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_RXD" "RISCV_SUBSYSTEM_0:MMUART_1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_TXD" "RISCV_SUBSYSTEM_0:MMUART_1_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_RXD" "RISCV_SUBSYSTEM_0:MMUART_4_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_TXD" "RISCV_SUBSYSTEM_0:MMUART_4_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT0" "RISCV_SUBSYSTEM_0:ODT0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_LED1:B" "RISCV_SUBSYSTEM_0:GPIO_2_M2F_17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_LED2:B" "RISCV_SUBSYSTEM_0:GPIO_2_M2F_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_LED3:B" "RISCV_SUBSYSTEM_0:GPIO_2_M2F_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_LED4:B" "RISCV_SUBSYSTEM_0:GPIO_2_M2F_20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_LED6:B" "RISCV_SUBSYSTEM_0:GPIO_2_M2F_22" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"OR2_LED7:B" "RISCV_SUBSYSTEM_0:GPIO_2_M2F_23" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RAS_N" "RISCV_SUBSYSTEM_0:RAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK" "RISCV_SUBSYSTEM_0:REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK_N" "RISCV_SUBSYSTEM_0:REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESET_N" "RISCV_SUBSYSTEM_0:RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_0_IO" "RPI_GPIO4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_10_IO" "RPI_GPIO12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_11_IO" "RPI_GPIO13" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_12_IO" "RPI_GPIO19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_13_IO" "RPI_GPIO16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_14_IO" "RPI_GPIO26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_15_IO" "RPI_GPIO20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_16_IO" "RPI_GPIO21" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_1_IO" "RPI_GPIO17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_2_IO" "RPI_GPIO18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_3_IO" "RPI_GPIO27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_4_IO" "RPI_GPIO22" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_5_IO" "RPI_GPIO23" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_6_IO" "RPI_GPIO24" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_7_IO" "RPI_GPIO25" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_8_IO" "RPI_GPIO5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:GPIO_2_9_IO" "RPI_GPIO6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:MSS_INT_F2M_0[3:3]" "mBUS_INT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_CD" "SD_CD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_CLK" "SD_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_CMD" "SD_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_DATA0" "SD_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_DATA1" "SD_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_DATA2" "SD_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_DATA3" "SD_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_POW" "SD_POW" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_VOLT_CMD_DIR" "SD_VOLT_CMD_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_VOLT_DIR_0" "SD_VOLT_DIR_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_VOLT_DIR_1_3" "SD_VOLT_DIR_1_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_VOLT_EN" "SD_VOLT_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_VOLT_SEL" "SD_VOLT_SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SD_WP" "SD_WP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SGMII_RX0_N" "SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SGMII_RX0_P" "SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SGMII_TX0_N" "SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SGMII_TX0_P" "SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SPI_1_CLK" "SPI_1_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SPI_1_DI" "SPI_1_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SPI_1_DO" "SPI_1_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:SPI_1_SS0" "SPI_1_SS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM_0:WE_N" "WE_N" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"A" "RISCV_SUBSYSTEM_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BA" "RISCV_SUBSYSTEM_0:BA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "RISCV_SUBSYSTEM_0:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "RISCV_SUBSYSTEM_0:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "RISCV_SUBSYSTEM_0:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "RISCV_SUBSYSTEM_0:DQS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:PSTRB" "RISCV_SUBSYSTEM_0:FIC_3_APB_M_PSTRB" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:APB_INITIATOR" "RISCV_SUBSYSTEM_0:FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:AXI4_INITIATOR" "RISCV_SUBSYSTEM_0:FIC_0_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:AXI4_TARGET" "RISCV_SUBSYSTEM_0:FIC_0_AXI4_TARGET" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "TOP"
generate_component -component_name ${sd_name}
