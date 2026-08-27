#!/usr/bin/env bash
#
# Install and enable SDDM
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "SDDM INSTALLATION"

write_running "Installing SDDM"
pacman_pkg_add sddm

write_running "Enabling SDDM Service"
sudo systemctl enable sddm.service

write_ok "SDDM installed!"
