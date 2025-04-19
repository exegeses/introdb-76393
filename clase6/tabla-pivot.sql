# tabla pivot o intermedia

create table productos_proveedores
(
    idProducto mediumint unsigned not null,
    idProveedor tinyint unsigned not null
);

INSERT INTO productos_proveedores
    (idProducto, idProveedor)
  VALUES
    (1, 3),
    (1, 5),
    (2, 2),
    (2, 1),
    (2, 3),
    (2, 4),
    (3, 3),
    (3, 7),
    (3, 12),
    (3, 9),
    (5, 2),
    (5, 8),
    (5, 11),
    (5, 14),
    (17, 4),
    (17, 7),
    (18, 3),
    (23, 3),
    (23, 9),
    (23, 13),
    (25, 5),
    (25, 6),
    (25, 9),
    (25, 10),
    (25, 14),
    (26, 7),
    (26, 15),
    (28, 1),
    (31, 13),
    (32, 5),
    (32, 9),
    (32, 15);

