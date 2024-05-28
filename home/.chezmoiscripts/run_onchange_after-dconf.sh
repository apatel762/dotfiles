#!/usr/bin/env bash

DIR="${XDG_CONFIG_HOME:-$HOME/.config}/dconf/user.d"

if [ -d "$DIR" ]; then
    for FILE in "$DIR"/*; do
        if [ -r "$FILE" ]; then
            echo "Loading dconf settings from $FILE"
            dconf load / < "$FILE"
        fi
    done
fi
