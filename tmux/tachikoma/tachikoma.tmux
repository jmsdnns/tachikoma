#!/usr/bin/env bash

# helper function for falling back to defaults for config values not present
# user's tmux config
config_option() {
    local option=$1
    local default_value="$2"

    # tmux show-options -gqv will check the global tmux environment (-g) for
    # settings stored as theme specific options. When option is set, its value
    # is returned without the option name (-v). No error is returned if option
    # is not set (-q), causing option_value to be an empty string
    local option_value=$(tmux show-options -gqv "$option")
    if [ -n "$option_value" ]; then
        echo "$option_value"
        return
    fi

    echo "$default_value"
}

# load theme specific options as variables
status_fg=$(config_option "@tachikoma-tmux-status-fg" '#539BF5')
status_bg=$(config_option "@tachikoma-tmux-status-bg" '#2C3E56')
active_fg=$(config_option "@tachikoma-tmux-active-fg" '#2C3E56')
active_bg=$(config_option "@tachikoma-tmux-active-bg" '#539BF5')
message_fg=$(config_option "@tachikoma-tmux-message-fg" '#252E3B')
message_bg=$(config_option "@tachikoma-tmux-message-bg" '#539BF5')
justify=$(config_option "@tachikoma-tmux-justify" "left")
status=$(config_option "@tachikoma-tmux-status" "bottom")
window_status_format_str=$(config_option "@tachikoma-tmux-window-status-format" ' #I:#W ')
expanded_icon=$(config_option "@tachikoma-tmux-expanded-icon" ' 󰊓 ')
show_expanded_icon_for_all_tabs=$(config_option "@tachikoma-tmux-show-expanded-icon-for-all-tabs" false)
indicator_state=$(config_option "@tachikoma-tmux-indicator" true)
indicator_str=$(config_option "@tachikoma-tmux-indicator-str" "  mux  ")
left_state=$(config_option "@tachikoma-tmux-left" true)
status_left=$(config_option "@tachikoma-tmux-status-left" "#[bg=${status_bg},fg=${status_fg},bold]#{?client_prefix,,${indicator}}#[bg=${active_bg},fg=${active_fg},bold]#{?client_prefix,${indicator},}#[bg=default,fg=default,bold]")
status_left_extra="$status_left$(config_option "@tachikoma-tmux-status-left-extra" '')"
right_state=$(config_option "@tachikoma-tmux-right" true)
status_right=$(config_option "@tachikoma-tmux-status-right" "#S")
status_right_extra="$status_right$(config_option "@tachikoma-tmux-status-right-extra" '')"

if [ "$show_expanded_icon_for_all_tabs" = true ]; then
    window_status_format="${window_status_format_str}#{?window_zoomed_flag,${expanded_icon}, }"
else
    window_status_format="${window_status_format_str}"
fi

if [ "$indicator_state" = true ]; then
    indicator="${indicator_str}"
else
    indicator=""
fi

if [ "$left_state" = false ]; then
    status_left_extra=""
fi

if [ "$right_state" = false ]; then
    status_right_extra=""
fi

# use variables to configure tmux settings
tmux set-option -g status-position "${status}"
tmux set-option -g status-style bg=${status_bg},fg=${status_fg}
tmux set-option -g status-justify "${justify}"
tmux set-option -g status-left "${status_left_extra}"
tmux set-option -g status-right "${status_right_extra}"
tmux set-option -g message-style bg=${message_bg},fg=${message_fg}
tmux set-option -g window-status-current-format "#[bg=${active_bg},fg=${active_fg}] ${window_status_format}#{?window_zoomed_flag,${expanded_icon}, }"
tmux set-option -g window-status-format ${window_status_format_str}
