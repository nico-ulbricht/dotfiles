echo "Setting up ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Setting up ITerm 2..."
folder=$(cd "$(dirname "$0")" ; pwd -P)
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.googlecode.iterm2 HideTab -bool true

ln -s $folder/.inputrc ~/.inputrc
ln -s $folder/starship.toml ~/.config/starship.toml
