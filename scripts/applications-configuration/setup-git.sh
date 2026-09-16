#!/usr/bin/env bash
#
# Install Terminal
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/../helpers/write-output.sh"

write_header "GIT SETUP"

write_running "Setting up git"
read -rp "Enter git username: " git_username
while [[ -z "$git_username" ]]; do
    read -rp "Cannot be blank, try again. Enter Git username: " git_username
done

read -rp "Enter git Email: " git_email
while [[ -z "$git_email" ]]; do
    read -rp "Cannot be blank, try again. Enter Git E-mail: " git_email
done

git config --global user.name "$git_username"
git config --global user.email "$git_email"

write_ok "Git configured as: $git_username <$git_email>"

write_ok "Git setup completed!"
