#!/usr/bin/env bash
#
# Install Video Drivers packages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "VIDEO DRIVERS INSTALLATION"

VIDEO_DRIVERS=(
    mesa
    mesa-utils
    vulkan-radeon
    libva-mesa-driver
)

write_running "Installing video drivers"
pacman_pkg_add "${VIDEO_DRIVERS[@]}"

write_ok "Video drivers installed!"
