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
-- Table structure for table `app_resposta`
--

DROP TABLE IF EXISTS `app_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_resposta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `resposta` tinyint(1) NOT NULL,
  `pergunta_id` bigint NOT NULL,
  `professor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_resposta_pergunta_id_8a2e3b0a_fk_app_pergunta_id` (`pergunta_id`),
  KEY `app_resposta_professor_id_03f92601_fk_app_professor_id` (`professor_id`),
  CONSTRAINT `app_resposta_pergunta_id_8a2e3b0a_fk_app_pergunta_id` FOREIGN KEY (`pergunta_id`) REFERENCES `app_pergunta` (`id`),
  CONSTRAINT `app_resposta_professor_id_03f92601_fk_app_professor_id` FOREIGN KEY (`professor_id`) REFERENCES `app_professor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_resposta`
--

LOCK TABLES `app_resposta` WRITE;
/*!40000 ALTER TABLE `app_resposta` DISABLE KEYS */;
INSERT INTO `app_resposta` VALUES (9,1,5,33),(10,1,5,34),(11,1,5,35),(12,0,6,40),(13,1,1,41),(14,0,2,41),(15,1,3,41),(16,0,4,41),(17,1,5,41),(18,0,6,41),(19,1,7,42),(20,1,8,42),(21,1,9,42),(22,1,10,42),(23,1,11,42),(24,1,12,42),(25,1,13,42),(26,1,14,42),(27,1,15,42),(28,0,16,42),(29,1,7,51),(30,0,8,51),(31,1,9,51),(32,0,10,51),(33,1,11,51),(34,1,12,51),(35,1,13,51),(36,0,14,51),(37,1,15,51),(38,0,16,51),(39,1,1,52),(40,0,2,52),(41,0,3,52),(42,1,4,52),(43,1,5,52),(44,0,6,52),(45,1,1,53),(46,0,2,53),(47,1,3,53),(48,1,4,53),(49,0,5,53),(50,0,6,53),(51,1,7,54),(52,0,8,54),(53,0,9,54),(54,1,10,54),(55,0,11,54),(56,1,12,54),(57,0,13,54),(58,1,14,54),(59,1,15,54),(60,0,16,54);
/*!40000 ALTER TABLE `app_resposta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-31 10:43:25
