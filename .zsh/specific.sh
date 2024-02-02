export HISTFILE="$HOME/.zsh_history"
WORDCHARS=${WORDCHARS//[&=\/;\!#%\{]}
alias reload="source ~/.zshrc"

noglob-command() {
  name=$1
  eval "alias $name='noglob $name'"
}

noglob-command 'git'
