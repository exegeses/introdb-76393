-- Crear tabla marcas
CREATE TABLE marcas (
    idMarca INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(100) NOT NULL
);

-- Crear tabla categorias
CREATE TABLE categorias (
    idCategoria INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100) NOT NULL
);

-- Crear tabla productos
CREATE TABLE productos (
       idProducto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
       producto VARCHAR(100) NOT NULL,
       precio DECIMAL(10,2) UNSIGNED NOT NULL,
       idMarca INT UNSIGNED NOT NULL,
       idCategoria INT UNSIGNED NOT NULL,
       descripcion TEXT,
       imagen VARCHAR(255),
       activo BOOLEAN NOT NULL DEFAULT TRUE,
       FOREIGN KEY (idMarca) REFERENCES marcas(idMarca),
       FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria)
);
