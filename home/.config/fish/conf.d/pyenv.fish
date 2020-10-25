# configure pyenv if available
if command -v pyenv > /dev/null
    status --is-interactive; and source (pyenv init -|psub)
    status --is-interactive; and source (pyenv virtualenv-init -|psub)
end