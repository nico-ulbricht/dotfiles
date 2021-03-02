echo "Setting up Hostfile..."
sudo cp /etc/hosts /etc/hosts.backup
sudo cp ./system/hosts /etc/hosts

echo "Change HostName..."
HOSTNAME="nico"
sudo scutil --set ComputerName $HOSTNAME
sudo scutil --set LocalHostName $HOSTNAME
sudo scutil --set HostName $HOSTNAME
