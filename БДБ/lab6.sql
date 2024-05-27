-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lab6
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
-- Temporary view structure for view `test`
--

DROP TABLE IF EXISTS `test`;
/*!50001 DROP VIEW IF EXISTS `test`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `test` AS SELECT 
 1 AS `Таб_номер`,
 1 AS `Шифр`,
 1 AS `Фамилия`,
 1 AS `Должность`,
 1 AS `Зарплата`,
 1 AS `Шеф`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `дисциплина`
--

DROP TABLE IF EXISTS `дисциплина`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `дисциплина` (
  `Код` int NOT NULL,
  `Объем` int DEFAULT NULL,
  `Название` varchar(100) DEFAULT NULL,
  `Исполнитель` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Код`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `дисциплина`
--

LOCK TABLES `дисциплина` WRITE;
/*!40000 ALTER TABLE `дисциплина` DISABLE KEYS */;
INSERT INTO `дисциплина` VALUES (101,320,'Математика','вм'),(102,160,'Информатика','пи'),(103,160,'Физика','оф'),(202,120,'Базы данных','ис'),(204,160,'Электроника','эф'),(205,80,'Программирование','пи'),(209,80,'Моделирование','мм');
/*!40000 ALTER TABLE `дисциплина` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `зав_кафедрой`
--

DROP TABLE IF EXISTS `зав_кафедрой`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `зав_кафедрой` (
  `Таб_номер` int NOT NULL,
  `Стаж` int DEFAULT NULL,
  PRIMARY KEY (`Таб_номер`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `зав_кафедрой`
--

LOCK TABLES `зав_кафедрой` WRITE;
/*!40000 ALTER TABLE `зав_кафедрой` DISABLE KEYS */;
INSERT INTO `зав_кафедрой` VALUES (101,15),(201,18),(301,20),(401,10),(501,18),(601,8);
/*!40000 ALTER TABLE `зав_кафедрой` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `заявка`
--

DROP TABLE IF EXISTS `заявка`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `заявка` (
  `Код` int NOT NULL,
  `Номер` varchar(100) NOT NULL,
  PRIMARY KEY (`Код`,`Номер`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `заявка`
--

LOCK TABLES `заявка` WRITE;
/*!40000 ALTER TABLE `заявка` DISABLE KEYS */;
INSERT INTO `заявка` VALUES (101,'01.03.04'),(101,'09.03.02'),(101,'09.03.03'),(101,'14.03.02'),(101,'38.03.05'),(102,'09.03.02'),(102,'09.03.03'),(102,'14.03.02'),(103,'09.03.02'),(103,'09.03.03'),(103,'14.03.02'),(103,'38.03.05'),(202,'09.03.02'),(202,'09.03.03'),(202,'38.03.05'),(204,'14.03.02'),(205,'01.03.04'),(205,'09.03.02'),(205,'09.03.03'),(209,'01.03.04'),(209,'09.03.02'),(209,'38.03.05');
/*!40000 ALTER TABLE `заявка` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `инженер`
--

DROP TABLE IF EXISTS `инженер`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `инженер` (
  `Таб_номер` int NOT NULL,
  `Специальность` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Таб_номер`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `инженер`
--

LOCK TABLES `инженер` WRITE;
/*!40000 ALTER TABLE `инженер` DISABLE KEYS */;
INSERT INTO `инженер` VALUES (153,'электроник'),(241,'электроник'),(242,'программист'),(435,'электроник'),(614,'программист');
/*!40000 ALTER TABLE `инженер` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `кафедра`
--

DROP TABLE IF EXISTS `кафедра`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `кафедра` (
  `Шифр` varchar(100) NOT NULL,
  `Название` varchar(100) DEFAULT NULL,
  `Факультет` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Шифр`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `кафедра`
--

LOCK TABLES `кафедра` WRITE;
/*!40000 ALTER TABLE `кафедра` DISABLE KEYS */;
INSERT INTO `кафедра` VALUES ('вм','Высшая математика','ен'),('ис','Информационные системы','ит'),('мм','Математическое моделирование','фм'),('оф','Общая физика','ен'),('пи','Прикладная информатика','ит'),('эф','Экспериментальная физика','фм');
/*!40000 ALTER TABLE `кафедра` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `преподаватель`
--

DROP TABLE IF EXISTS `преподаватель`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `преподаватель` (
  `Таб_номер` int NOT NULL,
  `Звание` varchar(100) DEFAULT NULL,
  `Степень` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Таб_номер`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `преподаватель`
--

LOCK TABLES `преподаватель` WRITE;
/*!40000 ALTER TABLE `преподаватель` DISABLE KEYS */;
INSERT INTO `преподаватель` VALUES (101,'профессор','д.т.н.'),(102,'доцент','к.ф.-м.н.'),(105,'доцент','к.т.н.'),(201,'профессор','д.ф.-м.н.'),(202,'доцент','к.ф.-м.н.'),(301,'профессор','д.т.н.'),(302,'доцент','к.т.н.'),(401,'профессор','д.т.н.'),(402,'доцент','к.т.н.'),(403,'ассистент','-'),(501,'профессор','д.ф.-м.н.'),(502,'профессор','д.ф.-м.н.'),(503,'доцент','к.ф.-м.н.'),(601,'профессор','д.ф.-м.н.');
/*!40000 ALTER TABLE `преподаватель` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `сотрудник`
--

DROP TABLE IF EXISTS `сотрудник`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `сотрудник` (
  `Таб_номер` int NOT NULL,
  `Шифр` varchar(100) DEFAULT NULL,
  `Фамилия` varchar(100) DEFAULT NULL,
  `Должность` varchar(100) DEFAULT NULL,
  `Зарплата` int DEFAULT NULL,
  `Шеф` int DEFAULT NULL,
  PRIMARY KEY (`Таб_номер`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `сотрудник`
--

LOCK TABLES `сотрудник` WRITE;
/*!40000 ALTER TABLE `сотрудник` DISABLE KEYS */;
INSERT INTO `сотрудник` VALUES (101,'пи','Прохоров П.П.','зав.кафедрой',35000,101),(102,'пи','Семенов С.С.','преподаватель',25000,101),(105,'пи','Петров П.П.','преподаватель',25000,101),(153,'пи','Сидорова С.С.','инженер',15000,102),(201,'ис','Андреев А.А.','зав.кафедрой',35000,201),(202,'ис','Борисов Б.Б.','преподаватель',25000,201),(241,'ис','Глухов Г.Г.','инженер',20000,201),(242,'ис','Чернов Ч.Ч.','инженер',15000,202),(301,'мм','Басов Б.Б.','зав.кафедрой',35000,301),(302,'мм','Сергеева С.С.','преподаватель',25000,301),(401,'оф','Волков В.В.','зав.кафедрой',35000,401),(402,'оф','Зайцев З.З.','преподаватель',25000,401),(403,'оф','Смирнов С.С.','преподаватель',15000,401),(435,'оф','Лисин Л.Л.','инженер',20000,402),(501,'вм','Кузнецов К.К.','зав.кафедрой',35000,501),(502,'вм','Романцев Р.Р.','преподаватель',20000,501),(503,'вм','Соловьев С.С.','преподаватель',25000,501),(601,'эф','Зверев З.З.','зав.кафедрой',35000,601),(602,'эф','Сорокина С.С.','преподаватель',25000,601),(614,'эф','Григорьев Г.Г.','инженер',20000,602);
/*!40000 ALTER TABLE `сотрудник` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `специальность`
--

DROP TABLE IF EXISTS `специальность`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `специальность` (
  `Номер` varchar(100) DEFAULT NULL,
  `Направление` varchar(100) NOT NULL,
  `Шифр` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Направление`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `специальность`
--

LOCK TABLES `специальность` WRITE;
/*!40000 ALTER TABLE `специальность` DISABLE KEYS */;
INSERT INTO `специальность` VALUES ('38.03.05','Бизнес-информатика','ис'),('09.03.02','Информационные системы и технологии','ис'),('09.03.03','Прикладная информатика','пи'),('01.03.04','Прикладная математика','мм'),('14.03.02','Ядерные физика и технологии','эф');
/*!40000 ALTER TABLE `специальность` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `студент`
--

DROP TABLE IF EXISTS `студент`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `студент` (
  `Рег_номер` int NOT NULL,
  `Номер` varchar(100) DEFAULT NULL,
  `Фамилия` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Рег_номер`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `студент`
--

LOCK TABLES `студент` WRITE;
/*!40000 ALTER TABLE `студент` DISABLE KEYS */;
INSERT INTO `студент` VALUES (10101,'09.03.03','Николева Н.Н.'),(10102,'09.03.03','Иванов И.И.'),(10103,'09.03.03','Крюков К.К.'),(20101,'09.03.02','Андреев А.А.'),(20102,'09.03.02','Федоров Ф.Ф.'),(30101,'14.03.02','Бондаренко Б.Б.'),(30102,'14.03.02','Цветков К.К.'),(30103,'14.03.02','Петров П.П.'),(50101,'01.03.04','Сергеев С.С.'),(50102,'01.03.04','Кудрявцев К.К.'),(80101,'38.03.05','Макаров М.М.'),(80102,'38.03.05','Яковлев Я.Я.');
/*!40000 ALTER TABLE `студент` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `факультет`
--

DROP TABLE IF EXISTS `факультет`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `факультет` (
  `Аббревиатура` varchar(100) NOT NULL,
  `Название` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Аббревиатура`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `факультет`
--

LOCK TABLES `факультет` WRITE;
/*!40000 ALTER TABLE `факультет` DISABLE KEYS */;
INSERT INTO `факультет` VALUES ('Гн','Гумманитарные науки'),('Ен','Естественные науки'),('Ит','Информационные технологии'),('Фм','Физико-математический');
/*!40000 ALTER TABLE `факультет` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `экзамен`
--

DROP TABLE IF EXISTS `экзамен`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `экзамен` (
  `Дата` varchar(100) NOT NULL,
  `Код` int NOT NULL,
  `Рег_номер` int NOT NULL,
  `Таб_номер` int NOT NULL,
  `Аудитория` varchar(100) DEFAULT NULL,
  `Оценка` int DEFAULT NULL,
  PRIMARY KEY (`Дата`,`Таб_номер`,`Рег_номер`,`Код`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `экзамен`
--

LOCK TABLES `экзамен` WRITE;
/*!40000 ALTER TABLE `экзамен` DISABLE KEYS */;
INSERT INTO `экзамен` VALUES ('05.06.2015',102,10101,102,'т505',4),('05.06.2015',102,10102,102,'т505',4),('05.06.2015',202,20101,202,'т506',4),('05.06.2015',202,20102,202,'т506',3),('07.06.2015',102,30102,101,'т506',4),('07.06.2015',102,80101,102,'м425',5),('07.06.2015',102,30101,105,'ф419',3),('09.06.2015',209,20101,302,'ф333',3),('09.06.2015',205,80102,402,'м424',4),('10.06.2015',209,80101,301,'э105',5),('10.06.2015',209,80102,301,'э105',4),('10.06.2015',101,10101,501,'т506',4),('10.06.2015',101,10102,501,'т506',4),('10.06.2015',204,30102,601,'ф349',5),('12.06.2015',101,80101,502,'с324',4),('15.06.2015',103,10101,403,'ф414',4),('15.06.2015',101,50101,501,'ф201',5),('15.06.2015',101,50102,501,'ф201',3),('15.06.2015',101,30101,503,'ф417',4),('17.06.2015',102,10101,102,'т505',5);
/*!40000 ALTER TABLE `экзамен` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `test`
--

/*!50001 DROP VIEW IF EXISTS `test`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`Vadim`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `test` AS select `сотрудник`.`Таб_номер` AS `Таб_номер`,`сотрудник`.`Шифр` AS `Шифр`,`сотрудник`.`Фамилия` AS `Фамилия`,`сотрудник`.`Должность` AS `Должность`,`сотрудник`.`Зарплата` AS `Зарплата`,`сотрудник`.`Шеф` AS `Шеф` from `сотрудник` */;
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

-- Dump completed on 2024-05-27 16:52:39
