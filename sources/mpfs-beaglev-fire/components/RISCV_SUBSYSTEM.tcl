# Creating SmartDesign "RISCV_SUBSYSTEM"
set sd_name {RISCV_SUBSYSTEM}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_IRQn} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_RXBUS_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_STRB} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLOCK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WLAST} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WVALID} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_out_low_pready} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_out_low_pslverr} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_CTS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_RXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDI_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_2_RXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_3_RXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_RXD} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_INT} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_INTn} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DET} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX1_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DI} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {UART0_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_CLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DIR} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_NXT} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_OCn} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USER_BUTTON} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_CSn} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_SCK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TXBUS_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_0_TX_EBL_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CLK} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_RSTN} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RLAST} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RVALID} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WREADY} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_out_low_penable} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_out_low_psel} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_out_low_pwrite} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_RTS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_W_DISABLE1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_W_DISABLE2} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDC_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDO_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_1_MDO_OE_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_2_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_3_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_TXD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DLL_LOCKS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_RESET_N_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ODT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_MDC} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {RESET_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CARD_CS} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX0_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_TX1_P} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_SS1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_SS1} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {UART0_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_STP} -port_direction {OUT} -port_is_pad {1}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C0_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C0_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_1_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PHY_MDIO} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA4} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA5} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA6} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB_DATA7} -port_direction {INOUT} -port_is_pad {1}

