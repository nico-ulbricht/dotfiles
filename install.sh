#!/usr/bin/env bash

# ################################
# Installing Dependencies
# ################################
echo "Setting up Dependencies..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ################################
# Linking dotfiles
# ################################
echo "Setting up Dotfiles"
ln -s .aliases ~/
ln -s .functions ~/
ln -s .zshrc ~/

# ################################
# Visual Studio Code
# ################################
echo "Setting up VSCode..."
ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code
./configuration/install-vscode-extensions.sh

# ################################
# ITerm 2
# ################################
echo "Setting up ITerm 2..."
open "./configuration/iterm-colors.itermcolors"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.googlecode.iterm2 HideTab -bool true
defaults read -app iTerm > /dev/null 2>&1;

# ################################
# Spyware & Ads
# ################################
echo "Setting up Hostfile..."
sudo cp /etc/hosts /etc/hosts.backup
sudo cp ./configs/hosts /etc/hosts

# ################################
# Setup OSX Specifics
# ################################
echo "Setting up OSX Sharing..."
sudo systemsetup -setwakeonnetworkaccess off
sudo systemsetup -setwakeonmodem off
sudo systemsetup -setremotelogin off
sudo systemsetup -setremoteappleevents off

echo "Setting up OSX Users..."
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

echo "Setting up Hot Corners..."
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0