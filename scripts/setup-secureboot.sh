#!/usr/bin/env bash
#
# Setup Secure Boot
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "SECURE BOOT SETUP"

write_running "Setting up secure boot"
sudo sbctl create-keys
sudo sbctl enroll-keys -m
sudo sbctl sign -s /boot/EFI/BOOT/BOOTX64.EFI
sudo sbctl sign -s /boot/EFI/systemd/systemd-bootx64.efi
sudo sbctl sign -s /boot/vmlinuz-linux

write_ok "Secure boot setup completed!"
