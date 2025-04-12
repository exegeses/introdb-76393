# Filtrado de resultados

> Filtrar resultados de una consulta significa que vamos a traer solamente los registros que cumplan con una condición dada
> para implementar un filtro utilizamos la palabra reservada
> **WHERE** seguida de una condición

    SELECT campo, campo  
      FROM nombreTabla  
      WHERE condicion;  


> practica: traer nombre del producto, precio del producto (di la tabla productos) con un precio hasta 800

    SELECT producto, precio
      FROM productos    
      WHERE precio <= 800;  

> practica: traer nombre del producto, precio del producto (di la tabla productos) con un precio entre 100 y 800

    SELECT producto, precio  
      FROM productos      
      WHERE precio <= 800  
        AND precio >= 100;  

    SELECT producto, precio  
      FROM productos      
      WHERE precio BETWEEN 100 AND 800;   

> practica: traer nombre del producto, precio del producto (di la tabla productos) con un de la marca 1 y de la marca 16 también 
 
    SELECT producto, precio  
      FROM productos    
      WHERE idMarca = 1  
         OR idMarca = 16;  

    SELECT producto, precio  
      FROM productos    
      WHERE idMarca IN(1, 16);  