# Create top level Bus Ports
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RID} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RRESP} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWADDR} -port_direction {IN} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWBURST} -port_direction {IN} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWCACHE} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWID} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLEN} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWPROT} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWQOS} -port_direction {IN} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWSIZE} -port_direction {IN} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WDATA} -port_direction {IN} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WSTRB} -port_direction {IN} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_out_low_prdata} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_2_F2M} -port_direction {IN} -port_range {[27:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_3_7} -port_direction {IN} -port_range {[7:3]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_56_58} -port_direction {IN} -port_range {[58:56]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_A} -port_direction {IN} -port_range {[15:8]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_B} -port_direction {IN} -port_range {[23:16]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_C} -port_direction {IN} -port_range {[31:24]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_D} -port_direction {IN} -port_range {[39:32]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_E} -port_direction {IN} -port_range {[47:40]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_F} -port_direction {IN} -port_range {[55:48]}

sd_create_bus_port -sd_name ${sd_name} -port_name {CA} -port_direction {OUT} -port_range {[5:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WSTRB} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWADDR} -port_direction {OUT} -port_range {[37:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWBURST} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWCACHE} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWID} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLEN} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWPROT} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWQOS} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWSIZE} -port_direction {OUT} -port_range {[2:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WSTRB} -port_direction {OUT} -port_range {[7:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RDATA} -port_direction {OUT} -port_range {[63:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RID} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RRESP} -port_direction {OUT} -port_range {[1:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_out_low_paddr} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_out_low_pwdata} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_M_PSTRB} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_2_M2F} -port_direction {OUT} -port_range {[27:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {GPIO_2_OE_M2F} -port_direction {OUT} -port_range {[27:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[3:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[31:0]} -port_is_pad {1}

# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_2_AXI4_TARGET} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {slave} -port_bif_mapping {\
"AWID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWID" \
"AWADDR:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWADDR" \
"AWLEN:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLEN" \
"AWSIZE:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWSIZE" \
"AWBURST:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWBURST" \
"AWLOCK:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWLOCK" \
"AWCACHE:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWCACHE" \
"AWPROT:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWPROT" \
"AWQOS:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWQOS" \
"AWVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWVALID" \
"AWREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_AWREADY" \
"WDATA:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WDATA" \
"WSTRB:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WSTRB" \
"WLAST:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WLAST" \
"WVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WVALID" \
"WREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_WREADY" \
"BID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BID" \
"BRESP:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BRESP" \
"BVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BVALID" \
"BREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_BREADY" \
"ARID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARID" \
"ARADDR:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARADDR" \
"ARLEN:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLEN" \
"ARSIZE:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARSIZE" \
"ARBURST:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARBURST" \
"ARLOCK:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARLOCK" \
"ARCACHE:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARCACHE" \
"ARPROT:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARPROT" \
"ARQOS:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARQOS" \
"ARVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARVALID" \
"ARREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_ARREADY" \
"RID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RID" \
"RDATA:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RDATA" \
"RRESP:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RRESP" \
"RLAST:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RLAST" \
"RVALID:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RVALID" \
"RREADY:FIC_2_AXI4_TARGET_FIC_2_AXI4_S_RREADY" }

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_TARGET} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {slave} -port_bif_mapping {\
"AWID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWID" \
"AWADDR:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWADDR" \
"AWLEN:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLEN" \
"AWSIZE:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWSIZE" \
"AWBURST:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWBURST" \
"AWLOCK:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWLOCK" \
"AWCACHE:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWCACHE" \
"AWPROT:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWPROT" \
"AWQOS:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWQOS" \
"AWVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWVALID" \
"AWREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_AWREADY" \
"WDATA:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WDATA" \
"WSTRB:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WSTRB" \
"WLAST:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WLAST" \
"WVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WVALID" \
"WREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_WREADY" \
"BID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BID" \
"BRESP:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BRESP" \
"BVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BVALID" \
"BREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_BREADY" \
"ARID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARID" \
"ARADDR:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARADDR" \
"ARLEN:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLEN" \
"ARSIZE:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARSIZE" \
"ARBURST:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARBURST" \
"ARLOCK:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARLOCK" \
"ARCACHE:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARCACHE" \
"ARPROT:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARPROT" \
"ARQOS:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARQOS" \
"ARVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARVALID" \
"ARREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_ARREADY" \
"RID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RID" \
"RDATA:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RDATA" \
"RRESP:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RRESP" \
"RLAST:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RLAST" \
"RVALID:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RVALID" \
"RREADY:FIC_1_AXI4_TARGET_FIC_1_AXI4_S_RREADY" }

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_TARGET} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {slave} -port_bif_mapping {\
"AWID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWID" \
"AWADDR:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWADDR" \
"AWLEN:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLEN" \
"AWSIZE:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWSIZE" \
"AWBURST:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWBURST" \
"AWLOCK:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWLOCK" \
"AWCACHE:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWCACHE" \
"AWPROT:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWPROT" \
"AWQOS:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWQOS" \
"AWVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWVALID" \
"AWREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_AWREADY" \
"WDATA:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WDATA" \
"WSTRB:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WSTRB" \
"WLAST:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WLAST" \
"WVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WVALID" \
"WREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_WREADY" \
"BID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BID" \
"BRESP:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BRESP" \
"BVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BVALID" \
"BREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_BREADY" \
"ARID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARID" \
"ARADDR:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARADDR" \
"ARLEN:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLEN" \
"ARSIZE:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARSIZE" \
"ARBURST:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARBURST" \
"ARLOCK:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARLOCK" \
"ARCACHE:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARCACHE" \
"ARPROT:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARPROT" \
"ARQOS:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARQOS" \
"ARVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARVALID" \
"ARREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_ARREADY" \
"RID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RID" \
"RDATA:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RDATA" \
"RRESP:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RRESP" \
"RLAST:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RLAST" \
"RVALID:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RVALID" \
"RREADY:FIC_0_AXI4_TARGET_FIC_0_AXI4_S_RREADY" }

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_0_AXI4_INITIATOR} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWID" \
"AWADDR:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWADDR" \
"AWLEN:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLEN" \
"AWSIZE:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWSIZE" \
"AWBURST:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWBURST" \
"AWLOCK:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWLOCK" \
"AWCACHE:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWCACHE" \
"AWPROT:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWPROT" \
"AWQOS:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWQOS" \
"AWVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWVALID" \
"AWREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_AWREADY" \
"WDATA:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WDATA" \
"WSTRB:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WSTRB" \
"WLAST:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WLAST" \
"WVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WVALID" \
"WREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_WREADY" \
"BID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BID" \
"BRESP:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BRESP" \
"BVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BVALID" \
"BREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_BREADY" \
"ARID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARID" \
"ARADDR:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARADDR" \
"ARLEN:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLEN" \
"ARSIZE:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARSIZE" \
"ARBURST:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARBURST" \
"ARLOCK:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARLOCK" \
"ARCACHE:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARCACHE" \
"ARPROT:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARPROT" \
"ARQOS:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARQOS" \
"ARVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARVALID" \
"ARREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_ARREADY" \
"RID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RID" \
"RDATA:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RDATA" \
"RRESP:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RRESP" \
"RLAST:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RLAST" \
"RVALID:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RVALID" \
"RREADY:FIC_0_AXI4_INITIATOR_FIC_0_AXI4_M_RREADY" }

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_1_AXI4_INITIATOR} -port_bif_vlnv {AMBA:AMBA4:AXI4:r0p0_0} -port_bif_role {master} -port_bif_mapping {\
"AWID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWID" \
"AWADDR:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWADDR" \
"AWLEN:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLEN" \
"AWSIZE:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWSIZE" \
"AWBURST:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWBURST" \
"AWLOCK:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWLOCK" \
"AWCACHE:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWCACHE" \
"AWPROT:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWPROT" \
"AWQOS:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWQOS" \
"AWVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWVALID" \
"AWREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_AWREADY" \
"WDATA:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WDATA" \
"WSTRB:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WSTRB" \
"WLAST:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WLAST" \
"WVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WVALID" \
"WREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_WREADY" \
"BID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BID" \
"BRESP:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BRESP" \
"BVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BVALID" \
"BREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_BREADY" \
"ARID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARID" \
"ARADDR:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARADDR" \
"ARLEN:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLEN" \
"ARSIZE:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARSIZE" \
"ARBURST:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARBURST" \
"ARLOCK:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARLOCK" \
"ARCACHE:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARCACHE" \
"ARPROT:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARPROT" \
"ARQOS:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARQOS" \
"ARVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARVALID" \
"ARREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_ARREADY" \
"RID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RID" \
"RDATA:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RDATA" \
"RRESP:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RRESP" \
"RLAST:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RLAST" \
"RVALID:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RVALID" \
"RREADY:FIC_1_AXI4_INITIATOR_FIC_1_AXI4_M_RREADY" }

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {master} -port_bif_mapping {\
"PADDR:FIC_3_APB_INITIATOR_out_low_paddr" \
"PSELx:FIC_3_APB_INITIATOR_out_low_psel" \
"PENABLE:FIC_3_APB_INITIATOR_out_low_penable" \
"PWRITE:FIC_3_APB_INITIATOR_out_low_pwrite" \
"PRDATA:FIC_3_APB_INITIATOR_out_low_prdata" \
"PWDATA:FIC_3_APB_INITIATOR_out_low_pwdata" \
"PREADY:FIC_3_APB_INITIATOR_out_low_pready" \
"PSLVERR:FIC_3_APB_INITIATOR_out_low_pslverr" }

sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[21:21]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[22:22]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[23:23]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[24:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[25:25]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[26:26]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[27:27]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_M2F} -pin_slices {[9:9]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[21:21]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[22:22]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[23:23]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[24:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[25:25]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[26:26]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[27:27]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_OE_M2F} -pin_slices {[9:9]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[0:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[10:10]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[11:11]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[12:12]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[13:13]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[14:14]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[15:15]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[16:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[17:17]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[18:18]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[19:19]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[20:20]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[21:21]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[22:22]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[23:23]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[24:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[25:25]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[26:26]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[27:27]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[3:3]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[4:4]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[5:5]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[6:6]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[7:7]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[8:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {GPIO_2_F2M} -pin_slices {[9:9]}
# Add AND_DLL_LOCKS instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND_DLL_LOCKS}



# Add APB_ARBITER_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {APB_ARBITER} -instance_name {APB_ARBITER_0}
# Exporting Parameters of instance APB_ARBITER_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {APB_ARBITER_0} -params {\
"select_bit:28" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {APB_ARBITER_0}
sd_update_instance -sd_name ${sd_name} -instance_name {APB_ARBITER_0}



# Add I2C0_SCL_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C0_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C0_SCL_BIBUF:D} -value {GND}



# Add I2C0_SDA_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C0_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C0_SDA_BIBUF:D} -value {GND}



# Add IHC_SUBSYSTEM_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IHC_SUBSYSTEM} -instance_name {IHC_SUBSYSTEM_0}



# Add PF_SOC_MSS instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_SOC_MSS} -instance_name {PF_SOC_MSS}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[0:0]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MSS_INT_F2M[0:0]} -value {GND}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[15:8]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[1:1]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[23:16]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[2:2]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[31:24]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[39:32]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[47:40]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[55:48]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[58:56]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[59:59]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[60:60]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[61:61]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[62:62]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[63:63]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS:MSS_INT_F2M} -pin_slices {[7:3]}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_DCD_F2M} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_RI_F2M} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_DSR_F2M} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_SS_F2M} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_CLK_F2M} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_1_SS_F2M} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_1_CLK_F2M} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MSS_RESET_N_F2M} -value {VCC}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_DTR_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MMUART_1_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_SS1_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_DO_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:SPI_0_CLK_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:PLL_CPU_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:PLL_DDR_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:PLL_SGMII_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS:MSS_INT_M2F}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_CSn" "PF_SOC_MSS:QSPI_SS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_IRQn" "PF_SOC_MSS:GPIO_1_20_IN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_MISO" "PF_SOC_MSS:QSPI_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_MOSI" "PF_SOC_MSS:QSPI_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_SCK" "PF_SOC_MSS:QSPI_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:A" "PF_SOC_MSS:FIC_0_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:B" "PF_SOC_MSS:FIC_1_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:C" "PF_SOC_MSS:FIC_2_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:D" "PF_SOC_MSS:FIC_3_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND_DLL_LOCKS:Y" "MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_RXBUS_F2M" "PF_SOC_MSS:CAN_0_RXBUS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_TXBUS_M2F" "PF_SOC_MSS:CAN_0_TXBUS_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_0_TX_EBL_M2F" "PF_SOC_MSS:CAN_0_TX_EBL_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK" "PF_SOC_MSS:CK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE" "PF_SOC_MSS:CKE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK_N" "PF_SOC_MSS:CK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS" "PF_SOC_MSS:CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_CLK" "PF_SOC_MSS:EMMC_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_CMD" "PF_SOC_MSS:EMMC_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA0" "PF_SOC_MSS:EMMC_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA1" "PF_SOC_MSS:EMMC_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA2" "PF_SOC_MSS:EMMC_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA3" "PF_SOC_MSS:EMMC_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA4" "PF_SOC_MSS:EMMC_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA5" "PF_SOC_MSS:EMMC_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA6" "PF_SOC_MSS:EMMC_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_DATA7" "PF_SOC_MSS:EMMC_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_RSTN" "PF_SOC_MSS:EMMC_RSTN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EMMC_STRB" "PF_SOC_MSS:EMMC_STRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_ACLK" "PF_SOC_MSS:FIC_0_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_ACLK" "PF_SOC_MSS:FIC_1_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_ACLK" "PF_SOC_MSS:FIC_2_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PCLK" "IHC_SUBSYSTEM_0:pclk" "PF_SOC_MSS:FIC_3_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[0:0]" "PF_SOC_MSS:GPIO_2_F2M_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[10:10]" "PF_SOC_MSS:GPIO_2_F2M_10" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[11:11]" "PF_SOC_MSS:GPIO_2_F2M_11" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[12:12]" "PF_SOC_MSS:GPIO_2_F2M_12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[13:13]" "PF_SOC_MSS:GPIO_2_F2M_13" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[14:14]" "PF_SOC_MSS:GPIO_2_F2M_14" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[15:15]" "PF_SOC_MSS:GPIO_2_F2M_15" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[16:16]" "PF_SOC_MSS:GPIO_2_F2M_16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[17:17]" "PF_SOC_MSS:GPIO_2_F2M_17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[18:18]" "PF_SOC_MSS:GPIO_2_F2M_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[19:19]" "PF_SOC_MSS:GPIO_2_F2M_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[1:1]" "PF_SOC_MSS:GPIO_2_F2M_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[20:20]" "PF_SOC_MSS:GPIO_2_F2M_20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[21:21]" "PF_SOC_MSS:GPIO_2_F2M_21" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[22:22]" "PF_SOC_MSS:GPIO_2_F2M_22" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[23:23]" "PF_SOC_MSS:GPIO_2_F2M_23" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[24:24]" "PF_SOC_MSS:GPIO_2_F2M_24" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[25:25]" "PF_SOC_MSS:GPIO_2_F2M_25" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[26:26]" "PF_SOC_MSS:GPIO_2_F2M_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[27:27]" "PF_SOC_MSS:GPIO_2_F2M_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[2:2]" "PF_SOC_MSS:GPIO_2_F2M_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[3:3]" "PF_SOC_MSS:GPIO_2_F2M_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[4:4]" "PF_SOC_MSS:GPIO_2_F2M_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[5:5]" "PF_SOC_MSS:GPIO_2_F2M_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[6:6]" "PF_SOC_MSS:GPIO_2_F2M_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[7:7]" "PF_SOC_MSS:GPIO_2_F2M_7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[8:8]" "PF_SOC_MSS:GPIO_2_F2M_8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M[9:9]" "PF_SOC_MSS:GPIO_2_F2M_9" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[0:0]" "PF_SOC_MSS:GPIO_2_M2F_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[10:10]" "PF_SOC_MSS:GPIO_2_M2F_10" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[11:11]" "PF_SOC_MSS:GPIO_2_M2F_11" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[12:12]" "PF_SOC_MSS:GPIO_2_M2F_12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[13:13]" "PF_SOC_MSS:GPIO_2_M2F_13" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[14:14]" "PF_SOC_MSS:GPIO_2_M2F_14" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[15:15]" "PF_SOC_MSS:GPIO_2_M2F_15" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[16:16]" "PF_SOC_MSS:GPIO_2_M2F_16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[17:17]" "PF_SOC_MSS:GPIO_2_M2F_17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[18:18]" "PF_SOC_MSS:GPIO_2_M2F_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[19:19]" "PF_SOC_MSS:GPIO_2_M2F_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[1:1]" "PF_SOC_MSS:GPIO_2_M2F_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[20:20]" "PF_SOC_MSS:GPIO_2_M2F_20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[21:21]" "PF_SOC_MSS:GPIO_2_M2F_21" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[22:22]" "PF_SOC_MSS:GPIO_2_M2F_22" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[23:23]" "PF_SOC_MSS:GPIO_2_M2F_23" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[24:24]" "PF_SOC_MSS:GPIO_2_M2F_24" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[25:25]" "PF_SOC_MSS:GPIO_2_M2F_25" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[26:26]" "PF_SOC_MSS:GPIO_2_M2F_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[27:27]" "PF_SOC_MSS:GPIO_2_M2F_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[2:2]" "PF_SOC_MSS:GPIO_2_M2F_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[3:3]" "PF_SOC_MSS:GPIO_2_M2F_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[4:4]" "PF_SOC_MSS:GPIO_2_M2F_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[5:5]" "PF_SOC_MSS:GPIO_2_M2F_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[6:6]" "PF_SOC_MSS:GPIO_2_M2F_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[7:7]" "PF_SOC_MSS:GPIO_2_M2F_7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[8:8]" "PF_SOC_MSS:GPIO_2_M2F_8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F[9:9]" "PF_SOC_MSS:GPIO_2_M2F_9" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[0:0]" "PF_SOC_MSS:GPIO_2_OE_M2F_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[10:10]" "PF_SOC_MSS:GPIO_2_OE_M2F_10" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[11:11]" "PF_SOC_MSS:GPIO_2_OE_M2F_11" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[12:12]" "PF_SOC_MSS:GPIO_2_OE_M2F_12" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[13:13]" "PF_SOC_MSS:GPIO_2_OE_M2F_13" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[14:14]" "PF_SOC_MSS:GPIO_2_OE_M2F_14" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[15:15]" "PF_SOC_MSS:GPIO_2_OE_M2F_15" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[16:16]" "PF_SOC_MSS:GPIO_2_OE_M2F_16" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[17:17]" "PF_SOC_MSS:GPIO_2_OE_M2F_17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[18:18]" "PF_SOC_MSS:GPIO_2_OE_M2F_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[19:19]" "PF_SOC_MSS:GPIO_2_OE_M2F_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[1:1]" "PF_SOC_MSS:GPIO_2_OE_M2F_1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[20:20]" "PF_SOC_MSS:GPIO_2_OE_M2F_20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[21:21]" "PF_SOC_MSS:GPIO_2_OE_M2F_21" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[22:22]" "PF_SOC_MSS:GPIO_2_OE_M2F_22" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[23:23]" "PF_SOC_MSS:GPIO_2_OE_M2F_23" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[24:24]" "PF_SOC_MSS:GPIO_2_OE_M2F_24" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[25:25]" "PF_SOC_MSS:GPIO_2_OE_M2F_25" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[26:26]" "PF_SOC_MSS:GPIO_2_OE_M2F_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[27:27]" "PF_SOC_MSS:GPIO_2_OE_M2F_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[2:2]" "PF_SOC_MSS:GPIO_2_OE_M2F_2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[3:3]" "PF_SOC_MSS:GPIO_2_OE_M2F_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[4:4]" "PF_SOC_MSS:GPIO_2_OE_M2F_4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[5:5]" "PF_SOC_MSS:GPIO_2_OE_M2F_5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[6:6]" "PF_SOC_MSS:GPIO_2_OE_M2F_6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[7:7]" "PF_SOC_MSS:GPIO_2_OE_M2F_7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[8:8]" "PF_SOC_MSS:GPIO_2_OE_M2F_8" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_OE_M2F[9:9]" "PF_SOC_MSS:GPIO_2_OE_M2F_9" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SCL" "I2C0_SCL_BIBUF:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SCL_BIBUF:E" "PF_SOC_MSS:I2C_0_SCL_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SCL_BIBUF:Y" "PF_SOC_MSS:I2C_0_SCL_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SDA" "I2C0_SDA_BIBUF:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SDA_BIBUF:E" "PF_SOC_MSS:I2C_0_SDA_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C0_SDA_BIBUF:Y" "PF_SOC_MSS:I2C_0_SDA_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SCL" "PF_SOC_MSS:I2C_1_SCL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_1_SDA" "PF_SOC_MSS:I2C_1_SDA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:E51_IRQ" "PF_SOC_MSS:MSS_INT_F2M[63:63]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_1_IRQ" "PF_SOC_MSS:MSS_INT_F2M[62:62]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_2_IRQ" "PF_SOC_MSS:MSS_INT_F2M[61:61]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_3_IRQ" "PF_SOC_MSS:MSS_INT_F2M[60:60]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_4_IRQ" "PF_SOC_MSS:MSS_INT_F2M[59:59]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:presetn" "PRESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_UART_CTS" "PF_SOC_MSS:MMUART_1_CTS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_UART_RTS" "PF_SOC_MSS:MMUART_1_RTS_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_UART_RXD" "PF_SOC_MSS:MMUART_1_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_UART_TXD" "PF_SOC_MSS:MMUART_1_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_W_DISABLE1" "PF_SOC_MSS:GPIO_2_M2F_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_W_DISABLE2" "PF_SOC_MSS:GPIO_2_M2F_29" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_1_MDC_M2F" "PF_SOC_MSS:MAC_1_MDC_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_1_MDI_F2M" "PF_SOC_MSS:MAC_1_MDI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_1_MDO_M2F" "PF_SOC_MSS:MAC_1_MDO_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_1_MDO_OE_M2F" "PF_SOC_MSS:MAC_1_MDO_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_2_RXD" "PF_SOC_MSS:MMUART_2_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_2_TXD" "PF_SOC_MSS:MMUART_2_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_3_RXD" "PF_SOC_MSS:MMUART_3_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_3_TXD" "PF_SOC_MSS:MMUART_3_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_RXD" "PF_SOC_MSS:MMUART_4_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_TXD" "PF_SOC_MSS:MMUART_4_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_RESET_N_M2F" "PF_SOC_MSS:MSS_RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT" "PF_SOC_MSS:ODT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_INT" "PF_SOC_MSS:MSS_INT_F2M[1:1]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_0_12_OUT" "SD_CARD_CS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_0_13_IN" "USER_BUTTON" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_1_23_IN" "USB_OCn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_F2M_31" "SD_DET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:GPIO_2_M2F_30" "VIO_ENABLE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MAC_0_MDC" "PHY_MDC" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MAC_0_MDIO" "PHY_MDIO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_0_RXD" "UART0_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MMUART_0_TXD" "UART0_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:MSS_INT_F2M[2:2]" "PHY_INTn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:REFCLK" "REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:REFCLK_N" "REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:RESET_N" "RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SGMII_RX0_N" "SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SGMII_RX0_P" "SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SGMII_RX1_N" "SGMII_RX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SGMII_RX1_P" "SGMII_RX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SGMII_TX0_N" "SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SGMII_TX0_P" "SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SGMII_TX1_N" "SGMII_TX1_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SGMII_TX1_P" "SGMII_TX1_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SPI_0_CLK_M2F" "SPI_0_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SPI_0_DI_F2M" "SPI_0_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SPI_0_DO_M2F" "SPI_0_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SPI_0_SS1_M2F" "SPI_0_SS1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SPI_1_CLK_M2F" "SPI_1_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SPI_1_DI_F2M" "SPI_1_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SPI_1_DO_M2F" "SPI_1_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:SPI_1_SS1_M2F" "SPI_1_SS1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_CLK" "USB_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA0" "USB_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA1" "USB_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA2" "USB_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA3" "USB_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA4" "USB_DATA4" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA5" "USB_DATA5" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA6" "USB_DATA6" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DATA7" "USB_DATA7" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_DIR" "USB_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_NXT" "USB_NXT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS:USB_STP" "USB_STP" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CA" "PF_SOC_MSS:CA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "PF_SOC_MSS:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "PF_SOC_MSS:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "PF_SOC_MSS:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "PF_SOC_MSS:DQS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_APB_M_PSTRB" "PF_SOC_MSS:FIC_3_APB_M_PSTRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_3_7" "PF_SOC_MSS:MSS_INT_F2M[7:3]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_56_58" "PF_SOC_MSS:MSS_INT_F2M[58:56]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_A" "PF_SOC_MSS:MSS_INT_F2M[15:8]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_B" "PF_SOC_MSS:MSS_INT_F2M[23:16]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_C" "PF_SOC_MSS:MSS_INT_F2M[31:24]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_D" "PF_SOC_MSS:MSS_INT_F2M[39:32]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_E" "PF_SOC_MSS:MSS_INT_F2M[47:40]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_F" "PF_SOC_MSS:MSS_INT_F2M[55:48]" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_ARBITER_0:APB_MASTER_high" "IHC_SUBSYSTEM_0:APB3mmaster" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_ARBITER_0:APB_MASTER_low" "FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_ARBITER_0:APB_MMASTER" "PF_SOC_MSS:FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_AXI4_INITIATOR" "PF_SOC_MSS:FIC_0_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_AXI4_TARGET" "PF_SOC_MSS:FIC_0_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_AXI4_INITIATOR" "PF_SOC_MSS:FIC_1_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_AXI4_TARGET" "PF_SOC_MSS:FIC_1_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_AXI4_TARGET" "PF_SOC_MSS:FIC_2_AXI4_TARGET" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "RISCV_SUBSYSTEM"
generate_component -component_name ${sd_name}
