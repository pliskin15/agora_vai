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
-- Table structure for table `app_materia`
--

DROP TABLE IF EXISTS `app_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_materia` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `materia` varchar(25) NOT NULL,
  `serie_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_materia_serie_id_c5e0324e_fk_app_serie_id` (`serie_id`),
  CONSTRAINT `app_materia_serie_id_c5e0324e_fk_app_serie_id` FOREIGN KEY (`serie_id`) REFERENCES `app_serie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_materia`
--

LOCK TABLES `app_materia` WRITE;
/*!40000 ALTER TABLE `app_materia` DISABLE KEYS */;
INSERT INTO `app_materia` VALUES (1,'Matemática',1),(2,'Português',1),(3,'Matemática',2),(4,'Português',2),(5,'Matemática',3),(6,'Português',3),(7,'Matemática',4),(8,'Português',4),(9,'Matemática',5),(10,'Português',5),(11,'Matemática',6),(12,'Português',6),(13,'Matemática',7),(14,'Português',7),(15,'Matemática',8),(16,'Português',8),(17,'Matemática',9),(18,'Português',9),(19,'Matemática',10),(20,'Português',10),(21,'Matemática',11),(22,'Português',11),(23,'Matemática',12),(24,'Português',12),(25,'Matemática',13),(26,'Português',13),(27,'Matemática',14),(28,'Português',14),(29,'Matemática',15),(30,'Português',15),(31,'Matemática',16),(32,'Português',16),(33,'Matemática',17),(34,'Português',17),(35,'Matemática',18),(36,'Português',18),(37,'Matemática',19),(38,'Português',19),(39,'Matemática',20),(40,'Português',20),(41,'Matemática',21),(42,'Português',21),(43,'Matemática',22),(44,'Português',22),(45,'Matemática',23),(46,'Português',23),(47,'Matemática',24),(48,'Português',24),(49,'Matemática',25),(50,'Português',25),(51,'Matemática',26),(52,'Português',26),(53,'Matemática',27),(54,'Português',27),(55,'Matemática',28),(56,'Português',28),(57,'Matemática',29),(58,'Português',29),(59,'Matemática',30),(60,'Português',30),(61,'Matemática',31),(62,'Português',31),(63,'Matemática',32),(64,'Português',32),(65,'Matemática',33),(66,'Português',33),(67,'Matemática',34),(68,'Português',34),(69,'Matemática',35),(70,'Português',35),(71,'Matemática',36),(72,'Português',36),(73,'Matemática',37),(74,'Português',37),(75,'Matemática',38),(76,'Português',38),(77,'Matemática',39),(78,'Português',39),(79,'Matemática',40),(80,'Português',40);
/*!40000 ALTER TABLE `app_materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-31 10:43:26
