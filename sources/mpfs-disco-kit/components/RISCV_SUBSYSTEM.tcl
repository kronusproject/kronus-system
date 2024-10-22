# Creating SmartDesign "RISCV_SUBSYSTEM"
set sd_name {RISCV_SUBSYSTEM}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_RXBUS_F2M} -port_direction {IN}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PREADY} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PSLVERR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_PRESETN} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_24} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_25} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_26} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_27} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_28} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_30} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_F2M_31} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_RXD_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_RXD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_RESET_N_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REFCLK} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CD} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_WP} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SGMII_RX0_P} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DI_F2M} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DI} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ACT_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BG0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAN_1_TXBUS_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CAS_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK0_N} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CK0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CKE0} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CS0_N} -port_direction {OUT} -port_is_pad {1}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PENABLE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PSEL} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PWRITE} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_20_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_1_9_OUT} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_26_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_27_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_28_OUT} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_17} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_18} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_19} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_20} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_21} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_22} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {GPIO_2_M2F_23} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MAC_0_MDC} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_0_TXD_M2F} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_1_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MMUART_4_TXD} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DLL_LOCKS} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_RESET_N_M2F} -port_direction {OUT}
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
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_DO} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_DO} -port_direction {OUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {WE_N} -port_direction {OUT} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_0_SCL} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {I2C_0_SDA} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MDIO_PAD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_CMD} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA0} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA1} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA2} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SD_DATA3} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_0_SS} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_CLK} -port_direction {INOUT} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {SPI_1_SS0} -port_direction {INOUT} -port_is_pad {1}

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
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PRDATA} -port_direction {IN} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_F2M_0} -port_direction {IN} -port_range {[58:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {A} -port_direction {OUT} -port_range {[13:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {BA} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DM} -port_direction {OUT} -port_range {[1:0]} -port_is_pad {1}
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
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PADDR} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR_FIC_3_APB_M_PWDATA} -port_direction {OUT} -port_range {[31:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {FIC_3_APB_M_PSTRB} -port_direction {OUT} -port_range {[3:0]}
sd_create_bus_port -sd_name ${sd_name} -port_name {MSS_INT_M2F} -port_direction {OUT} -port_range {[15:0]}

sd_create_bus_port -sd_name ${sd_name} -port_name {DQS_N} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQS} -port_direction {INOUT} -port_range {[1:0]} -port_is_pad {1}
sd_create_bus_port -sd_name ${sd_name} -port_name {DQ} -port_direction {INOUT} -port_range {[15:0]} -port_is_pad {1}

# Create top level Bus interface Ports
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

sd_create_bif_port -sd_name ${sd_name} -port_name {FIC_3_APB_INITIATOR} -port_bif_vlnv {AMBA:AMBA2:APB:r0p0} -port_bif_role {master} -port_bif_mapping {\
"PADDR:FIC_3_APB_INITIATOR_FIC_3_APB_M_PADDR" \
"PSELx:FIC_3_APB_INITIATOR_FIC_3_APB_M_PSEL" \
"PENABLE:FIC_3_APB_INITIATOR_FIC_3_APB_M_PENABLE" \
"PWRITE:FIC_3_APB_INITIATOR_FIC_3_APB_M_PWRITE" \
"PRDATA:FIC_3_APB_INITIATOR_FIC_3_APB_M_PRDATA" \
"PWDATA:FIC_3_APB_INITIATOR_FIC_3_APB_M_PWDATA" \
"PREADY:FIC_3_APB_INITIATOR_FIC_3_APB_M_PREADY" \
"PSLVERR:FIC_3_APB_INITIATOR_FIC_3_APB_M_PSLVERR" }

# Add AND2_GPIO_2_26_OUT instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_GPIO_2_26_OUT}



# Add AND2_GPIO_2_27_OUT instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_GPIO_2_27_OUT}



# Add AND2_GPIO_2_28_OUT instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {AND2_GPIO_2_28_OUT}



# Add AND4_MSS_DLL_LOCKS instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND4} -instance_name {AND4_MSS_DLL_LOCKS}



# Add APB_ARBITER_0 instance
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {APB_ARBITER} -instance_name {APB_ARBITER_0}
# Exporting Parameters of instance APB_ARBITER_0
sd_configure_core_instance -sd_name ${sd_name} -instance_name {APB_ARBITER_0} -params {\
"select_bit:28" }\
-validate_rules 0
sd_save_core_instance_config -sd_name ${sd_name} -instance_name {APB_ARBITER_0}
sd_update_instance -sd_name ${sd_name} -instance_name {APB_ARBITER_0}



# Add I2C_0_SCL_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C_0_SCL_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C_0_SCL_BIBUF:D} -value {GND}



# Add I2C_0_SDA_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {I2C_0_SDA_BIBUF}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {I2C_0_SDA_BIBUF:D} -value {GND}



# Add IHC_SUBSYSTEM_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {IHC_SUBSYSTEM} -instance_name {IHC_SUBSYSTEM_0}



# Add MDIO instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {MDIO}



# Add PF_SOC_MSS_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_SOC_MSS} -instance_name {PF_SOC_MSS_0}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS_0:MSS_INT_F2M} -pin_slices {[58:0]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS_0:MSS_INT_F2M} -pin_slices {[59:59]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS_0:MSS_INT_F2M} -pin_slices {[60:60]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS_0:MSS_INT_F2M} -pin_slices {[61:61]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS_0:MSS_INT_F2M} -pin_slices {[62:62]}
sd_create_pin_slices -sd_name ${sd_name} -pin_name {PF_SOC_MSS_0:MSS_INT_F2M} -pin_slices {[63:63]}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MMUART_0_TXD_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:SPI_0_DO_OE_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:PLL_CPU_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:PLL_DDR_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:PLL_SGMII_LOCK_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_SOF_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_SYNC_FRAME_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_DELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_PDELAY_REQ_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_PDELAY_RESP_TX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_SOF_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_SYNC_FRAME_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_DELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_PDELAY_REQ_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_PDELAY_RESP_RX_M2F}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_SOC_MSS_0:MAC_0_TSU_TIMER_CNT_M2F}



