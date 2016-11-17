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
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `identificacion_paciente` int(11) NOT NULL,
  `nombre_paciente` varchar(30) default NULL,
  `apellido_paciente` varchar(30) default NULL,
  `direccion_paciente` varchar(30) default NULL,
  `telefono_paciente` varchar(30) default NULL,
  `correo_paciente` varchar(30) default NULL,
  `edad_paciente` int(11) default NULL,
  `cod_tipo_doc` int(11) default NULL,
  `cod_barrio` int(11) default NULL,
  `cod_eps` int(11) default NULL,
  PRIMARY KEY  (`identificacion_paciente`),
  KEY `cod_tipo_doc` (`cod_tipo_doc`),
  KEY `cod_barrio` (`cod_barrio`),
  KEY `cod_eps` (`cod_eps`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`cod_tipo_doc`) REFERENCES `tipo_doc` (`cod_tipo_doc`),
  CONSTRAINT `paciente_ibfk_2` FOREIGN KEY (`cod_barrio`) REFERENCES `barrio` (`cod_barrio`),
  CONSTRAINT `paciente_ibfk_3` FOREIGN KEY (`cod_eps`) REFERENCES `eps` (`cod_eps`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1022101070,'Carlos','Gutierrez','Cll 39 # 132-26','3133663275','carlosg@gmail.com',30,1,1,3),(1023922683,'Johan','Martin','Cra 8 # 39-03','7051800','johan@gmail.com',23,1,1,2),(1030652142,'Andrea','Gomez','Dg 20 # 10-15','3112623524','andrea@gmail.com',17,2,5,3),(1031266385,'Luis','Medina','Cra 10 # 27-10','3202653236','luisme@gmail.com',30,1,16,1),(1032988456,'Camilo','Perez','Cra 101 #7-25','3619234','camilo@gmail.com',30,1,11,2);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-12  1:01:43
