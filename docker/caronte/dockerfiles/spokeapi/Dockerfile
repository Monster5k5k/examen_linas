# Heredamos de la Capa 2 (Nginx)
FROM linas/swebnginx

# 1. Instalamos Node.js 20 (Versión actual estable)
RUN apt-get update && apt-get install -yq --no-install-recommends \
    curl ca-certificates gnupg \
    && mkdir -p /etc/apt/keyrings \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list \
    && apt-get update && apt-get install -y nodejs \
    && apt-get clean

# 2. Preparamos la carpeta
RUN mkdir -p /var/www/html/proyecto
WORKDIR /var/www/html/proyecto

# 3. Copiamos TU código de React
# (IMPORTANTE: Asegúrate de pegar tu carpeta 'Actividades y PokeApi' donde te dije)
COPY ["./proyecto/Actividades y PokeApi/", "/var/www/html/proyecto/"]

# 4. Copiamos el script de arranque
COPY ./dockerfiles/spokeapi/admin/start.sh /root/admin/pokeapi/start.sh
RUN chmod +x /root/admin/pokeapi/start.sh

# 5. Puertos: 3000 (React) y 22 (SSH)
EXPOSE 3000 22

ENTRYPOINT ["/root/admin/pokeapi/start.sh"]