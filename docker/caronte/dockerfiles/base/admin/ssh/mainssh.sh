#!/bin/bash
# Instalamos SSH
apt-get update && apt-get install -y openssh-server
mkdir /var/run/sshd

# Configuramos la llave para 'linas'
mkdir -p /home/linas/.ssh
cp /root/admin/common/id_rsa.pub /home/linas/.ssh/authorized_keys
chown -R linas:linas /home/linas/.ssh
chmod 700 /home/linas/.ssh
chmod 600 /home/linas/.ssh/authorized_keys

# Arrancamos SSH
/usr/sbin/sshd