#!/bin/bash
set -e

# --- PARTE 1: NGINX (Puerto 80) ---
echo "--- [POKEAPI] Arrancando Nginx (Base)... ---"
# Esto ejecuta el start.sh de nginx (que lanza nginx) en segundo plano
bash /root/admin/nginx/start.sh &  
sleep 5

# --- PARTE 2: REACT (Puerto 3000) ---
echo "--- [POKEAPI] Preparando React... ---"
cd /var/www/html/proyecto

if [ ! -d "node_modules" ]; then
    echo "Instalando node_modules..."
    npm install
fi

echo "--- [POKEAPI] Arrancando Vite en puerto 3000... ---"
# Importante: --host 0.0.0.0 permite que entres desde fuera
npm run dev -- --host 0.0.0.0 --port 3000