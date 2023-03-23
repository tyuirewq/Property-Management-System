CREATE DATABASE  IF NOT EXISTS `opms_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `opms_db`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: opms_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin_contactr`
--

DROP TABLE IF EXISTS `admin_contactr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_contactr` (
  `Adminidc` int NOT NULL,
  `contact` bigint NOT NULL,
  PRIMARY KEY (`contact`),
  KEY `admin_contactr_ibfk_1` (`Adminidc`),
  CONSTRAINT `admin_contactr_ibfk_1` FOREIGN KEY (`Adminidc`) REFERENCES `admin_records` (`Adminid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_contactr`
--

LOCK TABLES `admin_contactr` WRITE;
/*!40000 ALTER TABLE `admin_contactr` DISABLE KEYS */;
INSERT INTO `admin_contactr` VALUES (1,9869656788),(2,9889656245),(3,8878965625),(4,8965632659),(5,6898896589);
/*!40000 ALTER TABLE `admin_contactr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_records`
--

DROP TABLE IF EXISTS `admin_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_records` (
  `Adminid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`Adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_records`
--

LOCK TABLES `admin_records` WRITE;
/*!40000 ALTER TABLE `admin_records` DISABLE KEYS */;
INSERT INTO `admin_records` VALUES (1,'Ade eshwar nayak','diofer fgd'),(2,'sdf','dfgddfg'),(3,'dfgd','fgfd'),(4,'fgf','fgh'),(5,'hty','kiu');
/*!40000 ALTER TABLE `admin_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_records1`
--

DROP TABLE IF EXISTS `admin_records1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_records1` (
  `Adminid` int NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`Adminid`),
  CONSTRAINT `admin_records1_ibfk_1` FOREIGN KEY (`Adminid`) REFERENCES `admin_records` (`Adminid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_records1`
--

LOCK TABLES `admin_records1` WRITE;
/*!40000 ALTER TABLE `admin_records1` DISABLE KEYS */;
INSERT INTO `admin_records1` VALUES (1,'deva'),(2,'sd'),(3,'re'),(4,'g'),(5,'df');
/*!40000 ALTER TABLE `admin_records1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_records2`
--

DROP TABLE IF EXISTS `admin_records2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_records2` (
  `Adminid` int NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`Adminid`),
  CONSTRAINT `admin_records2_ibfk_1` FOREIGN KEY (`Adminid`) REFERENCES `admin_records` (`Adminid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_records2`
--

LOCK TABLES `admin_records2` WRITE;
/*!40000 ALTER TABLE `admin_records2` DISABLE KEYS */;
INSERT INTO `admin_records2` VALUES (1,'1','dfgdfgd'),(2,'2','fdgdf'),(3,'3','hjfghg'),(4,'4','fgdgf'),(5,'5','gfdc');
/*!40000 ALTER TABLE `admin_records2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_contactr`
--

DROP TABLE IF EXISTS `client_contactr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_contactr` (
  `Client_id` int NOT NULL,
  `contact` bigint NOT NULL,
  PRIMARY KEY (`contact`),
  KEY `client_contactr_ibfk_1` (`Client_id`),
  CONSTRAINT `client_contactr_ibfk_1` FOREIGN KEY (`Client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_contactr`
--

LOCK TABLES `client_contactr` WRITE;
/*!40000 ALTER TABLE `client_contactr` DISABLE KEYS */;
INSERT INTO `client_contactr` VALUES (1,9879889868),(2,9789798877),(3,7889898899),(4,8965988966),(5,9878966568);
/*!40000 ALTER TABLE `client_contactr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'dsfs','dfg'),(2,'fdgdr','fgghrf'),(3,'dfgfd','ghf'),(4,'fgbhfg','hjkfg'),(5,'fghs','gh');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients1`
--

DROP TABLE IF EXISTS `clients1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients1` (
  `client_id` int NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `clients1_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients1`
--

LOCK TABLES `clients1` WRITE;
/*!40000 ALTER TABLE `clients1` DISABLE KEYS */;
INSERT INTO `clients1` VALUES (1,'fdsdfsd'),(2,'dserr'),(3,'dfgsfc'),(4,'fssfgd'),(5,'fgsdfg');
/*!40000 ALTER TABLE `clients1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients2`
--

DROP TABLE IF EXISTS `clients2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients2` (
  `client_id` int NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `clients2_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients2`
--

LOCK TABLES `clients2` WRITE;
/*!40000 ALTER TABLE `clients2` DISABLE KEYS */;
INSERT INTO `clients2` VALUES (1,'v'),(2,'q'),(3,'w'),(4,'t'),(5,'z');
/*!40000 ALTER TABLE `clients2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients3`
--

DROP TABLE IF EXISTS `clients3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients3` (
  `client_id` int NOT NULL,
  `password` varchar(30) NOT NULL,
  `client_type` varchar(10) NOT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `clients3_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients3`
--

LOCK TABLES `clients3` WRITE;
/*!40000 ALTER TABLE `clients3` DISABLE KEYS */;
INSERT INTO `clients3` VALUES (1,'v','Buyer'),(2,'q','Buyer'),(3,'w','Seller'),(4,'t','Buyer'),(5,'z','Seller');
/*!40000 ALTER TABLE `clients3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_clientr`
--

DROP TABLE IF EXISTS `comm_clientr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comm_clientr` (
  `comment_id` int NOT NULL,
  `date` date DEFAULT NULL,
  `comment_time` time DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `client_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `comm_clientr_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_clientr`
--

LOCK TABLES `comm_clientr` WRITE;
/*!40000 ALTER TABLE `comm_clientr` DISABLE KEYS */;
INSERT INTO `comm_clientr` VALUES (1,'2022-04-29','22:17:25','Good',1),(2,'2022-04-29','22:17:35','very good',1),(3,'2022-04-29','22:17:52','bad',2),(4,'2022-04-29','22:18:04','polluted',2),(5,'2022-04-29','22:18:10','clean',3);
/*!40000 ALTER TABLE `comm_clientr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentr`
--

DROP TABLE IF EXISTS `commentr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentr` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `Date` varchar(15) NOT NULL,
  `Comment_time` varchar(300) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentr`
--

LOCK TABLES `commentr` WRITE;
/*!40000 ALTER TABLE `commentr` DISABLE KEYS */;
INSERT INTO `commentr` VALUES (1,'2022-04-29','22:17:24.704149400','Good'),(2,'2022-04-29','22:17:34.814441400','very good'),(3,'2022-04-29','22:17:52.149384400','bad'),(4,'2022-04-29','22:18:04.210656600','polluted'),(5,'2022-04-29','22:18:10.473677200','clean');
/*!40000 ALTER TABLE `commentr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_clientr`
--

DROP TABLE IF EXISTS `pay_clientr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_clientr` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `account_no` bigint NOT NULL,
  `date` date NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `pay_clientr_ibfk_1` (`client_id`),
  CONSTRAINT `pay_clientr_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_clientr`
--

LOCK TABLES `pay_clientr` WRITE;
/*!40000 ALTER TABLE `pay_clientr` DISABLE KEYS */;
INSERT INTO `pay_clientr` VALUES (1,1,9356869863,'2022-04-29',1250000),(2,2,9828988689,'2022-04-29',1458999),(3,3,3524286989,'2022-04-29',1050000);
/*!40000 ALTER TABLE `pay_clientr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_clientr1`
--

DROP TABLE IF EXISTS `pay_clientr1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_clientr1` (
  `payment_id` int NOT NULL,
  `transaction_no` varchar(150) NOT NULL,
  PRIMARY KEY (`transaction_no`),
  KEY `pay_clientr1_ibfk_1` (`payment_id`),
  CONSTRAINT `pay_clientr1_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `pay_clientr` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_clientr1`
--

LOCK TABLES `pay_clientr1` WRITE;
/*!40000 ALTER TABLE `pay_clientr1` DISABLE KEYS */;
INSERT INTO `pay_clientr1` VALUES (1,'df668ds'),(2,'dff5648'),(3,'tr3589k');
/*!40000 ALTER TABLE `pay_clientr1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prop_clientr`
--

DROP TABLE IF EXISTS `prop_clientr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prop_clientr` (
  `property_id` int NOT NULL,
  `client_id` int NOT NULL,
  `description` varchar(300) NOT NULL,
  `price` int NOT NULL,
  `property_type` varchar(50) NOT NULL,
  `property_status` varchar(100) NOT NULL,
  PRIMARY KEY (`property_id`),
  KEY `prop_clientr_ibfk_1` (`client_id`),
  CONSTRAINT `prop_clientr_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prop_clientr_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `propertyr` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prop_clientr`
--

LOCK TABLES `prop_clientr` WRITE;
/*!40000 ALTER TABLE `prop_clientr` DISABLE KEYS */;
INSERT INTO `prop_clientr` VALUES (1,3,'\"2bhk thane west\nMumbai',5000000,'Flats','unsold'),(2,3,'\"2bhk kerala Ottapalam\nTown\"',4900000,'Flats','unsold'),(3,5,'\"shop complex\ngandhinagar\"',3000000,'Flats','unsold'),(4,5,'\"3bhk flat Ahmedabad\n\"',6000000,'Plots','unsold'),(5,3,'\"2bhk flat Rajkot\n\"',4000000,'Plots','unsold');
/*!40000 ALTER TABLE `prop_clientr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prop_commr`
--

DROP TABLE IF EXISTS `prop_commr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prop_commr` (
  `property_id` int NOT NULL,
  `comment_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `prop_commr_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `commentr` (`comment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prop_commr_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `propertyr` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prop_commr`
--

LOCK TABLES `prop_commr` WRITE;
/*!40000 ALTER TABLE `prop_commr` DISABLE KEYS */;
INSERT INTO `prop_commr` VALUES (1,1),(1,2),(1,4),(2,3),(5,5);
/*!40000 ALTER TABLE `prop_commr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertyr`
--

DROP TABLE IF EXISTS `propertyr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propertyr` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyr`
--

LOCK TABLES `propertyr` WRITE;
/*!40000 ALTER TABLE `propertyr` DISABLE KEYS */;
INSERT INTO `propertyr` VALUES (1,'Godrej prime','Koba ambapur rd gandhinagar Gujarat'),(2,'vatika villas','GIDC makarpura vadsar rd Gujarat'),(3,'bansari complex','a2 kalali pratapgarh MP'),(4,'decora hieghts','siyachaur mohamdabad UP'),(5,'silver hieghts','karchana gandhinagar Gujarat');
/*!40000 ALTER TABLE `propertyr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertyr1`
--

DROP TABLE IF EXISTS `propertyr1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propertyr1` (
  `property_id` int NOT NULL,
  `description` varchar(300) NOT NULL,
  `price` int NOT NULL,
  `property_type` varchar(50) NOT NULL,
  `property_status` varchar(100) NOT NULL,
  PRIMARY KEY (`property_id`),
  CONSTRAINT `propertyr1_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `propertyr` (`property_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyr1`
--

LOCK TABLES `propertyr1` WRITE;
/*!40000 ALTER TABLE `propertyr1` DISABLE KEYS */;
INSERT INTO `propertyr1` VALUES (1,'\"2bhk thane west\nMumbai\"',5000000,'Flats','unsold'),(2,'\"2bhk kerala Ottapalam\nTown\"',4900000,'Flats','unsold'),(3,'\"shop complex\ngandhinagar\"',3000000,'Flats','unsold'),(4,'\"3bhk flat Ahmedabad\n\"',6000000,'Plots','unsold'),(5,'\"2bhk flat Rajkot\n\"',4000000,'Plots','unsold');
/*!40000 ALTER TABLE `propertyr1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29 22:54:31
