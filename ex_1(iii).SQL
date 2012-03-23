-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: LIBRARY
-- ------------------------------------------------------
-- Server version	5.1.61-0ubuntu0.11.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BRANCH`
--

DROP TABLE IF EXISTS `BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BRANCH` (
  `BCODE` varchar(20) NOT NULL,
  `LIBRARIAN` varchar(40) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRANCH`
--

LOCK TABLES `BRANCH` WRITE;
/*!40000 ALTER TABLE `BRANCH` DISABLE KEYS */;
INSERT INTO `BRANCH` VALUES ('B1','JOHN SMITH','2 Anglesea Rd'),('B2','MARY JONES','34 Pearse St '),('B3','FRANCIS OWENS','Grange X');
/*!40000 ALTER TABLE `BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOLDINGS`
--

DROP TABLE IF EXISTS `HOLDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOLDINGS` (
  `BRANCH` varchar(20) NOT NULL,
  `TITLE` varchar(40) NOT NULL,
  `COPIES` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOLDINGS`
--

LOCK TABLES `HOLDINGS` WRITE;
/*!40000 ALTER TABLE `HOLDINGS` DISABLE KEYS */;
INSERT INTO `HOLDINGS` VALUES ('B1','Susannah',3),('B1','How to',2),('B1','A hist',1),('B2','How to',4),('B2','Computers',2),('B2','The Wife',3),('B3','A hist',1),('B3','Computers',4),('B3','Susannah',3),('B3','The Wife',1);
/*!40000 ALTER TABLE `HOLDINGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TITLES`
--

DROP TABLE IF EXISTS `TITLES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TITLES` (
  `TITLE` varchar(100) NOT NULL,
  `AUTHOR` varchar(40) NOT NULL,
  `PUBLISHER` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TITLES`
--

LOCK TABLES `TITLES` WRITE;
/*!40000 ALTER TABLE `TITLES` DISABLE KEYS */;
INSERT INTO `TITLES` VALUES ('Susannah','Ann Brown','Macmillan'),('How To Fish','Amy Fly','Stop Press'),('A History of dublin','David Little','Wiley'),('Computers','Blaise pascal','Applewoods'),('The Wife','Ann Brown','Macmillan');
/*!40000 ALTER TABLE `TITLES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-23 15:48:42
