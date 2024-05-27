-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lab3
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
-- Table structure for table `cтраны`
--

DROP TABLE IF EXISTS `cтраны`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cтраны` (
  `Название` varchar(200) NOT NULL,
  `Столица` varchar(200) DEFAULT NULL,
  `Площадь` int DEFAULT NULL,
  `Население` int DEFAULT NULL,
  `Континент` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Название`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cтраны`
--

LOCK TABLES `cтраны` WRITE;
/*!40000 ALTER TABLE `cтраны` DISABLE KEYS */;
INSERT INTO `cтраны` VALUES ('Австрия','Вена',83858,8741753,'Европа'),('Азербайджан','Баку',86600,9705600,'Азия'),('Албания','Тирана',28748,2866026,'Европа'),('Алжир','Алжир',238140,39813722,'Африка'),('Ангола','Луанда',1246700,25831000,'Африка'),('Аргентина','Буэнос-Айрес',2766890,43847000,'Южная Америка'),('Афганистан','Кабул',647500,29822848,'Азия'),('Бангладеш','Дакка',144000,160221000,'Азия'),('Бахрейн','Манама',701,1397000,'Азия'),('Белиз','Бельмопан',22966,377968,'Северная Америка'),('Белоруссия','Минск',207595,9498400,'Европа'),('Бельгия','Брюссель',30528,11250585,'Европа'),('Бенин','Порто-Ново',112620,11167000,'Африка'),('Болгария','София',110910,7153784,'Европа'),('Боливия','Сукре',1098580,10985059,'Южная Америка'),('Ботсвана','Габороне',600370,2209208,'Африка'),('Бразилия','Бразилиа',8511965,206081432,'Южная Америка'),('Буркина-Фасо','Уагадугу',274200,19034397,'Африка'),('Бутан','Тхимпху',47000,784000,'Азия'),('Великобритания','Лондон',244820,65341183,'Европа'),('Венгрия','Будапешт',93030,9830485,'Европа'),('Венесуэла','Каракас',912050,31028637,'Южная Америка'),('Восточный Тимор','Дили',14874,1167242,'Азия'),('Вьетнам','Ханой',329560,91713300,'Азия');
/*!40000 ALTER TABLE `cтраны` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `гимназисты`
--

DROP TABLE IF EXISTS `гимназисты`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `гимназисты` (
  `ID` int NOT NULL,
  `Фамилия` varchar(50) NOT NULL,
  `Предмет` varchar(50) NOT NULL,
  `Школа` varchar(50) NOT NULL,
  `Баллы` float DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `гимназисты_chk_1` CHECK (((`Баллы` >= 0) and (`Баллы` <= 100)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `гимназисты`
--

LOCK TABLES `гимназисты` WRITE;
/*!40000 ALTER TABLE `гимназисты` DISABLE KEYS */;
/*!40000 ALTER TABLE `гимназисты` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `животные_вдовкин`
--

DROP TABLE IF EXISTS `животные_вдовкин`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `животные_вдовкин` (
  `ID` int NOT NULL,
  `Отряд` varchar(100) DEFAULT 'Хищные',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `животные_вдовкин`
--

LOCK TABLES `животные_вдовкин` WRITE;
/*!40000 ALTER TABLE `животные_вдовкин` DISABLE KEYS */;
/*!40000 ALTER TABLE `животные_вдовкин` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `страны_вдовкин`
--

DROP TABLE IF EXISTS `страны_вдовкин`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `страны_вдовкин` (
  `Страна` varchar(100) NOT NULL,
  `Столица` varchar(100) DEFAULT NULL,
  `Часть_света` varchar(100) DEFAULT NULL,
  `Население` int DEFAULT NULL,
  `Площадь` int DEFAULT NULL,
  `Тип_управления` int DEFAULT NULL,
  PRIMARY KEY (`Страна`),
  CONSTRAINT `страны_вдовкин_chk_1` CHECK ((`Тип_управления` < 6))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `страны_вдовкин`
--

LOCK TABLES `страны_вдовкин` WRITE;
/*!40000 ALTER TABLE `страны_вдовкин` DISABLE KEYS */;
/*!40000 ALTER TABLE `страны_вдовкин` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `управление_вдовкин`
--

DROP TABLE IF EXISTS `управление_вдовкин`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `управление_вдовкин` (
  `ID` int NOT NULL,
  `Вид` varchar(20) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `управление_вдовкин`
--

LOCK TABLES `управление_вдовкин` WRITE;
/*!40000 ALTER TABLE `управление_вдовкин` DISABLE KEYS */;
/*!40000 ALTER TABLE `управление_вдовкин` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ученики`
--

DROP TABLE IF EXISTS `ученики`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ученики` (
  `ID` int NOT NULL,
  `Фамилия` varchar(50) NOT NULL,
  `Предмет` varchar(50) NOT NULL,
  `Школа` varchar(50) NOT NULL,
  `Баллы` float DEFAULT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `ученики_chk_1` CHECK (((`Баллы` >= 0) and (`Баллы` <= 100)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ученики`
--

LOCK TABLES `ученики` WRITE;
/*!40000 ALTER TABLE `ученики` DISABLE KEYS */;
INSERT INTO `ученики` VALUES (1,'Иванова','Математика','Лицей',98.5),(2,'Петров','Физика','Лицей',99),(3,'Сидоров','Математика','Лицей',88),(4,'Полухина','Физика','Гимназия',78),(5,'Матвеева','Химия','Лицей',92),(6,'Касимов','Химия','Гимназия',68),(7,'Нурулин','Математика','Гимназия',81),(8,'Авдеев','Физика','Лицей',87),(9,'Никитина','Химия','Лицей',94),(10,'Барышева','Химия','Лицей',88),(12,'Никишина','Химия','Лицей',77),(13,'Андреев','Математика','Школа№18',81),(14,'Маркин','Физика','Гимназия',96);
/*!40000 ALTER TABLE `ученики` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `цветы_вдовкин`
--

DROP TABLE IF EXISTS `цветы_вдовкин`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `цветы_вдовкин` (
  `ID` int NOT NULL,
  `Класс` varchar(100) DEFAULT 'Двудольные',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `цветы_вдовкин`
--

LOCK TABLES `цветы_вдовкин` WRITE;
/*!40000 ALTER TABLE `цветы_вдовкин` DISABLE KEYS */;
/*!40000 ALTER TABLE `цветы_вдовкин` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-27 16:52:15
