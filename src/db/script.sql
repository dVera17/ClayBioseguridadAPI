-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: clay
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `sueldo_base` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Vendedor',1500000),(2,'Administrador',3000000),(3,'Diseñador',2500000),(4,'Costurero',1000000),(5,'Almacenista',800000);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `idCliente` varchar(255) NOT NULL,
  `idTipoPersonaFk` int NOT NULL,
  `fechaRegistro` date NOT NULL,
  `idMunicipioFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoPersonaFk` (`idTipoPersonaFk`),
  KEY `idMunicipioFk` (`idMunicipioFk`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idTipoPersonaFk`) REFERENCES `tipo_persona` (`id`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idMunicipioFk`) REFERENCES `municipio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan Pérez','123456789',1,'2023-07-20',1),(2,'María López','987654321',2,'2023-08-03',2),(3,'Sofía García','321654987',3,'2023-08-10',3),(4,'Pedro Gómez','789456123',1,'2023-08-17',4),(5,'Ana Sánchez','234567891',2,'2023-08-24',5),(6,'Carlos Hernández','654987321',3,'2023-08-31',6),(7,'Luisa Rodríguez','9876543210',1,'2023-09-07',7),(8,'Daniela Castillo','1098765432',2,'2023-09-14',8),(9,'Andrés Morales','3210987654',3,'2023-09-21',9),(10,'Camila Gutiérrez','7654321098',1,'2023-09-28',10);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'Negro'),(2,'Blanco'),(3,'Rojo'),(4,'Verde'),(5,'Azul'),(6,'Amarillo'),(7,'Rosa'),(8,'Morado'),(9,'Gris'),(10,'Beige');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `idPaisFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPaisFk` (`idPaisFk`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`idPaisFk`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Antioquia',1),(2,'Bogotá',1),(3,'Cundinamarca',1),(4,'Valle del Cauca',1),(5,'Buenos Aires',2),(6,'Ciudad de México',3),(7,'Miami',4),(8,'Londres',5),(9,'París',6),(10,'Tokio',7);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_orden`
--

DROP TABLE IF EXISTS `detalle_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_orden` (
  `id` int NOT NULL AUTO_INCREMENT,
  `IdOrdenFk` int NOT NULL,
  `IdPrendaFk` int NOT NULL,
  `PrendaId` int NOT NULL,
  `cantidad_producir` int NOT NULL,
  `IdColorFk` int NOT NULL,
  `cantidad_producida` int NOT NULL,
  `IdEstadoFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdOrdenFk` (`IdOrdenFk`),
  KEY `PrendaId` (`PrendaId`),
  KEY `IdColorFk` (`IdColorFk`),
  KEY `IdEstadoFk` (`IdEstadoFk`),
  CONSTRAINT `detalle_orden_ibfk_1` FOREIGN KEY (`IdOrdenFk`) REFERENCES `orden` (`id`),
  CONSTRAINT `detalle_orden_ibfk_2` FOREIGN KEY (`PrendaId`) REFERENCES `prenda` (`id`),
  CONSTRAINT `detalle_orden_ibfk_3` FOREIGN KEY (`IdColorFk`) REFERENCES `color` (`id`),
  CONSTRAINT `detalle_orden_ibfk_4` FOREIGN KEY (`IdEstadoFk`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_orden`
--

LOCK TABLES `detalle_orden` WRITE;
/*!40000 ALTER TABLE `detalle_orden` DISABLE KEYS */;
INSERT INTO `detalle_orden` VALUES (1,1,1,1,10,1,5,1),(2,2,2,2,5,2,3,2),(3,3,3,3,3,3,3,3),(4,4,4,4,2,4,2,4),(5,5,5,5,1,5,1,5);
/*!40000 ALTER TABLE `detalle_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `IdVentaFk` int NOT NULL,
  `IdProductoFk` int NOT NULL,
  `IdTallaFk` int NOT NULL,
  `cantidad` int NOT NULL,
  `valor_unit` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdVentaFk` (`IdVentaFk`),
  KEY `IdProductoFk` (`IdProductoFk`),
  KEY `IdTallaFk` (`IdTallaFk`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`IdVentaFk`) REFERENCES `venta` (`id`),
  CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`IdProductoFk`) REFERENCES `inventario` (`id`),
  CONSTRAINT `detalle_venta_ibfk_3` FOREIGN KEY (`IdTallaFk`) REFERENCES `talla` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
INSERT INTO `detalle_venta` VALUES (1,1,1,1,2,25000),(2,2,2,2,1,37500),(3,3,3,3,3,50000),(4,4,4,4,4,62500),(5,5,5,5,5,75000),(6,6,6,6,6,12500);
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `idCargoFk` int NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `idMunicipioFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCargoFk` (`idCargoFk`),
  KEY `idMunicipioFk` (`idMunicipioFk`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idCargoFk`) REFERENCES `cargos` (`id`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`idMunicipioFk`) REFERENCES `municipio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Juan Pérez',1,'2023-07-20',1),(2,'María López',2,'2023-08-03',2),(3,'Sofía García',3,'2023-08-10',3),(4,'Pedro Gómez',1,'2023-08-17',4),(5,'Ana Sánchez',2,'2023-08-24',5),(6,'Carlos Hernández',3,'2023-08-31',6),(7,'Luisa Rodríguez',1,'2023-09-07',7),(8,'Daniela Castillo',2,'2023-09-14',8),(9,'Andrés Morales',3,'2023-09-21',9),(10,'Camila Gutiérrez',1,'2023-09-28',10);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nit` varchar(50) NOT NULL,
  `razon_social` text NOT NULL,
  `representante_legal` varchar(50) NOT NULL,
  `FechaCreacion` date NOT NULL,
  `IdMunicipioFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdMunicipioFk` (`IdMunicipioFk`),
  CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`IdMunicipioFk`) REFERENCES `municipio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'900000000-1','Empresa de Ropa S.A.S.','Juan Pérez','2023-01-01',1),(2,'900000000-2','Empresa de Calzado S.A.S.','María Rodríguez','2023-02-02',2),(3,'900000000-3','Empresa de Accesorios S.A.S.','Pedro Gómez','2023-03-03',3),(4,'900000000-4','Empresa de Textiles S.A.S.','Ana García','2023-04-04',4),(5,'900000000-5','Empresa de Confección S.A.S.','Carlos Hernández','2023-05-05',5);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  `idTipoEstadoFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoEstadoFk` (`idTipoEstadoFk`),
  CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`idTipoEstadoFk`) REFERENCES `tipo_estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Pendiente',1),(2,'En proceso',2),(3,'Listo para enviar',3),(4,'Enviado',4),(5,'Entregado',5);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
