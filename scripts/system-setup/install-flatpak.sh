#!/usr/bin/env bash
#
# Install Flatpak and enable Flathub repository
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "FLATPAK INSTALLATION"

write_running "Installing Flatpak"
pacman_pkg_add flatpak

write_running "Adding flathub repository"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

write_ok "Flatpak installed!"
