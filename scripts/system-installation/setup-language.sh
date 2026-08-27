#!/usr/bin/env bash
#
# Setup system languages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "SYSTEM LANGUAGE SETUP"

write_running "Creating the language configuration file"
echo "LANG=en_US.UTF-8" > /etc/locale.conf

write_running "Creating the keyboard layout configuration file for the console"
echo "KEYMAP=br-abnt2" > /etc/vconsole.conf

write_ok "System language setup completed!"
