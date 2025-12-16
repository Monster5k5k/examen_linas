#!/bin/bash
set -e

# 1. Cargamos la configuración de Nginx
echo "--- [POKEAPI] Cargando capas anteriores... ---"
bash /root/admin/nginx/start.sh &  
sleep 5

# 2. Entramos en la carpeta del proyecto
echo "--- [POKEAPI] Preparando React (Vite)... ---"
cd /var/www/html/proyecto

# 3. Instalamos dependencias
if [ ! -d "node_modules" ]; then
    echo "Instalando node_modules..."
    npm install
fi

# 4. Arrancamos Vite obligándole a usar el puerto 3000 y aceptar IPs externas
echo "--- [POKEAPI] Iniciando Servidor Vite ---"
npm run dev -- --host 0.0.0.0 --port 3000