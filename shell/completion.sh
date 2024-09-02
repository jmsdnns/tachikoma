if [[ $(uname) == "Linux" ]]; then
    if ! shopt -oq posix; then
        if [ -f /usr/share/bash-completion/bash_completion ]; then
            . /usr/share/bash-completion/bash_completion
        elif [ -f /etc/bash_completion ]; then
            . /etc/bash_completion
        fi
    fi
elif [[ $(uname) == "Darwin" ]]; then
    if ! shopt -oq posix; then
        if [ -f /opt/homebrew/completions/bash/brew ]; then
            . /opt/homebrew/completions/bash/brew
        fi
    fi
fi
