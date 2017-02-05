CREATE DATABASE  IF NOT EXISTS `compraventa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `compraventa`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: compraventa
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `Categoria_id` int(11) NOT NULL AUTO_INCREMENT,
  `Categoria_nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Categoria_id`),
  UNIQUE KEY `idCategoria_UNIQUE` (`Categoria_id`),
  UNIQUE KEY `Categoria_nombre_UNIQUE` (`Categoria_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (66,'ALGODON'),(61,'CAMIBUSO'),(63,'INVIERNO'),(62,'ROPA'),(65,'TELA'),(64,'VERANO');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compraventa`
--

DROP TABLE IF EXISTS `compraventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compraventa` (
  `Venta_id` int(11) NOT NULL AUTO_INCREMENT,
  `Venta_Fechcrea` date NOT NULL,
  `Usuario_user_nombre` varchar(16) NOT NULL,
  PRIMARY KEY (`Venta_id`),
  UNIQUE KEY `Venta_Fechcrea_UNIQUE` (`Venta_Fechcrea`),
  KEY `fk_Venta_Usuario1_idx` (`Usuario_user_nombre`),
  CONSTRAINT `fk_Venta_Usuario1` FOREIGN KEY (`Usuario_user_nombre`) REFERENCES `usuario` (`user_nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compraventa`
--

LOCK TABLES `compraventa` WRITE;
/*!40000 ALTER TABLE `compraventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `compraventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepto`
--

