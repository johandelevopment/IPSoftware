CREATE DATABASE  IF NOT EXISTS `ips` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ips`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: ips
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `episodio_historia`
--

DROP TABLE IF EXISTS `episodio_historia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episodio_historia` (
  `cod_episodio` int(11) NOT NULL,
  `fecha_episodio` date DEFAULT NULL,
  `encabezado_episodio` varchar(30) DEFAULT NULL,
  `descripcion_episodio` varchar(50) DEFAULT NULL,
  `cod_historia` int(11) DEFAULT NULL,
  `identificacion_paciente` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_episodio`),
  KEY `cod_historia` (`cod_historia`),
  KEY `identificacion_paciente` (`identificacion_paciente`),
  CONSTRAINT `episodio_historia_ibfk_1` FOREIGN KEY (`cod_historia`) REFERENCES `historia` (`cod_historia`),
  CONSTRAINT `episodio_historia_ibfk_2` FOREIGN KEY (`identificacion_paciente`) REFERENCES `paciente` (`identificacion_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodio_historia`
--

LOCK TABLES `episodio_historia` WRITE;
/*!40000 ALTER TABLE `episodio_historia` DISABLE KEYS */;
/*!40000 ALTER TABLE `episodio_historia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-10 10:29:06
