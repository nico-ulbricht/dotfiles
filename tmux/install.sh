folder=$(cd "$(dirname "$0")" ; pwd -P)
ln -s $folder/.tmux.conf ~/.tmux.conf
