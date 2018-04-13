CREATE DATABASE  IF NOT EXISTS `biblioteka` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `biblioteka`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteka
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.29-MariaDB

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
-- Table structure for table `автор`
--

DROP TABLE IF EXISTS `автор`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `автор` (
  `idАвтор` int(11) NOT NULL AUTO_INCREMENT,
  `Име` varchar(25) NOT NULL,
  `Презиме` varchar(35) NOT NULL,
  PRIMARY KEY (`idАвтор`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `автор`
--

LOCK TABLES `автор` WRITE;
/*!40000 ALTER TABLE `автор` DISABLE KEYS */;
INSERT INTO `автор` VALUES (1,'Sara','Dzio'),(2,'Sheron','Bolton'),(3,'Nermin','Bezmen'),(4,'Richard','Bah'),(5,'Alan','Pauls'),(6,'Stejnar','Bragi'),(7,'Herman','Hese');
/*!40000 ALTER TABLE `автор` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `категорија`
--

DROP TABLE IF EXISTS `категорија`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `категорија` (
  `idКатегорија` int(11) NOT NULL AUTO_INCREMENT,
  `Категорија` varchar(25) NOT NULL,
  PRIMARY KEY (`idКатегорија`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `категорија`
--

LOCK TABLES `категорија` WRITE;
/*!40000 ALTER TABLE `категорија` DISABLE KEYS */;
INSERT INTO `категорија` VALUES (1,'Beletristika'),(2,'Psihologija'),(3,'Klasicna'),(4,'Poezija'),(5,'Strucna');
/*!40000 ALTER TABLE `категорија` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `книги`
--

DROP TABLE IF EXISTS `книги`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `книги` (
  `idКниги` int(11) NOT NULL AUTO_INCREMENT,
  `Наслов` varchar(60) NOT NULL,
  `Автор_idАвтор` int(11) NOT NULL,
  `Категорија_idКатегорија` int(11) NOT NULL,
  PRIMARY KEY (`idКниги`),
  KEY `fk_Книги_Автор1_idx` (`Автор_idАвтор`),
  KEY `fk_Книги_Категорија1_idx` (`Категорија_idКатегорија`),
  CONSTRAINT `fk_Книги_Автор1` FOREIGN KEY (`Автор_idАвтор`) REFERENCES `автор` (`idАвтор`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Книги_Категорија1` FOREIGN KEY (`Категорија_idКатегорија`) REFERENCES `категорија` (`idКатегорија`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `книги`
--

LOCK TABLES `книги` WRITE;
/*!40000 ALTER TABLE `книги` DISABLE KEYS */;
INSERT INTO `книги` VALUES (9,'Temjanushki vo mart',1,1),(10,'Mali crni lagi',2,1),(11,'Snegovite na ljubovta',3,1),(12,'Most preku vechnosta',4,1),(13,'Minatoto',5,1),(14,'Tanc vo temninata',6,1),(15,'Stepskiot volk',7,1);
/*!40000 ALTER TABLE `книги` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `членови`
--

DROP TABLE IF EXISTS `членови`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `членови` (
  `idЧленови` int(11) NOT NULL AUTO_INCREMENT,
  `Име` varchar(45) NOT NULL,
  `Презиме` varchar(45) NOT NULL,
  `Рок за враќање` date DEFAULT NULL,
  `Книги_idКниги` int(11) NOT NULL,
  PRIMARY KEY (`idЧленови`),
  KEY `fk_Членови_Книги_idx` (`Книги_idКниги`),
  CONSTRAINT `fk_Членови_Книги` FOREIGN KEY (`Книги_idКниги`) REFERENCES `книги` (`idКниги`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `членови`
--

LOCK TABLES `членови` WRITE;
/*!40000 ALTER TABLE `членови` DISABLE KEYS */;
INSERT INTO `членови` VALUES (1,'Petar','Petrovski','2018-05-16',10);
/*!40000 ALTER TABLE `членови` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-13  9:14:27
