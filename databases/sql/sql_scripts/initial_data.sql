-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: pdf_me
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `limits`
--

DROP TABLE IF EXISTS `limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `limits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `limit` int NOT NULL DEFAULT '10',
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_fk_idx` (`user_id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limits`
--

LOCK TABLES `limits` WRITE;
/*!40000 ALTER TABLE `limits` DISABLE KEYS */;
INSERT INTO `limits` VALUES (1,10,'2021-06-15 20:44:05',1);
/*!40000 ALTER TABLE `limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdfs`
--

DROP TABLE IF EXISTS `pdfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pdfs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(512) NOT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_fk_idx` (`user_id`),
  CONSTRAINT `` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdfs`
--

LOCK TABLES `pdfs` WRITE;
/*!40000 ALTER TABLE `pdfs` DISABLE KEYS */;
INSERT INTO `pdfs` VALUES (1,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623609321729.pdf',NULL,1),(2,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623609768263.pdf',NULL,1),(3,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623609904199.pdf','2021-06-13 18:45:04',1),(4,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790350116.pdf','2021-06-15 20:52:30',1),(5,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790365224.pdf','2021-06-15 20:52:45',1),(6,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790402002.pdf','2021-06-15 20:53:22',1),(7,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790453477.pdf','2021-06-15 20:54:13',1),(8,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790465138.pdf','2021-06-15 20:54:25',1),(9,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790471741.pdf','2021-06-15 20:54:31',1),(10,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790473451.pdf','2021-06-15 20:54:33',1),(11,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790475172.pdf','2021-06-15 20:54:35',1),(12,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790476870.pdf','2021-06-15 20:54:36',1),(13,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790478615.pdf','2021-06-15 20:54:38',1),(14,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790480322.pdf','2021-06-15 20:54:40',1),(15,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790521978.pdf','2021-06-15 20:55:21',1),(16,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790523847.pdf','2021-06-15 20:55:23',1),(17,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790525896.pdf','2021-06-15 20:55:25',1),(18,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790533814.pdf','2021-06-15 20:55:33',1),(19,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790542952.pdf','2021-06-15 20:55:42',1),(20,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790551775.pdf','2021-06-15 20:55:51',1),(21,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790594140.pdf','2021-06-15 20:56:34',1),(22,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623790622302.pdf','2021-06-15 20:57:02',1),(23,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623860083108.pdf','2021-06-16 16:14:43',1),(24,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623868617262.pdf','2021-06-16 18:36:57',1),(25,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623868732719.pdf','2021-06-16 18:38:52',1),(26,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623869026910.pdf','2021-06-16 18:43:46',1),(27,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623869215852.pdf','2021-06-16 18:46:55',1),(28,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623869396040.pdf','2021-06-16 18:49:56',1),(29,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623869678292.pdf','2021-06-16 18:54:38',1),(30,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623870120027.pdf','2021-06-16 19:02:00',1),(31,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623870809533.pdf','2021-06-16 19:13:29',1),(32,'dc49fdc7-cc6a-11eb-8ade-0242ac1200021623870848062.pdf','2021-06-16 19:14:08',1);
/*!40000 ALTER TABLE `pdfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `private_keys`
--

DROP TABLE IF EXISTS `private_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `private_keys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(2048) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_keys`
--

LOCK TABLES `private_keys` WRITE;
/*!40000 ALTER TABLE `private_keys` DISABLE KEYS */;
INSERT INTO `private_keys` VALUES (1,'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',1);
/*!40000 ALTER TABLE `private_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template` text NOT NULL,
  `user_id` int NOT NULL,
  `uuid` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'<!DOCTYPE html><html lang=\"en\"><head> <meta charset=\"UTF-8\"> <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"> <title>Document</title></head><body>{{test}}</body></html>',1,'1a24257a-cc6b-11eb-8ade-0242ac120002'),(2,'<!DOCTYPE html><html lang=\"en\"><head> <meta charset=\"UTF-8\"> <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"> <title>Document</title> <style>.page{page-break-before: always;}</style></head><body> <div class=\"page\"> 1{{test}}</div><div class=\"page\"> 2 </div><div class=\"page\"> 3 </div><div class=\"page\"> 4 </div></body></html>',1,'a3e8ec3f-cebd-11eb-a1aa-0242ac120002'),(3,'<div style=\"width: 100%; font-size: 14px\"><span class=\"date\"></span>    Page <span class=\"pageNumber\"></span> of <span class=\"totalPages\"></span></div>',1,'a39a4ea7-ced1-11eb-a1aa-0242ac120002');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `before_insert_templates` BEFORE INSERT ON `templates` FOR EACH ROW SET new.uuid = uuid() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dc49fdc7-cc6a-11eb-8ade-0242ac120002');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `before_insert_users` BEFORE INSERT ON `users` FOR EACH ROW SET new.uuid = uuid() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'pdf_me'
--

--
-- Dumping routines for database 'pdf_me'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-16 21:27:33
