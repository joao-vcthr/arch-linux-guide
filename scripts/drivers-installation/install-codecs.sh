#!/usr/bin/env bash
#
# Install Codecs packages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_header "CODECS INSTALLATION"

CODECS=(
    gst-plugins-good
    gst-plugins-bad
    gst-plugins-ugly
    gst-libav
    gstreamer
    ffmpeg
)

write_running "Installing Codecs"
pacman_pkg_add "${CODECS[@]}"

write_ok "Codecs installed!"
