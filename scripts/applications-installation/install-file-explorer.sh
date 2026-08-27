#!/usr/bin/env bash
#
# Install Nautilust File Explorer
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Nautilus"
pacman_pkg_add nautilus

write_ok "Nautilus installed!"
