#!/usr/bin/env fish

alias fp='git fetch --all --prune; and git pull --rebase --autostash'

function __delete_merged_branches
    git fetch -p
    for branch in (git branch -vv | grep ': gone]' | awk '{print $1}')
        git branch -D $branch
    end
end

alias dmb='__delete_merged_branches'
