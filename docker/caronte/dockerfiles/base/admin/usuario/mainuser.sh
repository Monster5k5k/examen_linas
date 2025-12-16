#!/bin/bash
# Creamos el usuario linas con contraseña 1234
mkdir -p /home/linas
useradd -d /home/linas -s /bin/bash linas
echo "linas:1234" | chpasswd
chown -R linas:linas /home/linas