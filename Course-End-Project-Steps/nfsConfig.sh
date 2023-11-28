sudo mkdir /data
sudo apt -y update
sudo apt -y install nfs-kernel-server
sudo chown nobody:nogroup /data/
sudo chmod 777 /data/
sudo echo "/data *(rw,sync,no_root_squash)" >>  /etc/exports
sudo exportfs -rv
sudo systemctl restart nfs-kernel-server
sudo apt -y update
sudo apt -y install nfs-common
