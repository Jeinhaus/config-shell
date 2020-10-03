
function __complete_packer
    set -lx COMP_LINE (string join ' ' (commandline -o))
    test (commandline -ct) = ""
    and set COMP_LINE "$COMP_LINE "
    /usr/local/bin/packer
end
complete -c packer -a "(__complete_packer)"

