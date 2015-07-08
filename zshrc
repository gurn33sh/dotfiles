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
plugins=(heroku hk autojump git danger brew gem rvm c zsh-syntax-highlighting)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export GOPATH=/Users/will/code/goprojects
export GOMAXPROCS=4

export PATH=~/.bin:$GOPATH/bin:/usr/local/bin:/opt/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
export PGDATA=/usr/local/var/postgres
export PSQL_EDITOR="vim -c ':set ft=sql'"
export HEROKU_USE_SPECIAL_SUDO_TOKEN=1


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
