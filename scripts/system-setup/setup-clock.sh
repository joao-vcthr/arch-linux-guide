#!/usr/bin/env bash
#
# Setup and sync clock
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "CLOCK SETUP"

write_running "Setting clock to local time"
sudo timedatectl set-local-rtc 1 --adjust-system-clock

write_running "Syncing Clock"
sudo systemctl restart systemd-timesyncd.service

write_ok "Clock setup completed"
