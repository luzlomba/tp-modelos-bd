CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    nacionalidad VARCHAR(50) NOT NULL
);

CREATE TABLE libro (
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50) NOT NULL,
    isbn VARCHAR(50) NOT NULL,
    año INT NOT NULL,
    id_autor INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

CREATE TABLE ejemplar (
    id_ejemplar INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(50) NOT NULL CHECK (estado IN ('disponible', 'prestamo activo')),
    id_libro INT NOT NULL,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    dni INT NOT NULL,
    telefono INT NOT NULL
);

CREATE TABLE prestamo (
    id_prestamo INT PRIMARY KEY AUTO_INCREMENT,
    fecha_inicio DATE NOT NULL,
    fecha_estimada_entrega DATE NOT NULL,
    fecha_real_entrega DATE,
    monto_penalizacion INT NOT NULL,
    id_ejemplar INT NOT NULL,
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_ejemplar) REFERENCES ejemplar(id_ejemplar),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
)