# Usamos un contenedor base oficial de postgres
FROM postgres:13
LABEL name="Actividad1: Postgres Dockerfile"
# Establecemos el directorio de trabajo dentro del contenedor
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=actividad1
WORKDIR /var/lib/postgresql/data
# Copiamos el archivo SQL para inicializar la base de datos
COPY init.sql /docker-entrypoint-initdb.d/
# Exponemos el puerto en el que PostgreSQL se ejecutará
EXPOSE 5432
# Comando para iniciar PostgreSQL (ya está definido en la imagen base)