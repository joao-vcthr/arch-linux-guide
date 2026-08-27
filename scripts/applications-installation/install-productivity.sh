#!/usr/bin/env bash
#
# Install Productivity
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Productivity Apps"
pacman_pkg_add thunderbird cosmic-text-editor obsidian

flatpak install -y flathub io.github.Qalculate.qalculate-qt com.github.flxzt.rnote

write_ok "Browsers installed!"
