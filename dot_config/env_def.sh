

export TERM="xterm-256color"

export TERMINAL="kitty"
export EDITOR="nvim"
export PAGER="most"
export BROWSER="google-chrome-beta"
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
export FZF_PREVIEW_COMMAND="bat --style=numbers,changes --wrap never --color always {} || cat {} || tree -C {}"
export FZF_CTRL_T_OPTS="--min-height 30 --preview-window down:60% --preview-window noborder --preview '($FZF_PREVIEW_COMMAND) 2> /dev/null'"
export XDG_CONFIG_HOME="$HOME/.config"
export GOOGLE_APPLICATION_CREDENTIALS="/home/sam/.googleauth.json"
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES="/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc"
export QT_STYLE_OVERRIDE=adwaita-dark

export QT_QPA_PLATFORMTHEME=qt5ct

# =====================

export DOCKER_PLATFORM=linux/arm64
export CYBERARK_DEVELOPER="samlittl"

export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

export set runlogs="run_logs/$(date +'%Y_%m_%d')"

export OPENAI_API="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"
export OPENAI_API_KEY="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"

export T_REPOS_DIR="~/dox"
