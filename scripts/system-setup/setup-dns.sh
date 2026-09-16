#!/usr/bin/env bash
#
# Setup DNS
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "DNS SETUP"

CONNECTION=$(nmcli -t -f NAME connection show --active | head -n1)

sudo nmcli connection modify "$CONNECTION" ipv4.dns "1.1.1.1 1.0.0.1"
sudo nmcli connection modify "$CONNECTION" ipv4.ignore-auto-dns yes
sudo nmcli connection down "$CONNECTION"
sudo nmcli connection up "$CONNECTION"

write_ok "DNS setup completed!"
