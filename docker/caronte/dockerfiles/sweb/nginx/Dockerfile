# 1. HERENCIA: Usamos tu imagen base (la que acabamos de crear)
FROM linas/ubbase

# 2. INSTALACIÓN: Añadimos Nginx
RUN apt-get update && apt-get install -yq --no-install-recommends \
    nginx \
    && apt-get clean

# 3. PERMISOS: Ajustamos el dueño de la carpeta web a www-data (estándar de Nginx)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# 4. PREPARACIÓN: Creamos la carpeta para los scripts de esta capa
RUN mkdir -p /root/admin/nginx
WORKDIR /root/admin/nginx

# 5. COPIA: Metemos el script 'start.sh' que acabas de crear
# (Ojo a la ruta, busca el archivo en la carpeta de construcción)
COPY ./dockerfiles/sweb/nginx/admin/start.sh .

# 6. EJECUCIÓN: Le damos permisos y decimos que arranque con él
RUN chmod +x start.sh

# 7. PUERTOS: Informamos que usa el 80
EXPOSE 80

ENTRYPOINT ["./start.sh"]