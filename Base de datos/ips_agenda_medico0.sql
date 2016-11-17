CREATE DATABASE  IF NOT EXISTS `ips` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ips`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: ips
-- ------------------------------------------------------
-- Server version	5.0.85-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `agenda_medico`
--

DROP TABLE IF EXISTS `agenda_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda_medico` (
  `cod_agenda_medico` int(11) NOT NULL default '0',
  `fecha_inicio` date NOT NULL default '0000-00-00',
  `fecha_finalizacion` date default NULL,
  `hora_inicio` varchar(15) NOT NULL default '',
  `hora_finalizacion` varchar(15) default NULL,
  `disponibilidad` varchar(30) default NULL,
  `identificacion_medico` int(11) default NULL,
  PRIMARY KEY  (`cod_agenda_medico`,`fecha_inicio`,`hora_inicio`),
  KEY `identificacion_medico` (`identificacion_medico`),
  CONSTRAINT `agenda_medico_ibfk_1` FOREIGN KEY (`identificacion_medico`) REFERENCES `medico` (`identificacion_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda_medico`
--

LOCK TABLES `agenda_medico` WRITE;
/*!40000 ALTER TABLE `agenda_medico` DISABLE KEYS */;
INSERT INTO `agenda_medico` VALUES (1,'2016-01-01','2016-01-01','7:00 am','7:30 am','No disponible',1010000708),(2,'2016-01-01','2016-01-01','7:30 am','8:00 am','disponible',1010000708),(3,'2016-01-01','2016-01-01','8:00 am','8:30 am','disponible',1010000708),(4,'2016-01-01','2016-01-01','8:30 am','9:00 am','disponible',1010000708),(5,'2016-01-01','2016-01-01','9:00 am','9:30 am','disponible',1010000708),(6,'2016-01-01','2016-01-01','10:00 am','10:30 am','No disponible',1010000708);
/*!40000 ALTER TABLE `agenda_medico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-12  1:01:49
