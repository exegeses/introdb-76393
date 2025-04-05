-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb76393
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

create database introdb;
use introdb;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dni` int unsigned NOT NULL,
  `alta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'García','Javier',25852410,'2008-12-12'),(2,'González','Mónica',36520147,'2005-09-30'),(3,'Martínez','Vanessa',35741951,'2006-06-21'),(4,'Álvarez','Fernando',32912547,'2007-11-02'),(5,'Gómez','Juan Carlos',12345678,'2024-01-16'),(6,'Pérez','María',23456789,'2023-12-10'),(7,'Rodríguez','Carlos',34567890,'2024-02-05'),(8,'Fernández','Laura',45678901,'2023-11-20'),(9,'López','José',56789012,'2024-01-25'),(10,'Martínez','Ana',67890123,'2023-10-05'),(11,'González','Pedro',78901234,'2024-03-01'),(12,'Sánchez','Lucía',89012345,'2023-09-15'),(13,'Ramírez','Miguel',90123456,'2024-02-28'),(14,'Torres','Sofía',11223344,'2023-08-20'),(15,'Díaz','Hugo',22334455,'2024-01-08'),(16,'Vázquez','Elena',33445566,'2023-07-12'),(17,'Castro','Martín',44556677,'2024-02-10'),(18,'Rojas','Paula',55667788,'2023-06-05'),(19,'Molina','Diego',66778899,'2024-03-07'),(20,'Silva','Valentina',77889900,'2023-05-18'),(21,'Ortega','Emilio',88990011,'2024-02-17'),(22,'Navarro','Camila',99001122,'2023-04-30'),(23,'Delgado','Esteban',10111223,'2024-01-22'),(24,'Morales','Victoria',12131415,'2023-03-25');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `razonsocial` varchar(100) NOT NULL,
  `cuit` varchar(13) NOT NULL,
  `telefono` bigint unsigned NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `cuit` (`cuit`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Distribuidora Buenos Aires S.A.','30-12345678-9',1145678901,'contacto@dba.com','Av. Corrientes 1234, CABA'),(2,'Servicios Logísticos SRL','30-87654321-0',1122334455,'info@servilog.com','Calle Mitre 456, Rosario'),(3,'Tech Solutions S.A.','30-11223344-5',1147859632,'ventas@techsol.com','Av. Libertador 999, CABA'),(4,'Alimentos del Sur SRL','30-55667788-1',1132145678,'info@aldelsur.com','Ruta 8 Km 50, Pilar'),(5,'Textiles Patagonia S.A.','30-33445566-2',1178945612,'contacto@textilpatagonia.com','San Martin 1500, Mendoza'),(6,'Energía Limpia SRL','30-99887766-3',1187412365,'soporte@energialimpia.com','Av. Rivadavia 8900, CABA'),(7,'Construcciones Modernas S.A.','30-66778899-4',1196547321,'info@constrmodernas.com','Belgrano 2034, Córdoba'),(8,'Transportes Express S.A.','30-11229988-5',1125698741,'logistica@tpexpress.com','Perón 333, Santa Fe'),(9,'Farmacia Central SRL','30-88776655-6',1145789654,'contacto@farmaciacentral.com','Bv. San Juan 789, Córdoba'),(10,'Maderas del Norte S.A.','30-44556677-7',1174523987,'ventas@maderasdelnorte.com','Av. Alem 4321, Salta'),(11,'Papelera Andina SRL','30-22113344-8',1136578924,'soporte@papelandina.com','Calle Roca 250, Neuquén'),(12,'Seguros Argentinos S.A.','30-77889900-9',1185472631,'clientes@segurosargentinos.com','San Luis 560, Tucumán'),(13,'Auto Repuestos SRL','30-33557799-0',1165987423,'info@autorepuestos.com','Panamericana Km 45, Pilar'),(14,'Electro Hogar S.A.','30-99001122-1',1147896321,'ventas@electrohogar.com','Av. Colón 785, Córdoba'),(15,'Importadora Global SRL','30-55443322-2',1132147856,'info@importadoraglobal.com','Av. Callao 2200, CABA');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-05 15:25:50
