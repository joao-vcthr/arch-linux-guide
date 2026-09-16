#!/usr/bin/env bash
#
# Setup CoreCtrl
#
# This setup prevents CoreCtrl from asking for password on every system start up
#
# Stop the script if any command fails
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "CORECTRL PERMISSION SETUP"

USER_GROUP="${SUDO_USER:-$USER}"

write_running "Creating and writing CoreCtrl configuration file at /etc/polkit-1/rules.d/90-corectrl.rules"
cat > /etc/polkit-1/rules.d/90-corectrl.rules << EOF
polkit.addRule(function(action, subject) {
    if ((action.id == "org.corectrl.helper.init" ||
         action.id == "org.corectrl.helperkiller.init") &&
        subject.local == true &&
        subject.active == true &&
        subject.isInGroup("$USER_GROUP")) {
            return polkit.Result.YES;
    }
});
EOF

write_ok "CoreCtrl setup completed!"