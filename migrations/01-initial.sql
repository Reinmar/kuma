-- MySQL dump 10.13  Distrib 5.1.54, for apple-darwin10.6.0 (i386)
--
-- Host: localhost    Database: kuma
-- ------------------------------------------------------
-- Server version	5.1.54-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `permission_id_refs_id_5886d21f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_user_id_idx` (`user_id`),
  CONSTRAINT `user_id_refs_id_650f49a6` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_idx` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (112,'Can add permission',39,'add_permission'),(113,'Can change permission',39,'change_permission'),(114,'Can delete permission',39,'delete_permission'),(115,'Can add group',40,'add_group'),(116,'Can change group',40,'change_group'),(117,'Can delete group',40,'delete_group'),(118,'Can add user',41,'add_user'),(119,'Can change user',41,'change_user'),(120,'Can delete user',41,'delete_user'),(121,'Can add message',42,'add_message'),(122,'Can change message',42,'change_message'),(123,'Can delete message',42,'delete_message'),(124,'Can add content type',43,'add_contenttype'),(125,'Can change content type',43,'change_contenttype'),(126,'Can delete content type',43,'delete_contenttype'),(127,'Can add session',44,'add_session'),(128,'Can change session',44,'change_session'),(129,'Can delete session',44,'delete_session'),(130,'Can add site',45,'add_site'),(131,'Can change site',45,'change_site'),(132,'Can delete site',45,'delete_site'),(133,'Can add log entry',46,'add_logentry'),(134,'Can change log entry',46,'change_logentry'),(135,'Can delete log entry',46,'delete_logentry'),(136,'Can add user profile',47,'add_userprofile'),(137,'Can change user profile',47,'change_userprofile'),(138,'Can delete user profile',47,'delete_userprofile'),(139,'Can add bundle',48,'add_bundle'),(140,'Can change bundle',48,'change_bundle'),(141,'Can delete bundle',48,'delete_bundle'),(142,'Can add feed',49,'add_feed'),(143,'Can change feed',49,'change_feed'),(144,'Can delete feed',49,'delete_feed'),(145,'Can add entry',50,'add_entry'),(146,'Can change entry',50,'change_entry'),(147,'Can delete entry',50,'delete_entry'),(148,'Can add submission',51,'add_submission'),(149,'Can change submission',51,'change_submission'),(150,'Can delete submission',51,'delete_submission'),(151,'Can add tag',52,'add_tag'),(152,'Can change tag',52,'change_tag'),(153,'Can delete tag',52,'delete_tag'),(154,'Can add tagged item',53,'add_taggeditem'),(155,'Can change tagged item',53,'change_taggeditem'),(156,'Can delete tagged item',53,'delete_taggeditem'),(157,'Can add content flag',54,'add_contentflag'),(158,'Can change content flag',54,'change_contentflag'),(159,'Can delete content flag',54,'delete_contentflag'),(160,'Can add test model',55,'add_testmodel'),(161,'Can change test model',55,'change_testmodel'),(162,'Can delete test model',55,'delete_testmodel'),(163,'Can add action counter unique',56,'add_actioncounterunique'),(164,'Can change action counter unique',56,'change_actioncounterunique'),(165,'Can delete action counter unique',56,'delete_actioncounterunique'),(166,'Can add Threaded Comment',57,'add_threadedcomment'),(167,'Can change Threaded Comment',57,'change_threadedcomment'),(168,'Can delete Threaded Comment',57,'delete_threadedcomment'),(169,'Can add Free Threaded Comment',58,'add_freethreadedcomment'),(170,'Can change Free Threaded Comment',58,'change_freethreadedcomment'),(171,'Can delete Free Threaded Comment',58,'delete_freethreadedcomment'),(172,'Can add test model',59,'add_testmodel'),(173,'Can change test model',59,'change_testmodel'),(174,'Can delete test model',59,'delete_testmodel'),(175,'Can add profile',60,'add_profile'),(176,'Can change profile',60,'change_profile'),(177,'Can delete profile',60,'delete_profile'),(178,'Can add registration profile',61,'add_registrationprofile'),(179,'Can change registration profile',61,'change_registrationprofile'),(180,'Can delete registration profile',61,'delete_registrationprofile'),(181,'Can add email change',62,'add_emailchange'),(182,'Can change email change',62,'change_emailchange'),(183,'Can delete email change',62,'delete_emailchange'),(184,'Can add event watch',63,'add_eventwatch'),(185,'Can change event watch',63,'change_eventwatch'),(186,'Can delete event watch',63,'delete_eventwatch'),(187,'Can add watch',64,'add_watch'),(188,'Can change watch',64,'change_watch'),(189,'Can delete watch',64,'delete_watch'),(190,'Can add watch filter',65,'add_watchfilter'),(191,'Can change watch filter',65,'change_watchfilter'),(192,'Can delete watch filter',65,'delete_watchfilter'),(193,'Can add Tag',66,'add_tag'),(194,'Can change Tag',66,'change_tag'),(195,'Can delete Tag',66,'delete_tag'),(196,'Can add Tagged Item',67,'add_taggeditem'),(197,'Can change Tagged Item',67,'change_taggeditem'),(198,'Can delete Tagged Item',67,'delete_taggeditem'),(199,'Can add document',68,'add_document'),(200,'Can change document',68,'change_document'),(201,'Can delete document',68,'delete_document'),(202,'Can add revision',69,'add_revision'),(203,'Can change revision',69,'change_revision'),(204,'Can delete revision',69,'delete_revision'),(205,'Can add firefox version',70,'add_firefoxversion'),(206,'Can change firefox version',70,'change_firefoxversion'),(207,'Can delete firefox version',70,'delete_firefoxversion'),(208,'Can add operating system',71,'add_operatingsystem'),(209,'Can change operating system',71,'change_operatingsystem'),(210,'Can delete operating system',71,'delete_operatingsystem'),(211,'Can add helpful vote',72,'add_helpfulvote'),(212,'Can change helpful vote',72,'change_helpfulvote'),(213,'Can delete helpful vote',72,'delete_helpfulvote'),(214,'Can add related document',73,'add_relateddocument'),(215,'Can change related document',73,'change_relateddocument'),(216,'Can delete related document',73,'delete_relateddocument'),(217,'Can add image',74,'add_image'),(218,'Can change image',74,'change_image'),(219,'Can delete image',74,'delete_image'),(220,'Can add video',75,'add_video'),(221,'Can change video',75,'change_video'),(222,'Can delete video',75,'delete_video');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `group_id_refs_id_f116770` (`group_id`),
  CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `permission_id_refs_id_67e79cb` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demos_submission`
