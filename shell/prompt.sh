source $TACHIKOMA/textstyles.sh

if [ $USER = "root" ]; then
    USER_COLOR=$FG_RED
    TIME_COLOR=$FG_RED
    CMD_COLOR=$FG_RED
else
    USER_COLOR=$FG_BLUE
    TIME_COLOR=$FG_PURPLE
    CMD_COLOR=$FG_GREEN
fi

USER="$TEXT_BOLD$USER_COLOR\u@\h$TEXT_RESET"
TIME="$TEXT_BOLD$TIME_COLOR\t$TEXT_RESET"
CWD="\w"
CMD="$TEXT_BOLD$CMD_COLOR>$TEXT_RESET"

export PS1="\n${USER} ${TIME} ${CWD}\n${CMD} "
