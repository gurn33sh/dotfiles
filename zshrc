# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
# export ZSH_THEME="robbyrussell"
export ZSH_THEME="arrow"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(heroku autojump git danger brew gem rvm c zsh-syntax-highlighting)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

source $ZSH/oh-my-zsh.sh

# vim
alias vim=nvim

# crystal
export CRYSTAL_CACHE_DIR=/tmp/.crystal
alias bcrystal=/Users/will/code/crystal/bin/crystal

# go
export GOPATH=/Users/will/code/goprojects
export GOMAXPROCS=4
export PATH=~/.bin:$GOPATH/bin:/usr/local/bin:/opt/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

# clojure
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

# postgres
export PGDATA=/usr/local/var/postgres
export PSQL_EDITOR="nvim -c ':set ft=sql'"

# heroku
export HEROKU_USE_SPECIAL_SUDO_TOKEN=1

# rails
export DISABLE_SPRING="true"

if [[ -s $HOME/.localrc ]] ; then source $HOME/.localrc ; fi
eval "$(rbenv init - --no-rehash)"

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'

# add postgres to url escaping, not sure if there is a way to just add postgres
zstyle ':urlglobber' url-other-schema http https ftp postgres

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
