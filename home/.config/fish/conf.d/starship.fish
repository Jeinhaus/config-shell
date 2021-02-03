if command -v starship > /dev/null
    status --is-interactive; and starship init fish | source
end
