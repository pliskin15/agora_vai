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
-- Table structure for table `app_coordenadoria`
--

DROP TABLE IF EXISTS `app_coordenadoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_coordenadoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coordenadoria` varchar(50) NOT NULL,
  `jurisdicao_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_coordenadoria_jurisdicao_id_7c8ca8ec_fk_app_jurisdicao_id` (`jurisdicao_id`),
  CONSTRAINT `app_coordenadoria_jurisdicao_id_7c8ca8ec_fk_app_jurisdicao_id` FOREIGN KEY (`jurisdicao_id`) REFERENCES `app_jurisdicao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_coordenadoria`
--

LOCK TABLES `app_coordenadoria` WRITE;
/*!40000 ALTER TABLE `app_coordenadoria` DISABLE KEYS */;
INSERT INTO `app_coordenadoria` VALUES (1,'CDE 01',1),(2,'CDE 02',1),(3,'CDE 03',1),(4,'Alvarães',2),(5,'Amaturá',2),(6,'Anamã',2);
/*!40000 ALTER TABLE `app_coordenadoria` ENABLE KEYS */;
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
