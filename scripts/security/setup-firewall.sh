#!/usr/bin/env bash
#
# Install and setup Firewall
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "FIREWALL SETUP"

write_running "Installing firewall"
pacman_pkg_add ufw

write_running "Enabling firewall service"
sudo systemctl enable --now ufw.service

write_running "Setting up firewall"
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

write_ok "Firewall Setup completed!"
