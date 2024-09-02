#!/usr/bin/env bash

get_tmux_option() {
    local option=$1
    local default_value="$2"
    # shellcheck disable=SC2155
    local option_value=$(tmux show-options -gqv "$option")
    if [ -n "$option_value" ]; then
        echo "$option_value"
        return
    fi
    echo "$default_value"
}

active_bg=$(get_tmux_option "@tachikoma-tmux-active-bg" '#698DDA')
active_fg=$(get_tmux_option "@tachikoma-tmux-active-fg" '#000000')
status_bg=$(get_tmux_option "@tachikoma-tmux-status-bg" 'default')
status_fg=$(get_tmux_option "@tachikoma-tmux-status-fg" 'default')
message_bg=$(get_tmux_option "@tachikoma-tmux-message-bg" 'default')
message_fg=$(get_tmux_option "@tachikoma-tmux-message-fg" 'default')

status=$(get_tmux_option "@tachikoma-tmux-status" "bottom")
justify=$(get_tmux_option "@tachikoma-tmux-justify" "centre")

indicator_state=$(get_tmux_option "@tachikoma-tmux-indicator" true)
right_state=$(get_tmux_option "@tachikoma-tmux-right" true)
left_state=$(get_tmux_option "@tachikoma-tmux-left" true)

if [ "$indicator_state" = true ]; then
    indicator=$(get_tmux_option "@tachikoma-tmux-indicator-str" "  tmux  ")
else
    indicator=""
fi

window_status_format=$(get_tmux_option "@tachikoma-tmux-window-status-format" ' #I:#W ')
status_right=$(get_tmux_option "@tachikoma-tmux-status-right" "#S")
status_left=$(get_tmux_option "@tachikoma-tmux-status-left" "#[bg=${status_bg},fg=${status_fg},bold]#{?client_prefix,,${indicator}}#[bg=${active_bg},fg=${active_fg},bold]#{?client_prefix,${indicator},}#[bg=default,fg=default,bold]")
expanded_icon=$(get_tmux_option "@tachikoma-tmux-expanded-icon" ' 󰊓 ')
show_expanded_icon_for_all_tabs=$(get_tmux_option "@tachikoma-tmux-show-expanded-icon-for-all-tabs" false)

status_right_extra="$status_right$(get_tmux_option "@tachikoma-tmux-status-right-extra" '')"
status_left_extra="$status_left$(get_tmux_option "@tachikoma-tmux-status-left-extra" '')"

if [ "$right_state" = false ]; then
    status_right_extra=""
fi

if [ "$left_state" = false ]; then
    status_left_extra=""
fi

tmux set-option -g status-position "${status}"
tmux set-option -g status-style bg=${status_bg},fg=${status_fg}
tmux set-option -g status-justify "${justify}"
tmux set-option -g status-left "${status_left_extra}"
tmux set-option -g status-right "${status_right_extra}"
tmux set-option -g window-status-format "${window_status_format}"
tmux set-option -g window-status-current-format "#[bg=${active_bg},fg=${active_fg}] ${window_status_format}#{?window_zoomed_flag,${expanded_icon}, }"
tmux set-option -g message-style bg=${message_bg},fg=${message_fg}

if [ "$show_expanded_icon_for_all_tabs" = true ]; then
    tmux set-option -g window-status-format " ${window_status_format}#{?window_zoomed_flag,${expanded_icon}, }"
fi
