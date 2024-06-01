#!/usr/bin/env fish

if command -v lsd > /dev/null
    alias ls="lsd"
    alias ll='lsd --long --all --classify --git --header'
end