--

DROP TABLE IF EXISTS `demos_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demos_submission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `screenshot_1` varchar(100) NOT NULL,
  `screenshot_2` varchar(100) NOT NULL,
  `screenshot_3` varchar(100) NOT NULL,
  `screenshot_4` varchar(100) NOT NULL,
  `screenshot_5` varchar(100) NOT NULL,
  `video_url` varchar(200) DEFAULT NULL,
  `demo_package` varchar(100) NOT NULL,
  `source_code_url` varchar(200) DEFAULT NULL,
  `license_name` varchar(64) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `likes_total` int(11) NOT NULL,
  `likes_recent` int(11) NOT NULL,
  `launches_total` int(11) NOT NULL,
  `launches_recent` int(11) NOT NULL,
  `comments_total` int(11) NOT NULL DEFAULT '0',
  `navbar_optout` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `demos_submission_f97a5119` (`creator_id`),
  KEY `demos_submission_2078387` (`likes_total`),
  KEY `demos_submission_6ba6244d` (`likes_recent`),
  KEY `demos_submission_1dc8f9` (`launches_total`),
  KEY `demos_submission_3984f161` (`launches_recent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demos_submission`
--

LOCK TABLES `demos_submission` WRITE;
/*!40000 ALTER TABLE `demos_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `demos_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_user_id_idx` (`user_id`),
  KEY `django_admin_log_content_type_idx` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (39,'permission','auth','permission'),(40,'group','auth','group'),(41,'user','auth','user'),(42,'message','auth','message'),(43,'content type','contenttypes','contenttype'),(44,'session','sessions','session'),(45,'site','sites','site'),(46,'log entry','admin','logentry'),(47,'user profile','users','userprofile'),(48,'bundle','feeder','bundle'),(49,'feed','feeder','feed'),(50,'entry','feeder','entry'),(51,'submission','demos','submission'),(52,'tag','tagging','tag'),(53,'tagged item','tagging','taggeditem'),(54,'content flag','contentflagging','contentflag'),(55,'test model','actioncounters','testmodel'),(56,'action counter unique','actioncounters','actioncounterunique'),(57,'Threaded Comment','threadedcomments','threadedcomment'),(58,'Free Threaded Comment','threadedcomments','freethreadedcomment'),(59,'test model','threadedcomments','testmodel'),(60,'profile','users','profile'),(61,'registration profile','users','registrationprofile'),(62,'email change','users','emailchange'),(63,'event watch','notifications','eventwatch'),(64,'watch','notifications','watch'),(65,'watch filter','notifications','watchfilter'),(66,'Tag','taggit','tag'),(67,'Tagged Item','taggit','taggeditem'),(68,'document','wiki','document'),(69,'revision','wiki','revision'),(70,'firefox version','wiki','firefoxversion'),(71,'operating system','wiki','operatingsystem'),(72,'helpful vote','wiki','helpfulvote'),(73,'related document','wiki','relateddocument'),(74,'image','gallery','image'),(75,'video','gallery','video');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'developer.mozilla.org','developer.mozilla.org');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeder_bundle`
--

DROP TABLE IF EXISTS `feeder_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeder_bundle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortname` (`shortname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeder_bundle`
--

LOCK TABLES `feeder_bundle` WRITE;
/*!40000 ALTER TABLE `feeder_bundle` DISABLE KEYS */;
INSERT INTO `feeder_bundle` VALUES (3,'twitter-addons'),(2,'twitter-mobile'),(4,'twitter-mozilla'),(1,'twitter-web'),(6,'updates-addons'),(7,'updates-mobile'),(5,'updates-mozilla'),(8,'updates-web');
/*!40000 ALTER TABLE `feeder_bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeder_bundle_feeds`
--

DROP TABLE IF EXISTS `feeder_bundle_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeder_bundle_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bundle_id` int(11) NOT NULL,
  `feed_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bundle_id` (`bundle_id`,`feed_id`),
  KEY `feed_id_refs_id_55f1514b` (`feed_id`),
  CONSTRAINT `bundle_id_refs_id_1a46350d` FOREIGN KEY (`bundle_id`) REFERENCES `feeder_bundle` (`id`),
  CONSTRAINT `feed_id_refs_id_55f1514b` FOREIGN KEY (`feed_id`) REFERENCES `feeder_feed` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeder_bundle_feeds`
