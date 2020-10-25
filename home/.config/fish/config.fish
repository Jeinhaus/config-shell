set -x PATH /usr/local/sbin /usr/local/bin  $PATH
if test -d /snap/bin
    set -x PATH /snap/bin $PATH
end
if test -d /urs/local/go/bin
    set -x PATH /urs/local/go/bin $PATH
    #https://www.digitalocean.com/community/tutorials/understanding-the-gopath
    set -x PATH $GOPATH/bin $PATH 
end
if test -d ~/local/bin
    set -x PATH ~/local/bin $PATH
end
if test -d ~/.local/bin
    set -x PATH ~/.local/bin $PATH
end
if test -d ~/.cargo/bin
    set -x PATH ~/.cargo/bin $PATH
end
if test -d ~/.npm/bin
    set -x PATH ~/.npm/bin $PATH
end

# determine the editor to use
if which nvim 2> /dev/null > /dev/null
    set -x EDITOR nvim
else
    set -x EDITOR vim
end
set -x VISUAL $EDITOR

# local config
if test -f ~/.config/fish/localconfig.fish
    source ~/.config/fish/localconfig.fish
end
