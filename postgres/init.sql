-- Crear tablas de ejemplo
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio NUMERIC(10,2) NOT NULL,
    stock INT NOT NULL
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuarios(id),
    producto_id INT REFERENCES productos(id),
    cantidad INT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar datos en usuarios
INSERT INTO usuarios (nombre, email) VALUES
('Ana García', 'ana.garcia@example.com'),
('Luis Fernández', 'luis.fernandez@example.com'),
('Carmen López', 'carmen.lopez@example.com'),
('Miguel Torres', 'miguel.torres@example.com'),
('Lucía Martínez', 'lucia.martinez@example.com');

-- Insertar datos en productos
INSERT INTO productos (nombre, precio, stock) VALUES
('Pizza Margarita', 8.50, 100),
('Hamburguesa Clásica', 6.75, 50),
('Ensalada César', 5.20, 40),
('Tacos al Pastor', 7.80, 60),
('Sushi Variado', 12.00, 30);

-- Insertar datos en pedidos
INSERT INTO pedidos (usuario_id, producto_id, cantidad) VALUES
(1, 2, 2),
(3, 1, 1),
(2, 4, 3),
(5, 3, 2),
(4, 5, 1);
