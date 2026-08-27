#!/usr/bin/env bash
#
# Install Media Apps
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Media Apps"
pacman_pkg_add vlc vlc-plugins-all imv mpv

write_ok "Media Apps installed!"
