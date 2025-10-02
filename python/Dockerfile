# Usamos un contenedor base oficial de Python
FROM python:3.10-slim
LABEL name="Actividad1: Python Dockerfile"
# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app
# Copiamos el resto de los archivos del proyecto al contenedor
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
# Exponemos el puerto en el que la aplicación se ejecutará
EXPOSE 5000
# Comando para iniciar la aplicación
CMD ["python", "app.py"]