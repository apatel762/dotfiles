if status is-interactive
    for file in ~/.config/fish/conf.d/*.fish
        source $file
    end
end
