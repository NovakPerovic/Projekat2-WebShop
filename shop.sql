CREATE DATABASE  IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shop`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Television & Video',NULL),(2,'Desktops',''),(3,'Laptops & Notebooks',NULL),(4,'Mobile Phones',NULL),(5,'Monitors',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (1,'Sony',NULL),(2,'Samsung',NULL),(3,'Asus',NULL),(4,'HP',NULL),(5,'Apple',NULL);
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `lastname` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `products` varchar(1024) DEFAULT NULL,
  `ordertime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Novak','',NULL,NULL,NULL),(2,'Novak','Perovic',NULL,NULL,NULL),(3,'Novak','Perovic','This is address',NULL,NULL),(4,'Novak','Perovic','Rajka milovanovica br 30',NULL,'2018-06-07 18:03:03'),(5,'Novak','Perovic','Takovska 4',NULL,'2018-06-07 18:26:21'),(6,'Novak','Perovic','Kursulina 47',NULL,'2018-06-07 19:06:39'),(7,'Miljan ','Perovic','Takovska 4','[{\"id\":2}]','2018-06-07 19:11:24'),(8,'','','','[{\"id\":1}]','2018-07-08 17:00:34');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `photo` varchar(1024) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `manufacturer` varchar(256) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Asus G752VY',530.30,'asus1.png',3,'Asus','CPU:IntelCore i7;HDD:128GB SSD;RAM Memory:16GB'),(2,'HP Omen',600.20,'hp1.png',3,'HP','CPU:IntelCore i5; HDD:1TB; RAM Memory:8GB'),(3,'Apple MacBook Air',725.50,'apple1.png',3,'Apple','CPU:IntelCore i3; HDD 500GB;RAM Memory:8GB'),(4,'Iphon 5s',300.10,'iphone5s.png',4,'Apple','Display Size: 4.0 inches;OS: iOS7; CPU:Dual-core 1.3GHz;Camera:8MP'),(5,'Samsung S6',300.00,'samsungs6.png',4,'Samsung','Display Size:5.1 inches;OS:Android 5.0;CPU:Octa-core;Camera:16MP'),(6,'Samsung S9',680.40,'samsungs9.png',4,'Samsung','Display Size:5.8 inches;OS:Android 8.0;CPU:Octa-core;Camera:12MP'),(7,'Sony Xperia',320.10,'sonyxpe.jpg',4,'Sony','Display Size:5.2 inches;OS:Android 5.1;CPU:Octa-core;Camera 23MP'),(8,'Sony KDL32WE61',310.80,'sonytv1.png',1,'Sony','Displey Size:32 inches;Smart TV;DVB-T/T2/C/S/S2'),(9,'Sony KDL40WE61',370.20,'sonytv1.png',1,'Sony','Display Size:40 inches;Smart TV;DVB-T/T2/C;WiFi'),(10,'Samsung UE40MU61',480.00,'samsungtv1.png',1,'Samsung','Display Size:40 inches;Smart TV;WiFi;DVB/T2/C/S2'),(11,'Asus PRIME PRO',460.30,'asus2.png',2,'Asus','CPU:AMD FX; RAM Memory 8GB; HDD 500GB; Video Card: Nvidia GF650; OS:Windows 10'),(12,'HP I630',430.30,'hp2.png',2,'HP','CPU:IntelCore i5; RAM Memory 4GB; HDD 256GB; Video Card: Nvidia GTX660; OS: Windows 10'),(13,'Apple AURORA',420.50,'apple2.png',2,'Apple','CPU:IntelCore i3; RAM Memory 8GB; HDD500GB; Video Card: Nvidia GTX550; OS:Mac'),(14,'Asus LED18,5',120.70,'asus3.png',5,'Asus','Displey Size:20.7 inches; Resolution: 1920x1080px; Port: HDMI/VGA'),(15,'HP V214a',110.50,'hp3.png',5,'HP','Displey Size:20.7 inches; Resolution: 1920x1080px; Port: HDMI/VGA'),(16,'Samsung LED21,5',150.70,'samsung1.png',5,'Samsung','Displey Size:21 inches; Resolution: 1920x1080px; Port: HDMI/VGA');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-17 18:39:43
