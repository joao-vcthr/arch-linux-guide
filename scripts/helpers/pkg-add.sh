#!/usr/bin/env bash
#
# Add packages from Pacman or AUR
#
set -euo pipefail

pacman_pkg_add() {
    sudo pacman -S --needed --noconfirm "$@"
}

aur_pkg_add() {
    yay -S --needed --noconfirm "$@"
}
