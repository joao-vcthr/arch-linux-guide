#!/usr/bin/env bash
#
# Install Office Tools
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Office Tools"
pacman_pkg_add libreoffice-fresh
aur_pkg_add stirling-pdf-desktop

write_ok "Office Tools installed!"
