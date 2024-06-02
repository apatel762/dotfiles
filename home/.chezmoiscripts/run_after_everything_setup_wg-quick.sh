#!/usr/bin/env bash

# shellcheck source=home/private_dot_local/bin/executable_bash_common
source "${HOME_ORIGINAL:-$HOME}"/.local/bin/bash_common

please_install wg-quick-bootstrap

CONFIGS=(
    "$HOME/.local/share/Mullvad.conf"
)

for CONFIG_FILE in "${CONFIGS[@]}"; do
    ensure_file "$CONFIG_FILE"
    wg-quick-bootstrap "$CONFIG_FILE"
done
