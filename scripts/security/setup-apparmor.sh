#!/usr/bin/env bash
#
# Install and setup AppArmor
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "APPARMOR SETUP"

write_running "Installing AppArmor"
pacman_pkg_add apparmor

write_running "Enabling AppArmor"
sudo systemctl enable apparmor

write_running "Starting AppArmor"
sudo systemctl start apparmor

write_ok "AppArmor Setup completed!"
