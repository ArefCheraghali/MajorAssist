-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: majorassist.mysql.pythonanywhere-services.com    Database: majorassist$HartmanTest
-- ------------------------------------------------------
-- Server version	5.7.28-log

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(256) NOT NULL,
  `sat` int(11) NOT NULL,
  `q1` char(11) NOT NULL,
  `q2` char(11) NOT NULL,
  `q3` char(11) NOT NULL,
  `q4` char(11) NOT NULL,
  `q5` char(11) NOT NULL,
  `q6` char(11) NOT NULL,
  `q7` char(11) NOT NULL,
  `q8` char(11) NOT NULL,
  `q9` char(11) NOT NULL,
  `q10` char(11) NOT NULL,
  `q11` char(11) NOT NULL,
  `q12` char(11) NOT NULL,
  `q13` char(11) NOT NULL,
  `q14` char(11) NOT NULL,
  `q15` char(11) NOT NULL,
  `q16` char(11) NOT NULL,
  `q17` char(11) NOT NULL,
  `q18` char(11) NOT NULL,
  `q19` char(11) NOT NULL,
  `q20` char(11) NOT NULL,
  `q21` char(11) NOT NULL,
  `q22` char(11) NOT NULL,
  `q23` char(11) NOT NULL,
  `q24` char(11) NOT NULL,
  `q25` char(11) NOT NULL,
  `q26` char(11) NOT NULL,
  `q27` char(11) NOT NULL,
  `q28` char(11) NOT NULL,
  `q29` char(11) NOT NULL,
  `q30` char(11) NOT NULL,
  `q31` char(11) NOT NULL,
  `q32` char(11) NOT NULL,
  `q33` char(11) NOT NULL,
  `q34` char(11) NOT NULL,
  `q35` char(11) NOT NULL,
  `q36` char(11) NOT NULL,
  `q37` char(11) NOT NULL,
  `q38` char(11) NOT NULL,
  `q39` char(11) NOT NULL,
  `q40` char(11) NOT NULL,
  `q41` char(11) NOT NULL,
  `q42` char(11) NOT NULL,
  `q43` char(11) NOT NULL,
  `q44` char(11) NOT NULL,
  `q45` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'مهندسی کامپیوتر',9,'A','A','D','D','D','A','C','A','D','A','C','A','D','B','A','C','C','C','B','A','B','B','D','B','B','C','A','B','D','C','A','D','C','D','C','C','A','C','A','C','A','B','C','D','B'),(2,'مهندسی کامپیوتر',7,'B','A','D','C','A','D','C','B','D','D','A','D','C','D','B','C','B','A','B','D','B','A','C','B','D','C','C','D','D','D','A','D','A','C','B','C','D','C','A','B','D','A','C','B','A'),(3,'مهندسی صنایع',8,'B','D','D','C','B','A','C','C','D','B','C','B','D','D','D','C','B','A','C','D','B','B','A','B','C','D','A','B','A','D','B','D','A','A','B','C','D','B','A','C','C','B','A','D','A'),(4,'مهندسی صنایع',8,'A','C','B','B','D','B','C','D','B','A','B','A','C','A','C','B','A','B','C','A','B','B','C','D','B','C','A','D','C','D','D','D','C','D','A','C','B','C','A','C','B','A','D','A','B'),(5,'مهندسی صنایع',8,'D','D','B','C','D','D','C','A','A','A','C','B','B','C','A','C','B','A','C','A','B','B','D','D','D','D','A','C','D','A','A','D','A','C','B','C','C','D','A','A','A','D','A','C','B'),(6,'مهندسی ایمنی',9,'D','B','C','D','C','C','A','C','C','C','A','C','C','A','A','B','C','C','B','A','B','D','A','D','D','C','D','A','B','D','B','A','B','B','C','C','B','B','C','A','D','C','C','A','B'),(7,'مهندسی شیمی',8,'A','B','C','C','B','D','C','C','D','C','C','C','B','C','C','C','D','B','A','D','B','B','C','D','D','C','D','D','D','D','D','D','D','A','C','C','C','B','C','B','D','B','C','D','C'),(8,'مهندسی مکانیک',10,'A','A','A','B','D','B','A','C','D','C','A','A','B','A','A','D','A','B','C','A','B','D','C','C','D','A','A','D','C','D','A','A','D','C','A','C','C','C','A','A','A','B','D','D','B'),(9,'مهندسی برق',7,'C','B','D','C','B','C','A','C','C','A','A','B','C','D','A','C','C','A','C','C','C','C','C','D','C','A','B','B','D','A','D','D','B','D','B','C','D','C','A','A','D','B','D','A','A'),(10,'مهندسی برق',10,'A','A','C','C','B','B','A','C','A','A','C','B','B','D','C','B','A','D','C','D','B','B','D','B','C','D','A','B','C','C','D','D','B','A','B','C','D','C','A','C','A','C','C','D','B'),(11,'حسابداری',10,'B','A','D','C','D','B','A','C','B','D','A','A','B','C','C','A','A','B','B','A','A','D','C','D','A','A','D','D','D','D','A','B','C','A','A','C','D','C','A','A','D','B','C','A','A'),(12,'حسابداری',7,'D','D','D','C','D','B','C','A','B','A','A','A','D','D','B','C','C','A','D','A','B','B','D','D','D','D','B','C','D','B','B','B','D','A','B','C','D','B','C','C','A','B','D','A','B'),(13,'حسابداری',10,'C','B','A','A','D','D','C','D','D','B','A','D','D','A','A','B','B','C','D','A','B','A','C','D','C','C','B','D','C','C','D','D','A','B','D','D','B','C','A','C','D','D','C','D','C'),(14,'ریاضی',8,'B','A','C','D','D','A','A','A','D','D','A','C','B','D','B','B','A','B','C','D','B','D','B','D','C','A','C','D','B','D','A','D','D','C','C','C','C','C','C','C','A','B','C','A','B'),(15,'مهندسی پزشکی',10,'D','C','A','D','C','C','B','C','C','C','C','C','C','A','D','D','A','C','A','D','B','D','B','B','A','C','A','D','D','D','D','A','B','B','C','D','B','B','C','D','B','B','C','A','B'),(16,'علوم کامپیوتر',7,'C','B','A','C','C','C','C','C','C','C','D','A','A','C','A','C','D','A','A','B','C','B','D','C','D','D','B','C','B','C','A','C','D','C','C','C','B','C','C','A','D','B','C','D','D'),(17,'مهندسی مکانیک',8,'A','A','C','A','D','B','C','C','D','C','A','A','C','D','C','B','A','C','A','D','B','B','B','D','C','C','C','A','A','D','A','D','C','B','D','C','C','C','A','B','D','C','C','A','B'),(18,'مهندسی نفت',10,'A','A','A','A','A','C','C','C','D','B','C','A','B','A','B','B','B','B','C','D','D','D','C','D','A','A','C','D','D','D','D','C','C','C','A','C','D','D','A','D','A','B','A','D','B'),(19,'مهندسی نفت',10,'D','A','A','B','D','B','C','D','B','A','C','A','B','C','A','A','C','A','B','D','B','B','A','D','D','B','A','C','A','C','A','C','C','D','A','C','D','B','A','A','A','C','D','A','D'),(20,'مهندسی کامپیوتر',7,'A','A','B','B','B','C','C','C','D','A','A','A','D','D','A','B','C','B','C','A','B','D','D','D','D','A','A','D','C','D','A','D','C','A','C','D','D','C','C','D','A','B','C','B','A');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-07 18:28:13