# Add SPI_0_CLK_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {SPI_0_CLK_BIBUF}



# Add SPI_0_SS_BIBUF instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {SPI_0_SS_BIBUF}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ACT_N" "PF_SOC_MSS_0:ACT_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_26_OUT:A" "PF_SOC_MSS_0:GPIO_2_M2F_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_26_OUT:B" "PF_SOC_MSS_0:GPIO_2_OE_M2F_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_26_OUT:Y" "GPIO_2_26_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_27_OUT:A" "PF_SOC_MSS_0:GPIO_2_M2F_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_27_OUT:B" "PF_SOC_MSS_0:GPIO_2_OE_M2F_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_27_OUT:Y" "GPIO_2_27_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_28_OUT:A" "PF_SOC_MSS_0:GPIO_2_M2F_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_28_OUT:B" "PF_SOC_MSS_0:GPIO_2_OE_M2F_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND2_GPIO_2_28_OUT:Y" "GPIO_2_28_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:A" "PF_SOC_MSS_0:FIC_0_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:B" "PF_SOC_MSS_0:FIC_1_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:C" "PF_SOC_MSS_0:FIC_2_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:D" "PF_SOC_MSS_0:FIC_3_DLL_LOCK_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND4_MSS_DLL_LOCKS:Y" "MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_1_RXBUS_F2M" "PF_SOC_MSS_0:CAN_1_RXBUS_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAN_1_TXBUS_M2F" "PF_SOC_MSS_0:CAN_1_TXBUS_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BG0" "PF_SOC_MSS_0:BG0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAS_N" "PF_SOC_MSS_0:CAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK0" "PF_SOC_MSS_0:CK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CK0_N" "PF_SOC_MSS_0:CK0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CKE0" "PF_SOC_MSS_0:CKE0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CS0_N" "PF_SOC_MSS_0:CS0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_ACLK" "PF_SOC_MSS_0:FIC_0_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_ACLK" "PF_SOC_MSS_0:FIC_1_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_ACLK" "PF_SOC_MSS_0:FIC_2_ACLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PCLK" "IHC_SUBSYSTEM_0:pclk" "PF_SOC_MSS_0:FIC_3_PCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PRESETN" "IHC_SUBSYSTEM_0:presetn" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_20_OUT" "PF_SOC_MSS_0:GPIO_1_20_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_1_9_OUT" "PF_SOC_MSS_0:GPIO_1_9_OUT" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_24" "PF_SOC_MSS_0:GPIO_2_F2M_24" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_25" "PF_SOC_MSS_0:GPIO_2_F2M_25" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_26" "PF_SOC_MSS_0:GPIO_2_F2M_26" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_27" "PF_SOC_MSS_0:GPIO_2_F2M_27" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_28" "PF_SOC_MSS_0:GPIO_2_F2M_28" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_30" "PF_SOC_MSS_0:GPIO_2_F2M_30" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_F2M_31" "PF_SOC_MSS_0:GPIO_2_F2M_31" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_17" "PF_SOC_MSS_0:GPIO_2_M2F_17" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_18" "PF_SOC_MSS_0:GPIO_2_M2F_18" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_19" "PF_SOC_MSS_0:GPIO_2_M2F_19" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_20" "PF_SOC_MSS_0:GPIO_2_M2F_20" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_21" "PF_SOC_MSS_0:GPIO_2_M2F_21" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_22" "PF_SOC_MSS_0:GPIO_2_M2F_22" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GPIO_2_M2F_23" "PF_SOC_MSS_0:GPIO_2_M2F_23" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SCL" "I2C_0_SCL_BIBUF:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SCL_BIBUF:E" "PF_SOC_MSS_0:I2C_0_SCL_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SCL_BIBUF:Y" "PF_SOC_MSS_0:I2C_0_SCL_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SDA" "I2C_0_SDA_BIBUF:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SDA_BIBUF:E" "PF_SOC_MSS_0:I2C_0_SDA_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"I2C_0_SDA_BIBUF:Y" "PF_SOC_MSS_0:I2C_0_SDA_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:E51_IRQ" "PF_SOC_MSS_0:MSS_INT_F2M[63:63]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_1_IRQ" "PF_SOC_MSS_0:MSS_INT_F2M[62:62]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_2_IRQ" "PF_SOC_MSS_0:MSS_INT_F2M[61:61]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_3_IRQ" "PF_SOC_MSS_0:MSS_INT_F2M[60:60]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"IHC_SUBSYSTEM_0:U54_4_IRQ" "PF_SOC_MSS_0:MSS_INT_F2M[59:59]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MAC_0_MDC" "PF_SOC_MSS_0:MAC_0_MDC_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDIO:D" "PF_SOC_MSS_0:MAC_0_MDO_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDIO:E" "PF_SOC_MSS_0:MAC_0_MDO_OE_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDIO:PAD" "MDIO_PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MDIO:Y" "PF_SOC_MSS_0:MAC_0_MDI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_RXD_F2M" "PF_SOC_MSS_0:MMUART_0_RXD_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_0_TXD_M2F" "PF_SOC_MSS_0:MMUART_0_TXD_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_RXD" "PF_SOC_MSS_0:MMUART_1_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_1_TXD" "PF_SOC_MSS_0:MMUART_1_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_RXD" "PF_SOC_MSS_0:MMUART_4_RXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MMUART_4_TXD" "PF_SOC_MSS_0:MMUART_4_TXD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_RESET_N_F2M" "PF_SOC_MSS_0:MSS_RESET_N_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_RESET_N_M2F" "PF_SOC_MSS_0:MSS_RESET_N_M2F" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"ODT0" "PF_SOC_MSS_0:ODT0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:RAS_N" "RAS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:REFCLK" "REFCLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:REFCLK_N" "REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:RESET_N" "RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_CD" "SD_CD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_CLK" "SD_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_CMD" "SD_CMD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_DATA0" "SD_DATA0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_DATA1" "SD_DATA1" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_DATA2" "SD_DATA2" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_DATA3" "SD_DATA3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_POW" "SD_POW" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_VOLT_CMD_DIR" "SD_VOLT_CMD_DIR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_VOLT_DIR_0" "SD_VOLT_DIR_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_VOLT_DIR_1_3" "SD_VOLT_DIR_1_3" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_VOLT_EN" "SD_VOLT_EN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_VOLT_SEL" "SD_VOLT_SEL" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SD_WP" "SD_WP" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SGMII_RX0_N" "SGMII_RX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SGMII_RX0_P" "SGMII_RX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SGMII_TX0_N" "SGMII_TX0_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SGMII_TX0_P" "SGMII_TX0_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_0_CLK_F2M" "SPI_0_CLK_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_0_CLK_M2F" "SPI_0_CLK_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_0_CLK_OE_M2F" "SPI_0_CLK_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_0_DI_F2M" "SPI_0_DI_F2M" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_0_DO_M2F" "SPI_0_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_0_SS1_M2F" "SPI_0_SS_BIBUF:D" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_0_SS1_OE_M2F" "SPI_0_SS_BIBUF:E" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_0_SS_F2M" "SPI_0_SS_BIBUF:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_1_CLK" "SPI_1_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_1_DI" "SPI_1_DI" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_1_DO" "SPI_1_DO" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:SPI_1_SS0" "SPI_1_SS0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PF_SOC_MSS_0:WE_N" "WE_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_CLK" "SPI_0_CLK_BIBUF:PAD" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"SPI_0_SS" "SPI_0_SS_BIBUF:PAD" }

