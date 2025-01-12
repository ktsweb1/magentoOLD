CREATE DATABASE  IF NOT EXISTS `KTSRAY` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `KTSRAY`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: 65.60.97.68    Database: KTSRAY
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `googlebase_attributes`
--

DROP TABLE IF EXISTS `googlebase_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `googlebase_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute id',
  `gbase_attribute` varchar(255) DEFAULT NULL COMMENT 'Google base attribute',
  `type_id` int(10) unsigned NOT NULL COMMENT 'Type id',
  PRIMARY KEY (`id`),
  KEY `IDX_GOOGLEBASE_ATTRIBUTES_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_GOOGLEBASE_ATTRIBUTES_TYPE_ID` (`type_id`),
  CONSTRAINT `FK_GOOGLEBASE_ATTRIBUTES_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_GOOGLEBASE_ATTRIBUTES_TYPE_ID_GOOGLEBASE_TYPES_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `googlebase_types` (`type_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Base Attributes link Product Attributes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `googlebase_attributes`
--

LOCK TABLES `googlebase_attributes` WRITE;
/*!40000 ALTER TABLE `googlebase_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `googlebase_attributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:22
