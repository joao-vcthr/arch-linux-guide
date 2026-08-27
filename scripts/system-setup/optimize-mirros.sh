#!/usr/bin/env bash
#
# Install and Setup Reflector to Optimize Mirrors
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "MIRROR OPTIMIZATION"

write_running "Installing Reflector"
pacman_pkg_add reflector

write_running "Running reflector"
sudo reflector --protocol https --latest 30 --sort rate --number 10 --verbose --save /etc/pacman.d/mirrorlist

write_running "Enabling reflector timer"
sudo systemctl enable reflector.timer

write_ok "Mirror Optimization Completed!"
