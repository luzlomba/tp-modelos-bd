USE biblioteca;

INSERT INTO autor (nombre, nacionalidad) VALUES
('Gabriel Garcia Marquez', 'Colombiana'),
('Jorge Luis Borges', 'Argentina'),
('Isabel Allende', 'Chilena'),
('Julio Cortazar', 'Argentina'),
('Pablo Neruda', 'Chilena');

INSERT INTO libro (titulo, isbn, año, id_autor) VALUES
('Cien años de soledad', '978-0307474728', 1967, 1),
('El amor en los tiempos del cólera', '978-0307389732', 1985, 1),
('Ficciones', '978-0802130303', 1944, 2),
('El Aleph', '978-0142437889', 1949, 2),
('La casa de los espíritus', '978-1501117015', 1982, 3),
('Rayuela', '978-0394752846', 1963, 4),
('Veinte poemas de amor', '978-0140256253', 1924, 5);

INSERT INTO ejemplar (estado, id_libro) VALUES
('disponible', 1),
('disponible', 1),
('prestamo activo', 2),
('disponible', 3),
('disponible', 4),
('prestamo activo', 5),
('disponible', 6),
('disponible', 7),
('prestamo activo', 7),
('disponible', 3);

INSERT INTO usuario (nombre, dni, telefono) VALUES
('Ana Gomez', 12345678, 1134567890),
('Carlos Lopez', 23456789, 1145678901),
('Maria Fernandez', 34567890, 1156789012),
('Lucas Perez', 45678901, 1167890123),
('Sofia Martinez', 56789012, 1178901234);

INSERT INTO prestamo (fecha_inicio, fecha_estimada_entrega, fecha_real_entrega, monto_penalizacion, id_ejemplar, id_usuario) VALUES
('2026-01-10', '2026-01-24', '2026-01-24', 0, 3, 1),
('2026-02-05', '2026-02-19', '2026-02-25', 500, 6, 2),
('2026-03-01', '2026-03-15', '2026-03-14', 0, 9, 3),
('2026-03-20', '2026-04-03', NULL, 0, 2, 4),
('2026-04-01', '2026-04-15', NULL, 0, 5, 5);