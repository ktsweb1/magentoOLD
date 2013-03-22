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
-- Table structure for table `catalog_category_entity_text`
--

DROP TABLE IF EXISTS `catalog_category_entity_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2253 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog_category_entity_text`
--

LOCK TABLES `catalog_category_entity_text` WRITE;
/*!40000 ALTER TABLE `catalog_category_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_text` VALUES (1,9,121,0,3,'3,18,4,5,16,17,19,24,10,22,23,13,8,12,26,25,15,20'),(4,9,123,0,3,'18,10,13,20'),(9,9,121,0,10,'10,22,23'),(10,9,122,0,10,'10'),(19,9,122,0,18,'18'),(20,9,123,0,18,'4,5,19,24'),(25,9,123,0,10,'22,23'),(46,9,122,0,3,''),(87,9,112,0,10,NULL),(88,9,115,0,10,''),(89,9,116,0,10,''),(90,9,530,0,10,''),(102,9,112,0,18,''),(103,9,115,0,18,''),(104,9,116,0,18,''),(105,9,530,0,18,''),(131,9,121,0,18,'18,4,5,16,17,19,24'),(227,9,927,0,18,NULL),(233,9,927,0,10,NULL),(234,9,112,0,40,NULL),(235,9,115,0,40,NULL),(236,9,116,0,40,NULL),(237,9,927,0,40,NULL),(238,9,530,0,40,NULL),(247,9,112,0,41,NULL),(248,9,115,0,41,NULL),(249,9,116,0,41,NULL),(250,9,927,0,41,NULL),(251,9,530,0,41,NULL),(266,9,112,0,42,NULL),(267,9,115,0,42,NULL),(268,9,116,0,42,NULL),(269,9,530,0,42,NULL),(270,9,927,0,42,NULL),(271,9,112,0,43,NULL),(272,9,115,0,43,NULL),(273,9,116,0,43,NULL),(274,9,530,0,43,NULL),(275,9,927,0,43,NULL),(281,9,112,0,44,NULL),(282,9,115,0,44,NULL),(283,9,116,0,44,NULL),(284,9,530,0,44,NULL),(285,9,927,0,44,NULL),(286,9,112,0,45,NULL),(287,9,115,0,45,NULL),(288,9,116,0,45,NULL),(289,9,530,0,45,NULL),(290,9,927,0,45,NULL),(291,9,112,0,46,NULL),(292,9,115,0,46,NULL),(293,9,116,0,46,NULL),(294,9,530,0,46,NULL),(295,9,927,0,46,NULL),(296,9,112,0,47,NULL),(297,9,115,0,47,NULL),(298,9,116,0,47,NULL),(299,9,530,0,47,NULL),(300,9,927,0,47,NULL),(301,9,112,0,48,NULL),(302,9,115,0,48,NULL),(303,9,116,0,48,NULL),(304,9,530,0,48,NULL),(305,9,927,0,48,NULL),(306,9,112,0,49,NULL),(307,9,115,0,49,NULL),(308,9,116,0,49,NULL),(309,9,530,0,49,NULL),(310,9,927,0,49,NULL),(311,9,112,0,50,NULL),(312,9,115,0,50,NULL),(313,9,116,0,50,NULL),(314,9,530,0,50,NULL),(315,9,927,0,50,NULL),(316,9,112,0,51,NULL),(317,9,115,0,51,NULL),(318,9,116,0,51,NULL),(319,9,530,0,51,NULL),(320,9,927,0,51,NULL),(321,9,112,0,52,NULL),(322,9,115,0,52,NULL),(323,9,116,0,52,NULL),(324,9,530,0,52,NULL),(325,9,927,0,52,NULL),(326,9,112,0,53,NULL),(327,9,115,0,53,NULL),(328,9,116,0,53,NULL),(329,9,530,0,53,NULL),(330,9,927,0,53,NULL),(331,9,112,0,54,NULL),(332,9,115,0,54,NULL),(333,9,116,0,54,NULL),(334,9,530,0,54,NULL),(335,9,927,0,54,NULL),(336,9,112,0,55,NULL),(337,9,115,0,55,NULL),(338,9,116,0,55,NULL),(339,9,530,0,55,NULL),(340,9,927,0,55,NULL),(341,9,112,0,56,NULL),(342,9,115,0,56,NULL),(343,9,116,0,56,NULL),(344,9,530,0,56,NULL),(345,9,927,0,56,NULL),(346,9,112,0,57,NULL),(347,9,115,0,57,NULL),(348,9,116,0,57,NULL),(349,9,530,0,57,NULL),(350,9,927,0,57,NULL),(351,9,112,0,58,NULL),(352,9,115,0,58,NULL),(353,9,116,0,58,NULL),(354,9,530,0,58,NULL),(355,9,927,0,58,NULL),(356,9,112,0,59,NULL),(357,9,115,0,59,NULL),(358,9,116,0,59,NULL),(359,9,530,0,59,NULL),(360,9,927,0,59,NULL),(361,9,112,0,60,NULL),(362,9,115,0,60,NULL),(363,9,116,0,60,NULL),(364,9,530,0,60,NULL),(365,9,927,0,60,NULL),(366,9,112,0,61,NULL),(367,9,115,0,61,NULL),(368,9,116,0,61,NULL),(369,9,530,0,61,NULL),(370,9,927,0,61,NULL),(371,9,112,0,62,'<p>description</p>'),(372,9,115,0,62,NULL),(373,9,116,0,62,NULL),(374,9,530,0,62,NULL),(375,9,927,0,62,NULL),(381,9,112,0,63,NULL),(382,9,115,0,63,NULL),(383,9,116,0,63,NULL),(384,9,530,0,63,NULL),(385,9,927,0,63,NULL),(386,9,112,0,64,NULL),(387,9,115,0,64,NULL),(388,9,116,0,64,NULL),(389,9,530,0,64,NULL),(390,9,927,0,64,NULL),(391,9,112,0,65,NULL),(392,9,115,0,65,NULL),(393,9,116,0,65,NULL),(394,9,530,0,65,NULL),(395,9,927,0,65,NULL),(396,9,112,0,66,NULL),(397,9,115,0,66,NULL),(398,9,116,0,66,NULL),(399,9,530,0,66,NULL),(400,9,927,0,66,NULL),(401,9,112,0,67,NULL),(402,9,115,0,67,NULL),(403,9,116,0,67,NULL),(404,9,530,0,67,NULL),(405,9,927,0,67,NULL),(406,9,112,0,68,NULL),(407,9,115,0,68,NULL),(408,9,116,0,68,NULL),(409,9,530,0,68,'<reference name=\"left\">\r\n<block type=\"cms/block\" name=\"left.permanent.callout\">\r\n<action method=\"setBlockId\"><block_id>content_left</block_id></action>\r\n</block>\r\n</reference>'),(410,9,927,0,68,NULL),(411,9,112,0,69,NULL),(412,9,115,0,69,NULL),(413,9,116,0,69,NULL),(414,9,530,0,69,NULL),(415,9,927,0,69,NULL),(416,9,112,0,70,NULL),(417,9,115,0,70,NULL),(418,9,116,0,70,NULL),(419,9,530,0,70,NULL),(420,9,927,0,70,NULL),(421,9,112,0,71,NULL),(422,9,115,0,71,NULL),(423,9,116,0,71,NULL),(424,9,530,0,71,NULL),(425,9,927,0,71,NULL),(426,9,112,0,72,NULL),(427,9,115,0,72,NULL),(428,9,116,0,72,NULL),(429,9,530,0,72,NULL),(430,9,927,0,72,NULL),(431,9,112,0,73,NULL),(432,9,115,0,73,NULL),(433,9,116,0,73,NULL),(434,9,530,0,73,NULL),(435,9,927,0,73,NULL),(436,9,112,0,74,NULL),(437,9,115,0,74,NULL),(438,9,116,0,74,NULL),(439,9,530,0,74,NULL),(440,9,927,0,74,NULL),(446,9,112,0,75,NULL),(447,9,115,0,75,NULL),(448,9,116,0,75,NULL),(449,9,530,0,75,NULL),(450,9,927,0,75,NULL),(451,9,112,0,76,NULL),(452,9,115,0,76,NULL),(453,9,116,0,76,NULL),(454,9,530,0,76,NULL),(455,9,927,0,76,NULL),(456,9,112,0,77,NULL),(457,9,115,0,77,NULL),(458,9,116,0,77,NULL),(459,9,530,0,77,NULL),(460,9,927,0,77,NULL),(461,9,112,0,78,NULL),(462,9,115,0,78,NULL),(463,9,116,0,78,NULL),(464,9,530,0,78,NULL),(465,9,927,0,78,NULL),(466,9,112,0,79,NULL),(467,9,115,0,79,NULL),(468,9,116,0,79,NULL),(469,9,530,0,79,NULL),(470,9,927,0,79,NULL),(471,9,112,0,80,NULL),(472,9,115,0,80,NULL),(473,9,116,0,80,NULL),(474,9,530,0,80,NULL),(475,9,927,0,80,NULL),(476,9,112,0,81,NULL),(477,9,115,0,81,NULL),(478,9,116,0,81,NULL),(479,9,530,0,81,NULL),(480,9,927,0,81,NULL),(481,9,112,0,82,NULL),(482,9,115,0,82,NULL),(483,9,116,0,82,NULL),(484,9,530,0,82,NULL),(485,9,927,0,82,NULL),(486,9,112,0,83,NULL),(487,9,115,0,83,NULL),(488,9,116,0,83,NULL),(489,9,530,0,83,NULL),(490,9,927,0,83,NULL),(491,9,112,0,84,NULL),(492,9,115,0,84,NULL),(493,9,116,0,84,NULL),(494,9,530,0,84,NULL),(495,9,927,0,84,NULL),(496,9,112,0,85,NULL),(497,9,115,0,85,NULL),(498,9,116,0,85,NULL),(499,9,530,0,85,NULL),(500,9,927,0,85,NULL),(501,9,112,0,86,NULL),(502,9,115,0,86,NULL),(503,9,116,0,86,NULL),(504,9,530,0,86,NULL),(505,9,927,0,86,NULL),(506,9,112,0,87,NULL),(507,9,115,0,87,NULL),(508,9,116,0,87,NULL),(509,9,530,0,87,NULL),(510,9,927,0,87,NULL),(511,9,112,0,88,NULL),(512,9,115,0,88,NULL),(513,9,116,0,88,NULL),(514,9,530,0,88,NULL),(515,9,927,0,88,NULL),(516,9,112,0,89,NULL),(517,9,115,0,89,NULL),(518,9,116,0,89,NULL),(519,9,530,0,89,NULL),(520,9,927,0,89,NULL),(521,9,112,0,90,NULL),(522,9,115,0,90,NULL),(523,9,116,0,90,NULL),(524,9,530,0,90,NULL),(525,9,927,0,90,NULL),(526,9,112,0,91,NULL),(527,9,115,0,91,NULL),(528,9,116,0,91,NULL),(529,9,530,0,91,NULL),(530,9,927,0,91,NULL),(531,9,112,0,92,NULL),(532,9,115,0,92,NULL),(533,9,116,0,92,NULL),(534,9,530,0,92,NULL),(535,9,927,0,92,NULL),(536,9,112,0,93,NULL),(537,9,115,0,93,NULL),(538,9,116,0,93,NULL),(539,9,530,0,93,NULL),(540,9,927,0,93,NULL),(541,9,112,0,94,NULL),(542,9,115,0,94,NULL),(543,9,116,0,94,NULL),(544,9,530,0,94,NULL),(545,9,927,0,94,NULL),(546,9,112,0,95,NULL),(547,9,115,0,95,NULL),(548,9,116,0,95,NULL),(549,9,530,0,95,NULL),(550,9,927,0,95,NULL),(555,9,112,0,96,NULL),(556,9,115,0,96,NULL),(557,9,116,0,96,NULL),(558,9,530,0,96,NULL),(559,9,927,0,96,NULL),(560,9,112,0,97,NULL),(561,9,115,0,97,NULL),(562,9,116,0,97,NULL),(563,9,530,0,97,NULL),(564,9,927,0,97,NULL),(565,9,112,0,98,NULL),(566,9,115,0,98,NULL),(567,9,116,0,98,NULL),(568,9,530,0,98,NULL),(569,9,927,0,98,NULL),(570,9,112,0,99,NULL),(571,9,115,0,99,NULL),(572,9,116,0,99,NULL),(573,9,530,0,99,NULL),(574,9,927,0,99,NULL),(575,9,112,0,100,NULL),(576,9,115,0,100,NULL),(577,9,116,0,100,NULL),(578,9,530,0,100,NULL),(579,9,927,0,100,NULL),(580,9,112,0,101,NULL),(581,9,115,0,101,NULL),(582,9,116,0,101,NULL),(583,9,530,0,101,NULL),(584,9,927,0,101,NULL),(585,9,112,0,102,NULL),(586,9,115,0,102,NULL),(587,9,116,0,102,NULL),(588,9,530,0,102,NULL),(589,9,927,0,102,NULL),(590,9,112,0,103,NULL),(591,9,115,0,103,NULL),(592,9,116,0,103,NULL),(593,9,530,0,103,NULL),(594,9,927,0,103,NULL),(595,9,112,0,104,NULL),(596,9,115,0,104,NULL),(597,9,116,0,104,NULL),(598,9,530,0,104,NULL),(599,9,927,0,104,NULL),(600,9,112,0,105,NULL),(601,9,115,0,105,NULL),(602,9,116,0,105,NULL),(603,9,530,0,105,NULL),(604,9,927,0,105,NULL),(605,9,112,0,106,NULL),(606,9,115,0,106,NULL),(607,9,116,0,106,NULL),(608,9,530,0,106,NULL),(609,9,927,0,106,NULL),(610,9,112,0,107,NULL),(611,9,115,0,107,NULL),(612,9,116,0,107,NULL),(613,9,530,0,107,NULL),(614,9,927,0,107,NULL),(615,9,112,0,108,NULL),(616,9,115,0,108,NULL),(617,9,116,0,108,NULL),(618,9,530,0,108,NULL),(619,9,927,0,108,NULL),(620,9,112,0,109,NULL),(621,9,115,0,109,NULL),(622,9,116,0,109,NULL),(623,9,530,0,109,NULL),(624,9,927,0,109,NULL),(630,9,112,0,110,NULL),(631,9,115,0,110,NULL),(632,9,116,0,110,NULL),(633,9,530,0,110,NULL),(634,9,927,0,110,NULL),(635,9,112,0,111,NULL),(636,9,115,0,111,NULL),(637,9,116,0,111,NULL),(638,9,530,0,111,NULL),(639,9,927,0,111,NULL),(640,9,112,0,112,NULL),(641,9,115,0,112,NULL),(642,9,116,0,112,NULL),(643,9,530,0,112,NULL),(644,9,927,0,112,NULL),(650,9,112,0,113,NULL),(651,9,115,0,113,NULL),(652,9,116,0,113,NULL),(653,9,530,0,113,NULL),(654,9,927,0,113,NULL),(655,9,112,0,114,NULL),(656,9,115,0,114,NULL),(657,9,116,0,114,NULL),(658,9,530,0,114,NULL),(659,9,927,0,114,NULL),(660,9,112,0,115,NULL),(661,9,115,0,115,NULL),(662,9,116,0,115,NULL),(663,9,530,0,115,NULL),(664,9,927,0,115,NULL),(665,9,112,0,116,NULL),(666,9,115,0,116,NULL),(667,9,116,0,116,NULL),(668,9,530,0,116,NULL),(669,9,927,0,116,NULL),(675,9,112,0,117,NULL),(676,9,115,0,117,NULL),(677,9,116,0,117,NULL),(678,9,530,0,117,NULL),(679,9,927,0,117,NULL),(680,9,112,0,118,NULL),(681,9,115,0,118,NULL),(682,9,116,0,118,NULL),(683,9,530,0,118,NULL),(684,9,927,0,118,NULL),(685,9,112,0,119,NULL),(686,9,115,0,119,NULL),(687,9,116,0,119,NULL),(688,9,530,0,119,NULL),(689,9,927,0,119,NULL),(690,9,112,0,120,NULL),(691,9,115,0,120,NULL),(692,9,116,0,120,NULL),(693,9,530,0,120,NULL),(694,9,927,0,120,NULL),(695,9,112,0,121,NULL),(696,9,115,0,121,NULL),(697,9,116,0,121,NULL),(698,9,530,0,121,NULL),(699,9,927,0,121,NULL),(705,9,112,0,122,NULL),(706,9,115,0,122,NULL),(707,9,116,0,122,NULL),(708,9,530,0,122,NULL),(709,9,927,0,122,NULL),(710,9,112,0,123,NULL),(711,9,115,0,123,NULL),(712,9,116,0,123,NULL),(713,9,530,0,123,NULL),(714,9,927,0,123,NULL),(715,9,112,0,124,NULL),(716,9,115,0,124,NULL),(717,9,116,0,124,NULL),(718,9,530,0,124,NULL),(719,9,927,0,124,NULL),(720,9,112,0,125,NULL),(721,9,115,0,125,NULL),(722,9,116,0,125,NULL),(723,9,530,0,125,NULL),(724,9,927,0,125,NULL),(735,9,112,0,126,NULL),(736,9,115,0,126,NULL),(737,9,116,0,126,NULL),(738,9,530,0,126,NULL),(739,9,927,0,126,NULL),(740,9,112,0,127,NULL),(741,9,115,0,127,NULL),(742,9,116,0,127,NULL),(743,9,530,0,127,NULL),(744,9,927,0,127,NULL),(760,9,112,0,128,NULL),(761,9,115,0,128,NULL),(762,9,116,0,128,NULL),(763,9,530,0,128,NULL),(764,9,927,0,128,NULL),(969,9,112,0,132,NULL),(970,9,115,0,132,NULL),(971,9,116,0,132,NULL),(972,9,530,0,132,'<reference name=\"left\">\r\n<block type=\"cms/block\" name=\"left.permanent.callout\">\r\n<action method=\"setBlockId\"><block_id>cordless_tools_content_left</block_id></action>\r\n</block>\r\n</reference>'),(973,9,927,0,132,NULL),(974,9,112,0,133,NULL),(975,9,115,0,133,NULL),(976,9,116,0,133,NULL),(977,9,530,0,133,NULL),(978,9,927,0,133,NULL),(979,9,112,0,134,NULL),(980,9,115,0,134,NULL),(981,9,116,0,134,NULL),(982,9,530,0,134,NULL),(983,9,927,0,134,NULL),(984,9,112,0,135,NULL),(985,9,115,0,135,NULL),(986,9,116,0,135,NULL),(987,9,530,0,135,NULL),(988,9,927,0,135,NULL),(989,9,112,0,136,NULL),(990,9,115,0,136,NULL),(991,9,116,0,136,NULL),(992,9,530,0,136,NULL),(993,9,927,0,136,NULL),(994,9,112,0,137,NULL),(995,9,115,0,137,NULL),(996,9,116,0,137,NULL),(997,9,530,0,137,NULL),(998,9,927,0,137,NULL),(1071,9,112,0,149,'Laser levels description. '),(1072,9,115,0,149,NULL),(1073,9,116,0,149,NULL),(1074,9,530,0,149,NULL),(1075,9,927,0,149,NULL),(1269,9,112,0,153,NULL),(1270,9,115,0,153,NULL),(1271,9,116,0,153,NULL),(1272,9,530,0,153,NULL),(1273,9,927,0,153,NULL),(1383,9,112,0,154,NULL),(1384,9,115,0,154,NULL),(1385,9,116,0,154,NULL),(1386,9,530,0,154,NULL),(1387,9,927,0,154,NULL),(1388,9,112,0,155,NULL),(1389,9,115,0,155,NULL),(1390,9,116,0,155,NULL),(1391,9,530,0,155,NULL),(1392,9,927,0,155,NULL),(1433,9,112,0,156,NULL),(1434,9,115,0,156,NULL),(1435,9,116,0,156,NULL),(1436,9,530,0,156,NULL),(1437,9,927,0,156,NULL),(1443,9,112,0,158,NULL),(1444,9,115,0,158,NULL),(1445,9,116,0,158,NULL),(1446,9,530,0,158,NULL),(1447,9,927,0,158,NULL),(1448,9,112,0,159,NULL),(1449,9,115,0,159,NULL),(1450,9,116,0,159,NULL),(1451,9,530,0,159,NULL),(1452,9,927,0,159,NULL),(1453,9,112,0,160,NULL),(1454,9,115,0,160,NULL),(1455,9,116,0,160,NULL),(1456,9,530,0,160,NULL),(1457,9,927,0,160,NULL),(1463,9,112,0,162,NULL),(1464,9,115,0,162,NULL),(1465,9,116,0,162,NULL),(1466,9,530,0,162,NULL),(1467,9,927,0,162,NULL),(1468,9,112,0,163,NULL),(1469,9,115,0,163,NULL),(1470,9,116,0,163,NULL),(1471,9,530,0,163,NULL),(1472,9,927,0,163,NULL),(1473,9,112,0,164,NULL),(1474,9,115,0,164,NULL),(1475,9,116,0,164,NULL),(1476,9,530,0,164,NULL),(1477,9,927,0,164,NULL),(1478,9,112,0,165,NULL),(1479,9,115,0,165,NULL),(1480,9,116,0,165,NULL),(1481,9,530,0,165,NULL),(1482,9,927,0,165,NULL),(1488,9,112,0,167,NULL),(1489,9,115,0,167,NULL),(1490,9,116,0,167,NULL),(1491,9,530,0,167,NULL),(1492,9,927,0,167,NULL),(1493,9,112,0,168,NULL),(1494,9,115,0,168,NULL),(1495,9,116,0,168,'Need a Cordless Saw? Kenstoolsupply.com can help. For all your sawing needs, from cordless circular saws to cordless portable bandsaws, we supply an outstanding selection of portable saws.'),(1496,9,530,0,168,NULL),(1497,9,927,0,168,NULL),(1503,9,112,0,169,NULL),(1504,9,115,0,169,NULL),(1505,9,116,0,169,NULL),(1506,9,530,0,169,NULL),(1507,9,927,0,169,NULL),(1508,9,112,0,170,NULL),(1509,9,115,0,170,NULL),(1510,9,116,0,170,NULL),(1511,9,530,0,170,NULL),(1512,9,927,0,170,NULL),(1577,9,112,0,3,NULL),(1578,9,115,0,3,NULL),(1579,9,116,0,3,NULL),(1580,9,530,0,3,NULL),(1581,9,927,0,3,NULL),(1610,9,112,0,171,NULL),(1611,9,115,0,171,NULL),(1612,9,116,0,171,NULL),(1613,9,530,0,171,NULL),(1614,9,927,0,171,NULL),(1615,9,112,0,172,NULL),(1616,9,115,0,172,NULL),(1617,9,116,0,172,NULL),(1618,9,530,0,172,NULL),(1619,9,927,0,172,NULL),(1620,9,112,0,173,NULL),(1621,9,115,0,173,NULL),(1622,9,116,0,173,NULL),(1623,9,530,0,173,NULL),(1624,9,927,0,173,NULL),(1640,9,112,0,174,NULL),(1641,9,115,0,174,NULL),(1642,9,116,0,174,NULL),(1643,9,530,0,174,NULL),(1644,9,927,0,174,NULL),(1650,9,112,0,176,NULL),(1651,9,115,0,176,NULL),(1652,9,116,0,176,NULL),(1653,9,530,0,176,NULL),(1654,9,927,0,176,NULL),(1685,9,112,0,180,NULL),(1686,9,115,0,180,NULL),(1687,9,116,0,180,NULL),(1688,9,530,0,180,NULL),(1689,9,927,0,180,NULL),(1690,9,112,0,181,NULL),(1691,9,115,0,181,NULL),(1692,9,116,0,181,NULL),(1693,9,530,0,181,NULL),(1694,9,927,0,181,NULL),(1700,9,112,0,182,NULL),(1701,9,115,0,182,NULL),(1702,9,116,0,182,NULL),(1703,9,530,0,182,NULL),(1704,9,927,0,182,NULL),(1705,9,112,0,183,NULL),(1706,9,115,0,183,NULL),(1707,9,116,0,183,NULL),(1708,9,530,0,183,NULL),(1709,9,927,0,183,NULL),(1710,9,112,0,184,NULL),(1711,9,115,0,184,NULL),(1712,9,116,0,184,NULL),(1713,9,530,0,184,NULL),(1714,9,927,0,184,NULL),(1725,9,112,0,185,NULL),(1726,9,115,0,185,NULL),(1727,9,116,0,185,NULL),(1728,9,530,0,185,NULL),(1729,9,927,0,185,NULL),(1730,9,112,0,186,NULL),(1731,9,115,0,186,NULL),(1732,9,116,0,186,NULL),(1733,9,530,0,186,NULL),(1734,9,927,0,186,NULL),(1740,9,112,0,187,NULL),(1741,9,115,0,187,NULL),(1742,9,116,0,187,NULL),(1743,9,530,0,187,NULL),(1744,9,927,0,187,NULL),(1745,9,112,0,188,NULL),(1746,9,115,0,188,NULL),(1747,9,116,0,188,NULL),(1748,9,530,0,188,NULL),(1749,9,927,0,188,NULL),(1750,9,112,0,189,NULL),(1751,9,115,0,189,NULL),(1752,9,116,0,189,NULL),(1753,9,530,0,189,NULL),(1754,9,927,0,189,NULL),(1755,9,112,0,190,NULL),(1756,9,115,0,190,NULL),(1757,9,116,0,190,NULL),(1758,9,530,0,190,NULL),(1759,9,927,0,190,NULL),(1760,9,112,0,191,NULL),(1761,9,115,0,191,NULL),(1762,9,116,0,191,NULL),(1763,9,530,0,191,NULL),(1764,9,927,0,191,NULL),(1765,9,112,0,192,NULL),(1766,9,115,0,192,NULL),(1767,9,116,0,192,NULL),(1768,9,530,0,192,NULL),(1769,9,927,0,192,NULL),(1770,9,112,0,193,NULL),(1771,9,115,0,193,NULL),(1772,9,116,0,193,NULL),(1773,9,530,0,193,NULL),(1774,9,927,0,193,NULL),(1775,9,112,0,194,NULL),(1776,9,115,0,194,NULL),(1777,9,116,0,194,NULL),(1778,9,530,0,194,NULL),(1779,9,927,0,194,NULL),(1780,9,112,0,195,NULL),(1781,9,115,0,195,NULL),(1782,9,116,0,195,NULL),(1783,9,530,0,195,NULL),(1784,9,927,0,195,NULL),(1785,9,112,0,196,NULL),(1786,9,115,0,196,NULL),(1787,9,116,0,196,NULL),(1788,9,530,0,196,NULL),(1789,9,927,0,196,NULL),(1790,9,112,0,197,NULL),(1791,9,115,0,197,NULL),(1792,9,116,0,197,NULL),(1793,9,530,0,197,NULL),(1794,9,927,0,197,NULL),(1795,9,112,0,198,NULL),(1796,9,115,0,198,NULL),(1797,9,116,0,198,NULL),(1798,9,530,0,198,NULL),(1799,9,927,0,198,NULL),(1800,9,112,0,199,NULL),(1801,9,115,0,199,NULL),(1802,9,116,0,199,NULL),(1803,9,530,0,199,NULL),(1804,9,927,0,199,NULL),(1805,9,112,0,200,NULL),(1806,9,115,0,200,NULL),(1807,9,116,0,200,NULL),(1808,9,530,0,200,NULL),(1809,9,927,0,200,NULL),(1810,9,112,0,201,NULL),(1811,9,115,0,201,NULL),(1812,9,116,0,201,NULL),(1813,9,530,0,201,NULL),(1814,9,927,0,201,NULL),(1820,9,112,0,202,NULL),(1821,9,115,0,202,NULL),(1822,9,116,0,202,NULL),(1823,9,530,0,202,NULL),(1824,9,927,0,202,NULL),(1825,9,112,0,203,NULL),(1826,9,115,0,203,NULL),(1827,9,116,0,203,NULL),(1828,9,530,0,203,NULL),(1829,9,927,0,203,NULL),(1830,9,112,0,204,NULL),(1831,9,115,0,204,NULL),(1832,9,116,0,204,NULL),(1833,9,530,0,204,NULL),(1834,9,927,0,204,NULL),(1835,9,112,0,205,NULL),(1836,9,115,0,205,NULL),(1837,9,116,0,205,NULL),(1838,9,530,0,205,NULL),(1839,9,927,0,205,NULL),(1840,9,112,0,206,NULL),(1841,9,115,0,206,NULL),(1842,9,116,0,206,NULL),(1843,9,530,0,206,NULL),(1844,9,927,0,206,NULL),(1845,9,112,0,207,NULL),(1846,9,115,0,207,NULL),(1847,9,116,0,207,NULL),(1848,9,530,0,207,NULL),(1849,9,927,0,207,NULL),(1850,9,112,0,208,NULL),(1851,9,115,0,208,NULL),(1852,9,116,0,208,NULL),(1853,9,530,0,208,NULL),(1854,9,927,0,208,NULL),(1855,9,112,0,209,NULL),(1856,9,115,0,209,NULL),(1857,9,116,0,209,NULL),(1858,9,530,0,209,NULL),(1859,9,927,0,209,NULL),(1860,9,112,0,210,NULL),(1861,9,115,0,210,NULL),(1862,9,116,0,210,NULL),(1863,9,530,0,210,NULL),(1864,9,927,0,210,NULL),(1865,9,112,0,211,NULL),(1866,9,115,0,211,NULL),(1867,9,116,0,211,NULL),(1868,9,530,0,211,NULL),(1869,9,927,0,211,NULL),(1870,9,112,0,212,NULL),(1871,9,115,0,212,NULL),(1872,9,116,0,212,NULL),(1873,9,530,0,212,NULL),(1874,9,927,0,212,NULL),(1875,9,112,0,213,NULL),(1876,9,115,0,213,NULL),(1877,9,116,0,213,NULL),(1878,9,530,0,213,NULL),(1879,9,927,0,213,NULL),(1880,9,112,0,214,NULL),(1881,9,115,0,214,NULL),(1882,9,116,0,214,NULL),(1883,9,530,0,214,NULL),(1884,9,927,0,214,NULL),(1885,9,112,0,215,NULL),(1886,9,115,0,215,NULL),(1887,9,116,0,215,NULL),(1888,9,530,0,215,NULL),(1889,9,927,0,215,NULL),(1890,9,112,0,216,NULL),(1891,9,115,0,216,NULL),(1892,9,116,0,216,NULL),(1893,9,530,0,216,NULL),(1894,9,927,0,216,NULL),(1895,9,112,0,217,NULL),(1896,9,115,0,217,NULL),(1897,9,116,0,217,NULL),(1898,9,530,0,217,NULL),(1899,9,927,0,217,NULL),(1900,9,112,0,218,NULL),(1901,9,115,0,218,NULL),(1902,9,116,0,218,NULL),(1903,9,530,0,218,NULL),(1904,9,927,0,218,NULL),(1905,9,112,0,219,NULL),(1906,9,115,0,219,NULL),(1907,9,116,0,219,NULL),(1908,9,530,0,219,NULL),(1909,9,927,0,219,NULL),(1910,9,112,0,220,NULL),(1911,9,115,0,220,NULL),(1912,9,116,0,220,NULL),(1913,9,530,0,220,NULL),(1914,9,927,0,220,NULL),(1915,9,112,0,221,NULL),(1916,9,115,0,221,NULL),(1917,9,116,0,221,NULL),(1918,9,530,0,221,NULL),(1919,9,927,0,221,NULL),(1920,9,112,0,222,NULL),(1921,9,115,0,222,NULL),(1922,9,116,0,222,NULL),(1923,9,530,0,222,NULL),(1924,9,927,0,222,NULL),(1925,9,112,0,223,NULL),(1926,9,115,0,223,NULL),(1927,9,116,0,223,NULL),(1928,9,530,0,223,NULL),(1929,9,927,0,223,NULL),(1930,9,112,0,224,NULL),(1931,9,115,0,224,NULL),(1932,9,116,0,224,NULL),(1933,9,530,0,224,NULL),(1934,9,927,0,224,NULL),(1935,9,112,0,225,NULL),(1936,9,115,0,225,NULL),(1937,9,116,0,225,NULL),(1938,9,530,0,225,NULL),(1939,9,927,0,225,NULL),(2042,9,112,0,226,NULL),(2043,9,115,0,226,NULL),(2044,9,116,0,226,NULL),(2045,9,530,0,226,NULL),(2046,9,927,0,226,NULL),(2070,9,112,0,227,NULL),(2071,9,115,0,227,NULL),(2072,9,116,0,227,NULL),(2073,9,530,0,227,NULL),(2074,9,927,0,227,NULL),(2075,9,112,0,228,NULL),(2076,9,115,0,228,NULL),(2077,9,116,0,228,NULL),(2078,9,530,0,228,NULL),(2079,9,927,0,228,NULL),(2080,9,112,0,229,NULL),(2081,9,115,0,229,NULL),(2082,9,116,0,229,NULL),(2083,9,530,0,229,NULL),(2084,9,927,0,229,NULL),(2085,9,112,0,230,NULL),(2086,9,115,0,230,NULL),(2087,9,116,0,230,NULL),(2088,9,530,0,230,NULL),(2089,9,927,0,230,NULL),(2100,9,112,0,231,NULL),(2101,9,115,0,231,NULL),(2102,9,116,0,231,NULL),(2103,9,530,0,231,NULL),(2104,9,927,0,231,NULL),(2105,9,112,0,232,NULL),(2106,9,115,0,232,NULL),(2107,9,116,0,232,NULL),(2108,9,530,0,232,NULL),(2109,9,927,0,232,NULL),(2115,9,112,0,233,NULL),(2116,9,115,0,233,NULL),(2117,9,116,0,233,NULL),(2118,9,530,0,233,NULL),(2119,9,927,0,233,NULL),(2120,9,112,0,234,NULL),(2121,9,115,0,234,NULL),(2122,9,116,0,234,NULL),(2123,9,530,0,234,NULL),(2124,9,927,0,234,NULL),(2128,9,112,0,235,NULL),(2129,9,115,0,235,NULL),(2130,9,116,0,235,NULL),(2131,9,530,0,235,NULL),(2132,9,927,0,235,NULL);
/*!40000 ALTER TABLE `catalog_category_entity_text` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-22 11:28:03