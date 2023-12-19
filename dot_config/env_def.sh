export PATH="$HOME/.local/bin:$PATH"


export TERMINAL="alacritty"
export EDITOR="cursor"
export PAGER="most"
export BROWSER="google-chrome-beta"
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
export FZF_PREVIEW_COMMAND="bat --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"
export FZF_CTRL_T_OPTS="--min-height 30 --preview-window down:60% --preview-window noborder --preview '($FZF_PREVIEW_COMMAND) 2> /dev/null'"
export XDG_CONFIG_HOME="$HOME/.config"
export GOOGLE_APPLICATION_CREDENTIALS="/home/sam/.googleauth.json"

# =====================

export DOCKER_PLATFORM=linux/arm64
export CYBERARK_DEVELOPER="samlittl"

export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

export set runlogs="run_logs/$(date +'%Y_%m_%d')"

export OPENAI_API="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"
export OPENAI_API_KEY="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"
