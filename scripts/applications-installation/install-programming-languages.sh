#!/usr/bin/env bash
#
# Install Programming Languages
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

write_running "Installing Programming Languages"
pacman_pkg_add clang jdk-25-openjdk go

bash -c "$(curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs)" -- -y
source "$HOME/.cargo/env"

write_ok "Programming Languages installed!"
