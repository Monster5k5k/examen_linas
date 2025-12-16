#!/bin/bash
set -e

# 1. Cargamos la configuración de Nginx (que a su vez carga la Base)
echo "--- [POKEAPI] Cargando capas anteriores... ---"
# Lo lanzamos en segundo plano (&) para que no se quede congelado ahí
bash /root/admin/nginx/start.sh &  
sleep 5

# 2. Entramos en la carpeta del proyecto
echo "--- [POKEAPI] Preparando React... ---"
cd /var/www/html/proyecto

# 3. Instalamos dependencias si es la primera vez
if [ ! -d "node_modules" ]; then
    echo "Instalando node_modules (esto puede tardar)..."
    npm install
fi

# 4. Arrancamos el servidor de desarrollo
echo "--- [POKEAPI] Iniciando npm start ---"
npm start