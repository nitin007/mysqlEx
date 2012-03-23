-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: user_article_comments
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
-- Table structure for table `art_cat`
--

/*AIM - Design a table structure for following conditions:

A user can write many articles. Each written article will fall under one category. Remember that many articles can be written under same category.

The users can be of two types viz. admin or normal. A user can post multiple comments on an article.*/


DROP TABLE IF EXISTS `art_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art_cat` (
  `AC_id` int(20) NOT NULL AUTO_INCREMENT,
  `article` varchar(40) NOT NULL,
  `category` varchar(40) NOT NULL,
  PRIMARY KEY (`AC_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art_cat`
--

LOCK TABLES `art_cat` WRITE;
/*!40000 ALTER TABLE `art_cat` DISABLE KEYS */;
INSERT INTO `art_cat` VALUES (1,'art1','cat1'),(2,'art2','cat2'),(3,'art3','cat2'),(4,'art4','cat1'),(5,'art5','cat2'),(6,'art6','cat3'),(7,'art7','cat1'),(8,'art8','cat3'),(9,'art9','cat1'),(10,'art10','cat2');
/*!40000 ALTER TABLE `art_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `UT_id` int(20) NOT NULL,
  `AC_id` int(20) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,'nice one'),(1,2,'very informative'),(3,2,'very good'),(4,7,'very nice'),(8,10,'not effective'),(8,5,'must be improved'),(2,3,'must be improved'),(9,4,'nice one'),(7,6,'good work'),(5,8,'impressive'),(1,10,'very effective');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_art`
--

DROP TABLE IF EXISTS `user_art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_art` (
  `UT_id` int(20) NOT NULL AUTO_INCREMENT,
  `AC_id` int(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`UT_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_art`
--

LOCK TABLES `user_art` WRITE;
/*!40000 ALTER TABLE `user_art` DISABLE KEYS */;
INSERT INTO `user_art` VALUES (1,2,'user1','admin'),(2,5,'user2','normal'),(3,1,'user3','normal'),(4,3,'user3','admin'),(5,4,'user1','normal'),(6,7,'user3','normal'),(7,9,'user2','admin'),(8,6,'user3','admin'),(9,8,'user2','normal'),(10,10,'user3','normal');
/*!40000 ALTER TABLE `user_art` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-23 16:04:06
