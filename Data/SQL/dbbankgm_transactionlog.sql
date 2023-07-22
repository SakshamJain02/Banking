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
-- Table structure for table `transactionlog`
--

DROP TABLE IF EXISTS `transactionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactionlog` (
  `TransactionID` int unsigned NOT NULL AUTO_INCREMENT,
  `TransactionDate` datetime NOT NULL,
  `TransactionTypeID` tinyint unsigned NOT NULL,
  `TransactionAmount` decimal(10,2) NOT NULL,
  `NewBalance` decimal(10,2) NOT NULL,
  `AccountID` int unsigned NOT NULL,
  `CustomerID` int unsigned NOT NULL,
  `EmployeeID` int unsigned NOT NULL,
  `UserLoginID` smallint unsigned NOT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `TransactionTypeID` (`TransactionTypeID`),
  KEY `AccountID` (`AccountID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmployeeID` (`EmployeeID`),
  KEY `UserLoginID` (`UserLoginID`),
  CONSTRAINT `transactionlog_ibfk_1` FOREIGN KEY (`TransactionTypeID`) REFERENCES `transactiontype` (`TransactionTypeID`),
  CONSTRAINT `transactionlog_ibfk_2` FOREIGN KEY (`AccountID`) REFERENCES `account` (`AccountID`),
  CONSTRAINT `transactionlog_ibfk_3` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `transactionlog_ibfk_4` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `transactionlog_ibfk_5` FOREIGN KEY (`UserLoginID`) REFERENCES `userlogins` (`UserLoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionlog`
--

LOCK TABLES `transactionlog` WRITE;
/*!40000 ALTER TABLE `transactionlog` DISABLE KEYS */;
INSERT INTO `transactionlog` VALUES (1,'2023-06-25 08:30:56',1,100.00,15100.70,1,1,1,1),(2,'2023-06-26 12:34:57',2,50.00,24950.50,2,2,2,2),(3,'2023-06-27 02:14:00',3,200.00,16800.20,3,3,3,3),(4,'2023-06-27 05:56:59',4,75.00,44925.00,4,4,4,4),(5,'2023-06-28 08:34:15',5,0.00,2320.00,5,5,5,5);
/*!40000 ALTER TABLE `transactionlog` ENABLE KEYS */;
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
