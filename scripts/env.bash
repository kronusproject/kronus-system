
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
LIBERO_INSTALL_DIR=$MICROCHIP_INSTALL_DIR/Libero_SoC_2025.1
XPACK_INSTALL_DIR=${XPACK_INSTALL_DIR:-$MICROCHIP_INSTALL_DIR/xpack-riscv-none-elf-gcc-15.2.0-1}
MPFS_BOOTMODE_PROGRAMMER_JAR=${MPFS_BOOTMODE_PROGRAMMER_JAR:-$MICROCHIP_INSTALL_DIR/mpfsBootmodeProgrammer/mpfsBootmodeProgrammer.jar}

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

if [[ ! -d ${XPACK_INSTALL_DIR} ]]; then
  echo -e "${RED}xPack RISC-V GCC install directory does not exist: ${XPACK_INSTALL_DIR}${NC}" 1>&2
  usage
  return 1
fi

if [[ ! -f ${MPFS_BOOTMODE_PROGRAMMER_JAR} ]]; then
  echo -e "${RED}mpfsBootmodeProgrammer.jar does not exist: ${MPFS_BOOTMODE_PROGRAMMER_JAR}${NC}" 1>&2
  return 1
fi

if ! command -v java >/dev/null; then
  echo -e "${RED}java is required to run mpfsBootmodeProgrammer.jar${NC}" 1>&2
  return 1
fi

echo "Libero install: ${LIBERO_INSTALL_DIR}"
echo "xPack RISC-V GCC install: ${XPACK_INSTALL_DIR}"
echo "HSS bootmode programmer: ${MPFS_BOOTMODE_PROGRAMMER_JAR}"
echo "License server: ${LICENSE_SERVER:=localhost}"

export XPACK_INSTALL_DIR
export MPFS_BOOTMODE_PROGRAMMER_JAR
export LIBERO_INSTALL_DIR

# xPack RISC-V GCC (HSS toolchain)
export PATH=$PATH:$XPACK_INSTALL_DIR/bin
export FPGENPROG=$LIBERO_INSTALL_DIR/Libero_SoC/Designer/bin64/fpgenprog

# Libero
export PATH=$PATH:$LIBERO_INSTALL_DIR/Libero_SoC/Designer/bin64
export PATH=$PATH:$LIBERO_INSTALL_DIR/Synplify_Pro/bin
export PATH=$PATH:$LIBERO_INSTALL_DIR/QuestaSim_Pro/bin

# License
export LM_LICENSE_FILE=1702@${LICENSE_SERVER:=localhost}
# export SNPSLMD_LICENSE_FILE=1702@${LICENSE_SERVER:=localhost}
