# Creating SmartDesign "TOP"
set sd_name $kronus::design_name
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_IRQn} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_STRB} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_11} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_24} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_INTn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DET} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {UART0_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_CLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DIR} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_NXT} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_OCn} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USER_BUTTON} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_CSn} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MCLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_SCK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CLK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_RSTN} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_10_USER_LED_7} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_11_USER_LED_8} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_12_USER_LED_9} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_13_USER_LED_10} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_14_USER_LED_11} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_3_USER_LED_0} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_4_USER_LED_1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_5_USER_LED_2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_6_USER_LED_3} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_7_USER_LED_4} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_8_USER_LED_5} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_9_USER_LED_6} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_13} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_25} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_26} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_MDC} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_RSTn} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CARD_CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {UART0_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_RESETB} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_STP} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {VIO_ENABLE} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MISO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MOSI} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CMD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DATA7} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_19} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_20} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_MDIO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB0_DATA7} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]} -port_is_pad {1}

sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]} -port_is_pad {1}

# Add CLOCKS_AND_RESETS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLOCKS_AND_RESETS} -instance_name {CLOCKS_AND_RESETS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CLOCKS_AND_RESETS:FIC_1_FABRIC_RESET_N}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CLOCKS_AND_RESETS:FIC_2_FABRIC_RESET_N}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CLOCKS_AND_RESETS:RCOSC_160MHZ_GL}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CLOCKS_AND_RESETS:XCVR_INIT_DONE}



# Add FABRIC_PERIPHERALS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FABRIC_PERIPHERALS} -instance_name {FABRIC_PERIPHERALS_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:interrupt} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {FABRIC_PERIPHERALS_0:interrupt} -pin_slices {[31:1]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:interrupt[31:1]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:status} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FABRIC_PERIPHERALS_0:control}



