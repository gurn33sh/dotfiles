alias irb='pry'
alias grep="grep -i"
alias psg="ps auxwwww | grep -v grep | grep"

alias ss="script/server"
alias sc="script/console"

alias gs="git status"
alias gco="git checkout"
alias gw="git add -u && git commit -m"
alias gd="git diff"
alias git="nocorrect git"
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gdt='git difftool -y -t Kaleidoscope'

alias ddone='growlnotify -s -m done && say done'

alias h='heroku'
alias hl='heroku logs -t'
alias hc='heroku config'
alias hp='heroku pg:info'
alias hq='heroku pg:psql'

alias hs='heroku sudo'
alias hsc='heroku sudo config'
alias hsp='heroku sudo pg:info'
alias hsq='heroku sudo pg:psql'
alias hsl='heroku sudo logs -t'
