CREATE DATABASE delivery;
USE delivery;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR (50) NOT NULL
);

CREATE TABLE repartidor (
    id_repartidor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    telefono VARCHAR (50) NOT NULL
);

CREATE TABLE restaurante (
    id_restaurante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    tipo_de_cocina VARCHAR(50) NOT NULL
);

CREATE TABLE plato (
    id_plato INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio INT NOT NULL,
    descripcion VARCHAR(50) NOT NULL,
    id_restaurante INT NOT NULL,
    FOREIGN KEY (id_restaurante) REFERENCES restaurante(id_restaurante)
);

CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    estado VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_repartidor INT NOT NULL,
    id_restaurante INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_repartidor) REFERENCES repartidor(id_repartidor),
    FOREIGN KEY (id_restaurante) REFERENCES restaurante(id_restaurante)
);

CREATE TABLE pedido_plato (
    id_pedido INT NOT NULL,
    id_plato INT NOT NULL,
    PRIMARY KEY (id_pedido, id_plato),
    cantidad INT
);