INSERT INTO `forma_pago` VALUES (1,'Efectivo'),(2,'Tarjeta de crédito'),(3,'Tarjeta de débito'),(4,'Transferencia bancaria'),(5,'Paypal');
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Masculino'),(2,'Femenino'),(3,'Unisex');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo`
--

DROP TABLE IF EXISTS `insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `valor_unit` double NOT NULL,
  `stock_min` double NOT NULL,
  `stock_max` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo`
--

LOCK TABLES `insumo` WRITE;
/*!40000 ALTER TABLE `insumo` DISABLE KEYS */;
INSERT INTO `insumo` VALUES (1,'Tela de algodón',10000,100,1000),(2,'Tela de poliéster',20000,50,500),(3,'Hilo',5000,20,200),(4,'Botones',2000,10,100),(5,'Cierres',3000,5,50);
/*!40000 ALTER TABLE `insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo_prendas`
--

DROP TABLE IF EXISTS `insumo_prendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo_prendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `IdInsumoFk` int NOT NULL,
  `IdPrendaFk` int NOT NULL,
  `Cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdInsumoFk` (`IdInsumoFk`),
  KEY `IdPrendaFk` (`IdPrendaFk`),
  CONSTRAINT `insumo_prendas_ibfk_1` FOREIGN KEY (`IdInsumoFk`) REFERENCES `insumo` (`id`),
  CONSTRAINT `insumo_prendas_ibfk_2` FOREIGN KEY (`IdPrendaFk`) REFERENCES `prenda` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo_prendas`
--

LOCK TABLES `insumo_prendas` WRITE;
/*!40000 ALTER TABLE `insumo_prendas` DISABLE KEYS */;
INSERT INTO `insumo_prendas` VALUES (1,1,1,2),(2,2,2,1),(3,3,3,3),(4,4,4,2),(5,5,5,1);
/*!40000 ALTER TABLE `insumo_prendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo_proveedor`
--

DROP TABLE IF EXISTS `insumo_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo_proveedor` (
  `IdInsumoFk` int NOT NULL,
  `IdProveedorFk` int NOT NULL,
  KEY `IdInsumoFk` (`IdInsumoFk`),
  KEY `IdProveedorFk` (`IdProveedorFk`),
  CONSTRAINT `insumo_proveedor_ibfk_1` FOREIGN KEY (`IdInsumoFk`) REFERENCES `insumo` (`id`),
  CONSTRAINT `insumo_proveedor_ibfk_2` FOREIGN KEY (`IdProveedorFk`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo_proveedor`
--

LOCK TABLES `insumo_proveedor` WRITE;
/*!40000 ALTER TABLE `insumo_proveedor` DISABLE KEYS */;
INSERT INTO `insumo_proveedor` VALUES (1,5),(2,4),(3,3),(4,2),(5,1);
/*!40000 ALTER TABLE `insumo_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CodInv` varchar(255) NOT NULL,
  `IdPrendaFk` int NOT NULL,
  `ValorVtaCop` double NOT NULL,
  `ValorVtaUsd` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CodInv` (`CodInv`),
  KEY `IdPrendaFk` (`IdPrendaFk`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`IdPrendaFk`) REFERENCES `prenda` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,'INV001',1,25000,6.25),(2,'INV002',2,37500,9.375),(3,'INV003',3,50000,12.5),(4,'INV004',4,62500,15.625),(5,'INV005',5,75000,18.75),(6,'INV006',6,12500,3.125),(7,'INV007',7,187500,46.875),(8,'INV008',8,62500,15.625),(9,'INV009',9,12500,3.125),(10,'INV010',10,5000,1.25);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_talla`
--

DROP TABLE IF EXISTS `inventario_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_talla` (
  `id` int NOT NULL AUTO_INCREMENT,
  `IdInvFk` int NOT NULL,
  `IdTallaFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdInvFk` (`IdInvFk`),
  KEY `IdTallaFk` (`IdTallaFk`),
  CONSTRAINT `inventario_talla_ibfk_1` FOREIGN KEY (`IdInvFk`) REFERENCES `inventario` (`id`),
  CONSTRAINT `inventario_talla_ibfk_2` FOREIGN KEY (`IdTallaFk`) REFERENCES `talla` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_talla`
--

LOCK TABLES `inventario_talla` WRITE;
/*!40000 ALTER TABLE `inventario_talla` DISABLE KEYS */;
INSERT INTO `inventario_talla` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `inventario_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `idDepartamentoFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idDepartamentoFk` (`idDepartamentoFk`),
  CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`idDepartamentoFk`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Medellín',1),(2,'Bogotá, D.C.',2),(3,'Zipaquirá',2),(4,'Cali',4),(5,'Buenos Aires',5),(6,'Ciudad de México',6),(7,'Miami',7),(8,'Londres',8),(9,'París',9),(10,'Tokio',10);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden`
