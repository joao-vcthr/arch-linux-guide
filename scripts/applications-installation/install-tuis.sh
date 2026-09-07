#!/usr/bin/env bash
#
# Install TUI Applications
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing TUIs"
pacman_pkg_add btop

write_ok "TUIs installed!"
