# configure direnv if available
if command -v direnv > /dev/null
    status --is-interactive; and >direnv hook fish | source
end
