#!/usr/bin/env bash

# you may also need to enter a tmux session before performing
# operations with GPG if you're still seeing issues here.
GPG_TTY="$(tty)"
export GPG_TTY
