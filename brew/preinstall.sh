if test ! $(which brew)
then
    echo "Setting up Brew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    (cd brew && brew bundle && brew cleanup)
fi
