#!/usr/bin/env bash

for FILE in "$HOME"/.config/dconf/user.d/*; do
    echo "Loading dconf settings from $FILE"
    dconf load / < "$FILE"
done
