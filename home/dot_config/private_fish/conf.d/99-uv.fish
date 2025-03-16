#!/usr/bin/env fish

if command -v uv > /dev/null
    uv generate-shell-completion fish | source
end

if command -v uvx > /dev/null
    uvx --generate-shell-completion fish | source
end
