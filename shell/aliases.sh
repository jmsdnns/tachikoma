alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias sudoo="sudo /bin/bash -l"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias vi="nvim"
alias vim="nvim"

if [[ $(uname) == "Linux" ]]; then
    alias ls='ls -F --color --group-directories-first'
    alias pbcopy="xclip -selection c"
    alias pbpaste="xclip -selection clipboard o"
elif [[ $(uname) == "Darwin" ]]; then
    alias ls="ls -F -G"
fi
