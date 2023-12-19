alias c="clear"
alias u="unbuffer"
alias f="open -a finder"
alias ll="exa -hlga --icons"
alias lf="exa -ha --icons"
alias lt="exa -h1a --icons --tree --level=2"
alias llt="exa -hlg --icons --tree --level=2 -a"
alias sp="source ~/.profile && echo 'Profile Sourced'"
alias ka="killall"

#alias nvim="nvim -u $HOME/.config/nvim/init.vim"
alias tmux="tmux -u"
#alias code="open -a Visual\ Studio\ Code"
#alias subl="open -a Sublime\ Text"
#alias pc="open -a PyCharm"
alias ack="echo 'use rg'"
alias ag="echo 'use rg'"
alias bat="bat --color always"

# =================================================

alias mtmc="make test && make check"

# =================================================

# alias aws='docker run --rm --name aws-cli -v $(pwd):/aws -v /Users/sam/.aws:/root/.aws:ro -v /Users/sam/.ssh:/root/.ssh:ro amazon/aws-cli:2.3.4'
alias condadocker='docker run -it --rm -p 8888:8888 -v "$PWD":/root/notebooks anaconda:latest'
alias docrrmall='docker rm $(docker ps -a -q)'
alias ecs-cli='docker run --rm --name ecs-cli -v /Users/sam/.aws:/.aws:ro ecs-cli:latest'
alias hist=' hist -i'
# alias histdb=' histdb'
alias history=' history'
alias mysqlstart='/usr/local/bin/mysql.server start'
alias mysqlstop='/usr/local/bin/mysql.server stop'
alias node='docker run -it --rm --name node -v "$PWD":/usr/src/app -w /usr/src/app node:latest '
alias postgresstart='/usr/local/Cellar/postgresql/13.0/bin/pg_ctl -D /usr/local/var/postgres -l logfile start'
alias postgresstop='pg_ctl -D /usr/local/var/postgres stop'
alias sa='source .venv/bin/activate'
alias da='deactivate'
alias showcolors='for i in {0..255}; do print -Pn "%K{$i} %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%8)):#7}:+$"\n"}; done'
