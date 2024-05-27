#!/usr/bin/env fish

# Adding things to PATH, but only if they exist

function append_to_path
    set -l dir $argv[1]
    if test -d $dir
        if not contains $dir $PATH
            set -gx PATH $PATH $dir
        end
    end
end

function prepend_to_path
    set -l dir $argv[1]
    if test -d $dir
        if not contains $dir $PATH
            set -gx PATH $dir $PATH
        end
    end
end


# example usage

append_to_path $HOME/.local/bin