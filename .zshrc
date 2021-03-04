source ~/.oh-my-zsh/oh-my-zsh.sh

DIR="$HOME/projects/dotfiles"
find $DIR -name "*.zsh" -print0 |
while IFS= read -r -d $'\0' line; do
   source $line
done
