#!/usr/bin/env bash
#
# Install Nautilust File Explorer
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing File Explorer"
pacman_pkg_add nautilus

write_running "Creating user directories"
xdg-usr-dirs-update

write_running "Setting Nautilus as the default file explorer"
xdg-mime default org.gnome.Nautilus.desktop inode/directory
xdg-mime default org.gnome.Nautilus.desktop application/x-7z-compressed
xdg-mime default org.gnome.Nautilus.desktop application/zip

write_ok "File Explorer installed!"
