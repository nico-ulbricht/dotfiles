export ZSH=/Users/$(whoami)/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

DIR="$(dirname "$(readlink ~/.zshrc)")"
find $DIR -name "*.zsh" -print0 |
while IFS= read -r -d $'\0' line; do
   source $line
done
