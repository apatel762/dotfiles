#!/usr/bin/env fish

# Function to zip all folders in the current directory
function zipall
    for dir in (command ls -d */)
        set dir_name (basename $dir "/")
        zip -r "$dir_name.zip" "$dir"
    end
end


# Function to extract various types of archives
function ex
    if test -f $argv[1]
        switch $argv[1]
            case '*.tar.bz2'
                set -x; tar xjf $argv[1]
            case '*.tar.gz'
                set -x; tar xzf $argv[1]
            case '*.bz2'
                set -x; bunzip2 $argv[1]
            case '*.rar'
                set -x; unrar x $argv[1]
            case '*.gz'
                set -x; gunzip $argv[1]
            case '*.tar'
                set -x; tar xf $argv[1]
            case '*.tbz2'
                set -x; tar xjf $argv[1]
            case '*.tgz'
                set -x; tar xzf $argv[1]
            case '*.zip'
                set -x; unzip $argv[1]
            case '*.cbz'
                set -x; unzip $argv[1]
            case '*.Z'
                set -x; uncompress $argv[1]
            case '*.7z'
                set -x; 7za x $argv[1]
            case '*.deb'
                set -x; ar x $argv[1]
            case '*.tar.xz'
                set -x; tar xf $argv[1]
            case '*.tar.zst'
                set -x; unzstd $argv[1]
            case '*'
                echo "'$argv[1]' cannot be extracted via ex()"
        end
    else
        echo "'$argv[1]' is not a valid file"
    end
end
