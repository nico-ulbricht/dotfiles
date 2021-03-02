folder=$(cd "$(dirname "$0")" ; pwd -P)
ln -s $folder/.inputrc ~/.inputrc
ln -s $folder/starship.toml ~/.config/starship.toml
