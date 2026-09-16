#!/usr/bin/env bash
#
# Install Hyprland packages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "HYPRLAND INSTALLATION"

HYPRLAND=(
    hyprland
    hyprpaper
    hyprpolkitagent
    kitty
    qt5-wayland
    qt6-wayland
    xdg-desktop-portal
    xdg-desktop-portal-hyprland
    archlinux-xdg-menu
    xdg-user-dirs
    cpio
    cmake
    git
    meson
    gcc
    fuse3
)

write_running "Installing Hyprland"
pacman_pkg_add "${HYPRLAND[@]}"

write_ok "Hyprland installed!"
