create table proveedores
(
    idProveedor tinyint unsigned primary key auto_increment,
    razonsocial varchar(100) not null,
    cuit varchar(13) unique not null,
    telefono bigint unsigned not null,
    email varchar(50),
    direccion varchar(100)
);
