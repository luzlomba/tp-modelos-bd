/* 1. Pedidos activos: mostrar los pedidos que están "en camino" o "pendiente" 
con el nombre del cliente y el restaurante */

SELECT pedido.id_pedido, cliente.nombre, restaurante.nombre, pedido.estado
FROM pedido
JOIN cliente ON pedido.id_cliente = cliente.id_cliente
JOIN restaurante ON pedido.id_restaurante = restaurante.id_restaurante
WHERE estado = 'en camino' OR estado = 'pendiente';

/* 2. Menú de un restaurante: listar todos los platos de un restaurante específico 
con su precio */

SELECT plato.id_plato, plato.nombre
FROM plato
JOIN restaurante ON plato.id_restaurante = restaurante.id_restaurante
WHERE restaurante.nombre = 'La Parrilla';

/* 3. Detalle de un pedido: mostrar qué platos tiene un pedido específico con las 
cantidades */

SELECT pedido_plato.id_pedido, pedido_plato.id_plato, pedido_plato.cantidad
FROM pedido_plato
JOIN pedido ON pedido_plato.id_pedido = pedido.id_pedido
WHERE pedido.id_pedido = '1';

