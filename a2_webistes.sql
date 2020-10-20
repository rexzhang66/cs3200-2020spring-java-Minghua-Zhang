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
-- Table structure for table `webistes`
--

DROP TABLE IF EXISTS `webistes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webistes` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `visits` int DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `owner` int DEFAULT NULL,
  `editor` int DEFAULT NULL,
  `admin` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_developer_idx` (`owner`),
  KEY `editor_developer_idx` (`editor`),
  KEY `admin_developer_idx` (`admin`),
  CONSTRAINT `admin_developer` FOREIGN KEY (`admin`) REFERENCES `developers` (`id`),
  CONSTRAINT `editor_developer` FOREIGN KEY (`editor`) REFERENCES `developers` (`id`),
  CONSTRAINT `owner_developer` FOREIGN KEY (`owner`) REFERENCES `developers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webistes`
--

LOCK TABLES `webistes` WRITE;
/*!40000 ALTER TABLE `webistes` DISABLE KEYS */;
INSERT INTO `webistes` VALUES (123,'Facebook',NULL,NULL,1234234,'an online social media and social networking service',12,NULL,NULL),(234,'Twitter',NULL,NULL,4321543,'an online news and social networking service',23,NULL,NULL),(345,'Wikipedia',NULL,NULL,3456654,'a free online encyclopedia',34,NULL,NULL),(456,'CNN',NULL,NULL,6543345,'an American basic cable and satellite television news channel',12,NULL,NULL),(567,'CNET',NULL,NULL,5433455,'an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics',23,NULL,NULL),(678,'Gizmodo',NULL,NULL,4322345,'a design, technology, science and science fiction website that also writes articles on politics',34,NULL,NULL);
/*!40000 ALTER TABLE `webistes` ENABLE KEYS */;
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
