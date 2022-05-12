## How to configure IPAddress in ubuntu-18
```
Edit file under /etc/netplan/01-netcfg.yaml or may change this files version to version 01-netcfg.yaml.



network:
  version: 2
  renderer: networkd
  ethernets:
    ens3:
      dhcp4: no
      addresses:
        - 192.168.121.199/24
      gateway4: 192.168.121.1
      nameservers:
          addresses: [8.8.8.8, 1.1.1.1]
          
# apply new settings..
netplan apply


in ubunto 20.4
root@qa-server01:/etc/netplan# cat 01-network-manager-all.yaml
# Generated by VMWare customization engine.
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s8:
      dhcp4: no
      dhcp6: no
      addresses:
        - 192.168.9.88/24
      gateway4: 192.168.9.1
      nameservers:
          addresses: [8.8.8.8, 1.1.1.1]
```