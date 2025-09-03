export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
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

# pnpm
export PNPM_HOME="/Users/nicoulbricht/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.local/share

# Added by Windsurf
export PATH="/Users/nicoulbricht/.codeium/windsurf/bin:$PATH"
