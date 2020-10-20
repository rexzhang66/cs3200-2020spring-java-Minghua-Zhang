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
-- Table structure for table `website_roles`
--

DROP TABLE IF EXISTS `website_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(45) DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webiste_role_enumeration_idx` (`role`),
  KEY `developer_website_role_idx` (`developer_id`),
  KEY `developer_role_idx` (`developer_id`),
  KEY `websie_role_idx` (`website_id`),
  CONSTRAINT `developer_role` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  CONSTRAINT `webiste_role_enumeration` FOREIGN KEY (`role`) REFERENCES `roles` (`role`) ON UPDATE CASCADE,
  CONSTRAINT `websie_role` FOREIGN KEY (`website_id`) REFERENCES `webistes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_roles`
--

LOCK TABLES `website_roles` WRITE;
/*!40000 ALTER TABLE `website_roles` DISABLE KEYS */;
INSERT INTO `website_roles` VALUES (1,'admin',123,34),(2,'admin',234,12),(3,'admin',345,23),(4,'admin',456,34),(5,'admin',567,12),(6,'admin',678,23),(7,'editor',123,23),(8,'editor',234,34),(9,'editor',345,12),(10,'editor',456,23),(11,'editor',567,34),(12,'editor',678,12),(13,'owner',123,12),(14,'owner',234,23),(15,'owner',345,34),(16,'owner',456,12),(17,'owner',567,23),(18,'owner',678,34);
/*!40000 ALTER TABLE `website_roles` ENABLE KEYS */;
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
