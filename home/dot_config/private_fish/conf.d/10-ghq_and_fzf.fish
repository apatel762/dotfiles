#!/usr/bin/env fish

if not command -v fzf > /dev/null
    alias proj="echo 'You need to install fzf to use this command'"
else if not command -v ghq > /dev/null
    alias proj="echo 'You need to install ghq to use this command'"
else
    # Clear the alias if it exists
    functions -e proj 2>/dev/null

    function proj
        set selected_path (ghq list --full-path | fzf)
        if test -n "$selected_path"
            cd "$selected_path"
        end
    end
end

