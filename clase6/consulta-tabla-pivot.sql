# consultas a una tabla intermedia

/*
    Obtener nombre de producto y precio del producto
            (de la tabla productos)
    y además una tercera columna con el nombre del proveedor
            (de la tabla proveedores)
*/

SELECT producto, precio, razonsocial
FROM productos
 JOIN productos_proveedores
   ON productos.idProducto = productos_proveedores.idProducto
 JOIN proveedores
   ON proveedores.idProveedor = productos_proveedores.idProveedor;


SELECT producto, precio, razonsocial
FROM productos, productos_proveedores, proveedores
  WHERE productos.idProducto = productos_proveedores.idProducto
   AND proveedores.idProveedor = productos_proveedores.idProveedor;

/*#####################################*/
/*
    Obtener las columnas nombre de producto y precio del producto
            (de la tabla productos)
    y también marca (de la tabla marcas)
    y también categoria (de la tabla categorias)
    y además una tercera columna con el nombre del proveedor
            (de la tabla proveedores)
*/
SELECT producto, precio, marca, categoria, razonsocial
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria
 JOIN productos_proveedores
  ON productos.idProducto = productos_proveedores.idProducto
 JOIN proveedores
  ON proveedores.idProveedor = productos_proveedores.idProveedor;


select producto, precio, marca, categoria, razonsocial
from productos, marcas, categorias, productos_proveedores, proveedores
where productos.idmarca = marcas.idmarca
  and productos.idcategoria = categorias.idcategoria
  and productos.idproducto = productos_proveedores.idproducto
  and proveedores.idproveedor = productos_proveedores.idproveedor;