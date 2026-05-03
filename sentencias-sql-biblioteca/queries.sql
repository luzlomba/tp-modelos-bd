
/*Libros disponibles — mostrar todos los ejemplares que estén disponibles 
con el título del libro*/

SELECT libro.titulo, ejemplar.id_ejemplar, ejemplar.estado
FROM libro
JOIN ejemplar ON libro.id_libro = ejemplar.id_libro
WHERE titulo = 'Veinte poemas de amor' AND estado = 'disponible';

/*Préstamos activos — mostrar los préstamos sin fecha de devolución con 
el nombre del usuario y el título del libro*/

SELECT libro.titulo, ejemplar.estado, prestamo.id_prestamo, prestamo.fecha_real_entrega, usuario.nombre
FROM libro
JOIN ejemplar ON libro.id_libro = ejemplar.id_libro
JOIN prestamo ON ejemplar.id_ejemplar = prestamo.id_ejemplar
JOIN usuario ON prestamo.id_usuario = usuario.id_usuario
WHERE fecha_real_entrega IS NULL;

/*Préstamos con penalización — mostrar los préstamos donde el monto de 
penalización sea mayor a 0*/

SELECT prestamo.id_prestamo, usuario.nombre, prestamo.monto_penalizacion
FROM prestamo
JOIN usuario ON prestamo.id_usuario = usuario.id_usuario
WHERE monto_penalizacion > 0;