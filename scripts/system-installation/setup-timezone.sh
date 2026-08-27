#!/usr/bin/env bash
#
# Setup system timezone during installation
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "TIMEZONE SETUP"

write_running "Setting up timezone"

ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
hwclock --systohc

write_ok "Timezone setup completed!"
