# Usamos un contenedor base oficial de Node.js
FROM node:14
LABEL name="Actividad1: Nodejs Dockerfile"
# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app
# Copiamos el resto de los archivos del proyecto al contenedor
COPY . .
# Instalamos las dependencias del proyecto
RUN npm install
# Exponemos el puerto en el que la aplicación se ejecutará
EXPOSE 3000
# Comando para iniciar la aplicación
CMD ["node", "app.js"]