DROP TABLE IF EXISTS `concepto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concepto` (
  `concepto_id` int(11) NOT NULL,
  `concepto_nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`concepto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='El concepto es la denominacion generica del producto';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepto`
--

LOCK TABLES `concepto` WRITE;
/*!40000 ALTER TABLE `concepto` DISABLE KEYS */;
/*!40000 ALTER TABLE `concepto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `departamento_id` varchar(4) NOT NULL,
  `departamento_nombre` varchar(45) DEFAULT NULL,
  `departamento_latitud` double DEFAULT NULL,
  `departamento_longitud` double DEFAULT NULL,
  PRIMARY KEY (`departamento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES ('05','Antioquia',7,-75.5),('08','Atlántico',10.75,-75),('13','Bolívar',9,-74.3333333),('15','Boyacá',5.5,-72.5),('17','Caldas',5.25,-75.5),('18','Caquetá',1,-74),('19','Cauca',2.5,-76.8333333),('20','Cesar',9.3333333,-73.5),('23','Córdoba',8.3333333,-75.6666667),('25','Cundinamarca',5,-74.1666667),('27','Chocó',6,-77),('41','Huila',2.5,-75.75),('44','La Guajira',11.5,-72.5),('47','Magdalena',10,-74.5),('50','Meta',3.5,-73),('52','Nariño',1.5,-78),('54','Norte de Santander',8,-73),('63','Quindío',4.5,-75.6666667),('66','Risaralda',5,-76),('68','Santander',7,-73.25),('70','Sucre',9,-75),('73','Tolima',3.75,-75.25),('76','Valle del Cauca',3.75,-76.5),('81','Arauca',7.0902778,-70.7616667),('85','Casanare',5.5,-71.5),('86','Putumayo',0.5,-76),('88','San Andrés',12.5847222,-81.7005556),('91','Amazonas',-1.0197222,-71.9383333),('94','Guainía',2.5,-69),('95','Guaviare',1.6894444,-72.8202778),('97','Vaupés',0.25,-70.75),('99','Vichada',5,-69.5);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion` (
  `direccion_id` int(11) NOT NULL,
  `direccion_direccion` varchar(45) NOT NULL,
  `direccion_telefono` varchar(19) NOT NULL,
  `direccion_municipio_id` varchar(7) NOT NULL,
  PRIMARY KEY (`direccion_id`),
  KEY `fk_direccion_municipio_idx` (`direccion_municipio_id`),
  CONSTRAINT `fk_direccion_municipio` FOREIGN KEY (`direccion_municipio_id`) REFERENCES `municipio` (`municipio_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `Empresa_numid` varchar(12) NOT NULL,
  `Empresa_nombre` varchar(45) NOT NULL,
  `Empresa_tipoid` varchar(2) NOT NULL,
  `Empresa_replegal_tipid` varchar(2) DEFAULT NULL,
  `Empresa_replegal_numid` varchar(12) DEFAULT NULL,
  `Empresa_tipemp_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`Empresa_numid`,`Empresa_tipoid`),
  UNIQUE KEY `Empresa_nombre_UNIQUE` (`Empresa_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `Genero_id` char(1) NOT NULL,
  `Genero_nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Genero_id`),
  UNIQUE KEY `Genero_id_UNIQUE` (`Genero_id`),
  UNIQUE KEY `Genero_nombre_UNIQUE` (`Genero_nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES ('F','FEMENINO'),('M','MASCULINO');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `Marca_id` int(11) NOT NULL AUTO_INCREMENT,
  `Marca_nombre` varchar(45) DEFAULT NULL,
  `Marca_Empresa_tipid` varchar(2) NOT NULL,
  `Marca_Empresa_numid` varchar(10) NOT NULL,
  PRIMARY KEY (`Marca_id`),
  UNIQUE KEY `Marca_id_UNIQUE` (`Marca_id`),
  KEY `fk_marca_empresa_idx` (`Marca_Empresa_tipid`,`Marca_Empresa_numid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `municipio_id` varchar(7) NOT NULL,
  `municipio_nombre` varchar(45) DEFAULT NULL,
  `departamento_departamento_id` varchar(4) NOT NULL,
  `municipio_departamento_nombre` varchar(45) DEFAULT NULL,
  `municipio_latitud` double DEFAULT NULL,
  `municipio_longitud` double DEFAULT NULL,
  PRIMARY KEY (`municipio_id`),
  KEY `fk_depto_municipio_id_idx` (`departamento_departamento_id`),
  CONSTRAINT `fk_depto_municipio_id` FOREIGN KEY (`departamento_departamento_id`) REFERENCES `departamento` (`departamento_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES ('05001','Medellín','05','Antioquia',6.2913889,-75.5361111),('05004','Abriaquí','05','Antioquia',6.6666667,-76.0833333),('05021','Alejandria','05','Antioquia',6.3666667,-75.0833333),('05030','Amagá','05','Antioquia',6.05,-75.7),('05031','Amalfi','05','Antioquia',7,-74.9166667),('05034','Andes','05','Antioquia',5.5833333,-75.9166667),('05036','Angelópolis','05','Antioquia',6.1333333,-75.7),('05038','Angostura','05','Antioquia',6.8666667,-75.3333333),('05040','Anorí','05','Antioquia',7.1666667,-75.0833333),('05042','Santa Fé de Antioquia','05','Antioquia',6.5597222,-75.8280556),('05044','Anzá','05','Antioquia',6.3333333,-75.9166667),('05045','Apartadó','05','Antioquia',7.8855556,-76.6347222),('05051','Arboletes','05','Antioquia',8.5,-76.4166667),('05055','Argelia','05','Antioquia',5.7341667,-75.1463889),('05059','Armenia','05','Antioquia',6.1666667,-75.8333333),('05079','Barbosa','05','Antioquia',6.45,-75.3333333),('05086','Belmira','05','Antioquia',6.6666667,-75.6666667),('05088','Bello','05','Antioquia',6.3388889,-75.5622222),('05091','Betania','05','Antioquia',5.75,-75.9666667),('05093','Betulia','05','Antioquia',6.2,-75.9166667),('05101','Bolívar','05','Antioquia',5.8333333,-76),('05107','Briceño','05','Antioquia',7.1122222,-75.5541667),('05113','Burítica','05','Antioquia',6.75,-75.9166667),('05120','Cáceres','05','Antioquia',7.6666667,-75.3333333),('05125','Caicedo','05','Antioquia',6.45,-75.9666667),('05129','Caldas','05','Antioquia',6.0833333,-75.6333333),('05134','Campamento','05','Antioquia',7.0833333,-75.25),('05138','Cañasgordas','05','Antioquia',6.75,-76),('05142','Caracolí','05','Antioquia',6.4119444,-74.7605556),('05145','Caramanta','05','Antioquia',5.5833333,-75.5833333),('05147','Carepa','05','Antioquia',7.7663889,-76.6611111),('05148','Carmen de Viboral','05','Antioquia',6.085,-75.3386111),('05150','Carolina','05','Antioquia',6.8,-75.25),('05154','Caucasia','05','Antioquia',7.9166667,-75),('05172','Chigorodó','05','Antioquia',7.6666667,-76.6666667),('05190','Cisneros','05','Antioquia',6.5833333,-75.0833333),('05197','Cocorná','05','Antioquia',6,-75),('05206','Concepción','05','Antioquia',6.4166667,-75.25),('05209','Concordia','05','Antioquia',6.0833333,-75.9166667),('05212','Copacabana','05','Antioquia',6.3333333,-75.5),('05234','Dabeiba','05','Antioquia',7,-76.25),('05237','Don Matías','05','Antioquia',6.5,-75.3333333),('05240','Ebéjico','05','Antioquia',6.3333333,-75.75),('05250','El Bagre','05','Antioquia',7.5941667,-74.8119444),('05264','Entrerríos','05','Antioquia',6.5833333,-75.5833333),('05266','Envigado','05','Antioquia',6.1730556,-75.5638889),('05282','Fredonia','05','Antioquia',5.9166667,-75.6666667),('05284','Frontino','05','Antioquia',6.6666667,-76.3333333),('05306','Giraldo','05','Antioquia',6.6666667,-75.9166667),('05308','Girardota','05','Antioquia',6.4166667,-75.45),('05310','Gómez Plata','05','Antioquia',6.75,-75.8333333),('05313','Granada','05','Antioquia',6.1666667,-75.1333333),('05315','Guadalupe','05','Antioquia',6.8175,-75.2441667),('05318','Guarne','05','Antioquia',6.25,-75.4166667),('05321','Guatapé','05','Antioquia',6.25,-75.1666667),('05347','Heliconia','05','Antioquia',6.2333333,-75.75),('05353','Hispania','05','Antioquia',5.8025,-75.9116667),('05360','Itagüí','05','Antioquia',6.1719444,-75.6113889),('05361','Ituango','05','Antioquia',7.25,-76),('05364','Jardín','05','Antioquia',5.5833333,-75.8333333),('05368','Jericó','05','Antioquia',5.75,-75.75),('05376','La Ceja','05','Antioquia',6,-75.4166667),('05380','La Estrella','05','Antioquia',6.1666667,-75.6666667),('05390','La Pintada','05','Antioquia',5.75,-75.6),('05400','La Unión','05','Antioquia',5.9166667,-75.3333333),('05411','Liborina','05','Antioquia',6.75,-75.75),('05425','Maceo','05','Antioquia',6.5,-74.75),('05440','Marinilla','05','Antioquia',6.2,-75.3),('05467','Montebello','05','Antioquia',5.9166667,-75.5),('05475','Murindó','05','Antioquia',6.8,-76.8),('05480','Mutatá','05','Antioquia',7.3333333,-76.5),('05483','Nariño','05','Antioquia',5.6,-75.1666667),('05490','Necoclí','05','Antioquia',8.4238889,-76.7911111),('05495','Nechí','05','Antioquia',8.0963889,-74.7758333),('05501','Olaya','05','Antioquia',6.6666667,-75.75),('05541','Peñol','05','Antioquia',6.25,-75.25),('05543','Peque','05','Antioquia',7,-75.8333333),('05576','Pueblorrico','05','Antioquia',5.8,-75.85),('05579','Puerto Berrío','05','Antioquia',6.4166667,-74.5),('05585','Puerto Nare','05','Antioquia',6.1916667,-74.5866667),('05591','Puerto Triunfo','05','Antioquia',5.8708333,-74.6455556),('05604','Remedios','05','Antioquia',7,-74.4166667),('05607','Retiro','05','Antioquia',6.0833333,-75.5),('05615','Ríonegro','05','Antioquia',6.1666667,-75.4166667),('05628','Sabanalarga','05','Antioquia',6.9166667,-75.8),('05631','Sabaneta','05','Antioquia',6.15,-75.6),('05642','Salgar','05','Antioquia',6,-76),('05647','San Andrés de Cuerquía','05','Antioquia',6.917,-75.667),('05649','San Carlos','05','Antioquia',6.2,-74.9166667),('05652','San Francisco','05','Antioquia',6.1166667,-75.9833333),('05656','San Jerónimo','05','Antioquia',6.45,-75.7),('05658','San José de Montaña','05','Antioquia',6.8502778,-75.6833333),('05659','San Juan de Urabá','05','Antioquia',8.7630556,-76.53),('05660','San Luís','05','Antioquia',6,-74.8333333),('05664','San Pedro','05','Antioquia',6.45,-75.5833333),('05665','San Pedro de Urabá','05','Antioquia',8.2761111,-76.3786111),('05667','San Rafael','05','Antioquia',6.3,-75),('05670','San Roque','05','Antioquia',6.4166667,-74.8333333),('05674','San Vicente','05','Antioquia',6.3333333,-75.3333333),('05679','Santa Bárbara','05','Antioquia',5.8666667,-75.5833333),('05686','Santa Rosa de Osos','05','Antioquia',6.6666667,-75.4166667),('05690','Santo Domingo','05','Antioquia',6.4722222,-75.1647222),('05697','Santuario','05','Antioquia',6.1333333,-75.25),('05736','Segovia','05','Antioquia',7.25,-74.75),('05756','Sonsón','05','Antioquia',5.75,-75),('05761','Sopetrán','05','Antioquia',6.5,-75.75),('05789','Támesis','05','Antioquia',5.6666667,-75.6666667),('05790','Tarazá','05','Antioquia',7.5833333,-75.35),('05792','Tarso','05','Antioquia',5.8333333,-75.8333333),('05809','Titiribí','05','Antioquia',6.0833333,-75.8),('05819','Toledo','05','Antioquia',7,-75.7),('05837','Turbo','05','Antioquia',8,-76.5833333),('05842','Uramita','05','Antioquia',6.8994444,-76.1741667),('05847','Urrao','05','Antioquia',6.3333333,-76.4166667),('05854','Valdivia','05','Antioquia',7.3333333,-75.3333333),('05856','Valparaiso','05','Antioquia',5.6666667,-75.5833333),('05858','Vegachí','05','Antioquia',6.7730556,-74.8016667),('05861','Venecia','05','Antioquia',5.9166667,-75.75),('05873','Vigía del Fuerte','05','Antioquia',6.5919444,-76.8986111),('05885','Yalí','05','Antioquia',6.8333333,-74.75),('05887','Yarumal','05','Antioquia',7,-75.5),('05890','Yolombó','05','Antioquia',6.6666667,-75),('05893','Yondó (Casabe)','05','Antioquia',7.0077778,-73.9141667),('05895','Zaragoza','05','Antioquia',7.75,-74.75),('08001','Barranquilla','08','Atlántico',10.9638889,-74.7963889),('08078','Baranoa','08','Atlántico',10.8,-74.9166667),('08132','Juan de Acosta','08','Atlántico',10.8333333,-75.0333333),('08137','Campo de la Cruz','08','Atlántico',10.4166667,-74.9166667),('08141','Candelaria','08','Atlántico',10.5,-74.8333333),('08296','Galapa','08','Atlántico',10.9166667,-74.8333333),('08421','Luruaco','08','Atlántico',10.6141667,-75.1461111),('08433','Malambo','08','Atlántico',10.8588889,-74.7730556),('08436','Manatí','08','Atlántico',10.5,-75),('08520','Palmar de Varela','08','Atlántico',10.7466667,-74.7555556),('08549','Piojo','08','Atlántico',10.75,-75.1333333),('08558','Polonuevo','08','Atlántico',10.75,-74.7833333),('08560','Ponedera','08','Atlántico',10.6436111,-74.7544444),('08573','Puerto Colombia','08','Atlántico',11.0166667,-74.8833333),('08606','Repelón','08','Atlántico',10.55,-75.1333333),('08634','Sabanagrande','08','Atlántico',10.8,-74.75),('08638','Sabanalarga','08','Atlántico',10.6333333,-74.8333333),('08675','Santa Lucía','08','Atlántico',10.3286111,-74.9644444),('08685','Santo Tomás','08','Atlántico',10.75,-74.8333333),('08758','Soledad','08','Atlántico',10.9172222,-74.7666667),('08770','Suan','08','Atlántico',10.3333333,-74.9166667),('08832','Tubará','08','Atlántico',10.9166667,-74.95),('08849','Usiacuri','08','Atlántico',10.75,-74.9666667),('11001','Bogotá D.C.','25','Cundinamarca',4.6,-74.0833333),('13001','Cartagena','13','Bolívar',10.3997222,-75.5144444),('13006','Achí','13','Bolívar',8.25,-74.5),('13030','Altos del Rosario','13','Bolívar',8.7944444,-74.1658333),('13042','Arenal','13','Bolívar',8.4666667,-73.95),('13052','Arjona','13','Bolívar',10.1666667,-75.3333333),('13062','Arroyohondo','13','Bolívar',10.2497222,-75.0113889),('13074','Barranco de Loba','13','Bolívar',8.8333333,-74.1666667),('13140','Calamar','13','Bolívar',10.25,-75),('13160','Cantagallo','13','Bolívar',7.3791667,-73.9180556),('13188','Cicuco','13','Bolívar',9.4166667,-74.7333333),('13212','Córdoba','13','Bolívar',9.5,-74.9166667),('13222','Clemencia','13','Bolívar',10.5891667,-75.3341667),('13244','El Carmen de Bolívar','13','Bolívar',9.75,-75.1666667),('13248','El Guamo','13','Bolívar',10.0833333,-74.9166667),('13268','El Peñon','13','Bolívar',8.9833333,-73.95),('13300','Hatillo de Loba','13','Bolívar',8.9586111,-74.0808333),('13430','Magangué','13','Bolívar',9.2413889,-74.7533333),('13433','Mahates','13','Bolívar',10.1666667,-75.1666667),('13440','Margarita','13','Bolívar',9.0833333,-74.2),('13442','María la Baja','13','Bolívar',10,-75.3333333),('13458','Montecristo','13','Bolívar',8.2994444,-74.4755556),('13468','Mompós','13','Bolívar',9.25,-74.5833333),('13473','Morales','13','Bolívar',8.4166667,-74),('13490','Norosí','13','Bolívar',8.5333333,-74.0333333),('13549','Pinillos','13','Bolívar',8.9172222,-74.4663889),('13580','Regidor','13','Bolívar',8.6666667,-73.8333333),('13600','Río Viejo','13','Bolívar',8.59,-73.8436111),('13620','San Cristobal','13','Bolívar',9.8833333,-75.25),('13647','San Estanislao','13','Bolívar',10.3983333,-75.1511111),('13650','San Fernando','13','Bolívar',9.0833333,-74.3333333),('13654','San Jacinto','13','Bolívar',9.8333333,-75.0833333),('13655','San Jacinto del Cauca','13','Bolívar',9.8316667,-75.1263889),('13657','San Juan de Nepomuceno','13','Bolívar',9.9566667,-75.0866667),('13667','San Martín de Loba','13','Bolívar',8.8333333,-73.9166667),('13670','San Pablo','13','Bolívar',10.0527778,-75.2680556),('13673','Santa Catalina','13','Bolívar',10.5833333,-75.25),('13683','Santa Rosa','13','Bolívar',10.45,-75.3333333),('13688','Santa Rosa del Sur','13','Bolívar',7.9644444,-74.0544444),('13744','Simití','13','Bolívar',7.5833333,-74.1666667),('13760','Soplaviento','13','Bolívar',10.3333333,-75.1),('13780','Talaigua Nuevo','13','Bolívar',9.3069444,-74.5686111),('13810','Tiquisio (Puerto Rico)','13','Bolívar',8.5597222,-74.2669444),('13836','Turbaco','13','Bolívar',10.35,-75.3333333),('13838','Turbaná','13','Bolívar',10.25,-75.4166667),('13873','Villanueva','13','Bolívar',10.45,-75.25),('13894','Zambrano','13','Bolívar',9.75,-74.8333333),('15001','Tunja','15','Boyacá',5.5352778,-73.3677778),('15022','Almeida','15','Boyacá',4.9166667,-73.3333333),('15047','Aquitania','15','Boyacá',5.5197222,-72.8875),('15051','Arcabuco','15','Boyacá',5.8,-73.3833333),('15087','Belén','15','Boyacá',6.0833333,-72.9166667),('15090','Berbeo','15','Boyacá',5.3333333,-73),('15092','Beteitiva','15','Boyacá',6,-72.8333333),('15097','Boavita','15','Boyacá',6.4166667,-72.5833333),('15104','Boyacá','15','Boyacá',5.5,-72.5),('15106','Briceño','15','Boyacá',5.75,-73.8333333),('15109','Buenavista','15','Boyacá',5.5,-73.9666667),('15114','Busbanza','15','Boyacá',5.9166667,-72.85),('15131','Caldas','15','Boyacá',5.55,-73.8833333),('15135','Campohermoso','15','Boyacá',5.0833333,-73),('15162','Cerinza','15','Boyacá',6,-72.9166667),('15172','Chinavita','15','Boyacá',5.25,-73.3333333),('15176','Chiquinquirá','15','Boyacá',5.6333333,-73.75),('15180','Chiscas','15','Boyacá',6.75,-72.3333333),('15183','Chita','15','Boyacá',6.1666667,-72.4166667),('15185','Chitaraque','15','Boyacá',6.0833333,-73.3666667),('15187','Chivatá','15','Boyacá',5.5333333,-73.2666667),('15189','Ciénaga','15','Boyacá',5.4666667,-73.25),('15204','Cómbita','15','Boyacá',5.75,-73.25),('15212','Coper','15','Boyacá',5.4333333,-74.0333333),('15215','Corrales','15','Boyacá',5.8666667,-72.8333333),('15218','Covarachía','15','Boyacá',6.5833333,-72.7),('15223','Cubará','15','Boyacá',7.0411111,-72.0608333),('15224','Cucaita','15','Boyacá',5.5333333,-73.4666667),('15226','Cuitiva','15','Boyacá',5.65,-72.9166667),('15232','Chíquiza','15','Boyacá',5.6083333,-73.4886111),('15236','Chívor','15','Boyacá',4.8855556,-73.3688889),('15238','Duitama','15','Boyacá',5.8269444,-73.0202778),('15244','El Cocuy','15','Boyacá',6.4166667,-72.4166667),('15248','El Espino','15','Boyacá',6.5833333,-72.4166667),('15272','Firavitoba','15','Boyacá',5.75,-72.9666667),('15276','Floresta','15','Boyacá',5.9166667,-72.9166667),('15293','Gachantivá','15','Boyacá',5.75,-73.5),('15296','Gámeza','15','Boyacá',5.85,-72.75),('15299','Garagoa','15','Boyacá',5.1333333,-73.3),('15317','Guacamayas','15','Boyacá',6.5,-72.5),('15322','Guateque','15','Boyacá',5.0833333,-73.5),('15325','Guayatá','15','Boyacá',5,-73.5),('15332','Guicán','15','Boyacá',6.75,-72.1666667),('15362','Izá','15','Boyacá',5.6666667,-72.9166667),('15367','Jenesano','15','Boyacá',5.3888889,-73.3680556),('15368','Jericó','15','Boyacá',6.2,-72.5833333),('15377','Labranzagrande','15','Boyacá',5.5833333,-72.5833333),('15380','La Capilla','15','Boyacá',5.15,-73.45),('15401','La Victoria','15','Boyacá',5.5258333,-74.2361111),('15403','La Uvita','15','Boyacá',6.3333333,-72.5),('15407','Villa de Leiva','15','Boyacá',5.6333333,-73.5333333),('15425','Macanal','15','Boyacá',4.9166667,-73.25),('15442','Maripí','15','Boyacá',5.5833333,-74),('15455','Miraflores','15','Boyacá',5.25,-73.1666667),('15464','Mongua','15','Boyacá',5.8333333,-72.6666667),('15466','Monguí','15','Boyacá',5.75,-72.8333333),('15469','Moniquirá','15','Boyacá',5.9166667,-73.5),('15476','Motavita','15','Boyacá',5.5797222,-73.3713889),('15480','Muzo','15','Boyacá',5.5166667,-74.1166667),('15491','Nobsa','15','Boyacá',5.8333333,-72.9166667),('15494','Nuevo Colón','15','Boyacá',5.4166667,-73.4166667),('15500','Oicatá','15','Boyacá',5.6,-73.3166667),('15507','Otanche','15','Boyacá',5.75,-74.25),('15511','Pachavita','15','Boyacá',5.1333333,-73.4),('15514','Páez','15','Boyacá',5.1044444,-73.0555556),('15516','Paipa','15','Boyacá',5.8333333,-73.1),('15518','Pajarito','15','Boyacá',5.4166667,-72.6666667),('15522','Panqueba','15','Boyacá',6.5,-72.4166667),('15531','Pauna','15','Boyacá',5.75,-73.9166667),('15532','Paya','15','Boyacá',5.6666667,-72.3816667),('15537','Paz de Río','15','Boyacá',6.0833333,-72.75),('15542','Pesca','15','Boyacá',5.5833333,-73.05),('15550','Pisva','15','Boyacá',5.7427778,-72.4894444),('15572','Puerto Boyacá','15','Boyacá',5.9780556,-74.5897222),('15580','Quipama','15','Boyacá',5.5222222,-74.1808333),('15599','Ramiriquí','15','Boyacá',5.4166667,-73.3333333),('15600','Ráquira','15','Boyacá',5.6166667,-73.6333333),('15621','Rondón','15','Boyacá',5.4166667,-73.1666667),('15632','Saboyá','15','Boyacá',5.75,-73.7),('15638','Sáchica','15','Boyacá',5.6666667,-73.5),('15646','Samacá','15','Boyacá',5.5,-73.5),('15660','San Eduardo','15','Boyacá',5.2166667,-73.1333333),('15664','San José de Pare','15','Boyacá',6.0833333,-73.4666667),('15667','San Luís de Gaceno','15','Boyacá',4.8213889,-73.1675),('15673','San Mateo','15','Boyacá',6.5,-72.5),('15676','San Miguel de Sema','15','Boyacá',5.55,-73.75),('15681','San Pablo de Borbur','15','Boyacá',5.75,-74.0833333),('15686','Santana','15','Boyacá',6.0572222,-73.4822222),('15690','Santa María','15','Boyacá',4.8616667,-73.2641667),('15693','Santa Rosa de Viterbo','15','Boyacá',5.9166667,-73),('15696','Santa Sofía','15','Boyacá',5.75,-73.5833333),('15720','Sativanorte','15','Boyacá',6.1666667,-72.6666667),('15723','Sativasur','15','Boyacá',6.1333333,-72.6666667),('15740','Siachoque','15','Boyacá',5.5833333,-73.1666667),('15753','Soatá','15','Boyacá',6.4166667,-72.6666667),('15755','Socotá','15','Boyacá',6.0833333,-72.5833333),('15757','Socha','15','Boyacá',6,-72.6666667),('15759','Sogamoso','15','Boyacá',5.7205556,-72.9297222),('15761','Somondoco','15','Boyacá',4.9877778,-73.4361111),('15762','Sora','15','Boyacá',5.5666667,-73.4333333),('15763','Sotaquirá','15','Boyacá',5.8333333,-73.25),('15764','Soracá','15','Boyacá',5.5,-73.3166667),('15774','Susacón','15','Boyacá',6.2666667,-72.6666667),('15776','Sutamarchán','15','Boyacá',5.6666667,-73.5833333),('15778','Sutatenza','15','Boyacá',5.0166667,-73.45),('15790','Tasco','15','Boyacá',5.9166667,-72.7),('15798','Tenza','15','Boyacá',5.15,-73.45),('15804','Tibaná','15','Boyacá',5.3333333,-73.3833333),('15806','Tibasosa','15','Boyacá',5.8333333,-72.9666667),('15808','Tinjacá','15','Boyacá',5.6333333,-73.65),('15810','Tipacoque','15','Boyacá',6.4233333,-72.6952778),('15814','Toca','15','Boyacá',5.6666667,-73.1666667),('15816','Toguí','15','Boyacá',5.95,-73.4166667),('15820','Topagá','15','Boyacá',5.8333333,-72.8333333),('15822','Tota','15','Boyacá',5.5,-73),('15832','Tunungua','15','Boyacá',5.7333333,-73.9333333),('15835','Turmequé','15','Boyacá',5.3333333,-73.5),('15837','Tuta','15','Boyacá',5.75,-73.1666667),('15839','Tutasá','15','Boyacá',6.1666667,-72.8333333),('15842','Úmbita','15','Boyacá',5.2333333,-73.45),('15861','Ventaquemada','15','Boyacá',5.4166667,-73.5),('15879','Viracachá','15','Boyacá',5.5,-73.25),('15897','Zetaquirá','15','Boyacá',5.35,-73.1666667),('17001','Manizales','17','Caldas',5.07,-75.5205556),('17013','Aguadas','17','Caldas',5.6333333,-75.4166667),('17042','Anserma','17','Caldas',5.25,-75.75),('17050','Aranzazu','17','Caldas',5.3,-75.45),('17088','Belalcázar','17','Caldas',5,-75.8333333),('17174','Chinchiná','17','Caldas',5,-75.6666667),('17272','Filadelfia','17','Caldas',5.3,-75.6),('17380','La Dorada','17','Caldas',5.5333333,-74.7),('17388','La Merced','17','Caldas',5.4019444,-75.8847222),('17433','Manzanares','17','Caldas',5.25,-75.1666667),('17442','Marmato','17','Caldas',5.5,-75.5833333),('17444','Marquetalia','17','Caldas',5.3333333,-75),('17446','Marulanda','17','Caldas',5.3333333,-75.25),('17486','Neira','17','Caldas',5.1666667,-75.5),('17495','Norcasia','17','Caldas',5.5666667,-74.8833333),('17513','Pácora','17','Caldas',5.5,-75.5),('17524','Palestina','17','Caldas',5.0833333,-75.6666667),('17541','Pensilvania','17','Caldas',5.5,-75.0833333),('17614','Río Sucio','17','Caldas',5.3791667,-75.6161111),('17616','Risaralda','17','Caldas',5.1666667,-75.75),('17653','Salamina','17','Caldas',5.4166667,-75.4166667),('17662','Samaná','17','Caldas',5.5833333,-74.9166667),('17665','San José','17','Caldas',5.0858333,-75.7883333),('17777','Supía','17','Caldas',5.5,-75.6333333),('17867','La Victoria','17','Caldas',4.5238889,-76.0411111),('17873','Villamaría','17','Caldas',5,-75.5),('17877','Viterbo','17','Caldas',5.0833333,-75.8666667),('18001','Florencia','18','Caquetá',1.6175,-75.6175),('18029','Albania','18','Caquetá',1.3316667,-75.8822222),('18094','Belén de los Andaquíes','18','Caquetá',1.4166667,-75.9166667),('18150','Cartagena del Chairá','18','Caquetá',1.35,-74.84),('18205','Curillo','18','Caquetá',1.0352778,-75.9247222),('18247','El Doncello','18','Caquetá',1.6794444,-75.2791667),('18256','El Paujil','18','Caquetá',1.564,-75.332),('18410','La Montañita','18','Caquetá',1.5833333,-75.25),('18460','Milán','18','Caquetá',1.3483333,-75.5116667),('18479','Morelia','18','Caquetá',1.4875,-75.725),('18592','Puerto Rico','18','Caquetá',1.9141667,-75.145),('18610','San José del Fragua','18','Caquetá',1.3611111,-75.9883333),('18753','San Vicente del Caguán','18','Caquetá',2.1525,-74.7888889),('18765','Solano','18','Caquetá',0.7147222,-75.2486111),('18785','Solita','18','Caquetá',0.9,-75.623),('18860','Valparaiso','18','Caquetá',1.1991667,-75.7097222),('19001','Popayán','19','Cauca',3.2775,-75.6213889),('19022','Almaguer','19','Cauca',1.9166667,-76.8333333),('19050','Argelia','19','Cauca',2.2666667,-77.25),('19075','Balboa','19','Cauca',2.1,-77.2),('19100','Bolívar','19','Cauca',1.8333333,-76.9166667),('19110','Buenos Aires','19','Cauca',2.9166667,-76.6666667),('19130','Cajibío','19','Cauca',2.6666667,-76.6666667),('19137','Caldono','19','Cauca',2.8333333,-76.4166667),('19142','Caloto','19','Cauca',3.0833333,-76.3333333),('19212','Corinto','19','Cauca',3.1666667,-76.2),('19256','El Tambo','19','Cauca',2.5,-77),('19290','Florencia','19','Cauca',1.6944444,-77.0758333),('19300','Guachené','19','Cauca',3.1333333,-76.3833333),('19318','Guapí','19','Cauca',2.4166667,-77.6),('19355','Inzá','19','Cauca',2.6666667,-76.0833333),('19364','Jambaló','19','Cauca',2.85,-76.3166667),('19392','La Sierra','19','Cauca',2.25,-76.8333333),('19397','La Vega','19','Cauca',2.0833333,-76.8333333),('19418','López (Micay)','19','Cauca',2.4333333,-76.8),('19450','Mercaderes','19','Cauca',1.75,-77.1666667),('19455','Miranda','19','Cauca',3.25,-76.25),('19473','Morales','19','Cauca',2.8,-76.6666667),('19513','Padilla','19','Cauca',3.0666667,-76.3166667),('19517','Páez (Belalcazar)','19','Cauca',5.1044444,-73.0555556),('19532','Patía (El Bordo)','19','Cauca',2.1155556,-76.9891667),('19533','Piamonte','19','Cauca',7.7833333,-75.2),('19548','Piendamó','19','Cauca',2.75,-76.5),('19573','Puerto Tejada','19','Cauca',3.25,-76.4166667),('19585','Puracé (Coconuco)','19','Cauca',2.3480556,-76.5008333),('19622','Rosas','19','Cauca',2.3333333,-76.75),('19693','San Sebastián','19','Cauca',1.9166667,-76.6666667),('19698','Santander de Quilichao','19','Cauca',3.0130556,-76.4866667),('19701','Santa Rosa','19','Cauca',1.5,-76.5),('19743','Silvia','19','Cauca',2.75,-76.3333333),('19760','Sotara (Paispamba)','19','Cauca',2.2566667,-76.6186111),('19780','Suárez','19','Cauca',2.9588889,-76.6952778),('19785','Sucre','19','Cauca',2.0333333,-76.9166667),('19807','Timbío','19','Cauca',2.4166667,-76.75),('19809','Timbiquí','19','Cauca',2.75,-77.5833333),('19821','Toribío','19','Cauca',3,-76.1666667),('19824','Totoró','19','Cauca',2.5833333,-76.3333333),('19845','Villa Rica','19','Cauca',2.5136111,-76.8477778),('20001','Valledupar','20','Cesar',10.4769444,-73.2505556),('20011','Aguachica','20','Cesar',8.3333333,-73.5833333),('20013','Agustín Codazzi','20','Cesar',9.9166667,-73.25),('20032','Astrea','20','Cesar',9.5011111,-73.9802778),('20045','Becerríl','20','Cesar',9.705,-73.2847222),('20060','Bosconia','20','Cesar',9.9761111,-73.8902778),('20175','Chimichagua','20','Cesar',9.2577778,-73.8177778),('20178','Chiriguaná','20','Cesar',9.5,-73.4166667),('20228','Curumaní','20','Cesar',9.2041667,-73.5486111),('20238','El Copey','20','Cesar',10.1505556,-73.965),('20250','El Paso','20','Cesar',9.6622222,-73.7519444),('20295','Gamarra','20','Cesar',8.3333333,-73.6666667),('20310','Gonzalez','20','Cesar',8.4,-73.3333333),('20383','La Gloria','20','Cesar',8.5833333,-73.5833333),('20400','La Jagua de Ibirico','20','Cesar',9.5641667,-73.3375),('20443','Manaure Balcón del Cesar','20','Cesar',10.3927778,-73.0325),('20517','Pailitas','20','Cesar',8.9661111,-73.6316667),('20550','Pelaya','20','Cesar',8.6916667,-73.6663889),('20570','Pueblo Bello','20','Cesar',10.3666667,-73.6333333),('20614','Río de oro','20','Cesar',8,-73.5),('20621','La Paz (Robles)','20','Cesar',10.1666667,-73.25),('20710','San Alberto','20','Cesar',7.7525,-73.3891667),('20750','San Diego','20','Cesar',10.3375,-73.1825),('20770','San Martín','20','Cesar',8.0047222,-73.5152778),('20787','Tamalameque','20','Cesar',8.8333333,-73.5833333),('23001','Monteria','23','Córdoba',8.7575,-75.89),('23068','Ayapel','23','Córdoba',8.25,-75.25),('23079','Buenavista','23','Córdoba',8.7575,-75.89),('23090','Canalete','23','Córdoba',8.6761111,-76.2041667),('23162','Cereté','23','Córdoba',8.9166667,-76),('23168','Chimá','23','Córdoba',9.0833333,-75.6333333),('23182','Chinú','23','Córdoba',9.0833333,-75.3333333),('23189','Ciénaga de Oro','23','Córdoba',8.8333333,-75.6666667),('23300','Cotorra','23','Córdoba',9.05,-75.8),('23350','La Apartada y La Frontera','23','Córdoba',0,0),('23417','Lorica','23','Córdoba',9.1666667,-75.8333333),('23419','Los Córdobas','23','Córdoba',8.9,-76.3597222),('23464','Momil','23','Córdoba',9.2372222,-75.6780556),('23466','Montelíbano','23','Córdoba',7.75,-75.6666667),('23500','Moñitos','23','Córdoba',8.25,-76.05),('23555','Planeta Rica','23','Córdoba',8.3333333,-75.5833333),('23570','Pueblo Nuevo','23','Córdoba',8.2333333,-74.9666667),('23574','Puerto Escondido','23','Córdoba',8.95,-76.25),('23580','Puerto Libertador','23','Córdoba',4.6,-74.1166667),('23586','Purísima','23','Córdoba',9.3,-75.6666667),('23660','Sahagún','23','Córdoba',8.8333333,-75.4166667),('23670','San Andrés Sotavento','23','Córdoba',9.1666667,-75.55),('23672','San Antero','23','Córdoba',9.35,-75.75),('23675','San Bernardo del Viento','23','Córdoba',9.25,-76),('23678','San Carlos','23','Córdoba',8.7,-75.7),('23682','San José de Uré','23','Córdoba',7.767,-75.517),('23686','San Pelayo','23','Córdoba',9,-75.9166667),('23807','Tierralta','23','Córdoba',8.1736111,-76.0591667),('23815','Tuchín','23','Córdoba',9.1833333,-75.55),('23855','Valencia','23','Córdoba',8.3,-76.1666667),('25001','Agua de Dios','25','Cundinamarca',4.4166667,-74.6666667),('25019','Albán','25','Cundinamarca',4.9166667,-74.45),('25035','Anapoima','25','Cundinamarca',4.6166667,-74.55),('25040','Anolaima','25','Cundinamarca',4.8333333,-74.5),('25053','Arbeláez','25','Cundinamarca',4.3,-74.5833333),('25086','Beltrán','25','Cundinamarca',4.8,-74.75),('25095','Bituima','25','Cundinamarca',4.9166667,-74.55),('25099','Bojacá','25','Cundinamarca',4.75,-74.3333333),('25120','Cabrera','25','Cundinamarca',3.9780556,-74.4858333),('25123','Cachipay','25','Cundinamarca',5.2666667,-74.5666667),('25126','Cajicá','25','Cundinamarca',5,-74.05),('25148','Caparrapí','25','Cundinamarca',5.4166667,-74.5833333),('25151','Cáqueza','25','Cundinamarca',4.45,-73.95),('25154','Carmen de Carupa','25','Cundinamarca',5.3502778,-73.9052778),('25168','Chaguaní','25','Cundinamarca',5,-74.65),('25175','Chía','25','Cundinamarca',4.9166667,-74.05),('25178','Chipaque','25','Cundinamarca',4.5,-74.0833333),('25181','Choachí','25','Cundinamarca',4.5833333,-73.9166667),('25183','Chocontá','25','Cundinamarca',5.1666667,-73.6666667),('25200','Cogua','25','Cundinamarca',5.15,-73.9666667),('25214','Cota','25','Cundinamarca',4.8333333,-74.1333333),('25224','Cucunubá','25','Cundinamarca',5.25,-73.75),('25245','El Colegio','25','Cundinamarca',4.5833333,-74.45),('25258','El Peñón','25','Cundinamarca',5.3333333,-74.3333333),('25260','El Rosal','25','Cundinamarca',4.85,-74.2666667),('25269','Facatativá','25','Cundinamarca',4.8166667,-74.3666667),('25279','Fómeque','25','Cundinamarca',4.5833333,-73.8333333),('25281','Fosca','25','Cundinamarca',4.3333333,-73.9166667),('25286','Funza','25','Cundinamarca',4.7833333,-74.2),('25288','Fúquene','25','Cundinamarca',5.4166667,-73.8),('25290','Fusagasugá','25','Cundinamarca',4.4166667,-74.4),('25293','Gachalá','25','Cundinamarca',4.6666667,-73.5),('25295','Gachancipá','25','Cundinamarca',5.0833333,-73.8833333),('25297','Gachetá','25','Cundinamarca',4.9166667,-73.6666667),('25299','Gama','25','Cundinamarca',4.75,-73.6),('25307','Girardot','25','Cundinamarca',4.3030556,-74.8008333),('25312','Granada','25','Cundinamarca',5.0666667,-74.5666667),('25317','Guachetá','25','Cundinamarca',5.4166667,-73.7),('25320','Guaduas','25','Cundinamarca',5.25,-74.6666667),('25322','Guasca','25','Cundinamarca',4.8333333,-73.8333333),('25324','Guataquí','25','Cundinamarca',4.5833333,-74.8),('25326','Guatavita','25','Cundinamarca',4.9666667,-73.75),('25328','Guayabal de Siquima','25','Cundinamarca',4.8813889,-74.4702778),('25335','Guayabetal','25','Cundinamarca',4.2163889,-73.8133333),('25339','Gutiérrez','25','Cundinamarca',4.25,-74),('25368','Jerusalén','25','Cundinamarca',4.6666667,-74.6666667),('25372','Junín','25','Cundinamarca',4.75,-73.6666667),('25377','La Calera','25','Cundinamarca',4.75,-73.9166667),('25386','La Mesa','25','Cundinamarca',4.6666667,-74.5),('25394','La Palma','25','Cundinamarca',5.4166667,-74.4166667),('25398','La Peña','25','Cundinamarca',5.25,-74.4166667),('25402','La Vega','25','Cundinamarca',5,-74.35),('25407','Lenguazaque','25','Cundinamarca',5.3333333,-73.6666667),('25426','Machetá','25','Cundinamarca',5.0833333,-73.6166667),('25430','Madrid','25','Cundinamarca',4.8333333,-74.3),('25436','Manta','25','Cundinamarca',5.0833333,-73.5833333),('25438','Medina','25','Cundinamarca',4.5,-73.3333333),('25473','Mosquera','25','Cundinamarca',4.75,-74.3333333),('25483','Nariño','25','Cundinamarca',4.45,-74.8),('25486','Nemocón','25','Cundinamarca',5.1333333,-73.9),('25488','Nilo','25','Cundinamarca',4.3333333,-74.5833333),('25489','Nimaima','25','Cundinamarca',5.2,-74.4166667),('25491','Nocaima','25','Cundinamarca',5.1166667,-74.4166667),('25506','Venecia (Ospina Pérez)','25','Cundinamarca',4.1333333,-74.5),('25513','Pacho','25','Cundinamarca',5.25,-74.1666667),('25518','Paime','25','Cundinamarca',5.4166667,-74.1666667),('25524','Pandi','25','Cundinamarca',4.25,-74.5),('25530','Paratebueno','25','Cundinamarca',4.3730556,-73.2213889),('25535','Pasca','25','Cundinamarca',4.3333333,-74.2833333),('25572','Puerto Salgar','25','Cundinamarca',5.5,-74.5833333),('25580','Pulí','25','Cundinamarca',4.75,-74.6666667),('25592','Quebradanegra','25','Cundinamarca',5.15,-74.5),('25594','Quetame','25','Cundinamarca',4.3333333,-73.8333333),('25596','Quipile','25','Cundinamarca',4.75,-74.5833333),('25599','Apulo','25','Cundinamarca',4.5833333,-74.5833333),('25612','Ricaurte','25','Cundinamarca',4.2797222,-74.7761111),('25645','San Antonio de Tequendama','25','Cundinamarca',4.1333333,-74.5),('25649','San Bernardo','25','Cundinamarca',4.2,-74.3333333),('25653','San Cayetano','25','Cundinamarca',5.3333333,-74.0833333),('25658','San Francisco','25','Cundinamarca',5,-74.2833333),('25662','San Juan de Río Seco','25','Cundinamarca',4.9166667,-74.6666667),('25718','Sasaima','25','Cundinamarca',5,-74.45),('25736','Sesquilé','25','Cundinamarca',5.0833333,-73.8333333),('25740','Sibaté','25','Cundinamarca',4.4913889,-74.2605556),('25743','Silvania','25','Cundinamarca',4.5,-74.3333333),('25745','Simijaca','25','Cundinamarca',5.5833333,-73.8333333),('25754','Soacha','25','Cundinamarca',4.5872222,-74.2213889),('25758','Sopó','25','Cundinamarca',4.9166667,-73.95),('25769','Subachoque','25','Cundinamarca',5,-74.1666667),('25772','Suesca','25','Cundinamarca',5.1666667,-73.8333333),('25777','Supatá','25','Cundinamarca',5.0833333,-74.25),('25779','Susa','25','Cundinamarca',5.5,-73.8333333),('25781','Sutatausa','25','Cundinamarca',5.251,-73.856),('25785','Tabio','25','Cundinamarca',5,-74.0833333),('25793','Tausa','25','Cundinamarca',5.25,-73.9166667),('25797','Tena','25','Cundinamarca',4.7,-74.4166667),('25799','Tenjo','25','Cundinamarca',4.9166667,-74.1666667),('25805','Tibacuy','25','Cundinamarca',4.3833333,-74.5),('25807','Tibirita','25','Cundinamarca',5.1333333,-73.5333333),('25815','Tocaima','25','Cundinamarca',4.5,-74.6666667),('25817','Tocancipá','25','Cundinamarca',5,-73.9166667),('25823','Topaipí','25','Cundinamarca',5.4166667,-74.3333333),('25839','Ubalá','25','Cundinamarca',4.8333333,-73.5),('25841','Ubaque','25','Cundinamarca',4.5833333,-74),('25843','Ubaté','25','Cundinamarca',5.35,-73.8333333),('25845','Une','25','Cundinamarca',4.3333333,-74.0833333),('25851','Útica','25','Cundinamarca',5.25,-74.5),('25862','Vergara','25','Cundinamarca',5.1666667,-74.3333333),('25867','Viani','25','Cundinamarca',4.9166667,-74.55),('25871','Villagómez','25','Cundinamarca',5.2761111,-74.1988889),('25873','Villapinzón','25','Cundinamarca',5.2833333,-73.5833333),('25875','Villeta','25','Cundinamarca',5.0833333,-74.5),('25878','Viotá','25','Cundinamarca',4.5,-74.5),('25885','Yacopí','25','Cundinamarca',5.6666667,-74.4166667),('25888','Zipacón','25','Cundinamarca',4.8333333,-74.4166667),('25899','Zipaquirá','25','Cundinamarca',5.0283333,-74.0058333),('27001','Quibdó','27','Chocó',5.6947222,-76.6611111),('27006','Acandí','27','Chocó',8.3333333,-77.1666667),('27025','Alto Baudó (Pie de Pato)','27','Chocó',5.6666667,-77),('27050','Atrato (Yuto)','27','Chocó',5.5333333,-76.6333333),('27073','Bagadó','27','Chocó',5.5,-76.25),('27075','Bahía Solano (Mútis)','27','Chocó',6.2191667,-77.4077778),('27077','Bajo Baudó (Pizarro)','27','Chocó',5,-77.0833333),('27086','Belén de Bajirá','27','Chocó',7.3725,-76.7147222),('27099','Bojayá (Bellavista)','27','Chocó',6.5236111,-76.9744444),('27135','Cantón de San Pablo','27','Chocó',5.3388889,-76.7313889),('27150','Carmen del Darién (CURBARADÓ)','27','Chocó',7.158,-76.971),('27160','Cértegui','27','Chocó',5.4,-76.6),('27205','Condoto','27','Chocó',5.1666667,-76.5),('27245','El Carmen de Atrato','27','Chocó',0,0),('27250','Santa Genoveva de Docorodó','27','Chocó',4.2586111,-77.3675),('27361','Istmina','27','Chocó',5.1588889,-76.6916667),('27372','Juradó','27','Chocó',7,-77.6666667),('27413','Lloró','27','Chocó',5.5833333,-76.4166667),('27425','Medio Atrato','27','Chocó',0,0),('27430','Medio Baudó','27','Chocó',0,0),('27450','Medio San Juan (ANDAGOYA)','27','Chocó',5.1,-76.683),('27491','Novita','27','Chocó',4.9166667,-76.5833333),('27495','Nuquí','27','Chocó',6,-77.3333333),('27580','Río Iró','27','Chocó',5.1,-76.6666667),('27600','Río Quito','27','Chocó',5.7,-76.6666667),('27615','Ríosucio','27','Chocó',7.4166667,-77.1666667),('27660','San José del Palmar','27','Chocó',4.9166667,-76.25),('27745','Sipí','27','Chocó',4.5833333,-76.5),('27787','Tadó','27','Chocó',5.3333333,-76.4166667),('27800','Unguía','27','Chocó',8.0430556,-77.0961111),('27810','Unión Panamericana (ÁNIMAS)','27','Chocó',5.283,-76.617),('41001','Neiva','41','Huila',2.9305556,-75.3302778),('41006','Acevedo','41','Huila',1.75,-75.9166667),('41013','Agrado','41','Huila',2.3333333,-75.75),('41016','Aipe','41','Huila',3.25,-75.3333333),('41020','Algeciras','41','Huila',2.5833333,-75.25),('41026','Altamira','41','Huila',2.1666667,-75.8333333),('41078','Baraya','41','Huila',3.1666667,-75),('41132','Campoalegre','41','Huila',2.6666667,-75.3333333),('41206','Colombia','41','Huila',2.5,-75.75),('41244','Elías','41','Huila',2.0833333,-76),('41298','Garzón','41','Huila',2.25,-75.5833333),('41306','Gigante','41','Huila',2.5,-75.5),('41319','Guadalupe','41','Huila',2.0833333,-75.6666667),('41349','Hobo','41','Huila',2.5833333,-75.5),('41357','Íquira','41','Huila',2.75,-75.75),('41359','Isnos','41','Huila',2.0833333,-76.25),('41378','La Argentina','41','Huila',2.25,-76.1666667),('41396','La Plata','41','Huila',2.4166667,-76.1666667),('41483','Nátaga','41','Huila',2.65,-75.8),('41503','Oporapa','41','Huila',2.0833333,-76.0166667),('41518','Paicol','41','Huila',2.45,-75.75),('41524','Palermo','41','Huila',3,-75.5),('41530','Palestina','41','Huila',1.75,-76.0666667),('41548','Pital','41','Huila',2.3333333,-75.8333333),('41551','Pitalito','41','Huila',1.75,-76.1666667),('41615','Rivera','41','Huila',2.8333333,-75.1666667),('41660','Saladoblanco','41','Huila',2.0144444,-76.0502778),('41668','San Agustín','41','Huila',1.9166667,-76.3333333),('41676','Santa María','41','Huila',3,-75.7),('41770','Suaza','41','Huila',1.9166667,-75.8333333),('41791','Tarqui','41','Huila',2.1666667,-75.9166667),('41797','Tesalia','41','Huila',2.6666667,-75.75),('41799','Tello','41','Huila',3.0833333,-75.0833333),('41801','Teruel','41','Huila',2.9166667,-75.6666667),('41807','Timaná','41','Huila',2,-75.9166667),('41872','Villavieja','41','Huila',3.3333333,-75.1666667),('41885','Yaguará','41','Huila',2.6666667,-75.5833333),('44001','Riohacha','44','La Guajira',11.5444444,-72.9072222),('44035','Albania','44','La Guajira',11.1597222,-72.5855556),('44078','Barrancas','44','La Guajira',11,-72.75),('44090','Dibulla','44','La Guajira',11.2722222,-73.3055556),('44098','Distracción','44','La Guajira',10.8977778,-72.8869444),('44110','El Molino','44','La Guajira',10.6533333,-72.9241667),('44279','Fonseca','44','La Guajira',10.8333333,-72.8333333),('44378','Hatonuevo','44','La Guajira',11.0694444,-72.7669444),('44420','La Jagua del Pilar','44','La Guajira',10.5166667,-73.0833333),('44430','Maicao','44','La Guajira',11.3841667,-72.2441667),('44560','Manaure','44','La Guajira',11.7791667,-72.4494444),('44650','San Juan del Cesar','44','La Guajira',10.8333333,-73.0833333),('44847','Uribia','44','La Guajira',11.9166667,-72),('44855','Urumita','44','La Guajira',10.5666667,-73.0166667),('44874','Villanueva','44','La Guajira',10.5833333,-73),('47001','Santa Marta','47','Magdalena',11.2472222,-74.2016667),('47030','Algarrobo','47','Magdalena',10.1869444,-74.5752778),('47053','Aracataca','47','Magdalena',10.5833333,-74),('47058','Ariguaní (El Difícil)','47','Magdalena',10.25,-74),('47161','Cerro San Antonio','47','Magdalena',10.25,-74.8333333),('47170','Chivolo','47','Magdalena',10.0280556,-74.6436111),('47189','Ciénaga','47','Magdalena',10.8333333,-74.0833333),('47205','Concordia','47','Magdalena',9.8402778,-74.4447222),('47245','El Banco','47','Magdalena',9.0455556,-73.9747222),('47258','El Piñon','47','Magdalena',10.3333333,-74.6666667),('47268','El Retén','47','Magdalena',10.6166667,-74.2666667),('47288','Fundación','47','Magdalena',10.4166667,-73.9166667),('47318','Guamal','47','Magdalena',9.25,-74.1666667),('47441','Pedraza','47','Magdalena',10.1666667,-74.75),('47460','Nueva Granada','47','Magdalena',9.8030556,-74.3902778),('47545','Pijiño','47','Magdalena',9.3302778,-74.4497222),('47551','Pivijay','47','Magdalena',10.4166667,-74.3333333),('47555','Plato','47','Magdalena',9.8333333,-74.3333333),('47570','Puebloviejo','47','Magdalena',10.9833333,-74.3333333),('47605','Remolino','47','Magdalena',10.6666667,-74.5833333),('47660','Sabanas de San Angel (SAN ANGEL)','47','Magdalena',10.033,-74.217),('47675','Salamina','47','Magdalena',10.5,-74.7),('47692','San Sebastián de Buenavista','47','Magdalena',9.3333333,-74.3333333),('47703','San Zenón','47','Magdalena',9.3333333,-74.3),('47707','Santa Ana','47','Magdalena',9.3166667,-74.5833333),('47720','Santa Bárbara de Pinto','47','Magdalena',10.6,-74.167),('47745','Sitionuevo','47','Magdalena',10.9166667,-74.5833333),('47798','Tenerife','47','Magdalena',10,-74.6666667),('47960','Zapayán (PUNTA DE PIEDRAS)','47','Magdalena',10.171,-74.719),('47980','Zona Bananera (PRADO - SEVILLA)','47','Magdalena',0,0),('50001','Villavicencio','50','Meta',4.1533333,-73.635),('50006','Acacías','50','Meta',3.9166667,-73.8333333),('50110','Barranca de Upía','50','Meta',4.5755556,-72.9611111),('50124','Cabuyaro','50','Meta',4.2902778,-72.7905556),('50150','Castilla la Nueva','50','Meta',3.8,-73.5833333),('50223','Cubarral','50','Meta',3.7713889,-73.8377778),('50226','Cumaral','50','Meta',4.25,-73.3333333),('50245','El Calvario','50','Meta',4.4166667,-73.6666667),('50251','El Castillo','50','Meta',3.5680556,-73.7838889),('50270','El Dorado','50','Meta',2.7791667,-72.8719444),('50287','Fuente de Oro','50','Meta',3.4594444,-73.6127778),('50313','Granada','50','Meta',3.5386111,-73.7005556),('50318','Guamal','50','Meta',3.9166667,-74),('50325','Mapiripan','50','Meta',2.8911111,-72.1322222),('50330','Mesetas','50','Meta',3.3780556,-74.0447222),('50350','La Macarena','50','Meta',2.8536111,-73.9436111),('50370','Uribe','50','Meta',3.254,-74.358),('50400','Lejanías','50','Meta',3.5136111,-74.0516667),('50450','Puerto Concordia','50','Meta',2.6794444,-72.7608333),('50568','Puerto Gaitán','50','Meta',4.3141667,-72.0825),('50573','Puerto López','50','Meta',4.0833333,-72.9666667),('50577','Puerto Lleras','50','Meta',3,-72.5),('50590','Puerto Rico','50','Meta',2.9383333,-73.2083333),('50606','Restrepo','50','Meta',4.1666667,-73.4166667),('50680','San Carlos de Guaroa','50','Meta',3.7122222,-73.2436111),('50683','San Juan de Arama','50','Meta',3.3463889,-73.8894444),('50686','San Juanito','50','Meta',4.4586111,-73.6730556),('50689','San Martín','50','Meta',3.7,-73.7),('50711','Vista Hermosa','50','Meta',3.0863889,-73.7513889),('52001','San Juan de Pasto','52','Nariño',1.21467073681653,-77.2786474227905),('52019','Albán (San José)','52','Nariño',1.4744444,-77.0836111),('52022','Aldana','52','Nariño',0.9166667,-77.6833333),('52036','Ancuya','52','Nariño',1.25,-77.5),('52051','Arboleda (Berruecos)','52','Nariño',1.5033333,-77.0877778),('52079','Barbacoas','52','Nariño',1.5833333,-78),('52083','Belén','52','Nariño',1.5975,-77.0175),('52110','Buesaco','52','Nariño',1.25,-77.0833333),('52203','Colón (Génova)','52','Nariño',1.5833333,-77),('52207','Consaca','52','Nariño',1.20840649727186,-77.4632263183594),('52210','Contadero','52','Nariño',0.9166667,-77.5333333),('52215','Córdoba','52','Nariño',0.7833333,-77.3333333),('52224','Cuaspud (Carlosama)','52','Nariño',0.8658333,-77.7294444),('52227','Cumbal','52','Nariño',0.9166667,-77.9166667),('52233','Cumbitara','52','Nariño',1.6533333,-77.5833333),('52240','Chachaguí','52','Nariño',1.35943053925138,-77.2836685180664),('52250','El Charco','52','Nariño',2.3333333,-78.35),('52254','El Peñol','52','Nariño',1.4333333,-77.4333333),('52256','El Rosario','52','Nariño',1.8333333,-77.3333333),('52258','El Tablón de Gómez','52','Nariño',0,0),('52260','El Tambo','52','Nariño',1.4,-77.3333333),('52287','Funes','52','Nariño',0.95,-77.3333333),('52317','Guachucal','52','Nariño',1,-77.75),('52320','Guaitarilla','52','Nariño',1.15,-77.5),('52323','Gualmatán','52','Nariño',0.8333333,-77.5833333),('52352','Iles','52','Nariño',0.95,-77.5333333),('52354','Imúes','52','Nariño',1.05,-77.5),('52356','Ipiales','52','Nariño',0.8302778,-77.6444444),('52378','La Cruz','52','Nariño',1.55,-76.8833333),('52381','La Florida','52','Nariño',1.25,-77.4166667),('52385','La Llanada','52','Nariño',1.4777778,-77.5838889),('52390','La Tola','52','Nariño',2.4108333,-78.2427778),('52399','La Unión','52','Nariño',1.5833333,-77.0833333),('52405','Leiva','52','Nariño',1.9375,-77.3080556),('52411','Linares','52','Nariño',1.3833333,-77.45),('52418','Sotomayor (Los Andes)','52','Nariño',1.5155556,-77.495),('52427','Magüi (Payán)','52','Nariño',1.9166667,-77.8333333),('52435','Mallama (Piedrancha)','52','Nariño',1.0833333,-77.8166667),('52473','Mosquera','52','Nariño',2.35,-78.35),('52480','Nariño','52','Nariño',1.5,-78),('52490','Olaya Herrera','52','Nariño',1.2666667,-77.4833333),('52506','Ospina','52','Nariño',1.0333333,-77.55),('52520','Francisco Pizarro','52','Nariño',2.1019444,-78.7216667),('52540','Policarpa','52','Nariño',1.6316667,-77.4616667),('52560','Potosí','52','Nariño',0.75,-77.4166667),('52565','Providencia','52','Nariño',1.5702778,-77.4694444),('52573','Puerres','52','Nariño',0.9166667,-77.25),('52585','Pupiales','52','Nariño',0.9166667,-77.6666667),('52612','Ricaurte','52','Nariño',1.1666667,-78.1666667),('52621','Roberto Payán (San José)','52','Nariño',1.9166667,-78.3333333),('52678','Samaniego','52','Nariño',1.4166667,-77.6666667),('52683','Sandoná','52','Nariño',1.25,-77.45),('52685','San Bernardo','52','Nariño',1.5163889,-77.0466667),('52687','San Lorenzo','52','Nariño',1.5,-77.1666667),('52693','San Pablo','52','Nariño',1.6666667,-76.9166667),('52694','San Pedro de Cartago','52','Nariño',1.5613889,-77.1180556),('52695','Santa Bárbara (Iscuandé)','52','Nariño',2.3333333,-77.9166667),('52699','Guachavés','52','Nariño',1.2247222,-77.68),('52720','Sapuyes','52','Nariño',1.0333333,-77.6),('52786','Taminango','52','Nariño',1.5833333,-77.25),('52788','Tangua','52','Nariño',1.0833333,-77.3),('52835','Tumaco','52','Nariño',1.7986111,-78.8155556),('52838','Túquerres','52','Nariño',1.1666667,-77.5833333),('52885','Yacuanquer','52','Nariño',1.0833333,-77.4166667),('54001','Cúcuta','54','Norte de Santander',7.8833333,-72.5052778),('54003','Ábrego','54','Norte de Santander',8,-73.2),('54051','Arboledas','54','Norte de Santander',7.6666667,-72.75),('54099','Bochalema','54','Norte de Santander',7.6666667,-72.5833333),('54109','Bucarasica','54','Norte de Santander',8.0833333,-73),('54125','Cácota','54','Norte de Santander',7.25,-72.5833333),('54128','Cáchira','54','Norte de Santander',7.75,-73.1666667),('54172','Chinácota','54','Norte de Santander',7.75,-72.55),('54174','Chitagá','54','Norte de Santander',7.1666667,-72.5833333),('54206','Convención','54','Norte de Santander',8.8333333,-73.2),('54223','Cucutilla','54','Norte de Santander',7.5,-72.75),('54239','Durania','54','Norte de Santander',7.75,-72.6333333),('54245','El Carmen','54','Norte de Santander',8.75,-73.3333333),('54250','El Tarra','54','Norte de Santander',8.5847222,-73.0883333),('54261','El Zulia','54','Norte de Santander',7.9355556,-72.605),('54313','Gramalote','54','Norte de Santander',7.9166667,-72.75),('54344','Hacarí','54','Norte de Santander',8.5,-73.0833333),('54347','Herrán','54','Norte de Santander',7.5,-72.4666667),('54377','Labateca','54','Norte de Santander',7.3333333,-72.5),('54385','La Esperanza','54','Norte de Santander',8.1666667,-72.4666667),('54398','La Playa','54','Norte de Santander',8.25,-73.1666667),('54405','Los Patios','54','Norte de Santander',7.8383333,-72.5133333),('54418','Lourdes','54','Norte de Santander',7.9666667,-72.8333333),('54480','Mutiscua','54','Norte de Santander',7.3333333,-72.7166667),('54498','Ocaña','54','Norte de Santander',8.25,-73.3),('54518','Pamplona','54','Norte de Santander',7.3780556,-72.6525),('54520','Pamplonita','54','Norte de Santander',7.5,-72.5833333),('54553','Puerto Santander','54','Norte de Santander',8.3636111,-72.4075),('54599','Ragonvalia','54','Norte de Santander',7.5833333,-72.5),('54660','Salazar','54','Norte de Santander',7.8,-72.8333333),('54670','San Calixto','54','Norte de Santander',8.75,-73.0333333),('54673','San Cayetano','54','Norte de Santander',7.8833333,-72.5833333),('54680','Santiago','54','Norte de Santander',7.9166667,-72.6666667),('54720','Sardinata','54','Norte de Santander',8.25,-72.75),('54743','Silos','54','Norte de Santander',7.2,-72.75),('54800','Teorama','54','Norte de Santander',8.75,-73.1666667),('54810','Tibú','54','Norte de Santander',8.6480556,-72.7394444),('54820','Toledo','54','Norte de Santander',7.3,-72.25),('54871','Villa Caro','54','Norte de Santander',7.9169444,-72.9763889),('54874','Villa del Rosario','54','Norte de Santander',7.8338889,-72.4741667),('63001','Armenia','63','Quindío',4.5338889,-75.6811111),('63111','Buenavista','63','Quindío',4.3622222,-75.7394444),('63130','Calarcá','63','Quindío',4.5325,-75.6436111),('63190','Circasia','63','Quindío',4.6166667,-75.6333333),('63212','Cordobá','63','Quindío',4.3905556,-75.6888889),('63272','Filandia','63','Quindío',4.6666667,-75.6333333),('63302','Génova','63','Quindío',4.25,-75.6666667),('63401','La Tebaida','63','Quindío',4.45,-75.8),('63470','Montenegro','63','Quindío',4.5,-75.8),('63548','Pijao','63','Quindío',4.3333333,-75.6666667),('63594','Quimbaya','63','Quindío',4.6333333,-75.75),('63690','Salento','63','Quindío',4.6666667,-75.5),('66001','Pereira','66','Risaralda',4.8133333,-75.6961111),('66045','Apía','66','Risaralda',5.1666667,-76),('66075','Balboa','66','Risaralda',4.9166667,-75.95),('66088','Belén de Umbría','66','Risaralda',5.25,-75.9166667),('66170','Dos Quebradas','66','Risaralda',4.8347222,-75.6725),('66318','Guática','66','Risaralda',5.3333333,-75.8333333),('66383','La Celia','66','Risaralda',4.9666667,-76),('66400','La Virginia','66','Risaralda',4.9166667,-75.8333333),('66440','Marsella','66','Risaralda',4.9166667,-75.75),('66456','Mistrató','66','Risaralda',5.4166667,-76),('66572','Pueblo Rico','66','Risaralda',5.25,-76.1666667),('66594','Quinchía','66','Risaralda',5.3333333,-75.6666667),('66682','Santa Rosa de Cabal','66','Risaralda',4.8680556,-75.6213889),('66687','Santuario','66','Risaralda',5.0833333,-76),('68001','Bucaramanga','68','Santander',7.1297222,-73.1258333),('68013','Aguada','68','Santander',6.25,-73.4666667),('68020','Albania','68','Santander',5.8333333,-73.75),('68051','Aratoca','68','Santander',6.8333333,-72.9666667),('68077','Barbosa','68','Santander',6,-73.55),('68079','Barichara','68','Santander',6.75,-73.1666667),('68081','Barrancabermeja','68','Santander',7.0652778,-73.8547222),('68092','Betulia','68','Santander',7.0833333,-73.3333333),('68101','Bolívar','68','Santander',6.25,-74),('68121','Cabrera','68','Santander',6.6333333,-73.2),('68132','California','68','Santander',7.4166667,-72.85),('68147','Capitanejo','68','Santander',6.6,-72.6333333),('68152','Carcasí','68','Santander',6.8333333,-72.5),('68160','Cepita','68','Santander',6.8333333,-72.9166667),('68162','Cerrito','68','Santander',7,-72.5833333),('68167','Charalá','68','Santander',6.25,-73.0833333),('68169','Charta','68','Santander',7.3,-72.9666667),('68176','Chima','68','Santander',6.4166667,-73.3333333),('68179','Chipatá','68','Santander',6.1333333,-73.55),('68190','Cimitarra','68','Santander',6.3161111,-73.9505556),('68207','Concepción','68','Santander',6.9166667,-72.5),('68209','Confines','68','Santander',6.4166667,-73.1666667),('68211','Contratación','68','Santander',6.3333333,-73.4166667),('68217','Coromoro','68','Santander',6.3333333,-73),('68229','Curití','68','Santander',6.6666667,-73),('68235','El Carmen','68','Santander',6.698,-73.511),('68245','El Guacamayo','68','Santander',6.3333333,-73.4666667),('68250','El Peñon','68','Santander',6.55,-72.8333333),('68255','El Playón','68','Santander',7.4766667,-73.2080556),('68264','Encino','68','Santander',6.1666667,-73),('68266','Enciso','68','Santander',6.75,-72.6333333),('68271','Florián','68','Santander',5.8047222,-73.9741667),('68276','Floridablanca','68','Santander',7.0647222,-73.0897222),('68296','Galán','68','Santander',6.7,-73.3),('68298','Gámbita','68','Santander',6,-73.25),('68306','Girón','68','Santander',7.0708333,-73.1730556),('68318','Guaca','68','Santander',7,-72.7666667),('68320','Guadalupe','68','Santander',6.3,-73.3333333),('68322','Guapota','68','Santander',6.3833333,-73.25),('68324','Guavatá','68','Santander',6,-73.65),('68327','Guepsa','68','Santander',6.0833333,-73.5),('68344','Hato','68','Santander',6.5833333,-73.3333333),('68368','Jesús María','68','Santander',5.9166667,-73.8333333),('68370','Jordán','68','Santander',6.75,-73.0666667),('68377','La Belleza','68','Santander',5.8613889,-73.9683333),('68385','Landázuri','68','Santander',6.2238889,-73.8127778),('68397','La Paz','68','Santander',6.25,-73.4666667),('68406','Lebrija','68','Santander',7.4166667,-73.4166667),('68418','Los Santos','68','Santander',6.9166667,-73.0833333),('68425','Macaravita','68','Santander',6.5833333,-72.5333333),('68432','Málaga','68','Santander',6.7833333,-72.6666667),('68444','Matanza','68','Santander',7.4166667,-73.0833333),('68464','Mogotes','68','Santander',6.5833333,-72.9166667),('68468','Molagavita','68','Santander',6.75,-72.75),('68498','Ocamonte','68','Santander',6.4166667,-73.0833333),('68500','Oiba','68','Santander',6.3,-73.25),('68502','Onzaga','68','Santander',6.3333333,-72.75),('68522','Palmar','68','Santander',6.5833333,-73.25),('68524','Palmas del Socorro','68','Santander',6.45,-73.25),('68533','Páramo','68','Santander',6.5,-73.1333333),('68547','Pie de Cuesta','68','Santander',5.8383333,-74.0366667),('68549','Pinchote','68','Santander',6.5833333,-73.1666667),('68572','Puente Nacional','68','Santander',5.9166667,-73.5833333),('68573','Puerto Parra','68','Santander',6.6516667,-74.0608333),('68575','Puerto Wilches','68','Santander',7.5833333,-73.6666667),('68615','Rio Negro','68','Santander',7.2191667,-73.1558333),('68655','Sabana de Torres','68','Santander',7.3980556,-73.4969444),('68669','San Andrés','68','Santander',6.8333333,-72.75),('68673','San Benito','68','Santander',6.1666667,-73.4666667),('68679','San Gíl','68','Santander',6.5833333,-73.0833333),('68682','San Joaquín','68','Santander',6.4333333,-72.8666667),('68684','San Miguel','68','Santander',6.6666667,-72.55),('68686','San José de Miranda','68','Santander',6.7,-72.6666667),('68689','San Vicente del Chucurí','68','Santander',6.8836111,-73.4138889),('68705','Santa Bárbara','68','Santander',6.9927778,-72.9102778),('68720','Santa Helena del Opón','68','Santander',6.3375,-73.5919444),('68745','Simacota','68','Santander',6.4472222,-73.3413889),('68755','Socorro','68','Santander',6.5333333,-73.2),('68770','Suaita','68','Santander',6.1666667,-73.3),('68773','Sucre','68','Santander',6.0833333,-73.9166667),('68780','Suratá','68','Santander',7.5,-72.9666667),('68820','Tona','68','Santander',7.25,-72.9),('68855','Valle de San José','68','Santander',6.5,-73.0666667),('68861','Vélez','68','Santander',6.0833333,-73.5833333),('68867','Vetas','68','Santander',7.3333333,-72.8666667),('68872','Villanueva','68','Santander',6.6741667,-73.1777778),('68895','Zapatoca','68','Santander',6.8333333,-73.25),('70001','Sincelejo','70','Sucre',9.3047222,-75.3977778),('70110','Buenavista','70','Sucre',9.3222222,-74.9772222),('70124','Caimito','70','Sucre',8.8333333,-75.1666667),('70204','Colosó (Ricaurte)','70','Sucre',9.4966667,-75.3555556),('70215','Corozal','70','Sucre',9.3333333,-75.25),('70221','Coveñas','70','Sucre',9.4166667,-75.7),('70230','Chalán','70','Sucre',9.5491667,-75.3161111),('70233','El Roble','70','Sucre',9.1,-75.2),('70235','Galeras (Nueva Granada)','70','Sucre',9.1630556,-75.0525),('70265','Guaranda','70','Sucre',8.4697222,-75.5383333),('70400','La Unión','70','Sucre',8.8605556,-75.2805556),('70418','Los Palmitos','70','Sucre',9.3811111,-75.2713889),('70429','Majagual','70','Sucre',8.5,-74.6666667),('70473','Morroa','70','Sucre',9.4166667,-75.3333333),('70508','Ovejas','70','Sucre',9.5,-75.1666667),('70523','Palmito','70','Sucre',9.3333333,-75.55),('70670','Sampués','70','Sucre',9.1666667,-75.3),('70678','San Benito Abad','70','Sucre',8.75,-74.9166667),('70702','San Juan de Betulia','70','Sucre',9.2755556,-75.2455556),('70708','San Marcos','70','Sucre',8.5833333,-75.1666667),('70713','San Onofre','70','Sucre',9.8333333,-75.5),('70717','San Pedro','70','Sucre',9.4166667,-75),('70742','Sincé','70','Sucre',9.1666667,-75),('70771','Sucre','70','Sucre',9,-75),('70820','Tolú','70','Sucre',9.5,-75.5333333),('70823','Tolú Viejo','70','Sucre',0,0),('73001','Ibagué','73','Tolima',4.4388889,-75.2322222),('73024','Alpujarra','73','Tolima',3.4166667,-74.9166667),('73026','Alvarado','73','Tolima',4.5833333,-75),('73030','Ambalema','73','Tolima',4.8333333,-74.8333333),('73043','Anzoátegui','73','Tolima',4.6666667,-75.25),('73055','Armero (Guayabal)','73','Tolima',5.0833333,-74.8333333),('73067','Ataco','73','Tolima',3.3333333,-75.6666667),('73124','Cajamarca','73','Tolima',4.4166667,-75.5),('73148','Carmen de Apicalá','73','Tolima',4.15,-74.7333333),('73152','Casabianca','73','Tolima',5.0833333,-75.1666667),('73168','Chaparral','73','Tolima',3.75,-75.5833333),('73200','Coello','73','Tolima',4.3333333,-74.9166667),('73217','Coyaima','73','Tolima',3.8333333,-75.0833333),('73226','Cunday','73','Tolima',4.0833333,-74.6666667),('73236','Dolores','73','Tolima',3.6666667,-74.75),('73268','Espinal','73','Tolima',4.2,-74.8333333),('73270','Falan','73','Tolima',5.1333333,-75),('73275','Flandes','73','Tolima',4.25,-74.8333333),('73283','Fresno','73','Tolima',5.1666667,-75.0833333),('73319','Guamo','73','Tolima',4.0833333,-74.9166667),('73347','Herveo','73','Tolima',5.0833333,-75.1666667),('73349','Honda','73','Tolima',5.25,-74.8333333),('73352','Icononzo','73','Tolima',4.1666667,-74.55),('73408','Lérida','73','Tolima',4.9166667,-74.9166667),('73411','Líbano','73','Tolima',4.9166667,-75.1666667),('73443','Mariquita','73','Tolima',5.25,-74.9166667),('73449','Melgar','73','Tolima',4.25,-74.5833333),('73461','Murillo','73','Tolima',4.8769444,-75.1738889),('73483','Natagaima','73','Tolima',3.5833333,-75.0833333),('73504','Ortega','73','Tolima',3.9166667,-75.25),('73520','Palocabildo','73','Tolima',5.1333333,-75.0333333),('73547','Piedras','73','Tolima',4.5,-74.9166667),('73555','Planadas','73','Tolima',3.25,-75.75),('73563','Prado','73','Tolima',3.75,-74.8333333),('73585','Purificación','73','Tolima',3.9166667,-74.9166667),('73616','Rioblanco','73','Tolima',3.5,-75.8333333),('73622','Roncesvalles','73','Tolima',4.0833333,-75.5833333),('73624','Rovira','73','Tolima',4.25,-75.3333333),('73671','Saldaña','73','Tolima',3.9347222,-75.0202778),('73675','San Antonio','73','Tolima',3.9166667,-75.5),('73678','San Luis','73','Tolima',4.1666667,-75.0833333),('73686','Santa Isabel','73','Tolima',4.75,-75.1666667),('73770','Suárez','73','Tolima',4.0833333,-74.7833333),('73854','Valle de San Juan','73','Tolima',4.25,-75.1666667),('73861','Venadillo','73','Tolima',4.75,-74.9166667),('73870','Villahermosa','73','Tolima',5,-75.1666667),('73873','Villarrica','73','Tolima',4,-74.5833333),('76001','Calí','76','Valle del Cauca',3.4372222,-76.5225),('76020','Alcalá','76','Valle del Cauca',4.6666667,-75.75),('76036','Andalucía','76','Valle del Cauca',4.1741667,-76.1702778),('76041','Ansermanuevo','76','Valle del Cauca',4.7972222,-75.995),('76054','Argelia','76','Valle del Cauca',4.7,-76.1333333),('76100','Bolívar','76','Valle del Cauca',4.3333333,-76.3333333),('76109','Buenaventura','76','Valle del Cauca',3.8933333,-77.0697222),('76111','Buga','76','Valle del Cauca',3.9022222,-76.3027778),('76113','Bugalagrande','76','Valle del Cauca',4.2094444,-76.1602778),('76122','Caicedonia','76','Valle del Cauca',4.33365917459535,-75.8342456817627),('76126','Calima (Darién)','76','Valle del Cauca',3.9166667,-76.6666667),('76130','Candelaria','76','Valle del Cauca',3.4130556,-76.3511111),('76147','Cartago','76','Valle del Cauca',4.7463889,-75.9116667),('76233','Dagua','76','Valle del Cauca',3.6602778,-76.6927778),('76243','El Águila','76','Valle del Cauca',4.9166667,-76.0833333),('76246','El Cairo','76','Valle del Cauca',4.75,-76.25),('76248','El Cerrito','76','Valle del Cauca',3.6666667,-76.1666667),('76250','El Dovio','76','Valle del Cauca',4.5,-76.25),('76275','Florida','76','Valle del Cauca',3.3275,-76.2386111),('76306','Ginebra','76','Valle del Cauca',3.75,-76.1666667),('76318','Guacarí','76','Valle del Cauca',3.7694444,-76.3380556),('76364','Jamundí','76','Valle del Cauca',3.1666667,-76.5833333),('76400','La Unión','76','Valle del Cauca',4.5358333,-76.1066667),('76403','La Victoria','76','Valle del Cauca',4.5238889,-76.0411111),('76497','Obando','76','Valle del Cauca',4.5833333,-75.9166667),('76520','Palmira','76','Valle del Cauca',3.5394444,-76.3036111),('76563','Pradera','76','Valle del Cauca',3.4211111,-76.2447222),('76606','Restrepo','76','Valle del Cauca',3.7833333,-76.5),('76616','Riofrío','76','Valle del Cauca',4.0833333,-76.3333333),('76622','Roldanillo','76','Valle del Cauca',4.4147222,-76.1547222),('76670','San Pedro','76','Valle del Cauca',4,-76.1666667),('76677','La Cumbre','76','Valle del Cauca',3.6666667,-76.5833333),('76736','Sevilla','76','Valle del Cauca',4.2688889,-75.9361111),('76823','Toro','76','Valle del Cauca',4.6116667,-76.0813889),('76828','Trujillo','76','Valle del Cauca',4.25,-76.3333333),('76834','Tulúa','76','Valle del Cauca',4.0866667,-76.2),('76845','Ulloa','76','Valle del Cauca',4.7166667,-75.75),('76863','Versalles','76','Valle del Cauca',4.6666667,-76.25),('76869','Vijes','76','Valle del Cauca',3.6986111,-76.4491667),('76890','Yotoco','76','Valle del Cauca',3.9166667,-76.3333333),('76892','Yumbo','76','Valle del Cauca',3.585,-76.4958333),('76895','Zarzal','76','Valle del Cauca',4.3983333,-76.0772222),('81001','Arauca','81','Arauca',7.0902778,-70.7616667),('81065','Arauquita','81','Arauca',6.8219444,-71.3236111),('81220','Cravo Norte','81','Arauca',6.3030556,-70.2016667),('81300','Fortúl','81','Arauca',6.7461111,-71.8566667),('81591','Puerto Rondón','81','Arauca',6.2780556,-71.1),('81736','Saravena','81','Arauca',6.9205556,-71.8533333),('81794','Tame','81','Arauca',6.4641667,-71.7288889),('85001','Yopal','85','Casanare',5.3394444,-72.3941667),('85010','Aguazul','85','Casanare',5.1730556,-72.5547222),('85015','Chámeza','85','Casanare',5,-72.75),('85125','Hato Corozal','85','Casanare',6.1555556,-71.7655556),('85136','La Salina','85','Casanare',6.1852778,-72.3444444),('85139','Maní','85','Casanare',4.8333333,-72.3333333),('85162','Monterrey','85','Casanare',4.9166667,-72.8333333),('85225','Nunchía','85','Casanare',5.6405556,-72.1986111),('85230','Orocué','85','Casanare',4.7941667,-71.34),('85250','Paz de Ariporo','85','Casanare',5.8833333,-71.9),('85263','Pore','85','Casanare',5.6708333,-71.93),('85279','Recetor','85','Casanare',5.3333333,-72.75),('85300','Sabanalarga','85','Casanare',4.8536111,-73.0430556),('85315','Sácama','85','Casanare',6.0833333,-72.0833333),('85325','San Luís de Palenque','85','Casanare',5.2805556,-71.5819444),('85400','Támara','85','Casanare',5.8297222,-72.1633333),('85410','Tauramena','85','Casanare',5.0186111,-72.7552778),('85430','Trinidad','85','Casanare',5.4305556,-71.6311111),('85440','Villanueva','85','Casanare',5.2833333,-71.9666667),('86001','Mocoa','86','Putumayo',1.1488889,-76.6477778),('86219','Colón','86','Putumayo',1.1936111,-76.9769444),('86320','Orito','86','Putumayo',0.6966667,-76.8747222),('86568','Puerto Asís','86','Putumayo',0.5158333,-76.495),('86569','Puerto Caicedo','86','Putumayo',0.6838889,-76.5858333),('86571','Puerto Guzmán','86','Putumayo',0.9702778,-76.5858333),('86573','Puerto Leguízamo','86','Putumayo',-0.2,-74.7666667),('86749','Sibundoy','86','Putumayo',1.1833333,-76.9166667),('86755','San Francisco','86','Putumayo',1.1772222,-76.8830556),('86757','San Miguel','86','Putumayo',0.3394444,-76.8830556),('86760','Santiago','86','Putumayo',1.1511111,-77.0075),('86865','Valle del Guamuez','86','Putumayo',0.4525,-76.9191667),('86885','Villagarzón','86','Putumayo',1.038,-76.627),('88564','Providencia','88','San Andrés',12.5,-81.75),('91001','Leticia','91','Amazonas',-4.2152778,-69.9405556),('91540','Puerto Nariño','91','Amazonas',-3.7702778,-70.3830556),('94001','Inírida','94','Guainía',3.8652778,-67.9238889),('95001','San José del Guaviare','95','Guaviare',2.5683333,-72.6416667),('95015','Calamar','95','Guaviare',1.9597222,-72.6538889),('95025','El Retorno','95','Guaviare',2.3305556,-72.6277778),('95200','Miraflores','95','Guaviare',1.3366667,-71.9511111),('97001','Mitú','97','Vaupés',1.1983333,-70.1733333),('97161','Carurú','97','Vaupés',0.9166667,-70.7333333),('97666','Taraira','97','Vaupés',0.4938889,-69.6669444),('99001','Puerto Carreño','99','Vichada',6.1877778,-67.4730556),('99524','La Primavera','99','Vichada',5.4905556,-70.4091667),('99624','Santa Rosalía','99','Vichada',5.1261111,-70.8758333),('99773','Cumaribo','99','Vichada',4.4444444,-69.8002778),('﻿05002','Abejorral','05','Antioquia',5.75,-75.4166667);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `Perfil_id` int(11) NOT NULL AUTO_INCREMENT,
  `Perfil_nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Perfil_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (10,'Cliente'),(11,'Provedor'),(12,'Administrador'),(13,'Vendedor'),(14,'Asociado');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `Persona_numdoc` varchar(25) NOT NULL,
  `Persona_fechcrea` date DEFAULT NULL,
  `Persona_fechnaci` date DEFAULT NULL,
  `Persona_nombre` varchar(45) DEFAULT NULL,
  `Genero_Genero_id` char(1) NOT NULL,
  `TipoDocumento_TipoDocumento_id` varchar(2) NOT NULL,
  `municipio_municipio_id` varchar(7) NOT NULL,
  `persona_direccion_id` int(11) NOT NULL,
  PRIMARY KEY (`Persona_numdoc`,`TipoDocumento_TipoDocumento_id`),
  KEY `fk_Persona_Genero1_idx` (`Genero_Genero_id`),
  KEY `fk_Persona_TipoDocumento1_idx` (`TipoDocumento_TipoDocumento_id`),
  KEY `fk_Persona_municipio1_idx` (`municipio_municipio_id`),
  KEY `fk_Persona_direccion_idx` (`persona_direccion_id`),
  CONSTRAINT `fk_Persona_Genero1` FOREIGN KEY (`Genero_Genero_id`) REFERENCES `genero` (`Genero_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_TipoDocumento1` FOREIGN KEY (`TipoDocumento_TipoDocumento_id`) REFERENCES `tipodocumento` (`TipoDocumento_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_direccion` FOREIGN KEY (`persona_direccion_id`) REFERENCES `direccion` (`direccion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_municipio1` FOREIGN KEY (`municipio_municipio_id`) REFERENCES `municipio` (`municipio_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `producto_id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_nombre` varchar(45) DEFAULT NULL,
  `producto_marca_id` int(11) DEFAULT NULL,
  `producto_concepto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`producto_id`),
  KEY `fk_producto_marca_id_idx` (`producto_marca_id`),
  KEY `producto_concepto_id_idx` (`producto_concepto_id`),
  CONSTRAINT `fk_producto_marca_id` FOREIGN KEY (`producto_marca_id`) REFERENCES `marca` (`Marca_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `producto_concepto_id` FOREIGN KEY (`producto_concepto_id`) REFERENCES `concepto` (`concepto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (19,'Camibuso GioLopez Gris 2016',NULL,NULL),(20,'Zapatos GioLopez clasicos 2016',NULL,NULL);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_categoria`
--

DROP TABLE IF EXISTS `producto_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_categoria` (
  `procat_categoria_id` int(11) DEFAULT NULL,
  `procat_producto_id` int(11) DEFAULT NULL,
  `procat_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`procat_id`),
  KEY `fk_procat_categoria_id_idx` (`procat_categoria_id`),
  KEY `fk_procat_producto_id_idx` (`procat_producto_id`),
  CONSTRAINT `fk_procat_categoria_id` FOREIGN KEY (`procat_categoria_id`) REFERENCES `categoria` (`Categoria_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_procat_producto_id` FOREIGN KEY (`procat_producto_id`) REFERENCES `producto` (`producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_categoria`
--

LOCK TABLES `producto_categoria` WRITE;
/*!40000 ALTER TABLE `producto_categoria` DISABLE KEYS */;
INSERT INTO `producto_categoria` VALUES (61,19,8),(66,20,13),(61,20,14),(63,20,15);
/*!40000 ALTER TABLE `producto_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_propiedades`
--

DROP TABLE IF EXISTS `producto_propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_propiedades` (
  `prodprop_id` int(11) NOT NULL,
  `prodprop_propiedades_id` int(11) DEFAULT NULL,
  `prodprop_producto_id` int(11) DEFAULT NULL,
  `prodprop_valor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prodprop_id`),
  KEY `fk_prodprop_propiedades_id_idx` (`prodprop_propiedades_id`),
  KEY `fk_prodprop_producto_id_idx` (`prodprop_producto_id`),
  CONSTRAINT `fk_prodprop_producto_id` FOREIGN KEY (`prodprop_producto_id`) REFERENCES `producto` (`producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prodprop_propiedades_id` FOREIGN KEY (`prodprop_propiedades_id`) REFERENCES `propiedades` (`propiedades_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_propiedades`
--

LOCK TABLES `producto_propiedades` WRITE;
/*!40000 ALTER TABLE `producto_propiedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propiedades`
--

DROP TABLE IF EXISTS `propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propiedades` (
  `propiedades_id` int(11) NOT NULL,
  `propiedades_nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`propiedades_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propiedades`
--

LOCK TABLES `propiedades` WRITE;
/*!40000 ALTER TABLE `propiedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipodocumento` (
  `TipoDocumento_id` varchar(2) NOT NULL,
  `TipoDocumento_sigla` varchar(3) DEFAULT NULL,
  `TipoDocumento_nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TipoDocumento_id`),
  UNIQUE KEY `TipoDocumento_id_UNIQUE` (`TipoDocumento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
INSERT INTO `tipodocumento` VALUES ('CC','C.C','CEDULA DE CIUDADANIA'),('CE','C.E','CEDULA DE EXTRANGERIA'),('NI','NIT','NIT'),('PA','PAS','PASAPORTE'),('TI','T.I','TARGETA DE IDENTIDAD');
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `user_nombre` varchar(16) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `Perfil_Perfil_id` int(11) NOT NULL,
  `Persona_Persona_numdoc` varchar(25) NOT NULL,
  `Persona_TipoDocumento_TipoDocumento_id` varchar(2) NOT NULL,
  PRIMARY KEY (`user_nombre`),
  KEY `fk_Usuario_Perfil1_idx` (`Perfil_Perfil_id`),
  KEY `fk_Usuario_Persona1_idx` (`Persona_Persona_numdoc`,`Persona_TipoDocumento_TipoDocumento_id`),
  CONSTRAINT `fk_Usuario_Perfil1` FOREIGN KEY (`Perfil_Perfil_id`) REFERENCES `perfil` (`Perfil_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Persona1` FOREIGN KEY (`Persona_Persona_numdoc`, `Persona_TipoDocumento_TipoDocumento_id`) REFERENCES `persona` (`Persona_numdoc`, `TipoDocumento_TipoDocumento_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'compraventa'
--

--
-- Dumping routines for database 'compraventa'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-05 12:51:53
