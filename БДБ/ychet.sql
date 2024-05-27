-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ychet
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Temporary view structure for view `multitable`
--

DROP TABLE IF EXISTS `multitable`;
/*!50001 DROP VIEW IF EXISTS `multitable`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `multitable` AS SELECT 
 1 AS `idSpravka`,
 1 AS `nameDolsh`,
 1 AS `NameOtdel`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `people` VALUES (1,'Вдовкин Вадим Алексеевич','2016-06-20','+79177055647','Йошкар-Ола'),(2,'Васечкин Человек Владимирович','2012-03-20','+79177896442','Йошкар-Ола'),(3,'Иванов Олег Германович','2002-06-20','+7XXXXXXXXXX','Москва');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `spr`
--

DROP TABLE IF EXISTS `spr`;
/*!50001 DROP VIEW IF EXISTS `spr`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `spr` AS SELECT 
 1 AS `idOtdel`,
 1 AS `Кол_во`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `tabel time` VALUES (1,'2003-05-20',1,'Работает'),(2,'2005-06-20',2,'Не работает'),(3,'2002-08-20',3,'В отпуске');
/*!40000 ALTER TABLE `tabel time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `должности`
--

DROP TABLE IF EXISTS `должности`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `должности` (
  `idDolshnost` int unsigned NOT NULL,
  `nameDolsh` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idDolshnost`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `должности`
--

LOCK TABLES `должности` WRITE;
/*!40000 ALTER TABLE `должности` DISABLE KEYS */;
INSERT INTO `должности` VALUES (1,'Продавец'),(2,'Пиарщик'),(3,'Юрист');
/*!40000 ALTER TABLE `должности` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `отдел`
--

DROP TABLE IF EXISTS `отдел`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `отдел` (
  `idOtdel` int unsigned NOT NULL,
  `NameOtdel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idOtdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `отдел`
--

LOCK TABLES `отдел` WRITE;
/*!40000 ALTER TABLE `отдел` DISABLE KEYS */;
INSERT INTO `отдел` VALUES (1,'Маркетинг'),(2,'Продвижение'),(3,'Юристы');
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
  CONSTRAINT `fk_список работающих_справочник1` FOREIGN KEY (`Vakancia`) REFERENCES `справочник` (`idSpravka`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `список работающих`
--

LOCK TABLES `список работающих` WRITE;
/*!40000 ALTER TABLE `список работающих` DISABLE KEYS */;
INSERT INTO `список работающих` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `список работающих` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `справочник`
--

DROP TABLE IF EXISTS `справочник`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `справочник` (
  `idSpravka` int unsigned NOT NULL,
  `idDolshnost` int unsigned DEFAULT NULL,
  `idOtdel` int unsigned DEFAULT NULL,
  `amountVakansii` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idSpravka`),
  KEY `fk_справочник_отдел_idx` (`idOtdel`),
  KEY `fk_справочник_должности1_idx` (`idDolshnost`),
  CONSTRAINT `fk_справочник_должности1` FOREIGN KEY (`idDolshnost`) REFERENCES `должности` (`idDolshnost`),
  CONSTRAINT `fk_справочник_отдел` FOREIGN KEY (`idOtdel`) REFERENCES `отдел` (`idOtdel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `справочник`
--

LOCK TABLES `справочник` WRITE;
/*!40000 ALTER TABLE `справочник` DISABLE KEYS */;
INSERT INTO `справочник` VALUES (1,1,1,3),(2,2,2,2),(3,3,3,4);
/*!40000 ALTER TABLE `справочник` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `multitable`
--

/*!50001 DROP VIEW IF EXISTS `multitable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Vadim`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `multitable` AS select `справочник`.`idSpravka` AS `idSpravka`,`должности`.`nameDolsh` AS `nameDolsh`,`отдел`.`NameOtdel` AS `NameOtdel` from ((`справочник` join `должности` on((`справочник`.`idDolshnost` = `должности`.`idDolshnost`))) join `отдел` on((`справочник`.`idOtdel` = `отдел`.`idOtdel`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `spr`
--

/*!50001 DROP VIEW IF EXISTS `spr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Vadim`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `spr` AS select `справочник`.`idOtdel` AS `idOtdel`,count(`справочник`.`amountVakansii`) AS `Кол_во` from `справочник` group by `справочник`.`idOtdel` having (`Кол_во` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27 16:51:40
