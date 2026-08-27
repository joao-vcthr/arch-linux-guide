#!/usr/bin/env bash
#
# Setup network
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "NETWORK SETUP"

write_running "Setting computer's hostname"

hostname_regex='^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?$'
read -rp "Enter a hostname: " hostname
while [[ -z "$hostname" || ! "$hostname" =~ $hostname_regex ]]; do
    read -rp "Invalid hostname (letters, numbers, hyphens only). Try again: " hostname
done

echo "$hostname" > /etc/hostname

write_running "Editing hosts file"
cat > /etc/hosts <<EOF
127.0.0.1    localhost
::1          localhost
127.0.1.1    $hostname.localdomain  $hostname
EOF

write_ok "Hosts configuration done!"

write_running "Enabling Network Manager service"
systemctl enable NetworkManager

write_ok "Network setup completed!"
