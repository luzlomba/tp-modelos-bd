USE delivery;

INSERT INTO cliente (nombre, direccion, telefono) VALUES
('Ana Gomez', 'Av. Corrientes 1234', '1134567890'),
('Carlos Lopez', 'San Martin 567', '1145678901'),
('Maria Fernandez', 'Belgrano 890', '1156789012'),
('Lucas Perez', 'Rivadavia 321', '1167890123'),
('Sofia Martinez', 'Florida 654', '1178901234');

INSERT INTO repartidor (nombre, telefono) VALUES
('Juan Rodriguez', '1190123456'),
('Pedro Gonzalez', '1191234567'),
('Laura Sanchez', '1192345678');

INSERT INTO restaurante (nombre, tipo_de_cocina) VALUES
('La Parrilla', 'Argentina'),
('Sushi House', 'Japonesa'),
('Pizza Roma', 'Italiana'),
('El Taco', 'Mexicana');

INSERT INTO plato (nombre, precio, descripcion, id_restaurante) VALUES
('Asado', 2500, 'Parrilla mixta', 1),
('Empanadas', 800, 'Docena de empanadas', 1),
('Salmon roll', 1800, 'Roll de salmon con palta', 2),
('Tuna roll', 1600, 'Roll de atun', 2),
('Pizza Margherita', 1200, 'Pizza con tomate y mozzarella', 3),
('Pizza Napolitana', 1300, 'Pizza con tomate y anchoas', 3),
('Taco de pollo', 900, 'Taco con pollo y verduras', 4),
('Taco de carne', 1000, 'Taco con carne y guacamole', 4);

INSERT INTO pedido (estado, fecha, id_cliente, id_repartidor, id_restaurante) VALUES
('entregado', '2026-04-01', 1, 1, 1),
('entregado', '2026-04-02', 2, 2, 2),
('en camino', '2026-04-03', 3, 3, 3),
('pendiente', '2026-04-04', 4, 1, 4),
('entregado', '2026-04-05', 5, 2, 1);

INSERT INTO pedido_plato (id_pedido, id_plato, cantidad) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 3),
(2, 4, 2),
(3, 5, 1),
(3, 6, 1),
(4, 7, 2),
(4, 8, 1),
(5, 1, 1),
(5, 2, 1);