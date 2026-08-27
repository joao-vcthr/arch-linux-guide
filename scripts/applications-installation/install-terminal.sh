#!/usr/bin/env bash
#
# Install Terminal
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Terminal"
pacman_pkg_add alacritty

write_ok "Terminal installed!"
