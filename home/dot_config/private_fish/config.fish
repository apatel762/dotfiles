if status is-interactive
    # initialising zoxide must happen at the *end* of the config
    zoxide init fish | source
end
