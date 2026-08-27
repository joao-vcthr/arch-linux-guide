#!/usr/bin/env bash
#
# Setup Bootloader
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "BOOTLOADER SETUP"

write_running "Retrieving Root UUID"
ROOT_UUID=$(blkid -s UUID -o value "$(findmnt -n -o SOURCE /)")

write_running "Creating loader's main configuration file"
cat > /boot/loader/loader.conf << EOF
default arch.conf
timeout 30
console-mode max
EOF

write_running "Creating Arch Linux boot entry"
cat > /boot/loader/entries/arch.conf << EOF
title   Arch Linux
linux   /vmlinuz-linux
initrd  /amd-ucode.img
initrd  /initramfs-linux.img
options root=UUID=${ROOT_UUID} rw quiet amdgpu.ppfeaturemask=0xffffffff apparmor=1 security=apparmor
EOF

write_ok "Bootloader setup completed!"
