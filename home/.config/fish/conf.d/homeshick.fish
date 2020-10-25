# enable homeshick and refresh if available
if test -f "$HOME/.homesick/repos/homeshick/homeshick.fish"
    source "$HOME/.homesick/repos/homeshick/homeshick.fish"
    source "$HOME/.homesick/repos/homeshick/completions/homeshick.fish"
    if status --is-interactive
        homeshick --quiet refresh
    end
end
