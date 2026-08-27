#!/usr/bin/env bash
#
# Install Audio Stack packages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "AUDIO STACK INSTALLATION"

AUDIO_STACK=(
    pipewire
    pipewire-alsa
    pipewire-pulse
    pipewire-jack
    wirteplumber
)

write_running "Installing audio stack"
pacman_pkg_add "${AUDIO_STACK[@]}"

write_running "Enabling services"
systemctl --user enable --now pipewire.service pipewire-pulse.socket wireplumber.service

write_ok "Audio stack installed!"
