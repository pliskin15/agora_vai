-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: agora_vai
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `app_serie`
--

DROP TABLE IF EXISTS `app_serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_serie` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `serie` varchar(20) NOT NULL,
  `turno_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_serie_turno_id_78b77c8d_fk_app_turno_id` (`turno_id`),
  CONSTRAINT `app_serie_turno_id_78b77c8d_fk_app_turno_id` FOREIGN KEY (`turno_id`) REFERENCES `app_turno` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_serie`
--

LOCK TABLES `app_serie` WRITE;
/*!40000 ALTER TABLE `app_serie` DISABLE KEYS */;
INSERT INTO `app_serie` VALUES (1,'2 º  Ano EF',1),(2,'5 º  Ano EF',1),(3,'9 º  Ano EF',1),(4,'3 ª Série EM',1),(5,'2 º  Ano EF',2),(6,'5 º  Ano EF',2),(7,'9 º  Ano EF',2),(8,'3 ª Série EM',2),(9,'2 º  Ano EF',3),(10,'5 º  Ano EF',3),(11,'9 º  Ano EF',3),(12,'3 ª Série EM',3),(13,'2 º  Ano EF',4),(14,'5 º  Ano EF',4),(15,'9 º  Ano EF',4),(16,'3 ª Série EM',4),(17,'2 º  Ano EF',5),(18,'5 º  Ano EF',5),(19,'9 º  Ano EF',5),(20,'3 ª Série EM',5),(21,'2 º  Ano EF',6),(22,'5 º  Ano EF',6),(23,'9 º  Ano EF',6),(24,'3 ª Série EM',6),(25,'2 º  Ano EF',7),(26,'5 º  Ano EF',7),(27,'9 º  Ano EF',7),(28,'3 ª Série EM',7),(29,'2 º  Ano EF',8),(30,'5 º  Ano EF',8),(31,'9 º  Ano EF',8),(32,'3 ª Série EM',8),(33,'2 º  Ano EF',9),(34,'5 º  Ano EF',9),(35,'9 º  Ano EF',9),(36,'3 ª Série EM',9),(37,'2 º  Ano EF',10),(38,'5 º  Ano EF',10),(39,'9 º  Ano EF',10),(40,'3 ª Série EM',10);
/*!40000 ALTER TABLE `app_serie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-31 10:43:24
