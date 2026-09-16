#!/usr/bin/env bash
#
# Install All Applications
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"
source "$SCRIPT_DIR/../helpers/pkg-add.sh"

cd $SCRIPT_DIR

bash install-terminal.sh
bash install-file-explorer.sh
bash install-browsers.sh
bash install-productivity.sh
bash install-office.sh
bash install-screen-capture.sh
bash install-hardware-utils.sh
bash install-tuis.sh
bash install-cli-tools.sh
bash install-media.sh
bash install-programming-languages.sh
bash install-dev-tools.sh
