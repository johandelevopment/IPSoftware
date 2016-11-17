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
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita` (
  `cod_cita` int(11) NOT NULL AUTO_INCREMENT,
  `observaciones_cita` varchar(50) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `identificacion_paciente` int(11) DEFAULT NULL,
  `cod_examen` int(11) DEFAULT NULL,
  `cod_punto_atencion` int(11) DEFAULT NULL,
  `cod_tipo_pago` int(11) DEFAULT NULL,
  `cod_agenda_medico` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `hora_inicio` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`cod_cita`),
  KEY `cod_tipo_pago` (`cod_tipo_pago`),
  KEY `cod_usuario` (`cod_usuario`),
  KEY `identificacion_paciente` (`identificacion_paciente`),
  KEY `cod_examen` (`cod_examen`),
  KEY `cod_punto_atencion` (`cod_punto_atencion`),
  KEY `cod_agenda_medico` (`cod_agenda_medico`,`fecha_inicio`,`hora_inicio`),
  CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`cod_tipo_pago`) REFERENCES `tipo_pago` (`cod_tipo_pago`),
  CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod_usuario`),
  CONSTRAINT `cita_ibfk_3` FOREIGN KEY (`identificacion_paciente`) REFERENCES `paciente` (`identificacion_paciente`),
  CONSTRAINT `cita_ibfk_4` FOREIGN KEY (`cod_examen`) REFERENCES `examen` (`cod_examen`),
  CONSTRAINT `cita_ibfk_5` FOREIGN KEY (`cod_punto_atencion`) REFERENCES `punto_atencion` (`cod_punto_atencion`),
  CONSTRAINT `cita_ibfk_6` FOREIGN KEY (`cod_agenda_medico`, `fecha_inicio`, `hora_inicio`) REFERENCES `agenda_medico` (`cod_agenda_medico`, `fecha_inicio`, `hora_inicio`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,'Primera vez',1,1023922683,1,1,4,1,'2016-01-01','7:00 am'),(2,'control',1,1023922683,4,1,1,6,'2016-01-01','10:00 am');
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
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
