# creación de tablas proyecto catálogo

create table marcas
(
    idMarca smallint unsigned auto_increment primary key,
    marca varchar(50) unique not null
);

create table categorias
(
    idCategoria smallint unsigned auto_increment primary key,
    categoria varchar(50) unique not null
);

create table productos
(
    idProducto mediumint unsigned auto_increment primary key,
    producto varchar(50) unique not null,
    precio decimal(10,2) unsigned not null,
    idMarca smallint unsigned not null,
    idCategoria smallint unsigned not null,
    descripcion varchar(1000),
    imagen varchar(50) not null,
    activo boolean not null default(1),
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);