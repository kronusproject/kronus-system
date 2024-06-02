puts "======== M2: NONE ========"

set sd_name {TOP}

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:FIC_0_AXI4_TARGET}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_APB_MTARGET}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:PCIE_INT} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_UART_RXD} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_UART_CTS} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_UART_TXD}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:M2_UART_RTS}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RISCV_SUBSYSTEM:FIC_0_AXI4_INITIATOR}
