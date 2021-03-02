folder=$(cd "$(dirname "$0")" ; pwd -P)

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string $folder
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

defaults write com.googlecode.iterm2 PromptOnQuit -bool false
defaults write com.googlecode.iterm2 HideTab -bool true
