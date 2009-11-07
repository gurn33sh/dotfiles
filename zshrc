. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

# rvm-install added line:
if [[ -s /Users/will/.rvm/scripts/rvm ]] ; then source /Users/will/.rvm/scripts/rvm ; fi

