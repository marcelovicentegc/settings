# reggae roots prompt start
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[31m\]\u@\h\[\033[00m\] \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
# reggae roots prompt end

# pipe fortune to cowsay
if [ -x /usr/games/cowsay -a -x /usr/games/fortune ]; then
    fortune | cowsay
fi
# pipe fortune to cowsay end

# Function to set terminal title
set_terminal_title() {
    # Get the current directory name (basename)
    local current_dir=$(basename "$PWD")
    
    # Handle special case for home directory
    if [ "$PWD" = "$HOME" ]; then
        current_dir="~"
    fi
    
    # Set the terminal title using escape sequences
    # Works with most terminal emulators (gnome-terminal, xterm, etc.)
    case "$TERM" in
        xterm*|rxvt*|gnome-terminal*|konsole*|screen*|tmux*)
            echo -ne "\033]0;${current_dir}\007"
            ;;
    esac
}

# Set title when opening new terminal
set_terminal_title

# Update title only when changing directories
cd() {
    builtin cd "$@" && set_terminal_title
}
pushd() {
    builtin pushd "$@" && set_terminal_title
}
popd() {
    builtin popd "$@" && set_terminal_title
}