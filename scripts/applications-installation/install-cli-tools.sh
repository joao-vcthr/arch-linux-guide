#!/usr/bin/env bash
#
# Install CLI Tools
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing CLI Tools"
pacman_pkg_add wget curl fastfetch pacman-contrib tree sbctl

write_ok "CLI Tools installed!"
