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
-- Table structure for table `app_escola`
--

DROP TABLE IF EXISTS `app_escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_escola` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `escola` varchar(100) NOT NULL,
  `coordenadoria_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_escola_coordenadoria_id_100488d7_fk_app_coordenadoria_id` (`coordenadoria_id`),
  CONSTRAINT `app_escola_coordenadoria_id_100488d7_fk_app_coordenadoria_id` FOREIGN KEY (`coordenadoria_id`) REFERENCES `app_coordenadoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_escola`
--

LOCK TABLES `app_escola` WRITE;
/*!40000 ALTER TABLE `app_escola` DISABLE KEYS */;
INSERT INTO `app_escola` VALUES (1,'EETI Antonio Teles de Souza',1),(2,'EETI Hermenegildo de Campos',1),(3,'Ceja Profa. Jacira Caboclo',1),(4,'EE Almirante Ernesto Mello Baptista',2),(5,'EE Estelita Tapajos',2),(6,'EETI Machado de Assis',2),(7,'EE Solon de Lucena',3),(8,'EE Vicente Telles',3),(9,'EE Maria da Luz Calderaro',3),(10,'EE Prof. Gilberto Mestrinho',4),(11,'EE Prof. Johannes Petrus',4),(12,'EE Senador Fabio Lucena',4),(13,'EE Amatura',5),(14,'EE oaquim Saldanha Filho Tchaiareecu',5),(15,'EE Duque de Caxias',6),(16,'EE Jesuina Regis',6),(17,'EE Maria Nogueira Marques',6);
/*!40000 ALTER TABLE `app_escola` ENABLE KEYS */;
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
