echo "Setting up ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Setting up ITerm 2..."
folder=$(cd "$(dirname "$0")" ; pwd -P)
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.googlecode.iterm2 HideTab -bool true
defaults read -app iTerm > /dev/null 2>&1;
ln -s $folder/profile.json ~/Library/Application\ Support/iTerm2/DynamicProfiles