# Add RISCV_SUBSYSTEM instance
sd_instantiate_component -sd_name ${sd_name} -component_name {RISCV_SUBSYSTEM} -instance_name {RISCV_SUBSYSTEM}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7} -pin_slices {[3:3]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7[3:3]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7} -pin_slices {[5:5]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7[5:5]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7} -pin_slices {[6:6]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7[6:6]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7} -pin_slices {[7:7]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_3_7[7:7]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[12:12]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[13:13]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[14:14]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[15:15]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[16:16]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[17:17]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[18:18]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[19:19]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[20:20]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[21:21]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[21:21]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[22:22]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[22:22]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[23:23]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[23:23]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[24:24]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[24:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[25:25]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[25:25]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[26:26]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[26:26]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[27:27]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_M2F[27:27]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {RISCV_SUBSYSTEM:GPIO_2_M2F} -pin_slices {[9:9]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_UART_CTS} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_UART_RXD} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MAC_1_MDI_F2M} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MMUART_2_RXD} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MMUART_3_RXD} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:PCIE_INT} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:SPI_0_DI} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:SPI_1_DI} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_UART_RTS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_UART_TXD}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_W_DISABLE1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_W_DISABLE2}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MAC_1_MDC_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MAC_1_MDO_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MAC_1_MDO_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MMUART_2_TXD}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MMUART_3_TXD}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:SPI_0_CLK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:SPI_0_DO}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:SPI_0_SS1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:SPI_1_CLK}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:SPI_1_DO}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:SPI_1_SS1}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_F2M} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_56_58} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_A} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_B} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_C} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_D} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_E} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:MSS_INT_F2M_F} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:GPIO_2_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:FIC_2_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:FIC_1_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:FIC_0_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:FIC_1_AXI4_INITIATOR}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_CSn" "RISCV_SUBSYSTEM:ADC_CSn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_IRQn" "RISCV_SUBSYSTEM:ADC_IRQn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_MCLK" "CLOCKS_AND_RESETS:ADC_MCLK_4_915MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_MISO" "RISCV_SUBSYSTEM:ADC_MISO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_MOSI" "RISCV_SUBSYSTEM:ADC_MOSI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_SCK" "RISCV_SUBSYSTEM:ADC_SCK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "RISCV_SUBSYSTEM:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "RISCV_SUBSYSTEM:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "RISCV_SUBSYSTEM:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:EXT_RST_N" "RISCV_SUBSYSTEM:MSS_RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_0_ACLK" "FABRIC_PERIPHERALS_0:ACLK" "RISCV_SUBSYSTEM:FIC_0_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_0_FABRIC_RESET_N" "FABRIC_PERIPHERALS_0:ARESETN" "PHY_RSTn" "USB0_RESETB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_1_ACLK" "RISCV_SUBSYSTEM:FIC_1_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_2_ACLK" "RISCV_SUBSYSTEM:FIC_2_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "FABRIC_PERIPHERALS_0:PRESETN" "RISCV_SUBSYSTEM:PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "FABRIC_PERIPHERALS_0:PCLK" "RISCV_SUBSYSTEM:FIC_3_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:MSS_DLL_LOCKS" "RISCV_SUBSYSTEM:MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "RISCV_SUBSYSTEM:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_CLK" "RISCV_SUBSYSTEM:EMMC_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_CMD" "RISCV_SUBSYSTEM:EMMC_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA0" "RISCV_SUBSYSTEM:EMMC_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA1" "RISCV_SUBSYSTEM:EMMC_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA2" "RISCV_SUBSYSTEM:EMMC_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA3" "RISCV_SUBSYSTEM:EMMC_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA4" "RISCV_SUBSYSTEM:EMMC_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA5" "RISCV_SUBSYSTEM:EMMC_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA6" "RISCV_SUBSYSTEM:EMMC_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA7" "RISCV_SUBSYSTEM:EMMC_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_RSTN" "RISCV_SUBSYSTEM:EMMC_RSTN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_STRB" "RISCV_SUBSYSTEM:EMMC_STRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:interrupt[0:0]" "RISCV_SUBSYSTEM:MSS_INT_F2M_3_7[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SCL" "RISCV_SUBSYSTEM:I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SDA" "RISCV_SUBSYSTEM:I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "RISCV_SUBSYSTEM:ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_10_USER_LED_7" "RISCV_SUBSYSTEM:GPIO_2_M2F[7:7]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_11_USER_LED_8" "RISCV_SUBSYSTEM:GPIO_2_M2F[8:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_12_USER_LED_9" "RISCV_SUBSYSTEM:GPIO_2_M2F[9:9]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_13_USER_LED_10" "RISCV_SUBSYSTEM:GPIO_2_M2F[10:10]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_14_USER_LED_11" "RISCV_SUBSYSTEM:GPIO_2_M2F[11:11]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_3_USER_LED_0" "RISCV_SUBSYSTEM:GPIO_2_M2F[0:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_4_USER_LED_1" "RISCV_SUBSYSTEM:GPIO_2_M2F[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_5_USER_LED_2" "RISCV_SUBSYSTEM:GPIO_2_M2F[2:2]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_6_USER_LED_3" "RISCV_SUBSYSTEM:GPIO_2_M2F[3:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_7_USER_LED_4" "RISCV_SUBSYSTEM:GPIO_2_M2F[4:4]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_8_USER_LED_5" "RISCV_SUBSYSTEM:GPIO_2_M2F[5:5]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_9_USER_LED_6" "RISCV_SUBSYSTEM:GPIO_2_M2F[6:6]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P9_11" "RISCV_SUBSYSTEM:MMUART_4_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P9_13" "RISCV_SUBSYSTEM:MMUART_4_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P9_19" "RISCV_SUBSYSTEM:I2C0_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P9_20" "RISCV_SUBSYSTEM:I2C0_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P9_24" "RISCV_SUBSYSTEM:CAN_1_RXBUS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P9_25" "RISCV_SUBSYSTEM:CAN_1_TX_EBL_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"P9_26" "RISCV_SUBSYSTEM:CAN_1_TXBUS_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_INTn" "RISCV_SUBSYSTEM:PHY_INTn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_MDC" "RISCV_SUBSYSTEM:PHY_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PHY_MDIO" "RISCV_SUBSYSTEM:PHY_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK" "RISCV_SUBSYSTEM:REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"REFCLK_N" "RISCV_SUBSYSTEM:REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RESET_N" "RISCV_SUBSYSTEM:RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SD_CARD_CS" "SD_CARD_CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SD_DET" "SD_DET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SGMII_RX0_N" "SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SGMII_RX0_P" "SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SGMII_RX1_N" "SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SGMII_RX1_P" "SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SGMII_TX0_N" "SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SGMII_TX0_P" "SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SGMII_TX1_N" "SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:SGMII_TX1_P" "SGMII_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:UART0_RXD" "UART0_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:UART0_TXD" "UART0_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_CLK" "USB0_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DATA0" "USB0_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DATA1" "USB0_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DATA2" "USB0_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DATA3" "USB0_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DATA4" "USB0_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DATA5" "USB0_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DATA6" "USB0_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DATA7" "USB0_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_DIR" "USB0_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_NXT" "USB0_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_OCn" "USB0_OCn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USB_STP" "USB0_STP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:USER_BUTTON" "USER_BUTTON" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RISCV_SUBSYSTEM:VIO_ENABLE" "VIO_ENABLE" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CA" "RISCV_SUBSYSTEM:CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "RISCV_SUBSYSTEM:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "RISCV_SUBSYSTEM:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "RISCV_SUBSYSTEM:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "RISCV_SUBSYSTEM:DQS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:PSTRB" "RISCV_SUBSYSTEM:FIC_3_APB_M_PSTRB" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:APB_INITIATOR" "RISCV_SUBSYSTEM:FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FABRIC_PERIPHERALS_0:AXI4_INITIATOR" "RISCV_SUBSYSTEM:FIC_0_AXI4_INITIATOR" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "TOP"
generate_component -component_name ${sd_name}
