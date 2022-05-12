# How to install openssh-server in Ubuntu
#!/usr/bin/bash
apt-get install openssh-server
systemctl enable ssh
systemctl start ssh
