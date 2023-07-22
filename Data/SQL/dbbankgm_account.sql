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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `AccountID` int unsigned NOT NULL AUTO_INCREMENT,
  `CurrentBalance` decimal(10,2) NOT NULL,
  `AccountTypeID` tinyint unsigned NOT NULL,
  `AccountStatusTypeID` tinyint unsigned NOT NULL,
  `InterestSavingRatesID` tinyint unsigned NOT NULL,
  PRIMARY KEY (`AccountID`),
  KEY `AccountTypeID` (`AccountTypeID`),
  KEY `AccountStatusTypeID` (`AccountStatusTypeID`),
  KEY `InterestSavingRatesID` (`InterestSavingRatesID`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`AccountTypeID`) REFERENCES `accounttype` (`AccountTypeID`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`AccountStatusTypeID`) REFERENCES `accountstatustype` (`AccountStatusTypeID`),
  CONSTRAINT `account_ibfk_3` FOREIGN KEY (`InterestSavingRatesID`) REFERENCES `savingsinterestrates` (`InterestSavingRatesID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,15000.70,1,1,1),(2,25000.50,2,2,2),(3,17000.20,1,1,1),(4,45000.00,2,2,2),(5,2320.00,2,2,2);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 13:42:34
