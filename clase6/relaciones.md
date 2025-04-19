# Consultas con relaciones entre tablas

> Si queremos consultar datos provenientes de dos o más tablas debemos relacionar esas tablas.
> Para ello tenemos dos técnicas


## 1- Table Relation

> La técnica **Table Relation** se logra mencionando en el listado de tablas (despu´es del**FROM**) cada una de las tablas necesarias para la consulta (separadas por comas)
> Y luego mediante un filtro (**WHERE**) 
> igualamos la columna en común
> Hay que igualar la foreign key de una tabla con la primary key de la otra tabla

> Sintáxis:  

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

> ejemplo práctico:  

    SELECT producto, precio, marca  
      FROM productos, marcas    
      WHERE productos.idMarca = marcas.idMarca;  


    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;  


## 2- JOINS  

> En la técnica **JOIN** no vamos a mencionar en el listado de las tablas (despu´es del**FROM**) cada una de las tablas necesarias para la consulta
> Sólo se menciona la tabla principal
> Y luego usamos la palabra reservada **JOIN**
> para relacionar la tabla secundaria
> Y finalizamos igualando la columna en común luego de la palabra reservada **ON**

> Sintáxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2    
        ON tabla1.fk = tabla2.pk;

> Ejemplo práctico:  

	SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  


	SELECT producto, precio, marca, categoria   
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  







