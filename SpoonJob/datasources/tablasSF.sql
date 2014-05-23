CREATE DATABASE  IF NOT EXISTS `sf` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sf`;

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
-- Table structure for table `sf_project_description`
--

DROP TABLE IF EXISTS `sf_project_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_project_description` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) DEFAULT NULL,
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index28` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sf_project_intended_audience`
--

DROP TABLE IF EXISTS `sf_project_intended_audience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_project_intended_audience` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index31` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `sf_project_licenses`
--

DROP TABLE IF EXISTS `sf_project_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_project_licenses` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index32` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `sf_project_operating_system`
--

DROP TABLE IF EXISTS `sf_project_operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_project_operating_system` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index33` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `sf_project_programming_language`
--

DROP TABLE IF EXISTS `sf_project_programming_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_project_programming_language` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index34` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `sf_projects`
--

DROP TABLE IF EXISTS `sf_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sf_projects` (
  `proj_unixname` varchar(100) NOT NULL,
  `forge_id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `real_url` varchar(255) DEFAULT NULL,
  `date_registered` datetime DEFAULT NULL,
  `proj_long_name` varchar(255) DEFAULT NULL,
  `proj_description` varchar(255) DEFAULT NULL,
  `proj_id_num` int(10) DEFAULT NULL,
  `added_by_script` varchar(100) DEFAULT NULL,
  `dev_count` int(10) DEFAULT NULL,
  `lifespan` int(10) DEFAULT NULL,
  `downloads_all_time` bigint(10) DEFAULT NULL,
  `pageviews_all_time` bigint(10) DEFAULT NULL,
  `takesdonations` varchar(1) DEFAULT NULL,
  `date_collected` datetime DEFAULT NULL,
  `datasource_id` int(11) NOT NULL,
  PRIMARY KEY (`proj_unixname`,`datasource_id`,`forge_id`),
  KEY `datasource_id_index37` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;