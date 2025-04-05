#

create table precios
(
    id tinyint unsigned auto_increment primary key,
    exacto decimal(10,2) unsigned not null,
    aproximado float unsigned not null
);

insert into precios (exacto, aproximado) values (100.00, 100.00);
insert into precios (exacto, aproximado) values (49.99, 49.99);
insert into precios (exacto, aproximado) values (2500.50, 2500.50);
insert into precios (exacto, aproximado) values (0.99, 0.99);
insert into precios (exacto, aproximado) values (123.45, 123.45);
insert into precios (exacto, aproximado) values (999.95, 999.95);
insert into precios (exacto, aproximado) values (10.10, 10.10);
insert into precios (exacto, aproximado) values (75.75, 75.75);
insert into precios (exacto, aproximado) values (3.14, 3.14);
insert into precios (exacto, aproximado) values (500.00, 500.00);

SELECT SUM(exacto), SUM(aproximado)
    FROM precios;

