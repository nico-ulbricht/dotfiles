curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.config/nvim

ln -s $folder/init.vim ~/.config/nvim/init.vim
ln -s $folder/.nvimrc ~/.nvimrc
