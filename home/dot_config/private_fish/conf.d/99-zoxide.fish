#!/usr/bin/env fish

if command -v zoxide > /dev/null
    zoxide init fish | source
    alias cd="z"
end
