#!/usr/bin/env fish

if command -v sh >/dev/null; and command -v col >/dev/null; and command -v bat >/dev/null; and command -v man >/dev/null
    set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
else
    set -e MANPAGER
end
