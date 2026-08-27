#!/usr/bin/env bash
#
# Install Noctalia Shell
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "NOCTALIA INSTALLATION"

write_running "Installing Noctalia"
pacman_pkg_add noctalia

write_ok "Noctalia installed!"
