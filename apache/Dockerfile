# Usamos un contenedor base oficial de Apache
FROM httpd:2.4
LABEL name="Actividad1: Apache Dockerfile"

RUN rm -rf /usr/local/apache2/htdocs/*
# Copiamos el resto de los archivos del proyecto al contenedor
COPY index.html /usr/local/apache2/htdocs/
# Exponemos el puerto en el que Apache se ejecutará

EXPOSE 80
# Comando para iniciar Apache en primer plano
CMD ["apachectl", "-D", "FOREGROUND"]
