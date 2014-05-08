/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_developers` (
  `dev_loginname` varchar(100) NOT NULL DEFAULT '',
  `realname` varchar(100) DEFAULT NULL,
  `dev_id` int(11) DEFAULT NULL,
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dev_loginname`,`datasource_id`),
  KEY `datasource_id_index27` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_developer_projects` (
  `dev_loginname` varchar(100) NOT NULL DEFAULT '',
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `is_admin` int(1) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`proj_unixname`,`datasource_id`,`dev_loginname`),
  KEY `datasource_id_index26` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_projects` (
  `proj_unixname` varchar(100) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `real_url` varchar(255) DEFAULT NULL,
  `date_registered` datetime DEFAULT NULL,
  `proj_long_name` varchar(255) DEFAULT NULL,
  `proj_id_num` int(10) DEFAULT NULL,
  `dev_count` int(10) DEFAULT NULL,
  `date_collected` datetime DEFAULT NULL,
  `datasource_id` int(11) NOT NULL,
  PRIMARY KEY (`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index37` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_description` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(254) DEFAULT NULL,
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index28` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_environment` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index29` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_intended_audience` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index31` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_licenses` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index32` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_operating_system` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index33` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_programming_language` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index34` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_status` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `code_on_page` varchar(10) DEFAULT NULL,
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`datasource_id`,`proj_unixname`,`code`),
  KEY `datasource_id_index35` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_topic` (
  `proj_unixname` varchar(100) NOT NULL DEFAULT '',
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `date_collected` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`,`proj_unixname`,`datasource_id`),
  KEY `datasource_id_index36` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ow_project_indexes` (
  `proj_unixname` varchar(100) NOT NULL,
  `indexhtml` text,
  `date_collected` datetime DEFAULT NULL,
  `datasource_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`datasource_id`,`proj_unixname`),
  KEY `datasource_id_index30` (`datasource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
