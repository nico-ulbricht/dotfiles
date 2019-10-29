gpg -K --keyid-format SHORT

folder=$(cd "$(dirname "$0")" ; pwd -P)
ln $folder/.gitconfig ~/.gitconfig
