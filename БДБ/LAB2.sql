-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lab2
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
-- Table structure for table `академики`
--

DROP TABLE IF EXISTS `академики`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `академики` (
  `ФИО` varchar(100) NOT NULL,
  `Дата_рождения` date DEFAULT NULL,
  `Специализация` varchar(100) DEFAULT NULL,
  `Год_присвоения_звания` smallint DEFAULT NULL,
  PRIMARY KEY (`ФИО`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `академики`
--

LOCK TABLES `академики` WRITE;
/*!40000 ALTER TABLE `академики` DISABLE KEYS */;
INSERT INTO `академики` VALUES ('Аничков Николай Николевич','1885-11-03','медицина',1939),('Бартольд Василий Владимирович','1869-11-15','историк',1913),('Белопольский Аристарх Аполлонович','1854-07-13','астрофизик',1903),('Бородин Иван Парфеньевич','1847-01-30','ботаник',1902),('Вальден Павел Иванович','1863-07-26','химик-технолог',1910),('Вернадский Владимир Иванович','1863-03-12','геохимик',1908),('Виноградов Павел Гаврилович','1854-11-30','историк',1914),('Ипатьев Владимир Николевич','1867-11-21','химик',1916),('Истрин Василий Михайлович','1965-02-22','филолог',1907),('Карпинский Александр Петрович','1847-01-07','геолог',1889),('Коковцов Павел Константинович','1861-07-01','историк',1906),('Курнаков Николай Семёнович ','1860-12-06','химик',1913),('Марр Николай Яковлевич','1865-01-06','лингвист',1912),('Насонов Николай Викторович ','1855-02-26','зоолог',1906),('Ольденбург Сергей Фёдорович','1863-09-26','историк',1903),('Павлов Иван Петрович','1849-09-26','физиолог',1907),('Перетц Владимир Никлоаевич','1870-01-31','филолог',1914),('Соболевский Алексей Иванович','1857-01-07','лингвист',1900),('Стеклов Владимир Андреевич','1864-01-09','математик',1912);
/*!40000 ALTER TABLE `академики` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 12:33:25
