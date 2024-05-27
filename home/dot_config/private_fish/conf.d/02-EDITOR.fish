#!/usr/bin/env fish

# if we've got 'nvim' then prioritize that over the other stuff
if command -v nvim > /dev/null
    set -gx VISUAL nvim
    set -gx EDITOR nvim
    alias vi 'vim'
    alias vim 'nvim'
    if functions -q nvim
        functions -e nvim
    end

# if we've got 'vim', then use that over 'vi' to make things a little
# bit easier to use
else if command -v vim > /dev/null
    set -gx VISUAL vim
    set -gx EDITOR vim
    alias vi 'vim'
    if functions -q vim
        functions -e vim
    end
    alias nvim 'vim'

# we definitely should have 'vi' installed at the very least, so use
# that in the aliases...
else
    set -gx VISUAL vi
    set -gx EDITOR vi
    if functions -q vi
        functions -e vi
    end
    alias vim 'vi'
    alias nvim 'vi'
end
