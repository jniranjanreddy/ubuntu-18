## How to configure nfs in Ubuntu 20.x
## in server

## If you come accross NFS Cannot allocate memory
```
sync && echo 3 > /proc/sys/vm/drop_caches
```
```
sudo apt update
sudo apt install nfs-kernel-server
```
## nfs2 is disabled
```
 cat /proc/fs/nfsd/versions 
 
 Important files
 /etc/default/nfs-kernel-server
 /etc/default/nfs-common
 
sudo mkdir -p /srv/nfs4/backups
sudo mkdir -p /srv/nfs4/www

cat /etc/fstab
/opt/backups /srv/nfs4/backups  none   bind   0   0
/var/www     /srv/nfs4/www      none   bind   0   0

cat /etc/exports 
root@rancher:/opt# exportfs -v
/srv/nfs4       192.168.9.0/24(rw,wdelay,crossmnt,root_squash,no_subtree_check,fsid=0,sec=sys,rw,secure,root_squash,no_all_squash)
/srv/nfs4/redis
                192.168.9.0/24(rw,wdelay,root_squash,no_subtree_check,sec=sys,rw,secure,root_squash,no_all_squash)
/srv/nfs4/postgresqlVol1
                192.168.9.0/24(rw,wdelay,root_squash,no_subtree_check,sec=sys,rw,secure,root_squash,no_all_squash)
/srv/nfs4/rabbitMQ
                192.168.9.0/24(rw,wdelay,root_squash,no_subtree_check,sec=sys,rw,secure,root_squash,no_all_squash)

exportfs -v
```

## Configure client.
```
sudo mkdir -p /redis
sudo mkdir -p /srv/postgresqlVol1
sudo mkdir -p /srv/postgresqlVol1

sudo mount -t nfs -o vers=4 192.168.33.10:/redis /srv/www
sudo mount -t nfs -o vers=4 192.168.33.10:/postgresqlVol1 /srv/www
sudo mount -t nfs -o vers=4 192.168.33.10:/postgresqlVol1 /srv/www

cat /etc/fstab
192.168.9.126:/redis           /redis          nfs   defaults,timeo=900,retrans=5,_netdev    0 0
192.168.9.126:/rabbitMQ        /rabbitMQ       nfs   defaults,timeo=900,retrans=5,_netdev    0 0
192.168.9.126:/postgresqlVol1  /postgresqlVol1 nfs   defaults,timeo=900,retrans=5,_netdev    0 0

root@rkenode02:~# showmount -e 192.168.9.126
Export list for 192.168.9.126:
/srv/nfs4/rabbitMQ       192.168.9.0/24
/srv/nfs4/postgresqlVol1 192.168.9.0/24
/srv/nfs4/redis          192.168.9.0/24
/srv/nfs4                192.168.9.0/24




```
