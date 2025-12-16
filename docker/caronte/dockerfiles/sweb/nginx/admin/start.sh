#!/bin/bash
set -e

# 1. Cargamos la configuración de la CAPA BASE
# (Llamamos al script que ya existe en la imagen base)
echo "--- [NGINX] Cargando configuración Base ---"
bash /root/admin/base/start.sh

# 2. Arrancamos Nginx
echo "--- [NGINX] Iniciando servidor web ---"
# Lo lanzamos en segundo plano (&) para que no bloquee el script
nginx &

# 3. Mantenemos el contenedor vivo
# (Usamos tail -f para que Docker no se cierre)
tail -f /dev/null