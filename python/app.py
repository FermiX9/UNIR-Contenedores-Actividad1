from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Actividad 1 Contenedores: Python Dockerizado con exito."

if __name__ == "__main__":
    # Escuchar en 0.0.0.0 para que sea accesible desde fuera del contenedor
    app.run(host="0.0.0.0", port=5000)
