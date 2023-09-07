DIR=$(cd $(dirname $0) && pwd)

echo "Setting up Dotfiles"
folder=$(cd "$(dirname "$0")" ; pwd -P)
ln -s $folder/.zshrc ~/.zshrc
