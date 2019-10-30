folder=$(cd "$(dirname "$0")" ; pwd -P)
mkdir -p ~/.config/tmux

ln -s $folder/.tmux.conf ~/.tmux.conf
ln -s $folder/battery.sh ~/.config/tmux/battery.sh
