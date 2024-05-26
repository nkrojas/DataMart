/*Transformacion Dimension Empleado*/
SELECT 
	ID_empleado, 
    ID_empleadoO, 
    nombre, 
    apellido1,
	puesto,
    email, 
    TbO.linea_direccion1 AS direccion,
	TbO.ciudad AS ciudad
FROM 
    TB_Empleado TbE 
INNER JOIN 
    TB_Oficina TbO 
ON 
    TbE.ID_oficina = TbO.ID_oficinaO;

/*Transformacion Dimension Producto*/
SELECT
	ID_producto,
	ID_productoO,
	nombre,
	precio_venta,
	cantidad_en_stock,
	TbC.Id_CategoriaO AS ID_categoria,
	TbC.descripcion_texto AS descripcion
FROM 
	TB_Producto TbP
INNER JOIN
	TB_Categoria TbC
ON
    TbP.Id_Categoria = TbC.Id_CategoriaO;

/* Transformacion Tabla hechos*/
		SELECT 
			P.ID_pedido,
			P.ID_pedidoO,
			DC.ID_cliente,
			DE.ID_empleado,
			DO.ID_oficina,
			DP.ID_producto,
			DT.ID_Tiempo,
			TP.cantidad,
			TP.precio_unidad
		FROM 
			TB_Pedido P 
		LEFT JOIN 
			TB_DetallePedido TP ON P.ID_pedido = TP.ID_pedido
		LEFT JOIN 
			DimCliente DC ON DC.ID_cliente = P.ID_cliente
		LEFT JOIN 
			DimEmpleado DE ON DE.ID_empleado = P.ID_empleado
		LEFT JOIN 
			DimOficina DO ON DO.ID_oficina = P.ID_oficina
		LEFT JOIN 
			DimProducto DP ON DP.ID_producto = P.ID_producto
		LEFT JOIN 
			DimTiempo DT ON P.ID_Tiempo=DT.ID_Tiempo