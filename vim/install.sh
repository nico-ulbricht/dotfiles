folder=$(cd "$(dirname "$0")" ; pwd -P)
ln -s $folder/.vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir ~/.vim
mkdir ~/.vim/backup
mkdir ~/.vim/swap
mkdir ~/.vim/undo
