#!/usr/bin/env fish

if command -v rsync > /dev/null
    alias copy="rsync --archive --verbose --human-readable --hard-links --acls --xattrs --info=progress2 --compress-level=0"
    alias rcopy='rsync --archive --verbose --human-readable --hard-links --acls --xattrs --info=progress2 --compress'
end
