#!/usr/bin/env fish

if command -v lsd > /dev/null
    alias ls="lsd"
    alias ll='lsd --long --all --classify --git --header'
end

# An ls command with a lot of pretty colors and some other stuff.

# Usage: lsd [OPTIONS] [FILE]...

# Arguments:
#   [FILE]...  [default: .]

# Options:
#   -a, --all                          Do not ignore entries starting with
#   -A, --almost-all                   Do not list implied . and ..
#       --color <MODE>                 When to use terminal colours [default: auto] [possible values: always, auto, never]
#       --icon <MODE>                  When to print the icons [default: auto] [possible values: always, auto, never]
#       --icon-theme <THEME>           Whether to use fancy or unicode icons [default: fancy] [possible values: fancy, unicode]
#   -F, --classify                     Append indicator (one of */=>@|) at the end of the file names
#   -l, --long                         Display extended file metadata as a table
#       --ignore-config                Ignore the configuration file
#       --config-file <PATH>           Provide a custom lsd configuration file
#   -1, --oneline                      Display one entry per line
#   -R, --recursive                    Recurse into directories
#   -h, --human-readable               For ls compatibility purposes ONLY, currently set by default
#       --tree                         Recurse into directories and present the result as a tree
#       --depth <NUM>                  Stop recursing into directories after reaching specified depth
#   -d, --directory-only               Display directories themselves, and not their contents (recursively when used with --tree)
#       --permission <MODE>            How to display permissions [default: rwx for linux, attributes for windows] [possible values: rwx, octal, attributes, disable]
#       --size <MODE>                  How to display size [default: default] [possible values: default, short, bytes]
#       --total-size                   Display the total size of directories
#       --date <DATE>                  How to display date [default: date] [possible values: date, locale, relative, +date-time-format]
#   -t, --timesort                     Sort by time modified
#   -S, --sizesort                     Sort by size
#   -X, --extensionsort                Sort by file extension
#   -G, --gitsort                      Sort by git status
#   -v, --versionsort                  Natural sort of (version) numbers within text
#       --sort <TYPE>                  Sort by TYPE instead of name [possible values: size, time, version, extension, git, none]
#   -U, --no-sort                      Do not sort. List entries in directory order
#   -r, --reverse                      Reverse the order of the sort
#       --group-dirs <MODE>            Sort the directories then the files [possible values: none, first, last]
#       --group-directories-first      Groups the directories at the top before the files. Same as --group-dirs=first
#       --blocks <BLOCKS>              Specify the blocks that will be displayed and in what order [possible values: permission, user, group, context, size, date, name, inode, links, git]
#       --classic                      Enable classic mode (display output similar to ls)
#       --no-symlink                   Do not display symlink target
#   -I, --ignore-glob <PATTERN>        Do not display files/directories with names matching the glob pattern(s). More than one can be specified by repeating the argument
#   -i, --inode                        Display the index number of each file
#   -g, --git                          Show git status on file and directory" Only when used with --long option
#   -L, --dereference                  When showing file information for a symbolic link, show information for the file the link references rather than for the link itself
#   -Z, --context                      Print security context (label) of each file
#       --hyperlink <MODE>             Attach hyperlink to filenames [default: never] [possible values: always, auto, never]
#       --header                       Display block headers
#       --truncate-owner-after <NUM>   Truncate the user and group names if they exceed a certain number of characters
#       --truncate-owner-marker <STR>  Truncation marker appended to a truncated user or group name
#   -N, --literal                      Print entry names without quoting
#       --help                         Print help information
#   -V, --version                      Print version
