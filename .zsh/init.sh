export DOTFILES_LOADED="true"
export SHELL_NAME="zsh"

autoload -U compinit
compinit -i

#source $HOME/.zsh/prompt.sh
source $HOME/.zsh/exports.sh
source $HOME/.zsh/specific.sh
source $HOME/.zsh/options.sh
#source $HOME/.zsh/asdf.sh
source $HOME/.zsh/functions.sh
source $HOME/.zsh/alias.sh
source $HOME/.zsh/starship.sh
