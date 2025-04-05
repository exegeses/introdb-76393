# Hacer una copia de respaldo de una base de datos

> para hacer una copia de respaldo de una base de datos debemos ir a la opción "Server" en el menú principal
> Una vez allí ir a "Data Export"
> se va a abrir una ventana donde vamos a ver del lado izquierdo todas nuestras bases de datos. 
> ahora vamos a seleccionar la base de datos que queremos backapear (hacer copia de respaldo)
> una vez que la seleccionamos del lado derecho van aparecer todas las tablas (y vista) existente

> ahora tenemos que configurar cómo vamos a hacer nuestra copia de respaldo. Éstas opciones están en la parte inferior
> asegurarse de seleccionar la opción que dice "Dump Structure and Data"
> esto va a generar un script de SQL con el código necesario para 
> crear las tablas e insertar todos los registros

> en la parte de "Export options" debemos marcar la opción que dice "Export to Self-Contained file"
> (aquí podemos elegir en qué carpeta va a hacer el backup)

> finalmente terminamos el backup con el botón que dice "Start Export"