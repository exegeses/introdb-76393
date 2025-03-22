CREATE TABLE `proveedores`(
    `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `razonsocial` VARCHAR(100) NOT NULL,
    `cuit` VARCHAR(13) NOT NULL,
    `telefono` BIGINT NOT NULL,
    `email` VARCHAR(50) NULL,
    `direccion` VARCHAR(80) NULL
);
ALTER TABLE
    `proveedores`
    ADD UNIQUE `proveedores_cuit_unique`(`cuit`);
