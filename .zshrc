source ~/.oh-my-zsh/oh-my-zsh.sh

DIR="$HOME/projects/dotfiles"
find $DIR -name "*.zsh" -print0 |
while IFS= read -r -d $'\0' line; do
   source $line
done

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi
