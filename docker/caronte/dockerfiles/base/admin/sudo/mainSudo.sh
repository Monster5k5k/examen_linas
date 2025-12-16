#!/bin/bash
# Instalamos sudo y damos permisos a linas
apt-get update && apt-get install -y sudo
echo "linas ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers