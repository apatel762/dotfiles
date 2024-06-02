#!/usr/bin/env bash

# shellcheck source=home/private_dot_local/bin/executable_bash_common
source "${HOME_ORIGINAL:-$HOME}"/.local/bin/bash_common

please_install flatpak-bootstrap \
    && flatpak-bootstrap
