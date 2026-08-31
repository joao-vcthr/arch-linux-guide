#!/usr/bin/env bash
#
# Install Browsers
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Browsers"
pacman_pkg_add firefox chromium

write_ok "Browsers installed!"
