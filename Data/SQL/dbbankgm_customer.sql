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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int unsigned NOT NULL AUTO_INCREMENT,
  `AccountID` int unsigned NOT NULL,
  `CustomerAddress1` varchar(30) NOT NULL,
  `CustomerAddress2` varchar(30) DEFAULT NULL,
  `CustomerFirstName` varchar(30) NOT NULL,
  `CustomerMiddleInitial` char(1) DEFAULT NULL,
  `CustomerLastName` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `ZipCode` char(10) NOT NULL,
  `EmailAddress` char(40) NOT NULL,
  `HomePhone` varchar(10) NOT NULL,
  `CellPhone` varchar(10) NOT NULL,
  `WorkPhone` varchar(10) NOT NULL,
  `UserLoginID` smallint unsigned NOT NULL,
  PRIMARY KEY (`CustomerID`),
  KEY `AccountID` (`AccountID`),
  KEY `UserLoginID` (`UserLoginID`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `account` (`AccountID`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`UserLoginID`) REFERENCES `userlogins` (`UserLoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'Address1','Address2','Customer1','U','CLastname1','Ottawa','ON','3A5z9z','user5@user.com','141655555','453554464','3462325',1),(2,2,'Address1','Address2','Customer2','K','CLastname2','Hamilton','ON','fe3453','user6@user.com','141655555','567435345','6332423',2),(3,3,'Address1','Address2','Customer3','P','CLastname3','Vancouver','BC','fdf45','user7@user.com','141655555','681316226','9202521',3),(4,4,'Address1','Address2','Customer4','B','CLastname4','London','ON','23ffbfs','user8@user.com','141655555','795197107','8674252',4),(5,5,'Address1','Address2','Customer5','K','CLastname5','Calgary','AB','hg4536','user9@user.com','141655555','909077988','9209371',5);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