# Add bus net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"A" "PF_SOC_MSS_0:A" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"BA" "PF_SOC_MSS_0:BA" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DM" "PF_SOC_MSS_0:DM" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQ" "PF_SOC_MSS_0:DQ" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS" "PF_SOC_MSS_0:DQS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"DQS_N" "PF_SOC_MSS_0:DQS_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_APB_M_PSTRB" "PF_SOC_MSS_0:FIC_3_APB_M_PSTRB" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_F2M_0" "PF_SOC_MSS_0:MSS_INT_F2M[58:0]" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"MSS_INT_M2F" "PF_SOC_MSS_0:MSS_INT_M2F" }

# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_ARBITER_0:APB_MASTER_high" "IHC_SUBSYSTEM_0:APB3mmaster" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_ARBITER_0:APB_MASTER_low" "FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_ARBITER_0:APB_MMASTER" "PF_SOC_MSS_0:FIC_3_APB_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_AXI4_INITIATOR" "PF_SOC_MSS_0:FIC_0_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_AXI4_TARGET" "PF_SOC_MSS_0:FIC_0_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_AXI4_INITIATOR" "PF_SOC_MSS_0:FIC_1_AXI4_INITIATOR" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_AXI4_TARGET" "PF_SOC_MSS_0:FIC_1_AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_AXI4_TARGET" "PF_SOC_MSS_0:FIC_2_AXI4_TARGET" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the SmartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign "RISCV_SUBSYSTEM"
generate_component -component_name ${sd_name}
