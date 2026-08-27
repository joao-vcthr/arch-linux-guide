#!/usr/bin/env bash
#
# Display colored log messages
#
#
set -euo pipefail

# Output colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

write_header() {
    echo -e "${CYAN} === [ $1 ] === ${NC}"
}

write_running() {
    echo -e "${YELLOW} ==> $1 ${NC}"
}

write_ok() {
    echo -e "${GREEN} ==> $1 ${NC}"
}

write_warn() {
    echo -e "${RED} ==> $1 ${NC}"
}
