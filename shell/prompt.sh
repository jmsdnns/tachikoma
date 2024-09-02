source $TACHIKOMA/textstyles.sh

if [ $USER = "root" ]; then
    USER_COLOR=$FG_RED
else
    USER_COLOR=$FG_GREEN
fi
export PS1="\n\033[01;$USER_COLOR\u@\h\033[0m \033[01;$FG_BLUE\t\033[0m \w\n> "
