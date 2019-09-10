-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: basketball
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
-- Table structure for table `box_score_urls`
--

CREATE SCHEMA IF NOT EXISTS `basketball` DEFAULT CHARACTER SET latin1 ;
USE `basketball` ;

DROP TABLE IF EXISTS `box_score_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_score_urls` (
  `idboxScoreUrls` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  PRIMARY KEY (`idboxScoreUrls`),
  UNIQUE KEY `url_UNIQUE` (`url`(255)),
  KEY `boxScoreDateFK_idx` (`dateID`),
  CONSTRAINT `boxScoreDateFK` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4050 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `futures`
--

DROP TABLE IF EXISTS `futures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `futures` (
  `idfeatures` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `fanduel` int(11) DEFAULT NULL,
  `draftkings` int(11) DEFAULT NULL,
  `blocksDPA` float DEFAULT NULL,
  `pointsDPA` float DEFAULT NULL,
  `stealsDPA` float DEFAULT NULL,
  `AST_DPA` float DEFAULT NULL,
  `turnoversDPA` float DEFAULT NULL,
  `totalReboundsDPA` float DEFAULT NULL,
  `tripleDoubleDPA` float DEFAULT NULL,
  `doubleDoubleDPA` float DEFAULT NULL,
  `3PM_DPA` float DEFAULT NULL,
  `oReboundDPA` float DEFAULT NULL,
  `dReboundDPA` float DEFAULT NULL,
  `minutesDPA` float DEFAULT NULL,
  `FG_DPA` float DEFAULT NULL,
  `FGA_DPA` float DEFAULT NULL,
  `FGP_DPA` float DEFAULT NULL,
  `3PA_DPA` float DEFAULT NULL,
  `3PP_DPA` float DEFAULT NULL,
  `FTM_DPA` float DEFAULT NULL,
  `FTA_DPA` float DEFAULT NULL,
  `FTP_DPA` float DEFAULT NULL,
  `personalFoulsDPA` float DEFAULT NULL,
  `plusMinusDPA` float DEFAULT NULL,
  `trueShootingP_DPA` float DEFAULT NULL,
  `eFG_DPA` float DEFAULT NULL,
  `freeThrowAttemptRateDPA` float DEFAULT NULL,
  `3PointAttemptRateDPA` float DEFAULT NULL,
  `oReboundP_DPA` float DEFAULT NULL,
  `dReboundP_DPA` float DEFAULT NULL,
  `totalReboundP_DPA` float DEFAULT NULL,
  `ASTP_DPA` float DEFAULT NULL,
  `STP_DPA` float DEFAULT NULL,
  `BLKP_DPA` float DEFAULT NULL,
  `turnoverP_DPA` float DEFAULT NULL,
  `USG_DPA` float DEFAULT NULL,
  `oRatingDPA` float DEFAULT NULL,
  `dRatingDPA` float DEFAULT NULL,
  `blocksDPA_7` float DEFAULT NULL,
  `pointsDPA_7` float DEFAULT NULL,
  `stealsDPA_7` float DEFAULT NULL,
  `AST_DPA_7` float DEFAULT NULL,
  `turnoversDPA_7` float DEFAULT NULL,
  `totalReboundsDPA_7` float DEFAULT NULL,
  `tripleDoubleDPA_7` float DEFAULT NULL,
  `doubleDoubleDPA_7` float DEFAULT NULL,
  `3PM_DPA_7` float DEFAULT NULL,
  `oReboundDPA_7` float DEFAULT NULL,
  `dReboundDPA_7` float DEFAULT NULL,
  `minutesDPA_7` float DEFAULT NULL,
  `FG_DPA_7` float DEFAULT NULL,
  `FGA_DPA_7` float DEFAULT NULL,
  `FGP_DPA_7` float DEFAULT NULL,
  `3PA_DPA_7` float DEFAULT NULL,
  `3PP_DPA_7` float DEFAULT NULL,
  `FTM_DPA_7` float DEFAULT NULL,
  `FTA_DPA_7` float DEFAULT NULL,
  `FTP_DPA_7` float DEFAULT NULL,
  `personalFoulsDPA_7` float DEFAULT NULL,
  `plusMinusDPA_7` float DEFAULT NULL,
  `trueShootingP_DPA_7` float DEFAULT NULL,
  `eFG_DPA_7` float DEFAULT NULL,
  `freeThrowAttemptRateDPA_7` float DEFAULT NULL,
  `3PointAttemptRateDPA_7` float DEFAULT NULL,
  `oReboundP_DPA_7` float DEFAULT NULL,
  `dReboundP_DPA_7` float DEFAULT NULL,
  `totalReboundP_DPA_7` float DEFAULT NULL,
  `ASTP_DPA_7` float DEFAULT NULL,
  `STP_DPA_7` float DEFAULT NULL,
  `BLKP_DPA_7` float DEFAULT NULL,
  `turnoverP_DPA_7` float DEFAULT NULL,
  `USG_DPA_7` float DEFAULT NULL,
  `oRatingDPA_7` float DEFAULT NULL,
  `dRatingDPA_7` float DEFAULT NULL,
  `blocksDPA_21` float DEFAULT NULL,
  `pointsDPA_21` float DEFAULT NULL,
  `stealsDPA_21` float DEFAULT NULL,
  `AST_DPA_21` float DEFAULT NULL,
  `turnoversDPA_21` float DEFAULT NULL,
  `totalReboundsDPA_21` float DEFAULT NULL,
  `tripleDoubleDPA_21` float DEFAULT NULL,
  `doubleDoubleDPA_21` float DEFAULT NULL,
  `3PM_DPA_21` float DEFAULT NULL,
  `oReboundDPA_21` float DEFAULT NULL,
  `dReboundDPA_21` float DEFAULT NULL,
  `minutesDPA_21` float DEFAULT NULL,
  `FG_DPA_21` float DEFAULT NULL,
  `FGA_DPA_21` float DEFAULT NULL,
  `FGP_DPA_21` float DEFAULT NULL,
  `3PA_DPA_21` float DEFAULT NULL,
  `3PP_DPA_21` float DEFAULT NULL,
  `FTM_DPA_21` float DEFAULT NULL,
  `FTA_DPA_21` float DEFAULT NULL,
  `FTP_DPA_21` float DEFAULT NULL,
  `personalFoulsDPA_21` float DEFAULT NULL,
  `plusMinusDPA_21` float DEFAULT NULL,
  `trueShootingP_DPA_21` float DEFAULT NULL,
  `eFG_DPA_21` float DEFAULT NULL,
  `freeThrowAttemptRateDPA_21` float DEFAULT NULL,
  `3PointAttemptRateDPA_21` float DEFAULT NULL,
  `oReboundP_DPA_21` float DEFAULT NULL,
  `dReboundP_DPA_21` float DEFAULT NULL,
  `totalReboundP_DPA_21` float DEFAULT NULL,
  `ASTP_DPA_21` float DEFAULT NULL,
  `STP_DPA_21` float DEFAULT NULL,
  `BLKP_DPA_21` float DEFAULT NULL,
  `turnoverP_DPA_21` float DEFAULT NULL,
  `USG_DPA_21` float DEFAULT NULL,
  `oRatingDPA_21` float DEFAULT NULL,
  `dRatingDPA_21` float DEFAULT NULL,
  `winsTeam` float DEFAULT NULL,
  `winsTeam7` float DEFAULT NULL,
  `winsTeam21` float DEFAULT NULL,
  `lossesTeam` float DEFAULT NULL,
  `lossesTeam7` float DEFAULT NULL,
  `lossesTeam21` float DEFAULT NULL,
  `ortTeam` float DEFAULT NULL,
  `ortTeam7` float DEFAULT NULL,
  `ortTeam21` float DEFAULT NULL,
  `drtTeam` float DEFAULT NULL,
  `drtTeam7` float DEFAULT NULL,
  `drtTeam21` float DEFAULT NULL,
  `avgPointsAllowedTeam` float DEFAULT NULL,
  `avgPointsAllowedTeam7` float DEFAULT NULL,
  `avgPointsAllowed21` float DEFAULT NULL,
  `avgPointsScoredTeam` float DEFAULT NULL,
  `avgPointsScoredTeam7` float DEFAULT NULL,
  `avgPointsScoredTeam21` float DEFAULT NULL,
  `paceTeam` float DEFAULT NULL,
  `paceTeam7` float DEFAULT NULL,
  `paceTeam21` float DEFAULT NULL,
  `efgpTeam` float DEFAULT NULL,
  `efgpTeam7` float DEFAULT NULL,
  `efgpTeam21` float DEFAULT NULL,
  `turnoverpTeam` float DEFAULT NULL,
  `turnoverpTeam7` float DEFAULT NULL,
  `turnoverpTeam21` float DEFAULT NULL,
  `orpTeam` float DEFAULT NULL,
  `orpTeam7` float DEFAULT NULL,
  `orpTeam21` float DEFAULT NULL,
  `ftperfgaTeam` float DEFAULT NULL,
  `ftperfgaTeam7` float DEFAULT NULL,
  `ftperfgaTeam21` float DEFAULT NULL,
  `fgTeam` float DEFAULT NULL,
  `fgTeam7` float DEFAULT NULL,
  `fgTeam21` float DEFAULT NULL,
  `fgaTeam` float DEFAULT NULL,
  `fgaTeam7` float DEFAULT NULL,
  `fgaTeam21` float DEFAULT NULL,
  `fgpTeam` float DEFAULT NULL,
  `fgpTeam7` float DEFAULT NULL,
  `fgpTeam21` float DEFAULT NULL,
  `3pTeam` float DEFAULT NULL,
  `3pTeam7` float DEFAULT NULL,
  `3pTeam21` float DEFAULT NULL,
  `3paTeam` float DEFAULT NULL,
  `3paTeam7` float DEFAULT NULL,
  `3paTeam21` float DEFAULT NULL,
  `3ppTeam` float DEFAULT NULL,
  `3ppTeam7` float DEFAULT NULL,
  `3ppTeam21` float DEFAULT NULL,
  `ftTeam` float DEFAULT NULL,
  `ftTeam7` float DEFAULT NULL,
  `ftTeam21` float DEFAULT NULL,
  `ftaTeam` float DEFAULT NULL,
  `ftaTeam7` float DEFAULT NULL,
  `ftaTeam21` float DEFAULT NULL,
  `ftpTeam` float DEFAULT NULL,
  `ftpTeam7` float DEFAULT NULL,
  `ftpTeam21` float DEFAULT NULL,
  `oRebTeam` float DEFAULT NULL,
  `oRebTeam7` float DEFAULT NULL,
  `oRebTeam21` float DEFAULT NULL,
  `dRebTeam` float DEFAULT NULL,
  `dRebTeam7` float DEFAULT NULL,
  `dRebTeam21` float DEFAULT NULL,
  `tRebTeam` float DEFAULT NULL,
  `tRebTeam7` float DEFAULT NULL,
  `tRebTeam21` float DEFAULT NULL,
  `astTeam` float DEFAULT NULL,
  `astTeam7` float DEFAULT NULL,
  `astTeam21` float DEFAULT NULL,
  `stlTeam` float DEFAULT NULL,
  `stlTeam7` float DEFAULT NULL,
  `stlTeam21` float DEFAULT NULL,
  `blocksTeam` float DEFAULT NULL,
  `blocksTeam7` float DEFAULT NULL,
  `blocksTeam21` float DEFAULT NULL,
  `turnoversTeam` float DEFAULT NULL,
  `turnoversTeam7` float DEFAULT NULL,
  `turnoversTeam21` float DEFAULT NULL,
  `pfTeam` float DEFAULT NULL,
  `pfTeam7` float DEFAULT NULL,
  `pfTeam21` float DEFAULT NULL,
  `tspTeam` float DEFAULT NULL,
  `tspTeam7` float DEFAULT NULL,
  `tspTeam21` float DEFAULT NULL,
  `3parTeam` float DEFAULT NULL,
  `3parTeam7` float DEFAULT NULL,
  `3parTeam21` float DEFAULT NULL,
  `ftarTeam` float DEFAULT NULL,
  `ftarTeam7` float DEFAULT NULL,
  `ftarTeam21` float DEFAULT NULL,
  `drpTeam` float DEFAULT NULL,
  `drpTeam7` float DEFAULT NULL,
  `drpTeam21` float DEFAULT NULL,
  `trpTeam` float DEFAULT NULL,
  `trpTeam7` float DEFAULT NULL,
  `trpTeam21` float DEFAULT NULL,
  `astpTeam` float DEFAULT NULL,
  `astpTeam7` float DEFAULT NULL,
  `astpTeam21` float DEFAULT NULL,
  `stlpTeam` float DEFAULT NULL,
  `stlpTeam7` float DEFAULT NULL,
  `stlpTeam21` float DEFAULT NULL,
  `blkpTeam` float DEFAULT NULL,
  `blkpTeam7` float DEFAULT NULL,
  `blkpTeam21` float DEFAULT NULL,
  `points1qTeam` float DEFAULT NULL,
  `points1qTeam7` float DEFAULT NULL,
  `points1qTeam21` float DEFAULT NULL,
  `points2qTeam` float DEFAULT NULL,
  `points2qTeam7` float DEFAULT NULL,
  `points2qTeam21` float DEFAULT NULL,
  `points3qTeam` float DEFAULT NULL,
  `points3qTeam7` float DEFAULT NULL,
  `points3qTeam21` float DEFAULT NULL,
  `points4qTeam` float DEFAULT NULL,
  `points4qTeam7` float DEFAULT NULL,
  `points4qTeam21` float DEFAULT NULL,
  `winsOppTeam` float DEFAULT NULL,
  `winsOppTeam7` float DEFAULT NULL,
  `winsOppTeam21` float DEFAULT NULL,
  `lossesOppTeam` float DEFAULT NULL,
  `lossesOppTeam7` float DEFAULT NULL,
  `lossesOppTeam21` float DEFAULT NULL,
  `ortOppTeam` float DEFAULT NULL,
  `ortOppTeam7` float DEFAULT NULL,
  `ortOppTeam21` float DEFAULT NULL,
  `drtOppTeam` float DEFAULT NULL,
  `drtOppTeam7` float DEFAULT NULL,
  `drtOppTeam21` float DEFAULT NULL,
  `avgPointsAllowedOppTeam` float DEFAULT NULL,
  `avgPointsAllowedOppTeam7` float DEFAULT NULL,
  `avgPointsAllowedOpp21` float DEFAULT NULL,
  `avgPointsScoredOppTeam` float DEFAULT NULL,
  `avgPointsScoredOppTeam7` float DEFAULT NULL,
  `avgPointsScoredOppTeam21` float DEFAULT NULL,
  `paceOppTeam` float DEFAULT NULL,
  `paceOppTeam7` float DEFAULT NULL,
  `paceOppTeam21` float DEFAULT NULL,
  `efgpOppTeam` float DEFAULT NULL,
  `efgpOppTeam7` float DEFAULT NULL,
  `efgpOppTeam21` float DEFAULT NULL,
  `turnoverpOppTeam` float DEFAULT NULL,
  `turnoverpOppTeam7` float DEFAULT NULL,
  `turnoverpOppTeam21` float DEFAULT NULL,
  `orpOppTeam` float DEFAULT NULL,
  `orpOppTeam7` float DEFAULT NULL,
  `orpOppTeam21` float DEFAULT NULL,
  `ftperfgaOppTeam` float DEFAULT NULL,
  `ftperfgaOppTeam7` float DEFAULT NULL,
  `ftperfgaOppTeam21` float DEFAULT NULL,
  `fgOppTeam` float DEFAULT NULL,
  `fgOppTeam7` float DEFAULT NULL,
  `fgOppTeam21` float DEFAULT NULL,
  `fgaOppTeam` float DEFAULT NULL,
  `fgaOppTeam7` float DEFAULT NULL,
  `fgaOppTeam21` float DEFAULT NULL,
  `fgpOppTeam` float DEFAULT NULL,
  `fgpOppTeam7` float DEFAULT NULL,
  `fgpOppTeam21` float DEFAULT NULL,
  `3pOppTeam` float DEFAULT NULL,
  `3pOppTeam7` float DEFAULT NULL,
  `3pOppTeam21` float DEFAULT NULL,
  `3paOppTeam` float DEFAULT NULL,
  `3paOppTeam7` float DEFAULT NULL,
  `3paOppTeam21` float DEFAULT NULL,
  `3ppOppTeam` float DEFAULT NULL,
  `3ppOppTeam7` float DEFAULT NULL,
  `3ppOppTeam21` float DEFAULT NULL,
  `ftOppTeam` float DEFAULT NULL,
  `ftOppTeam7` float DEFAULT NULL,
  `ftOppTeam21` float DEFAULT NULL,
  `ftaOppTeam` float DEFAULT NULL,
  `ftaOppTeam7` float DEFAULT NULL,
  `ftaOppTeam21` float DEFAULT NULL,
  `ftpOppTeam` float DEFAULT NULL,
  `ftpOppTeam7` float DEFAULT NULL,
  `ftpOppTeam21` float DEFAULT NULL,
  `oRebOppTeam` float DEFAULT NULL,
  `oRebOppTeam7` float DEFAULT NULL,
  `oRebOppTeam21` float DEFAULT NULL,
  `dRebOppTeam` float DEFAULT NULL,
  `dRebOppTeam7` float DEFAULT NULL,
  `dRebOppTeam21` float DEFAULT NULL,
  `tRebOppTeam` float DEFAULT NULL,
  `tRebOppTeam7` float DEFAULT NULL,
  `tRebOppTeam21` float DEFAULT NULL,
  `astOppTeam` float DEFAULT NULL,
  `astOppTeam7` float DEFAULT NULL,
  `astOppTeam21` float DEFAULT NULL,
  `stlOppTeam` float DEFAULT NULL,
  `stlOppTeam7` float DEFAULT NULL,
  `stlOppTeam21` float DEFAULT NULL,
  `blocksOppTeam` float DEFAULT NULL,
  `blocksOppTeam7` float DEFAULT NULL,
  `blocksOppTeam21` float DEFAULT NULL,
  `turnoversOppTeam` float DEFAULT NULL,
  `turnoversOppTeam7` float DEFAULT NULL,
  `turnoversOppTeam21` float DEFAULT NULL,
  `pfOppTeam` float DEFAULT NULL,
  `pfOppTeam7` float DEFAULT NULL,
  `pfOppTeam21` float DEFAULT NULL,
  `tspOppTeam` float DEFAULT NULL,
  `tspOppTeam7` float DEFAULT NULL,
  `tspOppTeam21` float DEFAULT NULL,
  `3parOppTeam` float DEFAULT NULL,
  `3parOppTeam7` float DEFAULT NULL,
  `3parOppTeam21` float DEFAULT NULL,
  `ftarOppTeam` float DEFAULT NULL,
  `ftarOppTeam7` float DEFAULT NULL,
  `ftarOppTeam21` float DEFAULT NULL,
  `drpOppTeam` float DEFAULT NULL,
  `drpOppTeam7` float DEFAULT NULL,
  `drpOppTeam21` float DEFAULT NULL,
  `trpOppTeam` float DEFAULT NULL,
  `trpOppTeam7` float DEFAULT NULL,
  `trpOppTeam21` float DEFAULT NULL,
  `astpOppTeam` float DEFAULT NULL,
  `astpOppTeam7` float DEFAULT NULL,
  `astpOppTeam21` float DEFAULT NULL,
  `stlpOppTeam` float DEFAULT NULL,
  `stlpOppTeam7` float DEFAULT NULL,
  `stlpOppTeam21` float DEFAULT NULL,
  `blkpOppTeam` float DEFAULT NULL,
  `blkpOppTeam7` float DEFAULT NULL,
  `blkpOppTeam21` float DEFAULT NULL,
  `points1qOppTeam` float DEFAULT NULL,
  `points1qOppTeam7` float DEFAULT NULL,
  `points1qOppTeam21` float DEFAULT NULL,
  `points2qOppTeam` float DEFAULT NULL,
  `points2qOppTeam7` float DEFAULT NULL,
  `points2qOppTeam21` float DEFAULT NULL,
  `points3qOppTeam` float DEFAULT NULL,
  `points3qOppTeam7` float DEFAULT NULL,
  `points3qOppTeam21` float DEFAULT NULL,
  `points4qOppTeam` float DEFAULT NULL,
  `points4qOppTeam7` float DEFAULT NULL,
  `points4qOppTeam21` float DEFAULT NULL,
  `blocksTvP` float DEFAULT NULL,
  `pointsTvP` float DEFAULT NULL,
  `stealsTvP` float DEFAULT NULL,
  `assistsTvP` float DEFAULT NULL,
  `turnoversTvP` float DEFAULT NULL,
  `tReboundsTvP` float DEFAULT NULL,
  `dddTvP` float DEFAULT NULL,
  `ddTvP` float DEFAULT NULL,
  `3pmTvP` float DEFAULT NULL,
  `3paTvP` float DEFAULT NULL,
  `oReboundsTvP` float DEFAULT NULL,
  `dReboundsTvP` float DEFAULT NULL,
  `minutesTvP` float DEFAULT NULL,
  `fgTvP` float DEFAULT NULL,
  `fgaTvP` float DEFAULT NULL,
  `ftTvP` float DEFAULT NULL,
  `ftaTvP` float DEFAULT NULL,
  `bpmTvP` float DEFAULT NULL,
  `ppmTvP` float DEFAULT NULL,
  `spmTvP` float DEFAULT NULL,
  `apmTvP` float DEFAULT NULL,
  `tpmTvP` float DEFAULT NULL,
  `dddpgTvP` float DEFAULT NULL,
  `ddpgTvP` float DEFAULT NULL,
  `3ppTvP` float DEFAULT NULL,
  `orpmTvP` float DEFAULT NULL,
  `drpmTvP` float DEFAULT NULL,
  `fgpTvP` float DEFAULT NULL,
  `ftpTvP` float DEFAULT NULL,
  `usgTvP` float DEFAULT NULL,
  `ortTvP` float DEFAULT NULL,
  `drtTvP` float DEFAULT NULL,
  `tsTvP` float DEFAULT NULL,
  `efgTvP` float DEFAULT NULL,
  `blocksTvP7` float DEFAULT NULL,
  `pointsTvP7` float DEFAULT NULL,
  `stealsTvP7` float DEFAULT NULL,
  `assistsTvP7` float DEFAULT NULL,
  `turnoversTvP7` float DEFAULT NULL,
  `tReboundsTvP7` float DEFAULT NULL,
  `dddTvP7` float DEFAULT NULL,
  `ddTvP7` float DEFAULT NULL,
  `3pmTvP7` float DEFAULT NULL,
  `3paTvP7` float DEFAULT NULL,
  `oReboundsTvP7` float DEFAULT NULL,
  `dReboundsTvP7` float DEFAULT NULL,
  `minutesTvP7` float DEFAULT NULL,
  `fgTvP7` float DEFAULT NULL,
  `fgaTvP7` float DEFAULT NULL,
  `ftTvP7` float DEFAULT NULL,
  `ftaTvP7` float DEFAULT NULL,
  `bpmTvP7` float DEFAULT NULL,
  `ppmTvP7` float DEFAULT NULL,
  `spmTvP7` float DEFAULT NULL,
  `apmTvP7` float DEFAULT NULL,
  `tpmTvP7` float DEFAULT NULL,
  `dddpgTvP7` float DEFAULT NULL,
  `ddpgTvP7` float DEFAULT NULL,
  `3ppTvP7` float DEFAULT NULL,
  `orpmTvP7` float DEFAULT NULL,
  `drpmTvP7` float DEFAULT NULL,
  `fgpTvP7` float DEFAULT NULL,
  `ftpTvP7` float DEFAULT NULL,
  `usgTvP7` float DEFAULT NULL,
  `ortTvP7` float DEFAULT NULL,
  `drtTvP7` float DEFAULT NULL,
  `tsTvP7` float DEFAULT NULL,
  `efgTvP7` float DEFAULT NULL,
  `blocksTvP21` float DEFAULT NULL,
  `pointsTvP21` float DEFAULT NULL,
  `stealsTvP21` float DEFAULT NULL,
  `assistsTvP21` float DEFAULT NULL,
  `turnoversTvP21` float DEFAULT NULL,
  `tReboundsTvP21` float DEFAULT NULL,
  `dddTvP21` float DEFAULT NULL,
  `ddTvP21` float DEFAULT NULL,
  `3pmTvP21` float DEFAULT NULL,
  `3paTvP21` float DEFAULT NULL,
  `oReboundsTvP21` float DEFAULT NULL,
  `dReboundsTvP21` float DEFAULT NULL,
  `minutesTvP21` float DEFAULT NULL,
  `fgTvP21` float DEFAULT NULL,
  `fgaTvP21` float DEFAULT NULL,
  `ftTvP21` float DEFAULT NULL,
  `ftaTvP21` float DEFAULT NULL,
  `bpmTvP21` float DEFAULT NULL,
  `ppmTvP21` float DEFAULT NULL,
  `spmTvP21` float DEFAULT NULL,
  `apmTvP21` float DEFAULT NULL,
  `tpmTvP21` float DEFAULT NULL,
  `dddpgTvP21` float DEFAULT NULL,
  `ddpgTvP21` float DEFAULT NULL,
  `3ppTvP21` float DEFAULT NULL,
  `orpmTvP21` float DEFAULT NULL,
  `drpmTvP21` float DEFAULT NULL,
  `fgpTvP21` float DEFAULT NULL,
  `ftpTvP21` float DEFAULT NULL,
  `usgTvP21` float DEFAULT NULL,
  `ortTvP21` float DEFAULT NULL,
  `drtTvP21` float DEFAULT NULL,
  `tsTvP21` float DEFAULT NULL,
  `efgTvP21` float DEFAULT NULL,
  `projMinutes` float DEFAULT NULL,
  `fanduelPts` float DEFAULT NULL,
  `draftkingsPts` float DEFAULT NULL,
  PRIMARY KEY (`idfeatures`)
) ENGINE=InnoDB AUTO_INCREMENT=157970 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_details`
--

DROP TABLE IF EXISTS `game_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_details` (
  `gameID` int(11) NOT NULL AUTO_INCREMENT,
  `dateID` int(11) DEFAULT NULL,
  `homeTeam` varchar(45) DEFAULT NULL,
  `awayTeam` varchar(45) DEFAULT NULL,
  `gameTime` datetime DEFAULT NULL,
  PRIMARY KEY (`gameID`),
  UNIQUE KEY `gameID_UNIQUE` (`gameID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_odds`
--

DROP TABLE IF EXISTS `game_odds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_odds` (
  `homeID` int(11) DEFAULT NULL,
  `awayID` int(11) DEFAULT NULL,
  `homeMoneyLine` int(11) DEFAULT NULL,
  `awayMoneyLine` int(11) DEFAULT NULL,
  `idOdds` int(11) NOT NULL AUTO_INCREMENT,
  `homeSpread` float DEFAULT NULL,
  `awaySpread` float DEFAULT NULL,
  PRIMARY KEY (`idOdds`)
) ENGINE=InnoDB AUTO_INCREMENT=56685 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historic_lineups`
--

DROP TABLE IF EXISTS `historic_lineups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historic_lineups` (
  `dateID` int(11) NOT NULL,
  `date` varchar(45) NOT NULL,
  `PG1playerID` int(11) NOT NULL,
  `PG1` varchar(45) NOT NULL,
  `teamPG1` varchar(45) NOT NULL,
  `salaryPG1` int(11) NOT NULL,
  `projPointsPG1` double NOT NULL,
  `actualPointsPG1` double NOT NULL,
  `PG2playerID` int(11) NOT NULL,
  `PG2` varchar(45) NOT NULL,
  `teamPG2` varchar(45) NOT NULL,
  `salaryPG2` int(11) NOT NULL,
  `projPointsPG2` double NOT NULL,
  `actualPointsPG2` double NOT NULL,
  `SG1playerID` int(11) NOT NULL,
  `SG1` varchar(45) NOT NULL,
  `teamSG1` varchar(45) NOT NULL,
  `salarySG1` int(11) NOT NULL,
  `projPointsSG1` double NOT NULL,
  `actualPointsSG1` double NOT NULL,
  `SG2playerID` int(11) NOT NULL,
  `SG2` varchar(45) NOT NULL,
  `teamSG2` varchar(45) NOT NULL,
  `salarySG2` int(11) NOT NULL,
  `projPointsSG2` double NOT NULL,
  `actualPointsSG2` double NOT NULL,
  `SF1playerID` int(11) NOT NULL,
  `SF1` varchar(45) NOT NULL,
  `teamSF1` varchar(45) NOT NULL,
  `salarySF1` int(11) NOT NULL,
  `projPointsSF1` double NOT NULL,
  `actualPointsSF1` double NOT NULL,
  `SF2playerID` int(11) NOT NULL,
  `SF2` varchar(45) NOT NULL,
  `teamSF2` varchar(45) NOT NULL,
  `salarySF2` int(11) NOT NULL,
  `projPointsSF2` double NOT NULL,
  `actualPointsSF2` double NOT NULL,
  `PF1playerID` int(11) NOT NULL,
  `PF1` varchar(45) NOT NULL,
  `teamPF1` varchar(45) NOT NULL,
  `salaryPF1` int(11) NOT NULL,
  `projPointsPF1` double NOT NULL,
  `actualPointsPF1` double NOT NULL,
  `PF2playerID` int(11) NOT NULL,
  `PF2` varchar(45) NOT NULL,
  `teamPF2` varchar(45) NOT NULL,
  `salaryPF2` int(11) NOT NULL,
  `projPointsPF2` double NOT NULL,
  `actualPointsPF2` double NOT NULL,
  `CplayerID` int(11) NOT NULL,
  `C` varchar(45) NOT NULL,
  `teamC` varchar(45) NOT NULL,
  `salaryC` int(11) NOT NULL,
  `projPointsC` double NOT NULL,
  `actualPointsC` double NOT NULL,
  `projPointsLineup` double NOT NULL,
  `actualPointsLineup` double NOT NULL,
  `model` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `new_dates`
--

DROP TABLE IF EXISTS `new_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_dates` (
  `iddates` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  PRIMARY KEY (`iddates`),
  UNIQUE KEY `date_UNIQUE` (`date`),
  KEY `date_string` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=1533 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance` (
  `performanceID` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `totalRebounds` int(11) DEFAULT NULL,
  `tripleDouble` int(11) DEFAULT NULL,
  `doubleDouble` int(11) DEFAULT NULL,
  `fanduel` int(11) DEFAULT NULL,
  `draftkings` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `offensiveRebounds` int(11) DEFAULT NULL,
  `defensiveRebounds` float DEFAULT NULL,
  `minutesPlayed` float DEFAULT NULL,
  `fieldGoals` int(11) DEFAULT NULL,
  `fieldGoalsAttempted` int(11) DEFAULT NULL,
  `fieldGoalPercent` float DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `3PPercent` float DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `FTPercent` float DEFAULT NULL,
  `personalFouls` int(11) DEFAULT NULL,
  `plusMinus` int(11) DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `usagePercent` float DEFAULT NULL,
  `offensiveRating` int(11) DEFAULT NULL,
  `defensiveRating` int(11) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  `opponent` varchar(45) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `fanduelPosition` varchar(45) DEFAULT NULL,
  `draftkingsPosition` varchar(45) DEFAULT NULL,
  `fanduelPts` float DEFAULT '0',
  `draftkingsPts` float DEFAULT NULL,
  `simmonsProj` float DEFAULT NULL,
  `zoProj` float DEFAULT NULL,
  `hardawayProj` float DEFAULT NULL,
  `leProj` float DEFAULT NULL,
  `projMinutes` float DEFAULT NULL,
  `ridgeProj` float DEFAULT NULL,
  `mlpProj` float DEFAULT NULL,
  PRIMARY KEY (`performanceID`),
  KEY `performanceDate_idx` (`dateID`),
  KEY `playerPerformance_idx` (`playerID`),
  CONSTRAINT `datePerformance` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `playerPerformance` FOREIGN KEY (`playerID`) REFERENCES `player_reference` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=166041 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_daily_avg`
--

DROP TABLE IF EXISTS `player_daily_avg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_daily_avg` (
  `iddailyplayer` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `points` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `AST` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `tripleDouble` float DEFAULT NULL,
  `doubleDouble` float DEFAULT NULL,
  `3PM` float DEFAULT NULL,
  `oRebound` float DEFAULT NULL,
  `dRebound` float DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FTM` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `plusMinus` float DEFAULT NULL,
  `trueShootingP` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `3PointAttemptRate` float DEFAULT NULL,
  `oReboundP` float DEFAULT NULL,
  `dReboundP` float DEFAULT NULL,
  `totalReboundP` float DEFAULT NULL,
  `ASTP` float DEFAULT NULL,
  `STP` float DEFAULT NULL,
  `BLKP` float DEFAULT NULL,
  `turnoverP` float DEFAULT NULL,
  `USG` float DEFAULT NULL,
  `oRating` float DEFAULT NULL,
  `dRating` float DEFAULT NULL,
  PRIMARY KEY (`iddailyplayer`),
  KEY `playerDailyData_idx` (`playerID`),
  KEY `playerDailyDateID_idx` (`dateID`),
  CONSTRAINT `playerDailyDataPlayerID` FOREIGN KEY (`playerID`) REFERENCES `player_reference` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `playerDailyDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=339714 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_ownership`
--

DROP TABLE IF EXISTS `player_ownership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_ownership` (
  `idPlayerOwnership` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `playerID` int(11) NOT NULL,
  `competitionID` int(11) NOT NULL,
  `percentOwned` float DEFAULT NULL,
  PRIMARY KEY (`playerID`,`dateID`,`competitionID`),
  KEY `playerOwnershipWSAID_idx` (`playerID`),
  KEY `playerOwnershipWSADate_idx` (`dateID`),
  KEY `playerOwnershipCompID_idx` (`competitionID`),
  KEY `localplayerownid` (`idPlayerOwnership`),
  CONSTRAINT `playerOwnershipWSADate` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `playerOwnershipWSAID` FOREIGN KEY (`playerID`) REFERENCES `player_reference` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_reference`
--

DROP TABLE IF EXISTS `player_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_reference` (
  `playerID` int(11) NOT NULL AUTO_INCREMENT,
  `bbrefID` text,
  `rotogrindersID` int(11) DEFAULT NULL,
  `fanduelID` text,
  `draftkingsID` int(11) DEFAULT NULL,
  `rotowireID` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `playerName` varchar(100) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  `nickName` varchar(150) DEFAULT NULL,
  `rotoguruID` int(11) DEFAULT NULL,
  `pictureFileName` varchar(100) DEFAULT NULL,
  `linestarID` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`),
  UNIQUE KEY `playerid_UNIQUE` (`playerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3009 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_rotogrinders_proj_min`
--

DROP TABLE IF EXISTS `player_rotogrinders_proj_min`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_rotogrinders_proj_min` (
  `rotogrindersProjMinID` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `rotogrindersProjMin` int(11) DEFAULT NULL,
  PRIMARY KEY (`rotogrindersProjMinID`),
  KEY `playerID_idx` (`playerID`),
  KEY `dateID_idx` (`dateID`),
  CONSTRAINT `dateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `playerID` FOREIGN KEY (`playerID`) REFERENCES `player_reference` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_seven_daily_avg`
--

DROP TABLE IF EXISTS `player_seven_daily_avg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_seven_daily_avg` (
  `iddailysevenplayer` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `points` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `AST` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `tripleDouble` float DEFAULT NULL,
  `doubleDouble` float DEFAULT NULL,
  `3PM` float DEFAULT NULL,
  `oRebound` float DEFAULT NULL,
  `dRebound` float DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FTM` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `plusMinus` float DEFAULT NULL,
  `trueShootingP` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `3PointAttemptRate` float DEFAULT NULL,
  `oReboundP` float DEFAULT NULL,
  `dReboundP` float DEFAULT NULL,
  `totalReboundP` float DEFAULT NULL,
  `ASTP` float DEFAULT NULL,
  `STP` float DEFAULT NULL,
  `BLKP` float DEFAULT NULL,
  `turnoverP` float DEFAULT NULL,
  `USG` float DEFAULT NULL,
  `oRating` float DEFAULT NULL,
  `dRating` float DEFAULT NULL,
  PRIMARY KEY (`iddailysevenplayer`),
  KEY `playerSevenData_idx` (`playerID`),
  KEY `playerSevenDateID_idx` (`dateID`),
  CONSTRAINT `playerSevenDataPlayerID` FOREIGN KEY (`playerID`) REFERENCES `player_reference` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `playerSevenDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=357542 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `player_two_one_daily_avg`
--

DROP TABLE IF EXISTS `player_two_one_daily_avg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_two_one_daily_avg` (
  `iddailytwooneplayer` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `points` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `AST` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `tripleDouble` float DEFAULT NULL,
  `doubleDouble` float DEFAULT NULL,
  `3PM` float DEFAULT NULL,
  `oRebound` float DEFAULT NULL,
  `dRebound` float DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FTM` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `plusMinus` float DEFAULT NULL,
  `trueShootingP` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `3PointAttemptRate` float DEFAULT NULL,
  `oReboundP` float DEFAULT NULL,
  `dReboundP` float DEFAULT NULL,
  `totalReboundP` float DEFAULT NULL,
  `ASTP` float DEFAULT NULL,
  `STP` float DEFAULT NULL,
  `BLKP` float DEFAULT NULL,
  `turnoverP` float DEFAULT NULL,
  `USG` float DEFAULT NULL,
  `oRating` float DEFAULT NULL,
  `dRating` float DEFAULT NULL,
  PRIMARY KEY (`iddailytwooneplayer`),
  KEY `playerTwoOneData_idx` (`playerID`),
  KEY `playerTwoOneDateID_idx` (`dateID`),
  CONSTRAINT `playerTwoOneDataPlayerID` FOREIGN KEY (`playerID`) REFERENCES `player_reference` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `playerTwoOneDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=357730 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proj_lineups`
--

DROP TABLE IF EXISTS `proj_lineups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proj_lineups` (
  `lineupID` int(11) NOT NULL AUTO_INCREMENT,
  `dateID` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `modelNumber` int(11) DEFAULT NULL,
  `slate` varchar(45) DEFAULT NULL,
  `projectedPoints` double DEFAULT NULL,
  `actualPoints` double DEFAULT NULL,
  `PG1` varchar(45) DEFAULT NULL,
  `PG2` varchar(45) DEFAULT NULL,
  `SG1` varchar(45) DEFAULT NULL,
  `SG2` varchar(45) DEFAULT NULL,
  `SF1` varchar(45) DEFAULT NULL,
  `SF2` varchar(45) DEFAULT NULL,
  `PF1` varchar(45) DEFAULT NULL,
  `PF2` varchar(45) DEFAULT NULL,
  `C` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lineupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `slates`
--

DROP TABLE IF EXISTS `slates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slates` (
  `idslates` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `compName` text,
  `localCompID` int(11) NOT NULL,
  `games` int(11) DEFAULT NULL,
  `gpp` int(11) DEFAULT NULL,
  `doubleUP` int(11) DEFAULT NULL,
  PRIMARY KEY (`dateID`,`localCompID`),
  KEY `slatesToDates_idx` (`dateID`),
  KEY `localslatesid` (`idslates`),
  CONSTRAINT `slatesToDates` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_daily_avg_performance`
--

DROP TABLE IF EXISTS `team_daily_avg_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_daily_avg_performance` (
  `dailyAvgPerformanceID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `avgPointsAllowed` float DEFAULT NULL,
  `avgPointsScored` float DEFAULT NULL,
  `pace` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `FT/FGA` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3P` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FT` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `offensiveRebounds` float DEFAULT NULL,
  `defensiveRebounds` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `assists` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `points1Q` float DEFAULT NULL,
  `points2Q` float DEFAULT NULL,
  `points3Q` float DEFAULT NULL,
  `points4Q` float DEFAULT NULL,
  PRIMARY KEY (`dailyAvgPerformanceID`),
  KEY `dailyTeamPerformanceTeamID_idx` (`dailyTeamID`),
  KEY `dailyTeamPerformanceDateID_idx` (`dateID`),
  CONSTRAINT `dailyTeamPerformanceDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dailyTeamPerformanceTeamID` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16807 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_performance`
--

DROP TABLE IF EXISTS `team_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_performance` (
  `teamPerformanceID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) DEFAULT NULL,
  `dailyTeamOpponentID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `pointsAllowed` float DEFAULT NULL,
  `pointsScored` float DEFAULT NULL,
  `pace` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `FTperFGA` float DEFAULT NULL,
  `offensiveRating` float DEFAULT NULL,
  `defensiveRating` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3P` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `offensiveRebounds` int(11) DEFAULT NULL,
  `defensiveRebounds` int(11) DEFAULT NULL,
  `totalRebounds` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `blocks` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `personalFouls` int(11) DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `loss` int(11) DEFAULT NULL,
  `points1Q` float DEFAULT NULL,
  `points2Q` float DEFAULT NULL,
  `points3Q` float DEFAULT NULL,
  `points4Q` float DEFAULT NULL,
  PRIMARY KEY (`teamPerformanceID`),
  KEY `dailyTeamP_idx` (`dailyTeamID`),
  KEY `dailyTeamOppP_idx` (`dailyTeamOpponentID`),
  CONSTRAINT `dailyTeamOppP` FOREIGN KEY (`dailyTeamOpponentID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dailyTeamP` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10823 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_reference`
--

DROP TABLE IF EXISTS `team_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_reference` (
  `teamID` int(10) NOT NULL AUTO_INCREMENT,
  `bbreff` varchar(100) DEFAULT NULL,
  `wsa` varchar(45) DEFAULT NULL,
  `fanduel` varchar(45) DEFAULT NULL,
  `rotowire` varchar(45) DEFAULT NULL,
  `bovada` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  UNIQUE KEY `wsp_UNIQUE` (`wsa`),
  UNIQUE KEY `bbreff_UNIQUE` (`bbreff`),
  UNIQUE KEY `fanduel_UNIQUE` (`fanduel`),
  UNIQUE KEY `rotowire_UNIQUE` (`rotowire`),
  UNIQUE KEY `bovada_UNIQUE` (`bovada`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_seven_daily_avg_performance`
--

DROP TABLE IF EXISTS `team_seven_daily_avg_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_seven_daily_avg_performance` (
  `dailyAvgPerformanceID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `avgPointsAllowed` float DEFAULT NULL,
  `avgPointsScored` float DEFAULT NULL,
  `pace` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `FT/FGA` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3P` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FT` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `offensiveRebounds` float DEFAULT NULL,
  `defensiveRebounds` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `assists` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `points1Q` float DEFAULT NULL,
  `points2Q` float DEFAULT NULL,
  `points3Q` float DEFAULT NULL,
  `points4Q` float DEFAULT NULL,
  PRIMARY KEY (`dailyAvgPerformanceID`),
  KEY `dailyTeamPerformanceTeamID_seven_idx` (`dailyTeamID`),
  KEY `dailyTeamPerformanceDateID_seven_idx` (`dateID`),
  CONSTRAINT `dailyTeamPerformanceDateID_seven` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dailyTeamPerformanceTeamID_seven` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15341 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_seven_performance`
--

DROP TABLE IF EXISTS `team_seven_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_seven_performance` (
  `teamPerformanceID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) DEFAULT NULL,
  `dailyTeamOpponentID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `pointsAllowed` float DEFAULT NULL,
  `pointsScored` float DEFAULT NULL,
  `pace` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `FTperFGA` float DEFAULT NULL,
  `offensiveRating` float DEFAULT NULL,
  `defensiveRating` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3P` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `offensiveRebounds` int(11) DEFAULT NULL,
  `defensiveRebounds` int(11) DEFAULT NULL,
  `totalRebounds` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `blocks` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `personalFouls` int(11) DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `loss` int(11) DEFAULT NULL,
  `points1Q` float DEFAULT NULL,
  `points2Q` float DEFAULT NULL,
  `points3Q` float DEFAULT NULL,
  `points4Q` float DEFAULT NULL,
  PRIMARY KEY (`teamPerformanceID`),
  KEY `dailyTeamP_seven_idx` (`dailyTeamID`),
  KEY `dailyTeamOppP_seven_idx` (`dailyTeamOpponentID`),
  CONSTRAINT `dailyTeamOppP_seven` FOREIGN KEY (`dailyTeamOpponentID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dailyTeamP_seven` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_seven_vs_ball_handlers`
--

DROP TABLE IF EXISTS `team_seven_vs_ball_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_seven_vs_ball_handlers` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`)
) ENGINE=InnoDB AUTO_INCREMENT=41929 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_seven_vs_bigs`
--

DROP TABLE IF EXISTS `team_seven_vs_bigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_seven_vs_bigs` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `bigsTeamID_7_idx` (`dailyTeamID`),
  KEY `bigsDateID_7_idx` (`dateID`),
  CONSTRAINT `bigsDateID_7` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bigsTeamID_7` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41929 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_seven_vs_centers`
--

DROP TABLE IF EXISTS `team_seven_vs_centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_seven_vs_centers` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `centersTeamID_seven_idx` (`dailyTeamID`),
  KEY `centersDateID_seven_idx` (`dateID`),
  CONSTRAINT `centersDateID_seven` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `centersTeamID_seven` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41929 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_seven_vs_wings`
--

DROP TABLE IF EXISTS `team_seven_vs_wings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_seven_vs_wings` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `wingsTeamID_seven_idx` (`dailyTeamID`),
  KEY `wingsDateID_seven_idx` (`dateID`),
  CONSTRAINT `wingsDateID_seven` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wingsTeamID_seven` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41929 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_two_one_daily_avg_performance`
--

DROP TABLE IF EXISTS `team_two_one_daily_avg_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_two_one_daily_avg_performance` (
  `dailyAvgPerformanceID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `avgPointsAllowed` float DEFAULT NULL,
  `avgPointsScored` float DEFAULT NULL,
  `pace` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `FT/FGA` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3P` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FT` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `offensiveRebounds` float DEFAULT NULL,
  `defensiveRebounds` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `assists` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `points1Q` float DEFAULT NULL,
  `points2Q` float DEFAULT NULL,
  `points3Q` float DEFAULT NULL,
  `points4Q` float DEFAULT NULL,
  PRIMARY KEY (`dailyAvgPerformanceID`),
  KEY `dailyTeamPerformanceTeamID_two_one_idx` (`dailyTeamID`),
  KEY `dailyTeamPerformanceDateID_two_one_idx` (`dateID`),
  CONSTRAINT `dailyTeamPerformanceDateID_two_one` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dailyTeamPerformanceTeamID_two_one` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17897 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_two_one_performance`
--

DROP TABLE IF EXISTS `team_two_one_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_two_one_performance` (
  `teamPerformanceID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) DEFAULT NULL,
  `dailyTeamOpponentID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `pointsAllowed` float DEFAULT NULL,
  `pointsScored` float DEFAULT NULL,
  `pace` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `FTperFGA` float DEFAULT NULL,
  `offensiveRating` float DEFAULT NULL,
  `defensiveRating` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3P` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `offensiveRebounds` int(11) DEFAULT NULL,
  `defensiveRebounds` int(11) DEFAULT NULL,
  `totalRebounds` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `blocks` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `personalFouls` int(11) DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `win` int(11) DEFAULT NULL,
  `loss` int(11) DEFAULT NULL,
  `points1Q` float DEFAULT NULL,
  `points2Q` float DEFAULT NULL,
  `points3Q` float DEFAULT NULL,
  `points4Q` float DEFAULT NULL,
  PRIMARY KEY (`teamPerformanceID`),
  KEY `dailyTeamP_two_one_idx` (`dailyTeamID`),
  KEY `dailyTeamOppP_two_one_idx` (`dailyTeamOpponentID`),
  CONSTRAINT `dailyTeamOppP_two_one` FOREIGN KEY (`dailyTeamOpponentID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dailyTeamP_two_one` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_two_one_vs_ball_handlers`
--

DROP TABLE IF EXISTS `team_two_one_vs_ball_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_two_one_vs_ball_handlers` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`)
) ENGINE=InnoDB AUTO_INCREMENT=42236 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_two_one_vs_bigs`
--

DROP TABLE IF EXISTS `team_two_one_vs_bigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_two_one_vs_bigs` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `bigsTeamID_two_one_idx` (`dailyTeamID`),
  KEY `bigsDateID_two_one_idx` (`dateID`),
  CONSTRAINT `bigsDateID_two_one` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bigsTeamID_two_one` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42236 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_two_one_vs_centers`
--

DROP TABLE IF EXISTS `team_two_one_vs_centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_two_one_vs_centers` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `centersTeamID_two_one_idx` (`dailyTeamID`),
  KEY `centersDateID_two_one_idx` (`dateID`),
  CONSTRAINT `centersDateID_two_one` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `centersTeamID_two_one` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42236 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_two_one_vs_wings`
--

DROP TABLE IF EXISTS `team_two_one_vs_wings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_two_one_vs_wings` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `wingsTeamID_two_one_idx` (`dailyTeamID`),
  KEY `wingsDateID_two_one_idx` (`dateID`),
  CONSTRAINT `wingsDateID_two_one` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wingsTeamID_two_one` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42236 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_vs_ball_handlers`
--

DROP TABLE IF EXISTS `team_vs_ball_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_vs_ball_handlers` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`)
) ENGINE=InnoDB AUTO_INCREMENT=64041 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_vs_bigs`
--

DROP TABLE IF EXISTS `team_vs_bigs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_vs_bigs` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `bigsTeamID_idx` (`dailyTeamID`),
  KEY `bigsDateID_idx` (`dateID`),
  CONSTRAINT `bigsDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bigsTeamID` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64041 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_vs_centers`
--

DROP TABLE IF EXISTS `team_vs_centers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_vs_centers` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `centersTeamID_idx` (`dailyTeamID`),
  KEY `centersDateID_idx` (`dateID`),
  CONSTRAINT `centersDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `centersTeamID` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64041 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_vs_wings`
--

DROP TABLE IF EXISTS `team_vs_wings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_vs_wings` (
  `teamID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `blocks` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `steals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `turnovers` int(11) DEFAULT NULL,
  `tRebounds` int(11) DEFAULT NULL,
  `DDD` int(11) DEFAULT NULL,
  `DD` int(11) DEFAULT NULL,
  `3PM` int(11) DEFAULT NULL,
  `3PA` int(11) DEFAULT NULL,
  `oRebounds` int(11) DEFAULT NULL,
  `dRebounds` int(11) DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` int(11) DEFAULT NULL,
  `FGA` int(11) DEFAULT NULL,
  `FT` int(11) DEFAULT NULL,
  `FTA` int(11) DEFAULT NULL,
  `BPM` float DEFAULT NULL,
  `PPM` float DEFAULT NULL,
  `SPM` float DEFAULT NULL,
  `APM` float DEFAULT NULL,
  `TPM` float DEFAULT NULL,
  `DDDPG` float DEFAULT NULL,
  `DDPG` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `ORPM` float DEFAULT NULL,
  `DRPM` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `usg` float DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `TS` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  PRIMARY KEY (`teamID`),
  KEY `wingsTeamID_idx` (`dailyTeamID`),
  KEY `wingsDateID_idx` (`dateID`),
  CONSTRAINT `wingsDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `wingsTeamID` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64041 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-10  9:22:24
