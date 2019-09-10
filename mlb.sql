-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: mlb
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `lineups`
--

CREATE SCHEMA IF NOT EXISTS `mlb` DEFAULT CHARACTER SET latin1 ;
USE `mlb` ;

DROP TABLE IF EXISTS `lineups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineups` (
  `lineupNumber` int(11) NOT NULL,
  `date` date NOT NULL,
  `P` varchar(45) DEFAULT NULL,
  `C1B` varchar(45) DEFAULT NULL,
  `2B` varchar(45) DEFAULT NULL,
  `3B` varchar(45) DEFAULT NULL,
  `SS` varchar(45) DEFAULT NULL,
  `OF1` varchar(45) DEFAULT NULL,
  `OF2` varchar(45) DEFAULT NULL,
  `OF3` varchar(45) DEFAULT NULL,
  `UTIL` varchar(45) DEFAULT NULL,
  `slateName` varchar(45) NOT NULL,
  `projectedPoints` float DEFAULT NULL,
  `lineupType` varchar(45) NOT NULL,
  PRIMARY KEY (`date`,`slateName`,`lineupNumber`,`lineupType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `date` date NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Position` varchar(45) DEFAULT NULL,
  `Team` varchar(45) DEFAULT NULL,
  `Salary` float DEFAULT NULL,
  `RotoWireProjection` float DEFAULT NULL,
  `RotoGrindersProjection` float DEFAULT NULL,
  `fanduelPoints` float DEFAULT NULL,
  PRIMARY KEY (`date`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-10  9:28:43
