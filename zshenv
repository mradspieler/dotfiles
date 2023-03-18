export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off

export FZF_DEFAULT_OPTS='--height 70% --inline-info'
export FZF_CTRL_R_OPTS="${FZF_CTRL_R_OPTS:+$FZF_CTRL_R_OPTS }--preview 'echo {}' --preview-window down:5:hidden:wrap --bind '?:toggle-preview'"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_ALT_C_COMMAND='fd . --max-depth 4'
