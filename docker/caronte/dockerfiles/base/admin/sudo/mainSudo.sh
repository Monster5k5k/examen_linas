#!/bin/bash

# Instalamos sudo por si acaso no estuviera (aunque ya lo pusimos en el Dockerfile)
apt-get update && apt-get install -y sudo

# Añadimos a linas al grupo sudo
usermod -aG sudo linas

# TRUCO DEL EXAMEN:
# Configuramos sudo para que NO pida contraseña al usuario linas
echo "linas ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

echo "--- Permisos SUDO configurados para linas ---"