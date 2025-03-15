# iniciar el servidor de MySQL

## Windows

> para iniciar el servidor de bases de datos MySQL es Windows 
> debo utilizar el administrador de servicios

1. Presionar la combinación de teclas WIN + R, escribir "services.msc" y pulsar Enter
2. Buscar el servicio llamado MySQL o MySQL8.0 o MySQL Server
3. Hacer clic derecho sobre el estado y seleccionar "Iniciar"

## Ubuntu

1. Abrir la terminal
2. Para iniciar el servicio MySQL, ejecutar:

    systemctl start mysql  


> Para detener el servicio MySQL, ejecutar:

    systemctl stop mysql  


> Para verificar el estado del servicio MySQL, ejecutar:

    systemctl status mysql  

