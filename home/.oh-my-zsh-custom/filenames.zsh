setopt interactivecomments

function disable_extended_glob {
    unsetopt extended_glob
}

precmd_functions+=(disable_extended_glob)
