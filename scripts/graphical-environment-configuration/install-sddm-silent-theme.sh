#!/usr/bin/env bash
#
# Install Qt Dependencies packages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "SDDM SILENT THEME INSTALLATION"

write_running "Cloning SilentSDDM repository"
cd $HOME
git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM

write_running "Installing SilentSDDM Theme"
cd SilentSDDM
./install.sh

write_running "Importing Wallpapers"
sudo cp -r /home/joao/Vault/03-media/wallpapers/* /usr/share/sddm/themes/silent/backgrounds/

write_ok "SilentSDDM Theme installed!"
