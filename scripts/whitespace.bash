
#!/usr/bin/env bash

GREEN='\033[0;32m'
RED='\033[0;31m'
HL='\033[0;33m'
NC='\033[0m'

set -euo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")
SOURCE_DIR=$(realpath "${SCRIPT_DIR}/../sources")

echo -e "${GREEN}Source directory:${NC} $SOURCE_DIR"

if ! command -v dos2unix 2>&1 >/dev/null; then
    echo -e "${RED}Command 'dos2unix' not found in PATH${NC}" 1>&2
    exit 1
fi

find "${SOURCE_DIR}" -name \*.tcl \
  -exec echo -e "${HL}Whitespace cleansing:${NC} {}" \; \
  -exec dos2unix -q {} \; \
  -exec sed -i -e 's/[[:space:]]*$//' {} \;
