sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

folder=$(cd "$(dirname "$0")" ; pwd -P)
ln -s $folder/.inputrc ~/.inputrc
ln -s $folder/starship.toml ~/.config/starship.toml
