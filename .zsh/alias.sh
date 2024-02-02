if [[ -x "$(which colorls)" ]]; then
  alias ll="colorls -A"
else
  alias ll="ls -FGlahs"
fi

alias vi="vim"
alias cl="clear"
alias lsof-net="lsof -Pnl +M -i4"
alias grep="grep --colour=auto"

# Shortcuts
alias h="history 0"
alias dl="cd ~/Downloads"
alias ..="cd .."
alias ...="cd ../.."
alias -- -="cd -"
