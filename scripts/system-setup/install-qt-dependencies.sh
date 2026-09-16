#!/usr/bin/env bash
#
# Install Qt Dependencies packages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "QT DEPENDENCIES INSTALLATION"

QT_DEPENDENCIES=(
    qt6-svg
    qt6-virtualkeyboard
    qt6-multimedia
    qt6-multimedia-ffmpeg
    qt6-declarative
    qt6-5compat
)

write_running "Installing Qt Dependencies"
pacman_pkg_add "${QT_DEPENDENCIES[@]}"

write_ok "Qt Dependencies installed!"
