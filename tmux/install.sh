mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

folder=$(cd "$(dirname "$0")" ; pwd -P)
ln -s $folder/.tmux.conf ~/.tmux.conf
