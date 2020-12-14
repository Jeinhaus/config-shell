set -x PATH /usr/local/sbin /usr/local/bin $PATH
if test -d /snap/bin
    set -x PATH /snap/bin $PATH
end
if test -d /usr/local/go/bin
    set -x PATH /usr/local/go/bin $PATH
    set -x GOPATH $HOME/go
    # https://www.digitalocean.com/community/tutorials/understanding-the-gopath
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
if test -d ~/.asdf/bin
    set -x PATH ~/.asdf/bin $PATH
end


# determine the editor to use
if which nvim 2> /dev/null > /dev/null
    set -x EDITOR nvim
else
    set -x EDITOR vim
end
set -x VISUAL $EDITOR

# disable the greeting
set -x fish_greeting ""

# local config
if test -f ~/.config/fish/localconfig.fish
    source ~/.config/fish/localconfig.fish
end

# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

. "$HOME/.homesick/repos/homeshick/homeshick.fish"