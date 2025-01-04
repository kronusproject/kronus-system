
#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m'


usage() {
    echo "Set MICROCHIP_INSTALL_DIR environment variable or copy this file to the root if the install location"
    echo
    echo "usage: source ${BASH_SOURCE[0]}"
    echo
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo -e "${RED}This script should be sourced not executed${NC}" 1>&2
    usage
    exit 1
fi

if [[ ! -v MICROCHIP_INSTALL_DIR ]]; then
    MICROCHIP_INSTALL_DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")
fi

# Install paths
LIBERO_INSTALL_DIR=$MICROCHIP_INSTALL_DIR/Libero_SoC_v2024.1
SC_INSTALL_DIR=$MICROCHIP_INSTALL_DIR/SoftConsole-v2022.2-RISC-V-747

if [[ ! -d ${MICROCHIP_INSTALL_DIR} ]]; then
  echo -e "${RED}Libero install directory does not exist: ${MICROCHIP_INSTALL_DIR}${NC}" 1>&2
  usage
  return 1
fi

if [[ ! -d ${LIBERO_INSTALL_DIR} ]]; then
  echo -e "${RED}Libero install directory does not exist: ${LIBERO_INSTALL_DIR}${NC}" 1>&2
  usage
  return 1
fi

if [[ ! -d ${SC_INSTALL_DIR} ]]; then
  echo -e "${RED}Libero install directory does not exist: ${SC_INSTALL_DIR}${NC}" 1>&2
  usage
  return 1
fi

echo "Libero install: ${LIBERO_INSTALL_DIR}"
echo "SoftConsole install: ${SC_INSTALL_DIR}"

export SC_INSTALL_DIR
export LIBERO_INSTALL_DIR

# SoftConsole
export PATH=$PATH:$SC_INSTALL_DIR/riscv-unknown-elf-gcc/bin
export FPGENPROG=$LIBERO_INSTALL_DIR/Libero/bin64/fpgenprog

# Libero
export PATH=$PATH:$LIBERO_INSTALL_DIR/Libero/bin:$LIBERO_INSTALL_DIR/Libero/bin64
export PATH=$PATH:$LIBERO_INSTALL_DIR/Synplify/bin
export PATH=$PATH:$LIBERO_INSTALL_DIR/QuestaSim/bin

# License
export LM_LICENSE_FILE=1702@${LICENSE_SERVER:=localhost}
export SNPSLMD_LICENSE_FILE=1702@${LICENSE_SERVER:=localhost}

