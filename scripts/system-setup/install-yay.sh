#!/usr/bin/env bash
#
# Install Yay AUR Helper
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "YAY INSTALLATION"

write_running "Installing Yay"
cd $HOME
sudo pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

write_ok "Yay installed!"
