-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: dbbankgm
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `overdraftlog`
--

DROP TABLE IF EXISTS `overdraftlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overdraftlog` (
  `AccountID` int unsigned NOT NULL AUTO_INCREMENT,
  `OverDraftDate` datetime NOT NULL,
  `OverDraftAmount` decimal(10,2) NOT NULL,
  `OverDraftTransactionXML` text NOT NULL,
  PRIMARY KEY (`AccountID`),
  CONSTRAINT `overdraftlog_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `account` (`AccountID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overdraftlog`
--

LOCK TABLES `overdraftlog` WRITE;
/*!40000 ALTER TABLE `overdraftlog` DISABLE KEYS */;
INSERT INTO `overdraftlog` VALUES (1,'2023-06-25 08:30:56',10.00,'<xml>...</xml>'),(2,'2023-06-26 12:34:57',5.00,'<xml>...</xml>'),(3,'2023-06-27 02:14:00',20.00,'<xml>...</xml>'),(4,'2023-06-27 05:56:59',15.00,'<xml>...</xml>'),(5,'2023-06-28 08:34:15',8.00,'<xml>...</xml>');
/*!40000 ALTER TABLE `overdraftlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 13:42:33
