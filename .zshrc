export ZSH=/Users/$(whoami)/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

DIR="$(dirname "$(readlink ~/.zshrc)")"
find $DIR -name "*.zsh" -print0 |
while IFS= read -r -d $'\0' line; do
   source $line
done

# Created by `userpath` on 2020-07-01 15:20:58
export PATH="$PATH:/Users/nicoulbricht/.local/bin"