--

DROP TABLE IF EXISTS `orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `IdEmpleadoFk` int NOT NULL,
  `IdClienteFk` int NOT NULL,
  `IdEstadoFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdEmpleadoFk` (`IdEmpleadoFk`),
  KEY `IdClienteFk` (`IdClienteFk`),
  KEY `IdEstadoFk` (`IdEstadoFk`),
  CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`IdEmpleadoFk`) REFERENCES `empleado` (`id`),
  CONSTRAINT `orden_ibfk_2` FOREIGN KEY (`IdClienteFk`) REFERENCES `cliente` (`id`),
  CONSTRAINT `orden_ibfk_3` FOREIGN KEY (`IdEstadoFk`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1,'2023-07-20',1,1,1),(2,'2023-08-03',2,2,2),(3,'2023-08-10',3,3,3),(4,'2023-08-17',1,4,4),(5,'2023-08-24',2,5,5);
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Colombia'),(2,'México'),(3,'Estados Unidos'),(4,'España'),(5,'China'),(6,'Brasil'),(7,'Argentina'),(8,'India'),(9,'Francia'),(10,'Inglaterra');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenda`
--

DROP TABLE IF EXISTS `prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `ValorUnitCop` double NOT NULL,
  `ValorUnitUsd` double NOT NULL,
  `IdEstadoFk` int NOT NULL,
  `IdTipoProteccion` int NOT NULL,
  `IdGeneroFk` int NOT NULL,
  `Codigo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdEstadoFk` (`IdEstadoFk`),
  KEY `IdTipoProteccion` (`IdTipoProteccion`),
  KEY `IdGeneroFk` (`IdGeneroFk`),
  CONSTRAINT `prenda_ibfk_1` FOREIGN KEY (`IdEstadoFk`) REFERENCES `estado` (`id`),
  CONSTRAINT `prenda_ibfk_2` FOREIGN KEY (`IdTipoProteccion`) REFERENCES `tipo_proteccion` (`id`),
  CONSTRAINT `prenda_ibfk_3` FOREIGN KEY (`IdGeneroFk`) REFERENCES `genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenda`
--

LOCK TABLES `prenda` WRITE;
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` VALUES (1,'Camiseta de algodón manga corta',20000,5,1,1,1,'PR001'),(2,'Camisa de manga larga',30000,7.5,1,1,1,'PR002'),(3,'Pantalón de mezclilla',40000,10,1,1,1,'PR003'),(4,'Vestido de algodón',50000,12.5,1,2,1,'PR004'),(5,'Zapatos casuales',60000,15,1,1,1,'PR005'),(6,'Gafas de sol',10000,2.5,1,1,1,'PR006'),(7,'Chaqueta de cuero',150000,37.5,1,1,1,'PR007'),(8,'Traje de baño',50000,12.5,1,1,1,'PR008'),(9,'Gorra',10000,2.5,1,1,1,'PR009'),(10,'Medias',5000,1.25,1,1,1,'PR010');
/*!40000 ALTER TABLE `prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NitProveedor` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `IdTipoPersona` int NOT NULL,
  `IdMunicipioFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdTipoPersona` (`IdTipoPersona`),
  KEY `IdMunicipioFk` (`IdMunicipioFk`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`IdTipoPersona`) REFERENCES `tipo_persona` (`id`),
  CONSTRAINT `proveedor_ibfk_2` FOREIGN KEY (`IdMunicipioFk`) REFERENCES `municipio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'900000000-1','Proveedor 1',1,1),(2,'900000000-2','Proveedor 2',2,2),(3,'900000000-3','Proveedor 3',3,3),(4,'900000000-4','Proveedor 4',1,4),(5,'900000000-5','Proveedor 5',2,5);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talla`
--

DROP TABLE IF EXISTS `talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talla` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talla`
--

LOCK TABLES `talla` WRITE;
/*!40000 ALTER TABLE `talla` DISABLE KEYS */;
INSERT INTO `talla` VALUES (1,'XS - Extra pequeña'),(2,'S - Pequeña'),(3,'M - Mediana'),(4,'L - Grande'),(5,'XL - Extra grande'),(6,'XXL - Extra extra grande');
/*!40000 ALTER TABLE `talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_estado`
--

DROP TABLE IF EXISTS `tipo_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_estado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_estado`
--

LOCK TABLES `tipo_estado` WRITE;
/*!40000 ALTER TABLE `tipo_estado` DISABLE KEYS */;
INSERT INTO `tipo_estado` VALUES (1,'Nuevo'),(2,'En proceso'),(3,'Listo para enviar'),(4,'Enviado'),(5,'Entregado');
/*!40000 ALTER TABLE `tipo_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_persona`
--

DROP TABLE IF EXISTS `tipo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_persona` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_persona`
--

LOCK TABLES `tipo_persona` WRITE;
/*!40000 ALTER TABLE `tipo_persona` DISABLE KEYS */;
INSERT INTO `tipo_persona` VALUES (1,'Cliente'),(2,'Proveedor'),(3,'Empleado');
/*!40000 ALTER TABLE `tipo_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_proteccion`
--

DROP TABLE IF EXISTS `tipo_proteccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_proteccion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_proteccion`
--

LOCK TABLES `tipo_proteccion` WRITE;
/*!40000 ALTER TABLE `tipo_proteccion` DISABLE KEYS */;
INSERT INTO `tipo_proteccion` VALUES (1,'Protección contra el sol'),(2,'Protección contra el agua'),(3,'Protección contra el frío'),(4,'Protección contra el viento'),(5,'Protección contra los insectos');
/*!40000 ALTER TABLE `tipo_proteccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `IdEmpleadoFk` int NOT NULL,
  `IdClienteFk` int NOT NULL,
  `IdFormaPagoFk` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IdEmpleadoFk` (`IdEmpleadoFk`),
  KEY `IdClienteFk` (`IdClienteFk`),
  KEY `IdFormaPagoFk` (`IdFormaPagoFk`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`IdEmpleadoFk`) REFERENCES `empleado` (`id`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`IdClienteFk`) REFERENCES `cliente` (`id`),
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`IdFormaPagoFk`) REFERENCES `forma_pago` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,'2023-07-20',1,1,1),(2,'2023-08-03',2,2,2),(3,'2023-08-10',3,3,3),(4,'2023-08-17',1,4,1),(5,'2023-08-24',2,5,2),(6,'2023-08-31',3,6,3),(7,'2023-09-07',1,7,1),(8,'2023-09-14',2,8,2),(9,'2023-09-21',3,9,3),(10,'2023-09-28',1,10,1);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-01 16:49:23
USE db_claybioseguridad;