#!/usr/bin/env bash
#
# Install Development Tools
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Development tools"
pacman_pkg_add zed

write_ok "Development tools installed!"
