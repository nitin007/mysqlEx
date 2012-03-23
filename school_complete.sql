-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: school
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
-- Table structure for table `class_sub`
--

DROP TABLE IF EXISTS `class_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_sub` (
  `class` varchar(20) NOT NULL,
  `sub_code` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_sub`
--

LOCK TABLES `class_sub` WRITE;
/*!40000 ALTER TABLE `class_sub` DISABLE KEYS */;
INSERT INTO `class_sub` VALUES ('8th','ma'),('8th','sc'),('8th','ss'),('8th','hin'),('8th','eng'),('8th','san'),('8th','drw'),('8th','fa');
/*!40000 ALTER TABLE `class_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_terms`
--

DROP TABLE IF EXISTS `exam_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_terms` (
  `ET_id` int(11) NOT NULL AUTO_INCREMENT,
  `SO_id` int(11) NOT NULL,
  `term` varchar(20) NOT NULL,
  PRIMARY KEY (`ET_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_terms`
--

LOCK TABLES `exam_terms` WRITE;
/*!40000 ALTER TABLE `exam_terms` DISABLE KEYS */;
INSERT INTO `exam_terms` VALUES (1,1,'1st term'),(2,2,'1st term'),(3,3,'1st term'),(4,4,'1st term'),(5,5,'1st term'),(6,6,'1st term'),(7,7,'1st term'),(8,8,'1st term'),(9,9,'1st term'),(10,10,'1st term'),(11,11,'1st term'),(12,12,'1st term'),(13,13,'1st term'),(14,14,'1st term'),(15,15,'1st term'),(16,16,'1st term'),(17,17,'1st term'),(18,18,'1st term'),(19,19,'1st term'),(20,20,'1st term'),(21,21,'1st term'),(22,22,'1st term'),(23,23,'1st term'),(24,24,'1st term'),(25,25,'1st term'),(26,26,'1st term'),(27,27,'1st term'),(28,28,'1st term'),(29,29,'1st term'),(30,30,'1st term'),(31,1,'2nd term'),(32,2,'2nd term'),(33,3,'2nd term'),(34,4,'2nd term'),(35,5,'2nd term'),(36,6,'2nd term'),(37,7,'2nd term'),(38,8,'2nd term'),(39,9,'2nd term'),(40,10,'2nd term'),(41,11,'2nd term'),(42,12,'2nd term'),(43,13,'2nd term'),(44,14,'2nd term'),(45,15,'2nd term'),(46,16,'2nd term'),(47,17,'2nd term'),(48,18,'2nd term'),(49,19,'2nd term'),(50,20,'2nd term'),(51,21,'2nd term'),(52,22,'2nd term'),(53,23,'2nd term'),(54,24,'2nd term'),(55,25,'2nd term'),(56,26,'2nd term'),(57,27,'2nd term'),(58,28,'2nd term'),(59,29,'2nd term'),(60,30,'2nd term');
/*!40000 ALTER TABLE `exam_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `ET_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,60),(2,63),(3,64),(4,80),(5,60),(6,71),(7,100),(8,90),(8,80),(10,70),(11,50),(12,10),(13,20),(14,69),(15,75),(16,69),(17,60),(18,79),(19,74),(20,57),(21,55),(22,64),(23,77),(24,60),(25,40),(26,36),(27,33),(28,40),(29,97),(30,61),(31,64),(32,59),(33,60),(34,62),(35,46),(36,76),(37,86),(38,90),(39,78),(40,58),(41,46),(42,62),(43,82),(44,60),(45,68),(46,97),(47,95),(48,98),(49,78),(50,60),(51,61),(52,66),(53,69),(54,89),(55,54),(56,61),(57,65),(58,76),(59,72),(60,47);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_info`
--

DROP TABLE IF EXISTS `personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_info` (
  `adm_no` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`adm_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_info`
--

LOCK TABLES `personal_info` WRITE;
/*!40000 ALTER TABLE `personal_info` DISABLE KEYS */;
INSERT INTO `personal_info` VALUES (101,'Rahul','#6/5 Model Town',9878563428),(102,'Rahul','#6/5 Model Town',9875453189),(103,'Rohit','#6/10 Model Town',8097654378),(104,'Anil','#4/5 Model Town',7089653217),(105,'Aniket','#7/5 Model Town',9999876509);
/*!40000 ALTER TABLE `personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_info`
--

DROP TABLE IF EXISTS `student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_info` (
  `SI_id` int(11) NOT NULL AUTO_INCREMENT,
  `adm_no` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `session` varchar(20) NOT NULL,
  PRIMARY KEY (`SI_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_info`
--

LOCK TABLES `student_info` WRITE;
/*!40000 ALTER TABLE `student_info` DISABLE KEYS */;
INSERT INTO `student_info` VALUES (1,101,1,'8th','A','2012-13'),(2,102,2,'8th','A','2012-13'),(3,103,3,'8th','A','2012-13'),(4,104,4,'8th','A','2012-13'),(5,105,5,'8th','A','2012-13');
/*!40000 ALTER TABLE `student_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_offered`
--

DROP TABLE IF EXISTS `sub_offered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_offered` (
  `SO_id` int(11) NOT NULL AUTO_INCREMENT,
  `SI_id` int(11) NOT NULL,
  `sub_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SO_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_offered`
--

LOCK TABLES `sub_offered` WRITE;
/*!40000 ALTER TABLE `sub_offered` DISABLE KEYS */;
INSERT INTO `sub_offered` VALUES (1,1,'hin'),(2,1,'eng'),(3,1,'ma'),(4,1,'ss'),(5,1,'sc'),(6,1,'dr'),(7,2,'hin'),(8,2,'eng'),(9,2,'ma'),(10,2,'ss'),(11,2,'sc'),(12,2,'san'),(13,3,'hin'),(14,3,'eng'),(15,3,'ma'),(16,3,'ss'),(17,3,'sc'),(18,3,'fa'),(19,4,'hin'),(20,4,'eng'),(21,4,'ma'),(22,4,'ss'),(23,4,'sc'),(24,4,'drw'),(25,5,'hin'),(26,5,'eng'),(27,5,'ma'),(28,5,'ss'),(29,5,'sc'),(30,5,'san');
/*!40000 ALTER TABLE `sub_offered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `sub_code` varchar(20) NOT NULL,
  `subject` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('ma','math'),('sc','science'),('ss','social studies'),('hin','hindi'),('eng','english'),('san','sanskrit'),('drw','drawing'),('fa','fine arts');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-22 18:30:51
