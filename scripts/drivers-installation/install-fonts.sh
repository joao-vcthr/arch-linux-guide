#!/usr/bin/env bash
#
# Install Fonts packages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "FONTS INSTALLATION"

FONTS=(
    ttf-jetbrains-mono
    ttf-jetbrains-mono-nerd
    ttf-roboto-mono-nerd
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk
)

write_running "Installing Fonts"
pacman_pkg_add "${FONTS[@]}"

write_ok "Codecs installed!"
