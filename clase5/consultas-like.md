# consultas de coincidencia (que contenga una cadena de caractéres)

> las consultas de coincidencias se utilizan para obtener registros que vamos a filtrar utilizando una cadena de caracteres.
> eso quiere decir que como filtro vamos a explicitar que contenga cierta cadena de caractéres

> vamos a traer nombre, precio, descripción de la tabla productos que en la columna descripción contenga la palabra "retroiluminado"

    SELECT producto, precio, descripcion  
      FROM productos
      WHERE descripcion LIKE '%retroiluminado%'; 

> utilizamos la palabra reservada **LIKE** en combinación con el carácter **%** (porcentaje) Como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter.

