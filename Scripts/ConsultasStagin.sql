SELECT ID_cliente,nombre_cliente,apellido_contacto,telefono,linea_direccion1,ciudad,limite_credito 
From cliente
order by ID_cliente asc
SELECT ID_oficina,Descripcion,ciudad,linea_direccion1,telefono
From oficina
order by ID_oficina asc
SELECT ID_empleado,nombre,apellido1,puesto,email,ID_oficina
FROM empleado
order by ID_empleado asc
SELECT ID_producto,nombre,precio_venta,cantidad_en_stock,Id_Categoria
FROM producto,Categoria_producto
order by ID_producto asc
SELECT Id_Categoria, descripcion_texto
FROM Categoria_producto
order by Id_Categoria asc
SELECT ID_pedido,fecha_pedido,ID_oficina,ID_cliente,ID_empleado,ID_producto
FROM pedido,producto,empleado
order by ID_pedido asc
SELECT ID_detalle_pedido, cantidad, precio_unidad,ID_pedido
FROM detalle_pedido
order by ID_detalle_pedido asc
