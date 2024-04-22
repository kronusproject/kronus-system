# Microchip
MICROCHIP_INSTALL_DIR=${MICROCHIP_INSTALL_DIR:=/opt/Microchip}
export SC_INSTALL_DIR=$MICROCHIP_INSTALL_DIR/SoftConsole-v2022.2-RISC-V-747
export LIBERO_INSTALL_DIR=$MICROCHIP_INSTALL_DIR/Libero_SoC_v2024.1

# SoftConsole
export PATH=$PATH:$SC_INSTALL_DIR/riscv-unknown-elf-gcc/bin
export FPGENPROG=$LIBERO_INSTALL_DIR/Libero/bin64/fpgenprog

# Libero
export PATH=$PATH:$LIBERO_INSTALL_DIR/Libero/bin:$LIBERO_INSTALL_DIR/Libero/bin64
export PATH=$PATH:$LIBERO_INSTALL_DIR/Synplify/bin
export PATH=$PATH:$LIBERO_INSTALL_DIR/Model/modeltech/linuxacoem

# License
export LM_LICENSE_FILE=1702@localhost
export SNPSLMD_LICENSE_FILE=1702@localhost

