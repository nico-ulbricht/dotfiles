export LANG=en_US.UTF-8

# zsh Theme
export ZSH=/Users/$(whoami)/.oh-my-zsh
ZSH_THEME="robbyrussell"

# iTerm2 Profile Selection
echo -e "\033]50;SetProfile=NicosProfile\a"

# Sourcing
source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.functions
source ~/.profile