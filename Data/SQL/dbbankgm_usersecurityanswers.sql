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
-- Table structure for table `usersecurityanswers`
--

DROP TABLE IF EXISTS `usersecurityanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersecurityanswers` (
  `UserLoginID` smallint unsigned NOT NULL AUTO_INCREMENT,
  `UserSecurityAnswers` varchar(25) NOT NULL,
  `UserSecurityQuestionID` tinyint unsigned NOT NULL,
  PRIMARY KEY (`UserLoginID`),
  KEY `UserSecurityQuestionID` (`UserSecurityQuestionID`),
  CONSTRAINT `usersecurityanswers_ibfk_1` FOREIGN KEY (`UserLoginID`) REFERENCES `userlogins` (`UserLoginID`),
  CONSTRAINT `usersecurityanswers_ibfk_2` FOREIGN KEY (`UserSecurityQuestionID`) REFERENCES `usersecurityquestions` (`UserSecurityQuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersecurityanswers`
--

LOCK TABLES `usersecurityanswers` WRITE;
/*!40000 ALTER TABLE `usersecurityanswers` DISABLE KEYS */;
INSERT INTO `usersecurityanswers` VALUES (1,'Pizza',1),(2,'Fluffy',2),(3,'Johnson',3),(4,'Maple',4),(5,'Toyota',5);
/*!40000 ALTER TABLE `usersecurityanswers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 13:42:35
