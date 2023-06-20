export PATH="$HOME/.local/bin:$PATH"

export TERM=xterm-256color
export PAGER="most"
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
export FZF_PREVIEW_COMMAND="bat --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"
export FZF_CTRL_T_OPTS="--min-height 30 --preview-window down:60% --preview-window noborder --preview '($FZF_PREVIEW_COMMAND) 2> /dev/null'"

# =====================

export DOCKER_PLATFORM=linux/arm64
export CYBERARK_DEVELOPER="samlittl"

export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

export set runlogs="run_logs/$(date +'%Y_%m_%d')"
