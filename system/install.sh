echo "Setting up Hostfile..."
sudo cp /etc/hosts /etc/hosts.backup
sudo cp ./system/hosts /etc/hosts

echo "Install Fonts..."
sudo cp ./system/fonts/* /Library/Fonts
