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
-- Table structure for table `page_roles`
--

DROP TABLE IF EXISTS `page_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_role _idx` (`role`),
  KEY `page_id_idx` (`page_id`),
  KEY `developer_id_idx` (`developer_id`),
  KEY `developer_i_idx` (`developer_id`),
  KEY `page_i_idx` (`page_id`),
  KEY `developer_idx` (`developer_id`),
  KEY `page_idx` (`page_id`),
  CONSTRAINT `developer_page_roles` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `page_page_roles` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `roles ` FOREIGN KEY (`role`) REFERENCES `roles` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_roles`
--

LOCK TABLES `page_roles` WRITE;
/*!40000 ALTER TABLE `page_roles` DISABLE KEYS */;
INSERT INTO `page_roles` VALUES (1,'editor',12,123),(2,'editor',23,234),(3,'editor',34,345),(4,'editor',12,456),(5,'editor',23,567),(6,'reviewer',23,123),(7,'reviewer',34,234),(8,'reviewer',12,345),(9,'reviewer',23,456),(10,'reviewer',34,567),(11,'writer',34,123),(12,'writer',12,234),(13,'writer',23,345),(14,'writer',34,456),(15,'writer',12,567);
/*!40000 ALTER TABLE `page_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-20 22:42:30
