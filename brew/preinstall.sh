if test ! $(which brew)
then
    echo "Setting up Brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (cd brew && brew bundle && brew cleanup)
fi
