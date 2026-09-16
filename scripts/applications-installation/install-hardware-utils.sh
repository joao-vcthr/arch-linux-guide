#!/usr/bin/env bash
#
# Install Hardware Utilities
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Hardware Utilities"
pacman_pkg_add corectrl power-profiles-daemon

write_ok "Hardware Utilities installed!"
