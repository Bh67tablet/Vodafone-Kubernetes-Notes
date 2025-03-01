mkdir /data
apt -y update
apt -y install nfs-kernel-server
chown nobody:nogroup /data/
chmod 777 /data/
echo "/data *(rw,sync,no_root_squash)" >> /etc/exports
exportfs -rv
systemctl restart nfs-kernel-server
apt -y update
apt -y install nfs-common
echo "sed -i 's/SERVER_IPv4/`hostname -i`/g' mysql.yaml" >> 2_kubernetes-dashboard.sh
