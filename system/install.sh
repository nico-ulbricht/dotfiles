echo "Setting up Hostfile..."
sudo cp /etc/hosts /etc/hosts.backup
sudo cp ./system/hosts /etc/hosts

echo "Install Fonts..."
sudo cp ./system/fonts/* /Library/Fonts

echo "Change HostName..."
HOSTNAME="nico"
sudo csutil --set ComputerName $HOSTNAME
sudo csutil --set LocalHostName $HOSTNAME
sudo csutil --set HostName $HOSTNAME
