-- MySQL dump 10.13  Distrib 5.5.25, for Win32 (x86)
--
-- Host: localhost    Database: investigation
-- ------------------------------------------------------
-- Server version	5.5.25

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

--hello i am dinesh
-- Table structure for table `clogin`
--

DROP TABLE IF EXISTS `clogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clogin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clogin`
--

LOCK TABLES `clogin` WRITE;
/*!40000 ALTER TABLE `clogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `clogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaint` (
  `complaintid` varchar(10) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `detailsuspect` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `date` varchar(12) DEFAULT NULL,
  `complainttype` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES ('111','priyanka','murder','murder','1jan1995','civil'),('222','nikhil','murder','murder','3nov','civil'),('333','niku','murder','murder','1july2016','civil');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cregister`
--

DROP TABLE IF EXISTS `cregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cregister` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phonenumber` int(11) DEFAULT NULL,
  `emailid` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cregister`
--

LOCK TABLES `cregister` WRITE;
/*!40000 ALTER TABLE `cregister` DISABLE KEYS */;
INSERT INTO `cregister` VALUES ('priyanka','123','priyanka','Female','229',12345678,'priyankajain95.pj@gmail.com');
/*!40000 ALTER TABLE `cregister` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crime`
--

DROP TABLE IF EXISTS `crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime` (
  `username` varchar(30) DEFAULT NULL,
  `nameofinformant` varchar(20) DEFAULT NULL,
  `addressofinformant` varchar(20) DEFAULT NULL,
  `detailofsuspect` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `dateofreporting` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime`
--

LOCK TABLES `crime` WRITE;
/*!40000 ALTER TABLE `crime` DISABLE KEYS */;
INSERT INTO `crime` VALUES ('priyanka','priyanka','229','murder','murder','31july2016'),('niku','niku','burari','murder','murder','5nov2016');
/*!40000 ALTER TABLE `crime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fir`
--

DROP TABLE IF EXISTS `fir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fir` (
  `firno` int(10) DEFAULT NULL,
  `district` varchar(10) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `date` varchar(12) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL,
  `placeofoccurance` varchar(15) DEFAULT NULL,
  `typeofinformation` varchar(20) DEFAULT NULL,
  `passportnumber` varchar(15) DEFAULT NULL,
  `complaintno` varchar(10) DEFAULT NULL,
  `receivedtime` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fir`
--

LOCK TABLES `fir` WRITE;
/*!40000 ALTER TABLE `fir` DISABLE KEYS */;
/*!40000 ALTER TABLE `fir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missing`
--

DROP TABLE IF EXISTS `missing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missing` (
  `firno` int(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `dateofmissing` varchar(12) DEFAULT NULL,
  `dateofreport` varchar(12) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `complexion` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missing`
--

LOCK TABLES `missing` WRITE;
/*!40000 ALTER TABLE `missing` DISABLE KEYS */;
INSERT INTO `missing` VALUES (111,'priyanka','sonepat','soepat','1july','1july ','Female',21,'white','5\'2inch'),(123,'priyanka','sonepat','soneapt','1july','2july','Female',21,'white','5\'2inch');
/*!40000 ALTER TABLE `missing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mostwanted`
--

DROP TABLE IF EXISTS `mostwanted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mostwanted` (
  `name` varchar(20) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `typeofcrime` varchar(20) DEFAULT NULL,
  `complexion` varchar(15) DEFAULT NULL,
  `hair` varchar(10) DEFAULT NULL,
  `built` varchar(10) DEFAULT NULL,
  `passportnumber` varchar(15) DEFAULT NULL,
  `casedescription` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mostwanted`
--

LOCK TABLES `mostwanted` WRITE;
/*!40000 ALTER TABLE `mostwanted` DISABLE KEYS */;
INSERT INTO `mostwanted` VALUES ('anamika',21,'103','murder','white','black','123','12345','murder at sonepat');
/*!40000 ALTER TABLE `mostwanted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slogin`
--

DROP TABLE IF EXISTS `slogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slogin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slogin`
--

LOCK TABLES `slogin` WRITE;
/*!40000 ALTER TABLE `slogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `slogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sregister`
--

DROP TABLE IF EXISTS `sregister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sregister` (
  `name` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `designation` varchar(15) DEFAULT NULL,
  `phonenumber` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `dob` varchar(12) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sregister`
--

LOCK TABLES `sregister` WRITE;
/*!40000 ALTER TABLE `sregister` DISABLE KEYS */;
INSERT INTO `sregister` VALUES ('nikhil','sharma','commisioner',12345678,'Male','5nov1994','burari delhi','nikhil','sharma');
/*!40000 ALTER TABLE `sregister` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-01  9:43:36