--

LOCK TABLES `feeder_bundle_feeds` WRITE;
/*!40000 ALTER TABLE `feeder_bundle_feeds` DISABLE KEYS */;
INSERT INTO `feeder_bundle_feeds` VALUES (25,1,2),(24,1,3),(26,1,5),(22,2,4),(21,3,7),(23,4,8),(29,5,13),(27,6,10),(28,7,6),(30,8,1);
/*!40000 ALTER TABLE `feeder_bundle_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeder_entry`
--

DROP TABLE IF EXISTS `feeder_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeder_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_id` int(11) NOT NULL,
  `guid` varchar(255) NOT NULL,
  `raw` longtext NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `last_published` datetime NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `feed_id` (`feed_id`,`guid`),
  KEY `feeder_entry_idx` (`feed_id`),
  CONSTRAINT `feed_id_refs_id_3323b4e` FOREIGN KEY (`feed_id`) REFERENCES `feeder_feed` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeder_entry`
--

LOCK TABLES `feeder_entry` WRITE;
/*!40000 ALTER TABLE `feeder_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `feeder_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeder_feed`
--

DROP TABLE IF EXISTS `feeder_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeder_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shortname` varchar(50) NOT NULL,
  `title` varchar(140) NOT NULL,
  `url` varchar(2048) NOT NULL,
  `etag` varchar(140) NOT NULL,
  `last_modified` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `disabled_reason` varchar(2048) NOT NULL,
  `keep` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shortname` (`shortname`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeder_feed`
--

LOCK TABLES `feeder_feed` WRITE;
/*!40000 ALTER TABLE `feeder_feed` DISABLE KEYS */;
INSERT INTO `feeder_feed` VALUES (1,'moz-hacks','','http://hacks.mozilla.org/feed/','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(2,'tw-mozhacks','','http://twitter.com/statuses/user_timeline/45496942.rss','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(3,'tw-mozillaweb','','http://twitter.com/statuses/user_timeline/38209403.rss','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(4,'tw-mozmobile','','http://twitter.com/statuses/user_timeline/67033966.rss','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(5,'tw-mozillaqa','','http://twitter.com/statuses/user_timeline/24752152.rss','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(6,'planet-mobile','','http://planet.firefox.com/mobile/rss20.xml','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(7,'tw-mozamo','','http://twitter.com/statuses/user_timeline/15383463.rss','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(8,'tw-planetmozilla','','http://twitter.com/statuses/user_timeline/39292665.rss','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(9,'moz-hacks-comments','','http://hacks.mozilla.org/comments/feed/','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(10,'amo-blog','','http://blog.mozilla.com/addons/feed/','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(11,'amo-blog-comments','','http://blog.mozilla.com/addons/comments/feed/','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(12,'amo-forums','','https://forums.addons.mozilla.org/feed.php','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(13,'about-mozilla','','http://blog.mozilla.com/about_mozilla/feed/atom/','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28'),(14,'mdc-latest','','https://developer.mozilla.org/@api/deki/site/feed','','2011-03-24 10:00:28',1,'',50,'2011-03-24 10:00:28','2011-03-24 10:00:28');
/*!40000 ALTER TABLE `feeder_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threadedcomments_freethreadedcomment`
--

DROP TABLE IF EXISTS `threadedcomments_freethreadedcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threadedcomments_freethreadedcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `website` varchar(200) NOT NULL,
  `email` varchar(75) NOT NULL,
  `date_submitted` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_approved` datetime DEFAULT NULL,
  `comment` longtext NOT NULL,
  `markup` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `ip_address` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `content_type_id_refs_id_b49ecca0` (`content_type_id`),
  KEY `parent_id_refs_id_8c7f0b95` (`parent_id`),
  CONSTRAINT `content_type_id_refs_id_b49ecca0` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `parent_id_refs_id_8c7f0b95` FOREIGN KEY (`parent_id`) REFERENCES `threadedcomments_freethreadedcomment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threadedcomments_freethreadedcomment`
--

LOCK TABLES `threadedcomments_freethreadedcomment` WRITE;
/*!40000 ALTER TABLE `threadedcomments_freethreadedcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `threadedcomments_freethreadedcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threadedcomments_testmodel`
--

DROP TABLE IF EXISTS `threadedcomments_testmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threadedcomments_testmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(5) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threadedcomments_testmodel`
--

LOCK TABLES `threadedcomments_testmodel` WRITE;
/*!40000 ALTER TABLE `threadedcomments_testmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `threadedcomments_testmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threadedcomments_threadedcomment`
--

DROP TABLE IF EXISTS `threadedcomments_threadedcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threadedcomments_threadedcomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `date_submitted` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_approved` datetime DEFAULT NULL,
  `comment` longtext NOT NULL,
  `markup` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `ip_address` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `content_type_id_refs_id_af49ca3a` (`content_type_id`),
  KEY `user_id_refs_id_3c567b6` (`user_id`),
  KEY `parent_id_refs_id_7ef2a789` (`parent_id`),
  CONSTRAINT `content_type_id_refs_id_af49ca3a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `parent_id_refs_id_7ef2a789` FOREIGN KEY (`parent_id`) REFERENCES `threadedcomments_threadedcomment` (`id`),
  CONSTRAINT `user_id_refs_id_3c567b6` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threadedcomments_threadedcomment`
--

LOCK TABLES `threadedcomments_threadedcomment` WRITE;
/*!40000 ALTER TABLE `threadedcomments_threadedcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `threadedcomments_threadedcomment` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `users_emailchange`
--

DROP TABLE IF EXISTS `users_emailchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_emailchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `users_emailchange_3904588a` (`email`),
  CONSTRAINT `user_id_refs_id_7c0fddb0` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_emailchange`
--

LOCK TABLES `users_emailchange` WRITE;
/*!40000 ALTER TABLE `users_emailchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_emailchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` tinyint(1) NOT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `bio` longtext,
  `website` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `irc_handle` varchar(255) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `livechat_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_id_refs_id_21617f27` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_registrationprofile`
--

DROP TABLE IF EXISTS `users_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_e9e30776` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_registrationprofile`
--

LOCK TABLES `users_registrationprofile` WRITE;
/*!40000 ALTER TABLE `users_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

