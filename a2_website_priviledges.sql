-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: a2
-- ------------------------------------------------------
-- Server version	8.0.21

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

--
-- Table structure for table `website_priviledges`
--

DROP TABLE IF EXISTS `website_priviledges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_priviledges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `priviledge` varchar(45) DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `website_priviledge_idx` (`priviledge`),
  KEY `website_id_idx` (`website_id`),
  KEY `developer_id_idx` (`developer_id`),
  CONSTRAINT `developer_id` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `website_id` FOREIGN KEY (`website_id`) REFERENCES `webistes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `website_priviledge` FOREIGN KEY (`priviledge`) REFERENCES `priviledges` (`priviledge`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_priviledges`
--

LOCK TABLES `website_priviledges` WRITE;
/*!40000 ALTER TABLE `website_priviledges` DISABLE KEYS */;
INSERT INTO `website_priviledges` VALUES (277,'create',34,123),(278,'update',34,123),(279,'delete',34,123),(280,'read',34,123),(281,'create',12,234),(282,'update',12,234),(283,'delete',12,234),(284,'read',12,234),(285,'create',23,345),(286,'update',23,345),(287,'delete',23,345),(288,'read',23,345),(289,'create',34,456),(290,'update',34,456),(291,'delete',34,456),(292,'read',34,456),(293,'create',12,567),(294,'update',12,567),(295,'delete',12,567),(296,'read',12,567),(297,'create',23,678),(298,'update',23,678),(299,'delete',23,678),(300,'read',23,678),(301,'read',23,123),(302,'update',23,123),(303,'read',34,234),(304,'update',34,234),(305,'read',12,345),(306,'update',12,345),(307,'read',23,456),(308,'update',23,456),(309,'read',34,567),(310,'update',34,567),(311,'read',12,678),(312,'update',12,678),(313,'create',12,123),(314,'update',12,123),(315,'delete',12,123),(316,'read',12,123),(317,'create',23,234),(318,'update',23,234),(319,'delete',23,234),(320,'read',23,234),(321,'create',34,345),(322,'update',34,345),(323,'delete',34,345),(324,'read',34,345),(325,'create',12,456),(326,'update',12,456),(327,'delete',12,456),(328,'read',12,456),(329,'create',23,567),(330,'update',23,567),(331,'delete',23,567),(332,'read',23,567),(333,'create',34,678),(334,'update',34,678),(335,'delete',34,678),(336,'read',34,678);
/*!40000 ALTER TABLE `website_priviledges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-20 22:42:29
