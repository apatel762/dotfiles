#!/usr/bin/env bash

# shellcheck source=home/private_dot_local/bin/executable_bash_common
source "${HOME_ORIGINAL:-$HOME}"/.local/bin/bash_common

DIR="${XDG_CONFIG_HOME:-$HOME/.config}/dconf/user.d"

if [ -d "$DIR" ]; then
    for FILE in "$DIR"/*; do
        if [ -r "$FILE" ]; then
            log "Loading dconf settings from $FILE"
            dconf load / < "$FILE"
        fi
    done
fi
