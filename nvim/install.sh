curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim

folder=$(cd "$(dirname "$0")" ; pwd -P)
ln -s $folder/.ideavimrc ~/.config/.ideavimrc
ln -s $folder/init.vim ~/.config/nvim/init.vim
