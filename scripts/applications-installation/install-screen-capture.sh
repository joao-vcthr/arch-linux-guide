#!/usr/bin/env bash
#
# Install Screen Capture tools
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Screen Capture Tools"
flatpak install -y flathub com.obsproject.Studio

write_running "Installing HyprCapture dependencies"
pacman_pkg_add cmake pkg-config nlohmann-json layer-shell-qt wl-clipboard gpu-screen-recorder

write_running "Installing HyprCapture"
hyprpm update
hyprpm add https://github.com/gfhdhytghd/HyprCapture
hyprpm enable hyprcapture
hyprpm reload

write_ok "Browsers installed!"
