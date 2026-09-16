#!/usr/bin/env bash
#
# Enable e run TRIM service for disk optimization
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "TRIM SETUP"

write_running "Enabling TRIM service"
sudo systemctl enable --now fstrim.timer

write_running "Running TRIM"
sudo fstrim -av

write_ok "TRIM setup completed!"
