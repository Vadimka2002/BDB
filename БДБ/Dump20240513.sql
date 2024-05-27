-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ychet
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id people` int unsigned NOT NULL,
  `FIO` varchar(100) DEFAULT NULL,
  `Year` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `Home` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id people`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabel time`
--

DROP TABLE IF EXISTS `tabel time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabel time` (
  `id tabel` int unsigned NOT NULL,
  `date` date DEFAULT NULL,
  `id worker` int unsigned DEFAULT NULL,
  `Занятность` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id tabel`),
  KEY `fk_tabel time_список работающих1_idx` (`id worker`),
  CONSTRAINT `fk_tabel time_список работающих1` FOREIGN KEY (`id worker`) REFERENCES `список работающих` (`ID worker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabel time`
--

LOCK TABLES `tabel time` WRITE;
/*!40000 ALTER TABLE `tabel time` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabel time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `должности`
--

DROP TABLE IF EXISTS `должности`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `должности` (
  `id dolshnost` int unsigned NOT NULL,
  `name dolsh` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id dolshnost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `должности`
--

LOCK TABLES `должности` WRITE;
/*!40000 ALTER TABLE `должности` DISABLE KEYS */;
/*!40000 ALTER TABLE `должности` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `отдел`
--

DROP TABLE IF EXISTS `отдел`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `отдел` (
  `id otdel` int unsigned NOT NULL,
  `Name otdel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id otdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `отдел`
--

LOCK TABLES `отдел` WRITE;
/*!40000 ALTER TABLE `отдел` DISABLE KEYS */;
/*!40000 ALTER TABLE `отдел` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `список работающих`
--

DROP TABLE IF EXISTS `список работающих`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `список работающих` (
  `ID worker` int unsigned NOT NULL,
  `Vakancia` int unsigned DEFAULT NULL,
  `ID people` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID worker`),
  KEY `fk_список работающих_справочник1_idx` (`Vakancia`),
  KEY `fk_список работающих_people1_idx` (`ID people`),
  CONSTRAINT `fk_список работающих_people1` FOREIGN KEY (`ID people`) REFERENCES `people` (`id people`),
  CONSTRAINT `fk_список работающих_справочник1` FOREIGN KEY (`Vakancia`) REFERENCES `справочник` (`id spravka`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `список работающих`
--

LOCK TABLES `список работающих` WRITE;
/*!40000 ALTER TABLE `список работающих` DISABLE KEYS */;
/*!40000 ALTER TABLE `список работающих` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `справочник`
--

DROP TABLE IF EXISTS `справочник`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `справочник` (
  `id spravka` int unsigned NOT NULL,
  `id dolshnost` int unsigned DEFAULT NULL,
  `id otdel` int unsigned DEFAULT NULL,
  `amount vakansii` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id spravka`),
  KEY `fk_справочник_отдел_idx` (`id otdel`),
  KEY `fk_справочник_должности1_idx` (`id dolshnost`),
  CONSTRAINT `fk_справочник_должности1` FOREIGN KEY (`id dolshnost`) REFERENCES `должности` (`id dolshnost`),
  CONSTRAINT `fk_справочник_отдел` FOREIGN KEY (`id otdel`) REFERENCES `отдел` (`id otdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `справочник`
--

LOCK TABLES `справочник` WRITE;
/*!40000 ALTER TABLE `справочник` DISABLE KEYS */;
/*!40000 ALTER TABLE `справочник` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-13 11:57:49
