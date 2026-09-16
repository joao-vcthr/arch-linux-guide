#!/usr/bin/env bash
#
# Setup Dual boot for Arch Linux + Windows 11
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "DUAL BOOT SETUP"

write_running "Setting up dual boot with Windows 11"

write_running "Creating temporary directory"
sudo mkdir /mnt/win-esp-temp

write_running "Mounting Windows boot partition"
sudo mount /dev/sda1 /mnt/win-esp-temp

write_running "Copying files"
sudo cp -r /mnt/win-esp-temp/EFI/Microsoft /boot/EFI

write_running "Listing files"
ls /boot/EFI/Microsoft/Boot/

write_running "Unmounting partition"
sudo umount /mnt/win-esp-temp

write_running "Removing temporary directory"
sudo rmdir /mnt/win-esp-temp

write_ok "Dual boot with Windows 11 setup completed!"
