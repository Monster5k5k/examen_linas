#!/bin/bash

# 1. Creamos la carpeta ssh del usuario linas
mkdir -p /home/linas/.ssh

# 2. Copiamos la clave pública que subimos (id_rsa.pub) al fichero authorized_keys
# OJO: Asumimos que la clave pública está en /root/admin/common/id_rsa.pub
cat /root/admin/common/id_rsa.pub >> /home/linas/.ssh/authorized_keys

# 3. Ajustamos los permisos (¡Muy importante! Si no, SSH no te deja entrar)
chown -R linas:root /home/linas/.ssh
chmod 700 /home/linas/.ssh
chmod 600 /home/linas/.ssh/authorized_keys

# 4. Arrancamos el servicio SSH
service ssh start

echo "--- SSH configurado y arrancado ---"