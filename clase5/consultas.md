# Consultas en SQL

## Consultas a servidor de bbdd

    -- listar todas las bases de datos  
    SHOW DATABASES;  

> La palabra reservada más importante o al menos la más utilizada para consultas es la palabra **SELECT**

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a tablas dentro de una base de datos

    -- listar todas las tablas dentro de una base de datos
    SHOW TABLES;  

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;  

> para realizar consultas a una tabla y que nos traiga la lista de los datos (registros) vamos a utilizar
> la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;  

    SELECT * FORM personas;  
    SELECT * FORM proveedores;  

> Este tipo de consultas nos trae los datos de todas las columnas de la tabla que nosotros pidamos

> si nosotros queremos traer información de sólo algunas de las columnas,  vamos a tener que especificar las luego de la palabra **SELECT** y separadas con comas

    SELECT nombreCampo, nombreCapo2, nombreCampoX  
        FROM nombreTabla;  

> vamos a traer el nombre, el apellido y el número de documento

    SELECT nombre, apellido, dni  
      FROM personas;

### orden de resultados
> para ordenar los resultados utilizando una columna en particular tenemos el comando **ORDER BY** seguido de la columna de orden

    SELECT * FROM marcas  
      ORDER BY idMarca;

    SELECT idProveedor, razonsocial  
        FROM proveedores order by razonsocial;  

> práctica: traer nombre de producto y precio de la tabla productos y ordenalo por precio  

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio;  

> práctica: traer nombre de producto y precio de la tabla productos y ordenalo por marca  

    SELECT producto, precio  
      FROM productos  
      ORDER BY idMarca;  

> práctica: traer nombre de producto y precio de la tabla productos y ordenalo por marca; Y una vez que estén ordenados por marca ordenar por precio -dentro de esa marca-

    SELECT producto, precio  
      FROM productos  
      ORDER BY idMarca, precio;  
