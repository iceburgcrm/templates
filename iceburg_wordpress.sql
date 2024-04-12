-- MySQL dump 10.13  Distrib 8.0.36, for Linux (aarch64)
--
-- Host: localhost    Database: iceburg_wordpress
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ice_connectors`
--

DROP TABLE IF EXISTS `ice_connectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_connectors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `base_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_connectors`
--

LOCK TABLES `ice_connectors` WRITE;
/*!40000 ALTER TABLE `ice_connectors` DISABLE KEYS */;
INSERT INTO `ice_connectors` VALUES (1,'joke of the day','','https://official-joke-api.appspot.com',1);
/*!40000 ALTER TABLE `ice_connectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_datalet_types`
--

DROP TABLE IF EXISTS `ice_datalet_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_datalet_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_datalet_types`
--

LOCK TABLES `ice_datalet_types` WRITE;
/*!40000 ALTER TABLE `ice_datalet_types` DISABLE KEYS */;
INSERT INTO `ice_datalet_types` VALUES (7,'CRM Stats',NULL,NULL),(8,'Totals Report',NULL,NULL);
/*!40000 ALTER TABLE `ice_datalet_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_datalets`
--

DROP TABLE IF EXISTS `ice_datalets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_datalets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` int NOT NULL DEFAULT '1',
  `role_id` int NOT NULL DEFAULT '0',
  `field_id` int NOT NULL DEFAULT '0',
  `module_id` int NOT NULL DEFAULT '0',
  `relationship_id` int NOT NULL DEFAULT '0',
  `size` int NOT NULL DEFAULT '6',
  `display_order` int NOT NULL DEFAULT '0',
  `active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_datalets`
--

LOCK TABLES `ice_datalets` WRITE;
/*!40000 ALTER TABLE `ice_datalets` DISABLE KEYS */;
INSERT INTO `ice_datalets` VALUES (1,'','CRM Stats',7,0,0,2,0,12,12,1,NULL,NULL),(2,'','Totals Report',8,0,0,1,0,12,6,1,NULL,NULL);
/*!40000 ALTER TABLE `ice_datalets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_endpoints`
--

DROP TABLE IF EXISTS `ice_endpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_endpoints` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connector_id` int NOT NULL,
  `endpoint` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `request_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'GET',
  `params` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `headers` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT '1',
  `last_run_status` int NOT NULL DEFAULT '1',
  `last_run_message` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_run_data` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_ran` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_endpoints`
--

LOCK TABLES `ice_endpoints` WRITE;
/*!40000 ALTER TABLE `ice_endpoints` DISABLE KEYS */;
INSERT INTO `ice_endpoints` VALUES (1,1,'/random_joke','jokes','GET','','',1,1,'','',0);
/*!40000 ALTER TABLE `ice_endpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_failed_jobs`
--

DROP TABLE IF EXISTS `ice_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ice_failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_failed_jobs`
--

LOCK TABLES `ice_failed_jobs` WRITE;
/*!40000 ALTER TABLE `ice_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_fields`
--

DROP TABLE IF EXISTS `ice_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_fields` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int NOT NULL,
  `validation` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_type` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `data_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_length` int DEFAULT NULL,
  `required` int NOT NULL DEFAULT '0',
  `is_nullable` tinyint NOT NULL DEFAULT '0',
  `default_value` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `read_only` tinyint NOT NULL DEFAULT '0',
  `related_module_id` int NOT NULL DEFAULT '0',
  `related_field_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `related_value_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `decimal_places` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `search_display` tinyint NOT NULL DEFAULT '1',
  `list_display` tinyint NOT NULL DEFAULT '1',
  `edit_display` tinyint NOT NULL DEFAULT '1',
  `view_display` tinyint NOT NULL DEFAULT '1',
  `display_order` int NOT NULL DEFAULT '9999',
  `search_order` int NOT NULL DEFAULT '9999',
  `list_order` int NOT NULL DEFAULT '9999',
  `edit_order` int NOT NULL DEFAULT '9999',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ice_fields_module_id_index` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_fields`
--

LOCK TABLES `ice_fields` WRITE;
/*!40000 ALTER TABLE `ice_fields` DISABLE KEYS */;
INSERT INTO `ice_fields` VALUES ('name','Name',1,NULL,'text','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,1,NULL,NULL),('profile_pic','Image',1,NULL,'image','MEDIUMTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,2,NULL,NULL),('password','Password',1,NULL,'password','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,3,NULL,NULL),('email','Email',1,NULL,'email','string',32,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,4,NULL,NULL),('role_id','User Role',1,NULL,'related','Integer',245,0,1,'',0,2,'id','name',NULL,1,1,1,1,1,9999,9999,9999,9999,5,NULL,NULL),('name','Name',2,NULL,'text','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,6,NULL,NULL),('name','name',3,NULL,'text','string',32,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,7,NULL,NULL),('name','Name',4,NULL,'text','string',64,0,1,'',1,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,8,NULL,NULL),('label','Label',4,NULL,'text','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,9,NULL,NULL),('description','Description',4,NULL,'text','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,10,NULL,NULL),('status','Status',4,NULL,'checkbox','boolean',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,11,NULL,NULL),('parent_id','Parent Module',4,NULL,'related','Integer',245,0,1,'',0,4,'id','name',NULL,1,1,1,1,1,9999,9999,9999,9999,12,NULL,NULL),('view_order','View Order',4,NULL,'text','Integer',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,13,NULL,NULL),('admin','Admin Module',4,NULL,'checkbox','Boolean',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,14,NULL,NULL),('name','Name',5,NULL,'text','string',64,0,1,'',1,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,15,NULL,NULL),('label','Label',5,NULL,'text','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,16,NULL,NULL),('input_type','Input Type',5,NULL,'text','string',16,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,17,NULL,NULL),('validation','Validation',5,NULL,'text','string',16,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,18,NULL,NULL),('module_id','Module',5,NULL,'related','Integer',245,0,1,'',0,4,'id','name',NULL,1,1,1,1,1,9999,9999,9999,9999,19,NULL,NULL),('status','Status',5,NULL,'checkbox','boolean',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,20,NULL,NULL),('name','Name',6,NULL,'text','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,21,NULL,NULL),('modules','Module List',6,NULL,'text','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,22,NULL,NULL),('related_field_types','Related Field Types',6,NULL,'text','string',64,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,23,NULL,NULL),('status','Status',6,NULL,'checkbox','boolean',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,24,NULL,NULL),('name','Name',7,NULL,'text','string',64,0,1,'',1,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,25,NULL,NULL),('label','Label',7,NULL,'text','string',64,0,1,'',1,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,26,NULL,NULL),('module_id','Module',7,NULL,'related','Integer',245,0,1,'',0,4,'id','name',NULL,1,1,1,1,1,9999,9999,9999,9999,27,NULL,NULL),('list_size','List Size',7,NULL,'text','Integer',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,28,NULL,NULL),('list_order_column','List Order Column',7,NULL,'text','string',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,29,NULL,NULL),('list_order','List Order',7,NULL,'text','string',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,30,NULL,NULL),('name','Name',8,NULL,'text','string',64,0,1,'',1,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,31,NULL,NULL),('label','Label',8,NULL,'text','string',64,0,1,'',1,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,32,NULL,NULL),('type','Type',8,NULL,'number','integer',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,33,NULL,NULL),('field_id','Field ID',8,NULL,'number','integer',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,34,NULL,NULL),('module_id','Module ID',8,NULL,'number','integer',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,35,NULL,NULL),('relationship_id','Relationship ID',8,NULL,'number','integer',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,36,NULL,NULL),('display_order','Display Order',8,NULL,'number','integer',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,37,NULL,NULL),('type','Type',8,NULL,'number','integer',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,38,NULL,NULL),('active','Active',8,NULL,'checkbox','Boolean',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,39,NULL,NULL),('meta_id','Meta_id',9,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,40,NULL,NULL),('comment_id','Comment_id',9,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,41,NULL,NULL),('meta_key','Meta_key',9,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,42,NULL,NULL),('meta_value','Meta_value',9,NULL,'text','LONGTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,43,NULL,NULL),('comment_ID','Comment_ ID',10,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,44,NULL,NULL),('comment_post_ID','Comment_post_ ID',10,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,45,NULL,NULL),('comment_author','Comment_author',10,NULL,'text','string',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,46,NULL,NULL),('comment_author_email','Comment_author_email',10,NULL,'email','string',100,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,47,NULL,NULL),('comment_author_url','Comment_author_url',10,NULL,'text','string',200,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,48,NULL,NULL),('comment_author_IP','Comment_author_ IP',10,NULL,'text','string',100,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,49,NULL,NULL),('comment_date','Comment_date',10,NULL,'datetime','datetime',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,50,NULL,NULL),('comment_date_gmt','Comment_date_gmt',10,NULL,'datetime','datetime',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,51,NULL,NULL),('comment_content','Comment_content',10,NULL,'text','TEXT',65535,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,52,NULL,NULL),('comment_karma','Comment_karma',10,NULL,'integer','integer',10,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,53,NULL,NULL),('comment_approved','Comment_approved',10,NULL,'text','string',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,54,NULL,NULL),('comment_agent','Comment_agent',10,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,55,NULL,NULL),('comment_type','Comment_type',10,NULL,'text','string',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,56,NULL,NULL),('comment_parent','Comment_parent',10,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,57,NULL,NULL),('user_id','User_id',10,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,58,NULL,NULL),('link_id','Link_id',11,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,59,NULL,NULL),('link_url','Link_url',11,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,60,NULL,NULL),('link_name','Link_name',11,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,61,NULL,NULL),('link_image','Link_image',11,NULL,'image','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,62,NULL,NULL),('link_target','Link_target',11,NULL,'text','string',25,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,63,NULL,NULL),('link_description','Link_description',11,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,64,NULL,NULL),('link_visible','Link_visible',11,NULL,'text','string',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,65,NULL,NULL),('link_owner','Link_owner',11,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,66,NULL,NULL),('link_rating','Link_rating',11,NULL,'integer','integer',10,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,67,NULL,NULL),('link_updated','Link_updated',11,NULL,'datetime','datetime',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,68,NULL,NULL),('link_rel','Link_rel',11,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,69,NULL,NULL),('link_notes','Link_notes',11,NULL,'text','MEDIUMTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,70,NULL,NULL),('link_rss','Link_rss',11,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,71,NULL,NULL),('option_id','Option_id',12,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,72,NULL,NULL),('option_name','Option_name',12,NULL,'text','string',191,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,73,NULL,NULL),('option_value','Option_value',12,NULL,'text','LONGTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,74,NULL,NULL),('autoload','Autoload',12,NULL,'text','string',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,75,NULL,NULL),('meta_id','Meta_id',13,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,76,NULL,NULL),('post_id','Post_id',13,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,77,NULL,NULL),('meta_key','Meta_key',13,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,78,NULL,NULL),('meta_value','Meta_value',13,NULL,'text','LONGTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,79,NULL,NULL),('post_author','Post_author',14,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,80,NULL,NULL),('post_date','Post_date',14,NULL,'datetime','datetime',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,81,NULL,NULL),('post_date_gmt','Post_date_gmt',14,NULL,'datetime','datetime',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,82,NULL,NULL),('post_content','Post_content',14,NULL,'text','LONGTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,83,NULL,NULL),('post_title','Post_title',14,NULL,'text','TEXT',65535,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,84,NULL,NULL),('post_excerpt','Post_excerpt',14,NULL,'text','TEXT',65535,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,85,NULL,NULL),('post_status','Post_status',14,NULL,'text','string',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,86,NULL,NULL),('comment_status','Comment_status',14,NULL,'text','string',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,87,NULL,NULL),('ping_status','Ping_status',14,NULL,'text','string',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,88,NULL,NULL),('post_password','Post_password',14,NULL,'password','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,89,NULL,NULL),('post_name','Post_name',14,NULL,'text','string',200,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,90,NULL,NULL),('to_ping','To_ping',14,NULL,'text','TEXT',65535,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,91,NULL,NULL),('pinged','Pinged',14,NULL,'text','TEXT',65535,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,92,NULL,NULL),('post_modified','Post_modified',14,NULL,'datetime','datetime',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,93,NULL,NULL),('post_modified_gmt','Post_modified_gmt',14,NULL,'datetime','datetime',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,94,NULL,NULL),('post_content_filtered','Post_content_filtered',14,NULL,'text','LONGTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,95,NULL,NULL),('post_parent','Post_parent',14,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,96,NULL,NULL),('guid','Guid',14,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,97,NULL,NULL),('menu_order','Menu_order',14,NULL,'integer','integer',10,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,98,NULL,NULL),('post_type','Post_type',14,NULL,'text','string',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,99,NULL,NULL),('post_mime_type','Post_mime_type',14,NULL,'text','string',100,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,100,NULL,NULL),('comment_count','Comment_count',14,NULL,'integer','integer',19,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,101,NULL,NULL),('object_id','Object_id',15,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,102,NULL,NULL),('term_taxonomy_id','Term_taxonomy_id',15,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,103,NULL,NULL),('term_order','Term_order',15,NULL,'integer','integer',10,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,104,NULL,NULL),('term_taxonomy_id','Term_taxonomy_id',16,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,105,NULL,NULL),('term_id','Term_id',16,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,106,NULL,NULL),('taxonomy','Taxonomy',16,NULL,'text','string',32,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,107,NULL,NULL),('description','Description',16,NULL,'text','LONGTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,108,NULL,NULL),('parent','Parent',16,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,109,NULL,NULL),('count','Count',16,NULL,'integer','integer',19,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,110,NULL,NULL),('meta_id','Meta_id',17,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,111,NULL,NULL),('term_id','Term_id',17,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,112,NULL,NULL),('meta_key','Meta_key',17,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,113,NULL,NULL),('meta_value','Meta_value',17,NULL,'text','LONGTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,114,NULL,NULL),('term_id','Term_id',18,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,115,NULL,NULL),('name','Name',18,NULL,'text','string',200,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,116,NULL,NULL),('slug','Slug',18,NULL,'text','string',200,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,117,NULL,NULL),('term_group','Term_group',18,NULL,'integer','integer',19,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,118,NULL,NULL),('umeta_id','Umeta_id',19,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,119,NULL,NULL),('user_id','User_id',19,NULL,'integer','integer',20,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,120,NULL,NULL),('meta_key','Meta_key',19,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,121,NULL,NULL),('meta_value','Meta_value',19,NULL,'text','LONGTEXT',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,122,NULL,NULL),('user_login','User_login',20,NULL,'text','string',60,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,123,NULL,NULL),('user_pass','User_pass',20,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,124,NULL,NULL),('user_nicename','User_nicename',20,NULL,'text','string',50,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,125,NULL,NULL),('user_email','User_email',20,NULL,'email','string',100,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,126,NULL,NULL),('user_url','User_url',20,NULL,'text','string',100,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,127,NULL,NULL),('user_registered','User_registered',20,NULL,'datetime','datetime',245,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,128,NULL,NULL),('user_activation_key','User_activation_key',20,NULL,'text','string',255,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,129,NULL,NULL),('user_status','User_status',20,NULL,'integer','integer',10,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,130,NULL,NULL),('display_name','Display_name',20,NULL,'text','string',250,0,1,'',0,0,'0','0',NULL,1,1,1,1,1,9999,9999,9999,9999,131,NULL,NULL);
/*!40000 ALTER TABLE `ice_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_logs`
--

DROP TABLE IF EXISTS `ice_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int NOT NULL DEFAULT '0',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_logs`
--

LOCK TABLES `ice_logs` WRITE;
/*!40000 ALTER TABLE `ice_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_module_convertables`
--

DROP TABLE IF EXISTS `ice_module_convertables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_module_convertables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `primary_module_id` int NOT NULL,
  `module_id` int NOT NULL,
  `level` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_module_convertables`
--

LOCK TABLES `ice_module_convertables` WRITE;
/*!40000 ALTER TABLE `ice_module_convertables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_module_convertables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_module_groups`
--

DROP TABLE IF EXISTS `ice_module_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_module_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_module_groups`
--

LOCK TABLES `ice_module_groups` WRITE;
/*!40000 ALTER TABLE `ice_module_groups` DISABLE KEYS */;
INSERT INTO `ice_module_groups` VALUES (6,'admin','Admin',0),(7,'wp_commentmeta','Wp Commentmeta',0),(8,'wp_comments','Wp Comments',0),(9,'wp_postmeta','Wp Postmeta',0),(10,'wp_term_taxonomy','Wp Term Taxonomy',0),(11,'wp_usermeta','Wp Usermeta',0);
/*!40000 ALTER TABLE `ice_module_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_module_subpanels`
--

DROP TABLE IF EXISTS `ice_module_subpanels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_module_subpanels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subpanel_filter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_size` int NOT NULL DEFAULT '10',
  `list_order_column` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'id',
  `list_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'desc',
  `relationship_id` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `saved_search_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_module_subpanels`
--

LOCK TABLES `ice_module_subpanels` WRITE;
/*!40000 ALTER TABLE `ice_module_subpanels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_module_subpanels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_modules`
--

DROP TABLE IF EXISTS `ice_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_modules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT '1',
  `faker_seed` int NOT NULL DEFAULT '1',
  `create_table` int NOT NULL DEFAULT '1',
  `view_order` int NOT NULL DEFAULT '0',
  `admin` int NOT NULL DEFAULT '0',
  `parent_id` int NOT NULL DEFAULT '0',
  `primary` int NOT NULL DEFAULT '0',
  `primary_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'id',
  `icon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CircleStackIcon',
  `module_group_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_modules`
--

LOCK TABLES `ice_modules` WRITE;
/*!40000 ALTER TABLE `ice_modules` DISABLE KEYS */;
INSERT INTO `ice_modules` VALUES (1,'ice_users','Users','Users',1,0,0,0,0,0,1,'id','UserPlusIcon',6,NULL,NULL),(2,'ice_roles','Roles','Roles',1,0,0,1,0,0,1,'id','CircleStackIcon',6,NULL,NULL),(3,'ice_themes','Themes','Themes',1,0,0,2,0,0,1,'id','CircleStackIcon',6,NULL,NULL),(4,'ice_modules','Modules','System Modules',1,0,0,3,1,0,1,'id','CircleStackIcon',6,NULL,NULL),(5,'ice_fields','Fields','System Fields',1,0,0,4,1,0,1,'id','CircleStackIcon',6,NULL,NULL),(6,'ice_relationships','Relationships','Relationships',1,0,0,5,1,0,1,'id','CircleStackIcon',6,NULL,NULL),(7,'ice_module_subpanels','Subpanels','System Subpanel',1,0,0,6,1,0,1,'id','CircleStackIcon',6,NULL,NULL),(8,'ice_datalets','Datalets','System Datalets',1,0,0,7,1,0,1,'id','CircleStackIcon',6,NULL,NULL),(9,'wp_commentmeta','Wp_commentmeta','Wp Commentmeta module',1,0,0,0,0,0,0,'meta_id','BuildingOffice2Icon',7,NULL,NULL),(10,'wp_comments','Wp_comments','Wp Comments module',1,0,0,1,0,0,0,'comment_ID','BuildingOffice2Icon',8,NULL,NULL),(11,'wp_links','Wp_links','Wp Links module',1,0,0,2,0,0,0,'link_id','BuildingOfficeIcon',8,NULL,NULL),(12,'wp_options','Wp_options','Wp Options module',1,0,0,3,0,0,0,'option_id','BuildingLibraryIcon',8,NULL,NULL),(13,'wp_postmeta','Wp_postmeta','Wp Postmeta module',1,0,0,4,0,0,0,'meta_id','BuildingStorefrontIcon',9,NULL,NULL),(14,'wp_posts','Wp_posts','Wp Posts module',1,0,0,5,0,0,0,'ID','BriefcaseIcon',9,NULL,NULL),(15,'wp_term_relationships','Wp_term_relationships','Wp Term Relationships module',1,0,0,6,0,0,0,'term_taxonomy_id','HomeIcon',9,NULL,NULL),(16,'wp_term_taxonomy','Wp_term_taxonomy','Wp Term Taxonomy module',1,0,0,7,0,0,0,'term_taxonomy_id','HomeModernIcon',10,NULL,NULL),(17,'wp_termmeta','Wp_termmeta','Wp Termmeta module',1,0,0,8,0,0,0,'meta_id','UserPlusIcon',10,NULL,NULL),(18,'wp_terms','Wp_terms','Wp Terms module',1,0,0,9,0,0,0,'term_id','UserMinusIcon',10,NULL,NULL),(19,'wp_usermeta','Wp_usermeta','Wp Usermeta module',1,0,0,10,0,0,0,'umeta_id','UserCircleIcon',11,NULL,NULL),(20,'wp_users','Wp_users','Wp Users module',1,0,0,11,0,0,0,'ID','UserIcon',11,NULL,NULL);
/*!40000 ALTER TABLE `ice_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_password_resets`
--

DROP TABLE IF EXISTS `ice_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ice_password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_password_resets`
--

LOCK TABLES `ice_password_resets` WRITE;
/*!40000 ALTER TABLE `ice_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_permissions`
--

DROP TABLE IF EXISTS `ice_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int NOT NULL DEFAULT '0',
  `role_id` int NOT NULL DEFAULT '0',
  `can_read` int NOT NULL DEFAULT '1',
  `can_write` int NOT NULL DEFAULT '1',
  `can_delete` int NOT NULL DEFAULT '1',
  `can_export` int NOT NULL DEFAULT '1',
  `can_import` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ice_permissions_module_id_index` (`module_id`),
  KEY `ice_permissions_role_id_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_permissions`
--

LOCK TABLES `ice_permissions` WRITE;
/*!40000 ALTER TABLE `ice_permissions` DISABLE KEYS */;
INSERT INTO `ice_permissions` VALUES (1,1,1,1,1,1,1,1,NULL,NULL),(2,2,1,1,1,1,1,1,NULL,NULL),(3,3,1,1,1,1,1,1,NULL,NULL),(4,4,1,1,1,1,1,1,NULL,NULL),(5,5,1,1,1,1,1,1,NULL,NULL),(6,6,1,1,1,1,1,1,NULL,NULL),(7,7,1,1,1,1,1,1,NULL,NULL),(8,8,1,1,1,1,1,1,NULL,NULL),(9,9,1,1,1,1,1,1,NULL,NULL),(10,10,1,1,1,1,1,1,NULL,NULL),(11,11,1,1,1,1,1,1,NULL,NULL),(12,12,1,1,1,1,1,1,NULL,NULL),(13,13,1,1,1,1,1,1,NULL,NULL),(14,14,1,1,1,1,1,1,NULL,NULL),(15,15,1,1,1,1,1,1,NULL,NULL),(16,16,1,1,1,1,1,1,NULL,NULL),(17,17,1,1,1,1,1,1,NULL,NULL),(18,18,1,1,1,1,1,1,NULL,NULL),(19,19,1,1,1,1,1,1,NULL,NULL),(20,20,1,1,1,1,1,1,NULL,NULL),(21,1,2,1,1,1,1,1,NULL,NULL),(22,2,2,1,1,1,1,1,NULL,NULL),(23,3,2,1,1,1,1,1,NULL,NULL),(24,4,2,1,1,1,1,1,NULL,NULL),(25,5,2,1,1,1,1,1,NULL,NULL),(26,6,2,1,1,1,1,1,NULL,NULL),(27,7,2,1,1,1,1,1,NULL,NULL),(28,8,2,1,1,1,1,1,NULL,NULL),(29,9,2,1,1,1,1,1,NULL,NULL),(30,10,2,1,1,1,1,1,NULL,NULL),(31,11,2,1,1,1,1,1,NULL,NULL),(32,12,2,1,1,1,1,1,NULL,NULL),(33,13,2,1,1,1,1,1,NULL,NULL),(34,14,2,1,1,1,1,1,NULL,NULL),(35,15,2,1,1,1,1,1,NULL,NULL),(36,16,2,1,1,1,1,1,NULL,NULL),(37,17,2,1,1,1,1,1,NULL,NULL),(38,18,2,1,1,1,1,1,NULL,NULL),(39,19,2,1,1,1,1,1,NULL,NULL),(40,20,2,1,1,1,1,1,NULL,NULL),(41,1,3,1,1,1,1,1,NULL,NULL),(42,2,3,1,1,1,1,1,NULL,NULL),(43,3,3,1,1,1,1,1,NULL,NULL),(44,4,3,1,1,1,1,1,NULL,NULL),(45,5,3,1,1,1,1,1,NULL,NULL),(46,6,3,1,1,1,1,1,NULL,NULL),(47,7,3,1,1,1,1,1,NULL,NULL),(48,8,3,1,1,1,1,1,NULL,NULL),(49,9,3,1,1,1,1,1,NULL,NULL),(50,10,3,1,1,1,1,1,NULL,NULL),(51,11,3,1,1,1,1,1,NULL,NULL),(52,12,3,1,1,1,1,1,NULL,NULL),(53,13,3,1,1,1,1,1,NULL,NULL),(54,14,3,1,1,1,1,1,NULL,NULL),(55,15,3,1,1,1,1,1,NULL,NULL),(56,16,3,1,1,1,1,1,NULL,NULL),(57,17,3,1,1,1,1,1,NULL,NULL),(58,18,3,1,1,1,1,1,NULL,NULL),(59,19,3,1,1,1,1,1,NULL,NULL),(60,20,3,1,1,1,1,1,NULL,NULL),(61,1,4,1,1,1,1,1,NULL,NULL),(62,2,4,1,1,1,1,1,NULL,NULL),(63,3,4,1,1,1,1,1,NULL,NULL),(64,4,4,1,1,1,1,1,NULL,NULL),(65,5,4,1,1,1,1,1,NULL,NULL),(66,6,4,1,1,1,1,1,NULL,NULL),(67,7,4,1,1,1,1,1,NULL,NULL),(68,8,4,1,1,1,1,1,NULL,NULL),(69,9,4,1,1,1,1,1,NULL,NULL),(70,10,4,1,1,1,1,1,NULL,NULL),(71,11,4,1,1,1,1,1,NULL,NULL),(72,12,4,1,1,1,1,1,NULL,NULL),(73,13,4,1,1,1,1,1,NULL,NULL),(74,14,4,1,1,1,1,1,NULL,NULL),(75,15,4,1,1,1,1,1,NULL,NULL),(76,16,4,1,1,1,1,1,NULL,NULL),(77,17,4,1,1,1,1,1,NULL,NULL),(78,18,4,1,1,1,1,1,NULL,NULL),(79,19,4,1,1,1,1,1,NULL,NULL),(80,20,4,1,1,1,1,1,NULL,NULL),(81,1,5,1,1,1,1,1,NULL,NULL),(82,2,5,1,1,1,1,1,NULL,NULL),(83,3,5,1,1,1,1,1,NULL,NULL),(84,4,5,1,1,1,1,1,NULL,NULL),(85,5,5,1,1,1,1,1,NULL,NULL),(86,6,5,1,1,1,1,1,NULL,NULL),(87,7,5,1,1,1,1,1,NULL,NULL),(88,8,5,1,1,1,1,1,NULL,NULL),(89,9,5,1,1,1,1,1,NULL,NULL),(90,10,5,1,1,1,1,1,NULL,NULL),(91,11,5,1,1,1,1,1,NULL,NULL),(92,12,5,1,1,1,1,1,NULL,NULL),(93,13,5,1,1,1,1,1,NULL,NULL),(94,14,5,1,1,1,1,1,NULL,NULL),(95,15,5,1,1,1,1,1,NULL,NULL),(96,16,5,1,1,1,1,1,NULL,NULL),(97,17,5,1,1,1,1,1,NULL,NULL),(98,18,5,1,1,1,1,1,NULL,NULL),(99,19,5,1,1,1,1,1,NULL,NULL),(100,20,5,1,1,1,1,1,NULL,NULL),(101,1,6,1,1,1,1,1,NULL,NULL),(102,2,6,1,1,1,1,1,NULL,NULL),(103,3,6,1,1,1,1,1,NULL,NULL),(104,4,6,1,1,1,1,1,NULL,NULL),(105,5,6,1,1,1,1,1,NULL,NULL),(106,6,6,1,1,1,1,1,NULL,NULL),(107,7,6,1,1,1,1,1,NULL,NULL),(108,8,6,1,1,1,1,1,NULL,NULL),(109,9,6,1,1,1,1,1,NULL,NULL),(110,10,6,1,1,1,1,1,NULL,NULL),(111,11,6,1,1,1,1,1,NULL,NULL),(112,12,6,1,1,1,1,1,NULL,NULL),(113,13,6,1,1,1,1,1,NULL,NULL),(114,14,6,1,1,1,1,1,NULL,NULL),(115,15,6,1,1,1,1,1,NULL,NULL),(116,16,6,1,1,1,1,1,NULL,NULL),(117,17,6,1,1,1,1,1,NULL,NULL),(118,18,6,1,1,1,1,1,NULL,NULL),(119,19,6,1,1,1,1,1,NULL,NULL),(120,20,6,1,1,1,1,1,NULL,NULL),(121,1,7,1,1,1,1,1,NULL,NULL),(122,2,7,1,1,1,1,1,NULL,NULL),(123,3,7,1,1,1,1,1,NULL,NULL),(124,4,7,1,1,1,1,1,NULL,NULL),(125,5,7,1,1,1,1,1,NULL,NULL),(126,6,7,1,1,1,1,1,NULL,NULL),(127,7,7,1,1,1,1,1,NULL,NULL),(128,8,7,1,1,1,1,1,NULL,NULL),(129,9,7,1,1,1,1,1,NULL,NULL),(130,10,7,1,1,1,1,1,NULL,NULL),(131,11,7,1,1,1,1,1,NULL,NULL),(132,12,7,1,1,1,1,1,NULL,NULL),(133,13,7,1,1,1,1,1,NULL,NULL),(134,14,7,1,1,1,1,1,NULL,NULL),(135,15,7,1,1,1,1,1,NULL,NULL),(136,16,7,1,1,1,1,1,NULL,NULL),(137,17,7,1,1,1,1,1,NULL,NULL),(138,18,7,1,1,1,1,1,NULL,NULL),(139,19,7,1,1,1,1,1,NULL,NULL),(140,20,7,1,1,1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `ice_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_relationship_modules`
--

DROP TABLE IF EXISTS `ice_relationship_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_relationship_modules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int NOT NULL,
  `relationship_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_relationship_modules`
--

LOCK TABLES `ice_relationship_modules` WRITE;
/*!40000 ALTER TABLE `ice_relationship_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_relationship_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_relationships`
--

DROP TABLE IF EXISTS `ice_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_relationships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modules` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_field_types` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_relationships`
--

LOCK TABLES `ice_relationships` WRITE;
/*!40000 ALTER TABLE `ice_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_roles`
--

DROP TABLE IF EXISTS `ice_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_roles`
--

LOCK TABLES `ice_roles` WRITE;
/*!40000 ALTER TABLE `ice_roles` DISABLE KEYS */;
INSERT INTO `ice_roles` VALUES (1,'Admin','',NULL,NULL),(2,'User','',NULL,NULL),(3,'Sales','',NULL,NULL),(4,'Accounting','',NULL,NULL),(5,'Support','',NULL,NULL),(6,'Marketing','',NULL,NULL),(7,'HR','',NULL,NULL);
/*!40000 ALTER TABLE `ice_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_schedules`
--

DROP TABLE IF EXISTS `ice_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_hour` int NOT NULL,
  `start_minute` int NOT NULL DEFAULT '0',
  `start_day` int NOT NULL DEFAULT '0',
  `frequency` enum('once','daily','weekly','monthly','yearly') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'once',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_schedules`
--

LOCK TABLES `ice_schedules` WRITE;
/*!40000 ALTER TABLE `ice_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_settings`
--

DROP TABLE IF EXISTS `ice_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `additional_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_settings`
--

LOCK TABLES `ice_settings` WRITE;
/*!40000 ALTER TABLE `ice_settings` DISABLE KEYS */;
INSERT INTO `ice_settings` VALUES (1,'theme','corporate',NULL,NULL,NULL),(2,'search_per_page','10',NULL,NULL,NULL),(3,'submodule_search_per_page','10',NULL,NULL,NULL),(4,'title','Iceburg CRM',NULL,NULL,NULL),(5,'description','Open Source, data driven, extendable, unlimited relationships, convertable modules, 29 default themes, light/dark themes',NULL,NULL,NULL),(6,'max_export_records','10000',NULL,NULL,NULL),(7,'welcome_popup','1',NULL,NULL,NULL),(8,'logo','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ice_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_subpanel_fields`
--

DROP TABLE IF EXISTS `ice_subpanel_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_subpanel_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int NOT NULL,
  `subpanel_id` int NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_subpanel_fields`
--

LOCK TABLES `ice_subpanel_fields` WRITE;
/*!40000 ALTER TABLE `ice_subpanel_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_subpanel_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_themes`
--

DROP TABLE IF EXISTS `ice_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_themes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_themes`
--

LOCK TABLES `ice_themes` WRITE;
/*!40000 ALTER TABLE `ice_themes` DISABLE KEYS */;
INSERT INTO `ice_themes` VALUES (1,'light','',NULL,NULL),(2,'dark','',NULL,NULL),(3,'cupcake','',NULL,NULL),(4,'bumblebee','',NULL,NULL),(5,'emerald','',NULL,NULL),(6,'corporate','',NULL,NULL),(7,'synthwave','',NULL,NULL),(8,'retro','',NULL,NULL),(9,'cyberpunk','',NULL,NULL),(10,'valentine','',NULL,NULL),(11,'halloween','',NULL,NULL),(12,'garden','',NULL,NULL),(13,'forest','',NULL,NULL),(14,'aqua','',NULL,NULL),(15,'lofi','',NULL,NULL),(16,'pastel','',NULL,NULL),(17,'fantasy','',NULL,NULL),(18,'wireframe','',NULL,NULL),(19,'black','',NULL,NULL),(20,'luxury','',NULL,NULL),(21,'dracula','',NULL,NULL),(22,'cmyk','',NULL,NULL),(23,'autumn','',NULL,NULL),(24,'business','',NULL,NULL),(25,'acid','',NULL,NULL),(26,'lemonade','',NULL,NULL),(27,'night','',NULL,NULL),(28,'coffee','',NULL,NULL),(29,'winter','',NULL,NULL);
/*!40000 ALTER TABLE `ice_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_users`
--

DROP TABLE IF EXISTS `ice_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_pic` mediumtext COLLATE utf8mb4_unicode_ci,
  `role_id` int NOT NULL DEFAULT '2',
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ice_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_users`
--

LOCK TABLES `ice_users` WRITE;
/*!40000 ALTER TABLE `ice_users` DISABLE KEYS */;
INSERT INTO `ice_users` VALUES (1,'Admin','admin@iceburg.ca',NULL,'$2y$10$3IbjWYOQhCz1kLOyoGg6Pe45bwHqnV/QRTjUAKPzzy/orQuuyMlyC','data:image/jpg;base64,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',1,'',NULL,NULL,NULL),(2,'User','user@iceburg.ca',NULL,'$2y$10$vOU7rjSKjtHtsItwdP/Jte195Son67fW6RYoYqmO6yHr9LYohagCC','data:image/jpg;base64,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',2,'',NULL,NULL,NULL),(3,'Sales','sales@iceburg.ca',NULL,'$2y$10$IrR735ZdNKtbo.swE8GRN.dXuqnFR/YmG/dje3sMic/BSUECdYC36','data:image/jpg;base64,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',3,'',NULL,NULL,NULL),(4,'Accounting','accounting@iceburg.ca',NULL,'$2y$10$rraUyL41xMmMYTDTG8VmnOS2I7tEqOTg4qVyMCKCQTtYj7Ff9cN9C','data:image/jpg;base64,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',4,'',NULL,NULL,NULL),(5,'Marketing','marketing@iceburg.ca',NULL,'$2y$10$fbar.xHyro7WgeZeH9BMF.KsZs3wjj.27rNWluqYYS7BJU5YnKGwu','data:image/jpg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4QC8RXhpZgAASUkqAAgAAAAGABIBAwABAAAAAQAAABoBBQABAAAAVgAAABsBBQABAAAAXgAAACgBAwABAAAAAgAAABMCAwABAAAAAQAAAGmHBAABAAAAZgAAAAAAAAAvGQEA6AMAAC8ZAQDoAwAABgAAkAcABAAAADAyMTABkQcABAAAAAECAwAAoAcABAAAADAxMDABoAMAAQAAAP//AAACoAQAAQAAAAABAAADoAQAAQAAAAACAAAAAAAA/9sAQwAFAwQEBAMFBAQEBQUFBgcMCAcHBwcPCwsJDBEPEhIRDxERExYcFxMUGhURERghGBodHR8fHxMXIiQiHiQcHh8e/9sAQwEFBQUHBgcOCAgOHhQRFB4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4e/8AAEQgCAAEAAwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A+y6KKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAqne6pptlIkV7f2ls7/cWaZULfQE818z/tOftJx+HNQn8IeCbpTfwsY7/UUAcwt3ihzwXHdjkL0GT0+YLfVL/wAT6j5t/JLPJOGllurmQzzYHJO49+OnFZyqKJrCk5bn6ewXVtOcQzxS/wC44P8AKpq/Lyx128g1VV06W7tZImzHPHIwfjpllIIr6d/Z/wD2hbibVLTwp46uhIJ2ENpqTkblfoElPQg9n9evrUxrJuzHKi0rrU+pqKKK2MQooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAryD9q74lSfDv4ZzNpshTW9WLWlgV6xZHzy/8AAR09yK9fr4N/b61u61T4wad4fhkPl2Fikaqp6PKd7H642flUzdkXTV5HiXhLwfr3jbWjb6XAGUNiSeVvlB75Pc5yT619E+F/gPc6dpYf+1I2v3Xa7KpCkfT1ra+CmjWejeH7aC2iC/ICTjknua9j0xmCAhM8V5Mq8qjstj2o0I01d7nzT4m+CXifTjLc6fPp80RXLLJaEkn1yOleN+INP1LSboxXiKjq2AUbKkj36g/Xmv0IuLkmHayA54ryT4reBvDviazuPtNgqXuw7LiMbXB7cjr+NJ1XBrqCoqa2sz0P9k34iS+O/hukGpSb9X0cra3LH70qY/dyH3IBB91PrXsdfA/7IHiOfwb8b00C7lzBqxfTZgT92QHMZ/MY/wCBV98V6tKfNG549aHJOwUUUVoZBRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAB6V+bf7Q+o3Ov/tOeILkwuYLbV4tPDgcL5YVOfrtNfpJX5/a/pMN/8aPHeq2pjmSz8TTi5LPhTG+SMerBkOKxrzUYNs6MLBzqWR1F54o1LwtESk2mWFvH8qSXaSOZMDk4Toors/h38SLzWGtoL77ETdACCa1Ztkn4Nz2P5Vo2vhvSNTs4rm6ZXfY0eMA7kbquPQ1LqFha2C6VZWsAAWZPKXA+RV6AegHoK8myivM9xLmK3xU8WeI/D6GPS0t41RWZ5pIGmPCljtVfQAkmua8Fa/qHiKKG5HiK/uriZBN5dxp4jt5U3EfJwGAyCAc16vNa2t/dyWl3Fk53rnqDUv2Sy05GlECqx4yBTtdai2Z8i3nhzXoPjdq+s2EBgt9N1m2m80g/eZ1KqMeuDz2r9G1ORmvlDxnt0jTfEeu/ZQ8FyoaV84KyRlfLwPcZz+HrX1PpV1Fe6Za3kDB4p4UlRh0KsoI/nXdhJuV12seXjoKKi+9yzRRRXacAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFADJ38uF5AMlVJx9BX5ieHviFf8Agr4i6xqs9ouoWervINRtHbHmq7Fg4PZlJJBPqR3r9NNVjnl0y6itZBHO8LrE5GQrFSAcd+a/KbxzpzS+ItSa1ErRW8rREyfeypK/N7nGcDpnFc9a10pbHTQuruO59Q/DHxR/anhuxv4VdbedT5e5ssoDFcHHcY5rofFslheLZC716fTGjIO6JwGbkEcEf/WI614B+zv4vt49MuPDF25SaGU3FoxHBVsblz255/E171a6HZ695V49raST7ArPLErhgOxzXm1Y8k2j2sLVVSKcjpPC0nh+LU5bix1+W9uplBlSW5JQngbkQ8LwBwvFaGvXMpUqD1OBWXbeD9NtWguJdP0oSIdyeRbKgXHfjvWf4x1WSCya0sSkmqzAx2iE8Kx4Dt6KvBJqZOzsXV5Ob3Hc+aPiz8SfEeqeNdQ8LjUQdBs9RkWKCOMLuI+XLEctg5xnvX2t+yn4gfXvg7p0c0vmT6a72Tk9SqHKf+OkD8K+C/Gvw48Y+A9YefxhY+QX2zJcBw6TlySGB+oOQcEZr7I/Yct7pfh5ql/Irra3d8rQEj5W2xgMR688fUV6UEo1El2PFqy5qV2+p9B0UUV1HGFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAV8ffE/4BeL9Q+JniKbwzpVuNM1N5bm3lklVY1dowWB7glycV9g0jsqqWYgADJJPSonTU1ZlRm4vQ+ENQ/Zz134YeH7TxXqOuWl7dXUi2tzYwQnEBf5gVkJ+bBXB4HWtXw14h1vR0FtEodG5CSA8fQ17V8avE9r4iubPw9pUguLWCYzXMy8ozgEKqnuBkknpXG2ugpOEk2AOp9K83FSTn7p62ETjD3iKz1bxPqUWz9xZowxujXc361s2vhW20+z+1tvmvJWVppXO52AOcVvaZYbFRWiQHjJrWmtxIuw+mK5lHqzonU6I9H17Q9D8S6QdN1vS7PU7CTaxguYRIhxgg4NXdOsrTTrKKysLaG1tYVCRQwoERFHYAcAVy/gvW2WBdM1J/wB5GMQzHoy9gT6j9a68EEZByDXtU5qcbo8KpBwlZhRRRWhAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUU2aRIYmlkYKiAszHoAO9ACsQoySAB1JrD1LxXo9kWTzzPIP4Yhn9elcb4o8R3Oru8dsWis4nA2dDIP7x/wrDVMcdR2z6VLYrnWX/ji8kBFnbRwDsz/ADn/AArlPEGr6rqw8q8uZJIc/wCrX5U/EDr+NKVyPSl8sA54/KlqxM56HT7eK5eUALvzjvt6Zx7Vu2AtVQDcu4DPTHNOaFW/gH1HFR/ZVB4U1hLCQbudMcVUirbmmr24UfvArE+tOmvbdAMHf9Kz0thgErU6QJ3jUn3GaFhYjeKm+gG8ZzxtVenX9K0dK1m+seILhwv90/Mv5GqIjReioPwFKV9q6IwUVZHM25O7O10zxhbONl/EYW/voCVP4dR+tdDZ3tpeJvtbiOZe+1skfUdq8nZecUQSzWtws1vI8UinIYUwuewUVjeF9aTVrTD4W5jA8xfX/aHtWzTGFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAVyPxS1P7FokVorYkvZfLH+6OT/SuuryL4v33m+J7aAH5LJELc9GY5/likxMyDciG/s2bmOY+RIPZuh/PH51ciyflJ5HFc1r0/lWM7AnMaiRCPVTn+ldDHIJNsqn5ZAHH4ipZJYA46Uu3ODzSjoO1PAwPWrGJt44HH0pAppwBJpRj0oAVeBjv9KCT2pxGe2OKbz60AHvSjvxQB3OKdjPTn05oAVBkcdabMAFyByTgVKvTn9ar3LAngkbR+tAFnRL1rDVIblDhQwDgd17ivVFYMoIOQRkGvG5GKsBzwOucV6j4VuftehWspOWVNjfVeKSGjUooopjCiiigAooooAKKKKACiiigAooooAKKKKACiiigArwDxFdHVvEGsXIJZZJW8vnsvC/ote2eKr4ab4dv70nBigYr/ALxGB+pFeBaedu09eOaRLG6ji501mIxmMg4q54Rujd+GNOmfl/JVWPuvH9Ko3A2abdR8/Lkc8Uvw7fPhSNf+edxKn0w5P9aliOwhbKjFTLgjpn6VWtz8o5xVlBxng1YxQABShfypOaUDI/8Ar0AHrmkI7j86Xt3pRgjPFADVz0/pUiDt/Sk7A9acpAHPWgALYQnP6VRZ94U92OcfjVyXmNjnIxWfGRv29lQUCuOdgZj9PSu4+Glzus7q1J5Rw4B9CMf0rhIzmR2IyCeK3/A139l8QRIchJ1MR57nkfqKQ0el0UUUygooooAKKKKACiiigAooooAKKKKACiiigAooooA4T403xg8NxWSH5rmYE4/upyf1xXlNlg26MB1JHJ967T4z3fma5FbcgQQDGehLZJ/pXFaYCtnGG5yT+pzmpe5L3G6oQqyqeksece4qp8Np8aDdx85W/lz+IU/1qTxWWWwhccEMQPes34azI9nq9vv+aO+3Hjs0akfyP5VIj0S2OVHr9KuJnH86o2h/dp9Kvw8rWgxSD1waMc+g+tLjvxS4FADW6YowQKM8nIP40E+tAChs5zTl4GajjxvPHGPSne569qAEu22WrseMLWfGcozjuBiq/i7U2sdDaSNN80tzDbIo55kcLk+wBJ/CpYGDLx0HapbETqm1Apx0p0btDIk8eQ0ZDKfcc0zdub2xTgPk9+tMZ7BY3CXdnDcocrKgcfiKmrm/h7dm40U27HLWzlP+Ankf1rpKZQUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAYHibwppmubpZg0VyVwJV56dMqeD+lfPnjTX7bwn4xu/Dmq2k5FqU2XVsNyOrKGBKHlTzyATX1Ea+ZvHdtb638Vtau50EiQ3AgXI4/dqF/mDXLi6rpQTR14OhGtNxltYzvEWsWF3pUckUuEzvUupQk/wDAsVi/Ci5Euo6+YzuUzQruHchD/iK6HxbeQwaDcQbUKqmNuMj8qxfgvp6weEluQuDd3U8+Mfw7tq/otZYfEe1eqHisGqCumeo2xxGv0q5AeMY696owEBV9hVxDxnH5V3o4ScnjFKrZ6YqLJIGcEU8HKkdaAFXk9xQPmBJwTmmpnOenbFPO7BoADnd0/OkbgnNIuTx0AofpyefpQByvjqxSa70fUHvLmP7Ld7hbo2I5mKMo3jvjJIrRtCSoGeOtZnxHaa30QajHbS3K2TG4eKLG9lUYOM8d8/gas6Ja3V7ZpMl1Fau6A4Mfm4+pJAz9BXPUqxhua0qE6vwo1oRjHOee3NWI4LiQgpCxXGScdK848caD8R7ZjcaN44ZLbBJjWBImHtkLXffD74NPNYW+o/ETXL/xBesFkFo15J9nTuAwBAc/hj61NHEKq2kjSthZUUnJ7nTfDi8t11ya1iu4pnkhJdIm3hSp6kjgdcda9EqK1t4LWBYLaGOCFBhY40Cqo9gOKlrqMEFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAEdxMkEDzSHCRqXY+gAya+e72yeGwk1TaWuLlpJ3x1LOS3H517L8SrtrLwJrE6khvsxQY/2iF/rXmduTPpkQPZeK8vMHzNRPUy5cqczyvULa7udM1Ge4DoMAxhh1xXWfD+y+y+EdFgwB/oUT9e7LuP86zvG10LWxuEGB8pzmtzwBJ9o8M6Q3b7BEc/8AFLARsmPM5XSN5Pu8DAA7ircXyqDxz75FVVDEHbkD0qe2xtA/pya9U8gsDp7U8AdcA59sVGD82Mj8qeMY57UAKnv696U9Ccj86b06dT7U9RlO2e4oAbkgZz14xSEADnr70MRwzdj3pe3Xj0pMBktkuoWl3ZN1nsbmMeuTC2K5LwLfsdGtPNOHaJWx9QK7vRpPK1W2kI437fbBGP615noUEsdlYxqvzxhoz6fKSP6V52MWiZ6uXPSSO41GIXWly46FDj8q9Y0ZhJpFm4OQ1vGQfX5RXldhxpOHPP+Nej+CpTN4V05yekIX/vkkf0qcvfvNDzBe7FmzRRRXqHlhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQByfxeP/FvNUGM5EY/8iLXnWlkGwXA5xXoPxk3f8K71MqcbfLJ+nmLXmfh6UyWK8/Q15OO/iL0PXwC/dP1OH+KsEkkDwx8PMPLX6k4H867Hwtbx2EMOnRnKW1ukCn12gCsHxqEl8S6LaZyZL6LI9g2f6V0TI9pqSlR8p5Nb4SNlc58wnqka6AhtuB9KDuWUEc/hS4BIIIIIzzTg3y9uOtd55xOnIyTnNLwOBkH8xUCErxj8ql3AZA6nr6UASZ7A5FKpAJU9PcVGCTg8nHfFPbpyM/0oACOcknHpig5yM/nQVOOwH1pcjIwD+dAEkPDqfQ5FcL4QuPtNnAx5wpJ+pJzXaM7KQRn7wrzn4cytLpquO0ki/k5FebjdLHpZfq5HfoStgcDivQ/h2d3g+xPs4/8AH2rzqRglgzE4AQ16B8MW3+CbBvXzP/Q2rPA/xH6G+P8A4S9TpaKKK9Y8gKKKKACiiigAooooAKKKKACiiigAooooAKKKKAOV+LMP2j4c62mcYtjJ/wB8kN/SvJPCb7rYZ69/8K918S2/2zw9qNrgHzrWVBkdyhr588FzEqkTHkgV5ePXvRZ62XO8JIzb63e/+LGmyRsWSxiluHT/AGtuxP1cn8K7OZ47uLzYBmRThgRggjsawdHRI/iJqlu7ATG2jZD/AHl3Hp+NdRJbYfeUHmf3xwTXVh42ijz8XPmqMq2d7EjC2nJRj90E9fYVoYXbkEsPX0qrc2lvdR7LmBSPpVZUutPmVVlN1bE4wx+eP3B/iHsea6bnMX39hn3pyDAySTULPIHO0Aj64p0cxaQAp+PWncCwpOMYH41IAcng9PqKjiOTnB9KmU4GNv60rjQbdx5UYI9cUhUgD19c5qQYC8jr601wSvAUetFwK852KzEcjnrXnPwrcvoyliAxnmJ/77NehTAlgpU7e+K4vw/BbWPiPUbG0j8uFLglFznbuAY/qTXn41e6mehlz99ryOq1SQrp7BT2xg16X8MY2j8C6UG6tEX/ADZiP515Xr0jfYSF4ODXs3ha3+yeHNNtsYMdrGpHvtGazwCvNs3zB2pxXmaVFFFeqeUFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFACMMjB6Gvmy0tpNM8Q3dk4IaC4kj59mP9K+lK8X+JWnLa+Op5lG0XMaT8euNrf+g1x42HNFM7sBU5JtdzlNZs/tGuw6g+pXFjHBC6u0MuzdkjGT7Yz7VHqusCONbDSvEafaopN8xe78yTHGAxbPy45q5qZikg8iVNwl+8CMjkcfp/OuW1HRLORDstY0aPJUhcED6jn1r28Fh1Cik9zxcbX9pWbWxJc+ItWmvb20steuSbYqssgs0Kk4+byyRg4PUdfSqmnaprzSouoeLJAC5GdkQA9CRs6VLpOoSqy6ZffPGBmKXuAKr6goM7wSR5VuQw547V2qhDqjh9pLozoZdS8SWbqjXFpNlco7W4Ib8QR/KszVPF+vWLwsJNLYs5jkjaBlCtuYAghs4wB196raTctBF9ikk8yAcx55MZ9B7VoW1u01rcGOOJjK5+dlywHz9Py96zeHp31RarTtows/HnihZZll8OabeRxyCPzIL1o+cA9GU889qsTfEfXkjnb/hEIYfJAP76/J3ewCp1qjplu6QztOoLm5mYgDlPmI2/hjr361dmlY4LRE8YJ29DSWGpPoN1ql9yfV/iNfaLaJPqWk6dOZOI47S7kLNxknLJgAcdeeauWPxIiuohIvhnVjGQCHjeFwc/8CBrF+zWspCeXtfqrA8gfQ5H6VNB5NqnlCBFQZyYVwW9Sw7n3FL6pT7DVefc07z4h6XZky6joevQW2Pmm+zpIqfUIxI/KqPh+8t77xfrE9nIksAuI1WRTlWHlqcg/jU8bQzWM9qzblkjIR1APXsQfSsD4PwyG71lXGXS/dSeMEjjIxxg4rxM3oqnBWPayeo5VHfsd5rQaYxw4JLuEwPc4/rXvEKCOJY16KAo/CvFbWE3PiPTLY5wbuMZx6MCf5V7ZXJgI6SZ15g7uKCiiivQPPCiiigAooooAKKKKACiiigAooooAKKKKACiiigArzP4wRD+1rCQAb3tZVz9CCP516ZXnXxgBa80gAchJv8A2Ssa/wADN8O/3iPJbnUofNXe5MbgDPoaq3smpoQYbF7oKM7kUYZarXmj3TTzxC5kC+Y2xUHRc5x+tVorPVLV1WPWLqMjgJJFlf0NfQUvgTPCqq02iDUL27Zl+0aJNCCuciPoPTinWutwtGIntyw3YO5euP6VeOp+ILRB9ptYb6Ecl4iQ2fQg1UHiDRrx/KuYDbzA42yDHPtWyMGivfPbShpbaNll5JAbApuneOLbSFsLO+iLRzK2WUnO8u6gdOp5P0Bp2twIIi0Q/csMqyHJz9a898UaVc3BP2KM+dDOQhmcBQQ+Qy8jqCQVwR71S5Xa4JPU9J0LxfaXUUcUyyedco04JzjazHGM9wOOvatP+1rVmwIyygZxurAmt7OMWkslkvmLAEZI8hc5yMAH3/WpQ9tN/wAe2k3KPnhgSBn05qeVWE22zUkvLf5isDljwfn4/KrtnexNFiO3IJOGyOfpWdarqojULb2qqMAb2yQe2eK07VNWCB5BAqfeIUY5+tS7FLUj1DTnlhkmgD27D+IDOT/u96sfBHT5IfDk1zOoElzcSSFguAcyNzjtxWdqV1qV4Dbq80atlFWLq3413PhKzGmaBBZgHMabSa8LOpe7GJ72Sw96U/kbPhePPjPTXlUr+9P0J2tivXRXlHg6Mz+LrJV6RFpD7AKR/WvV64cD/DfqdmP/AIi9AooortOEKKKKACiiigAooooAKKKKACiiigAooooAKKKKACvMvjBcFNY06IH/AJYscfVx/hXpteL/ABK1CPU9buriLJSyU26FeSdpJY/mcfhWVX4bG+HXv37HFapPMmoSiHBZSOPqufzqH7VPgvLal2xnA7mi0eWS8lnJOJNhKY+6NoyDVzBjl/d7djE8DpivaoO9KPoePiY2qyXmUn1N7YP/AMSuZ/XaRkg1h6vqOj30bRXfh+56n5vJ5BrsnuYImJk2jAGBis671h8bbXTDO3QEqABXRFrscskcKudPkWL7NerpzqCjyoeD/nsayL6+s5NeKJLKiBw5kR2Q4ZBn7vuDXZauNd1GB47i5gtoWH+rjQN+teSeMLq40DxLYWiwNcG+GyNlOSWB+6RWkmkrsVNNuyPVrW8guEjMSXMxUY+YnnrzV0T6whXyrCIKGI+Yk8HpXLeFvFOrQ20LvpttcW8iBhglXGfrxXbaV4gsNQG1jJbyAYCP2+hpN+QcuoRzarIwWSCFOcHBP51YnMwiAncbl/hUZ+lOvoZ1w0crFCAuc1D5b/Z5JW+YBTnI9KgaLXgZGvDNq9wXEZkaC1jIwCBwzkdyWBA9APeu6CJ9lGV+bGSa84t9dtdI8BafqMzFFkuYQme5lfGP/Hifwr0CK6Sa0EwYbCoIIr47E1nWrSkz7fC4ZUaMYo3vhh5Z8R3RIy32Xgnt84z/AEr0qvKvhpIf+EyZM8/ZXz+a16rXVhP4R5+OX75hRRRXUcYUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFfP/AMTtLu9Nl1+1jbBYtc27AkEo+T19jkV9AVwnxZ8NXGqWcWracplurNGEkGM+fCeSo/2geR68jvWVVO11ujow00p8stnoeIaUbdbDSjayeZHJApyhyDx6963ljyVyoYduMVxHgfR4tGe8hgnaW1munntlJP7pXySgB6ANn867pAWjAPXH+fxr18Pb2UWjy8Zf28k+hVuYF37iq46fWqkhOMjIUdT9K0ZkClt2MgZFUbuP9yWZvlPQA9TXRFnE0Zzyx7Qm1iDyT/n8K5VvCf8AwlvxF8M2Vtbh50vmuTIOdiRoW59sqB+NdLeSOqs4jCjHQ/yr0D9nHREn1XUvElwitJAPskDY6bsM5+uNo/E060+Sk2FGLlVSPBfBbLdaZHGSVliTa69CrDg/rXVQ2kZdY3UZJ6njn61gy2Kab4u16zhBjSLUbhUAPQCRuK6i0lWS3w+GK9D1xVxleKYSWpoWdvJzFHdNwNwVhkVanLQ2U8zsdqRtnYvoKhsQoUOoO4D5eeTjtVnUkU6LeRFW/fxMg56bgazk2VBK5Y8BWGm6tcaBYajBay2aqziOYBlLLC+OOxHUHtVuSZbKxgitj/rMRpH14A/wFeX2mt6hr3i7SbaXT7fTLTRrR0lETZ8+R18sO2AMcZIBz3r0S01K2e88lcEWsWFXb1ZuABjvXxtem6VoS3Pu8PONa9WPw7fcd78Go5bvxBqV+UxFbxCDd/edjk4/AV6tXO/D3Rjonhe2tpI9lxLma4z13tzg/QYH4V0Velh4clNJnh4qqqtVyWwUUUVsc4UUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAHhPxS02wtfHM72Vulu0qJLNsGA8hHLY+mM1lQgsQNw4P61ufFz9346kJYnfBEwHpwRWDaSAuCB3yPrXp0v4aPNrazdxZSrTP5g+U9PasvUGWMiJ2JXJwBWjPhdsow2RyPSsy9Cs4ZgDtB4reJhIpXhSSHeSPv9Mda99+DWnDTvAVmT9+6Z7luMfePH/joFfPtxG7yJEikFiSADg19TaDbrZ6LY2qggQ28aYPXhRXNjpe6kdODj7zZ8o/E/Tmsfiz4kjYkCa7E6g8f6xQ2R+tNsSrQAKCrKTx7V1f7SlnHbfEO2vE+/d2KF/+Asy5/lXJaeQ0aEg5wOnp/wDrroovmppmVVWmzftwFRJUxwefb1qaZVkhKyCRkAJITrjucdzUFud8aovIIwfr6VZ27txAPHP402Qjzr+02uLq603w5p11HbKfMkumhKvKx92xz9fwFfUnw6+HeheHrK0vZLf7ZqhjV3uZvmKsR/COgx69fevJNPtkfWoVEQJnkVTnucivpRFCqFAwAMCvIq4OnRkmtW+57azGtiI8r0S6IWiiioICiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAPGPjXHjxbbnA3PaqynHoWFctCGOxcAZPUetdl8dVH9s6c6/6xbZif93fXF2Lb1UMwHHBr0qP8NHnVlabG3LOkeMZ3dCPXNULqIKxZ35Pr61pXHMW3pjPNZl0NisqqrvySSe1dETnkO8OWRvfEGnx/M7S3UakMeo3c/pX1EK8F+FdlFc+NdPZowTCHmyP4SFP/ANaveq4MZK80jvwkbRbPn79qeFf+Eg0C4HDG3lQn1AZcD9TXnliSVADAHHHPQ+leuftQ2oey0K62j5JZkY49VBx+hrySxUuI24J4Oa6sK700c+IVps6GwyGBP3O/sT3q3EAqlQwJxwcnketV7UH7OzMBuIxjrmracxlzngc1ozFGz4NsxP4t02J/mBmRvXABz/Sve68d+GUG/wAXWsuMYiZsHthT/jXsVefineR6GGVo3CiiiuY6AooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigDyr47wn7Vo86pn5JkJ9vlODXE6eqbFJUe1d/8dZgkGlRk4LtMR74C1wFkqgAgkgqMHtXoUP4aOCt8ZDdEsGwDzxjsKpyjnYq8EYJArSvVAbYnGetVZ1DEKvyqOSa6UzmaO1+CMUZ8QXUuzDrbkEnt8y17BXlXwOhf7XqM/BTy1XPuWz/AEr1WvNxLvUZ6WHX7tHk37TIx4Y0t+OL7GCM5zG3FeN6RHmM7iPlO7ivZ/2mGC+ENPJQN/p4wfT5GrxjSS3liQKSDwRmuzCfwzlxPxm/bYkk8tc/nWhBG5PlEfdJBz6dqr6TGGkQj1OeKuSAk7hgYxk9zWrMUdp8J43k8RSSDPlwwMB75wP616tXA/CG3At7+4OCd6oD/wCPH+Yrvq8yu7zZ6NFWggooorI1CiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAPNfjrGhttIlY42SyjH1Uf4V5xZOzRbQOh3f/AFq739oUyR2GjXAOY1nkV1z1JQY/ka8zh1BYI0XOW7/SvQw3wHDX+I0bhxvIJy3eqUszGRlAOMcn3/xqNbhZDu3gH0J5plzI0ieXEcKT949zXVE5mey/BG18rw3PcnBM0+AR3Cgf4mu+rnvhzZR2Pg7T4kXG+PzWyMEljnmuhryKj5ptnqU1aKR5Z+0yr/8ACB2sqDJj1GM59Mq4rxXQykkBKnjPzDOMV9B/HWCOb4b30sqBlt5IpcfRwP6185WwWCZtoZQ3PXGfSu/Bv3DjxStI6+0cIyMvIPBAq67Fywzj5cVgaXdESBHJ2twM9zWmk2bhgGHStmjBM9p+Eqr/AMIkko6yTMT7YwP6V11c58N4RD4RtRtAyXYgf7xro68mbvJnpw+FBRRRUlhRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFAHkv7RV0otdDsMKWlnklPPICqB0/wCBV5JJHcLjCE/w5Nen/tAKn/CR6HJJjyxbT5J7fMnP6152btD8kFs7R9dz16eFX7tHnYiXvkVpG79t2RgcdDVhSsE8SR7WcnHPIzjrUMZaUlC+wddinAzVvRkWbXLG2AQhrqMHI4PzCt5aJswWrSPprToRbWMFuP8AllEqfkMVYoorxT2DivjnDNP8KNeS3yJFgWQY9FkVj+gNfOWkXsGoW6W10vkXSrtJYfK/+Br6X+L8y2/w01+VhkCzYY9SSAP518vRWsd1GsqNsJ+6e4PpXoYO/KzhxVuZHQR6ZJC37uXKquVUnOPerqqySrIw56MTWFa31xbYSZmZVbGfaukgeK9sHYbd4HPvXWzkR7n8NGdvCFrvz8rOB9Nxrpa5n4XxNF4Ksdyld29gCexY101eNP4mevD4UFFFFSUFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAeJ/tHhDrGiO4zthlOO33l/wAK88XDIrHJGRgdsV6J+0jGTf6NJvAAilGD9RXmsDhrRVLDIHp2r1cL/DR5uI+NiyjB2ghcnnHf8a0fAe0+NtLjY5/0uPAxn+MVmyJ8u0OGbp05q94HzH480ZvmBF1GDjud1bz+BmFP4kfU9FFFeGeycX8bzj4V66SM/uUH/kRa+bbZQIhtIBCfrX0b8eJVj+Fmrq2cyCJB9TKtfONqSwJwpKgdR3r0sEvcZwYt+8jQiVZEBJUkDaRn9alsnktrnchJQnkeufaoLUEq524XGD+tWoFRSQ4z0P1Ga6nojlW59LeCECeEtMVeB9mU/nzWzVDw/GYdCsIiMFbaMH/vkVfrxHuexHYKKKKQwooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigDxj9pFR9p0Vy4+5MNpH05ry21y0KjpgYBx+Ves/tJxp9m0SQqTJvmAwM8YWvI7cgW4BP5V6mF/ho83E/GXIuVJOMj0HPWrHgwiPxhpE5LYW9TOP94VUVs/Jv46571r+DoEl8VaTCAAGu42+g3D/Ct6nwMxh8SPpyiiivEPYPPP2hGA+GtyDj5rmAdf8AbB/pXzxCcE85/HtX0D+0azD4fIFIG6+iBz6YY/0r56hBYsCRjHQelengvgPPxXxGmCPs2Bk7s9q09Fj+0XdvHjO+RVxjr6CsmAhI+TnnPNdD4IhNz4n0yMZ5uUycerCumo7RbOeCvJH01bp5cKJ/dUD8hT6KK8M9gKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAPKf2kFT+wdLdgcrdMBj3Q/4V4nECqgndjOea90/aLh3eEbKfP+rvQvv8yN/hXhm7ouR1wB7d69PCP3Dz8T8Zbi3SbhgdP8iuh+HsZk8aaSBnAuoy3I6hs/0rnIXCpvIJ528jPSul+GkTyfEDSG2naLjLcd9rGt6r9xmFP40fSdFAorxT1zzP8AaMfb4JtUwCG1CPr/ALj14Ew2KcA8j05+le8/tHyMvhGxiXPz3wJA7gI9eEpEu/HO1sY5xXp4T4DzsV8ZNb/MoUnnGBXa/CqFG8ZaarAsyyhh9Bk5/SuJAIx22S447D/GvSfgzGJ/GNtIc/u0kbH0XH9a2ru0GZ0VeaPeKKKK8Y9UKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAPOv2hCf+EDRQoO69jGfThjXgCKW3Plc4r6E+PSO/gVfLRnYXkRwoz2YV8+BD5jfu5FUjkFDx7dK9PBr3Dz8V8ZPAy7VBHXODiu5+DWH8c6eMcL5pHHT5GrgQNki+b+7QHOZDtz+dehfBiKVvHVpKiyOixyMWVDtClPvE/U4+tbV7ezZlRvzo9/ooorxj1TyH9pecx6Vo0GVw1xJIc+ygf8As1eNQsSQP4gc8dwK90+OXhDWvEiWF1pMKXX2VJFaAsFbLEfMCT7V4QY5rG4eC9ja2ngfY6TIVxg45OMdeK9PCyjyJX1POxMZc9yy20TKASAOevSvTPgUqf8ACTMQefs7sM+nFeZ7900Qilh3SFgmJB8xHXHHb0r1b4GWV0NYe8KTND9nJL+WVQbsYGT1PXjtV4lr2bJoJ86PZ6KKK8k9MKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAKHiDSLDXdKl0zUofNtpcbgCQQQcggjkEGvnv43eEbfwzqGk2+jCQ22oRypIJpT8rKynII9j+lfSdeP/tFxXU8mhNa2dxcC2M0kpiiLiMEKAWwOBwfyrOtVqU6bcGa4elTnVSmro8wvNGMds84niR5QhYJEDgr0wWz617r8DVcfD61eaV5pnml8yR2yzEOQMn6V47cbZNPg2neOPmHtXsPwNnWTwKsQGGguZUb8Tu/rXFhcRVq1H7SVzvxmHpUqS9nFLU7uiiivRPLCvljxFb+d8UfETfaJkjbUZPlV8AkH06V9R3E0dvbyTysFjjUu5PYAZJr5UtXk1HxDc3iK8kt3dPKqIpZiGYnoOehrhx05RiuXc9DL4RlKTltY6fRNHguvFWj2bSTSRyXP7xSw5Uj5+g7gHNfQsEUUESxQxrHGoAVVGAB6AV414M03VrTxrpV/daReRWoZ0aV0wq7kIBPcc4/OvaK1wspyhebfzMcYoKdoJW8gooorpOUKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKZPKkMLyyHCqMmgDK8Rasti8Nqj4nnztAxuwPTNYNpdul1lor1mbkyMo6e/PX2o33F9qs901vAMHYHdG3jHIUdioz1B65rQwoDI2RtGWYDj8D3rN6lI5Lxr4ci1VHudHit4bzG7aCFSf6/3T79+9YHwM1+6t/iNqPgqeMxMNJGozRP96KUT+XgjtlSD74Br0GYxqSyqPMH3W7jP86i09LaDV11P7NAtycRyzhAHdBn5S3UgZPHQVkqKVTnRu60nT5HsdtRQDkZFFdJzHB/tA32o2Hwg8QzaRDczXz24hhS3jLuxd1U4A5PBNYvw60aHQrCNpUEd5MFadtuSgwMJkdAP512vjO6KRQWyNhnJc49B0/nWNY/JtkXO4dRmspRTlc0jNqLiXppIbhdhW5x1BCYz6dea2tDv3vInWWJo5Izjkgll7HiswS7ipEzDe3CsgYf/AFqTTg1pqu4+WkZ4jWOMj5TyQ3bryCKsg6aigEEZFFUIKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAZNLHDGZJXVFHUk1yWua3Pd6gljZ6deTW6je0w2pGSOgJJyfoAfenalqK31+6Bx5UTFUBPBI6mmROA2VYce9IaCKR87TGYp3B2AyHHvz6456dqlmdUUBABjqQAMn1qKeZQEZnUFDnmqF5dsQfLAUf3j1/AUmMbeXsccyxfNJKedikcD1J7UXM7Pb4CEDHQDj8+/4UzSLO4uZHa0t3lJb945PAPuTx+Fb0XhuaZl+13CrHj5lTJY+2egqdWNs3dIlM+l2srfeaJSfrirVMt4o4IUhiUKiKFUegFPrQg4XxsLl9eQxuECQqFDDhgSf61n2F/iYQXKeTIeBn7rfQ16BqOn21/F5c6nI+668Mv0NcT4s8PXNoi3VuDcW4J80jhox/eI7j6dKzaa1KT6GgjsIHWNVZyPlyxUde5HOKWRXMQWG1vSpbcSsoTPPqfmAPpWXpd4dipNnI6Me/1rcS4WVAVkXP+9VJ31Am8O61JcSTWl5ZS2c0TfcZt4Kk8MrDqPbqO4roQQRkdK5SSU5BLrx3zWr4evPOjeBm3NHyD6g07iaNaiiimIKKKKACiiigAooooAKKKKACiiigAooooAKKKKACmTqzQuqHDFSFPocU+igDx7S/EmnQahLp13cG3u4WKyRTo0TAg4z8wAI9xkVvjWNMlHF7aN/22X/GvQJI0kGHRWHowzVJ9E0d5PMfSrBn/vG2Qn88VHKVzHILLFLxbtHIx6CPDE/lV6y8P3V4266LW0WeR/Gw9vT6mushghhXbDFHGvoigD9KkpqIrkVrbw2tukFvGscSDCqo4FS0UVQgooooAKR1V0ZHAZWGCD0IpaKAOK1Lw/c2czPbI01tnIxyy+xHX8RVS3u7WNsNLECvUMwyPwNegUx4YnOXjRj6soNTyjuef3+vaVboDLqFshz03bj9MDJrd8Fb7rfqKrKtu6bYy6FN/OcgEA49zXRxwxRnKRop/wBlQKfTsDdwooopiCiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA/9k=',5,'',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ice_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_work_flow_data`
--

DROP TABLE IF EXISTS `ice_work_flow_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_work_flow_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int NOT NULL DEFAULT '0',
  `from_module_id` int NOT NULL DEFAULT '0',
  `to_id` int NOT NULL DEFAULT '0',
  `to_module_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_work_flow_data`
--

LOCK TABLES `ice_work_flow_data` WRITE;
/*!40000 ALTER TABLE `ice_work_flow_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_work_flow_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ice_workflow_actions`
--

DROP TABLE IF EXISTS `ice_workflow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_workflow_actions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_workflow_actions`
--

LOCK TABLES `ice_workflow_actions` WRITE;
/*!40000 ALTER TABLE `ice_workflow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ice_workflow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_06_19_143804_create_modules_table',1),(6,'2022_06_19_143824_create_fields_table',1),(7,'2022_07_02_233359_create_module_groups_table',1),(8,'2022_07_08_001720_create_relationships_table',1),(9,'2022_07_10_212315_create_settings_table',1),(10,'2022_07_11_215542_create_module_subpanels_table',1),(11,'2022_07_31_030053_create_relationship_modules_table',1),(12,'2022_09_04_133132_create_workflow_actions_table',1),(13,'2022_09_04_133919_create_datalet_types_table',1),(14,'2022_09_04_133924_create_datalets_table',1),(15,'2022_09_07_143848_create_subpanel_fields_table',1),(16,'2022_09_11_154012_create_module_convertables_table',1),(17,'2022_10_05_041845_create_permissions_table',1),(18,'2022_10_06_050037_create_roles_table',1),(19,'2022_11_01_015724_create_logs_table',1),(20,'2022_12_22_060434_create_work_flow_data_table',1),(21,'2023_01_13_035934_create_themes_table',1),(22,'2023_03_17_135227_create_connectors_table',1),(23,'2023_03_17_135248_create_schedules_table',1),(24,'2023_03_18_050309_create_endpoints_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-04-02 20:17:31','2024-04-02 20:17:31','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0,NULL,NULL,'');
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://wordpresssite.iceburg.ca','yes',NULL,NULL,''),(2,'home','http://wordpresssite.iceburg.ca','yes',NULL,NULL,''),(3,'blogname','iceburg crm test','yes',NULL,NULL,''),(4,'blogdescription','','yes',NULL,NULL,''),(5,'users_can_register','0','yes',NULL,NULL,''),(6,'admin_email','rob@iceburg.ca','yes',NULL,NULL,''),(7,'start_of_week','1','yes',NULL,NULL,''),(8,'use_balanceTags','0','yes',NULL,NULL,''),(9,'use_smilies','1','yes',NULL,NULL,''),(10,'require_name_email','1','yes',NULL,NULL,''),(11,'comments_notify','1','yes',NULL,NULL,''),(12,'posts_per_rss','10','yes',NULL,NULL,''),(13,'rss_use_excerpt','0','yes',NULL,NULL,''),(14,'mailserver_url','mail.example.com','yes',NULL,NULL,''),(15,'mailserver_login','login@example.com','yes',NULL,NULL,''),(16,'mailserver_pass','password','yes',NULL,NULL,''),(17,'mailserver_port','110','yes',NULL,NULL,''),(18,'default_category','1','yes',NULL,NULL,''),(19,'default_comment_status','open','yes',NULL,NULL,''),(20,'default_ping_status','open','yes',NULL,NULL,''),(21,'default_pingback_flag','0','yes',NULL,NULL,''),(22,'posts_per_page','10','yes',NULL,NULL,''),(23,'date_format','F j, Y','yes',NULL,NULL,''),(24,'time_format','g:i a','yes',NULL,NULL,''),(25,'links_updated_date_format','F j, Y g:i a','yes',NULL,NULL,''),(26,'comment_moderation','0','yes',NULL,NULL,''),(27,'moderation_notify','1','yes',NULL,NULL,''),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes',NULL,NULL,''),(29,'rewrite_rules','a:81:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes',NULL,NULL,''),(30,'hack_file','0','yes',NULL,NULL,''),(31,'blog_charset','UTF-8','yes',NULL,NULL,''),(32,'moderation_keys','','no',NULL,NULL,''),(33,'active_plugins','a:0:{}','yes',NULL,NULL,''),(34,'category_base','','yes',NULL,NULL,''),(35,'ping_sites','http://rpc.pingomatic.com/','yes',NULL,NULL,''),(36,'comment_max_links','2','yes',NULL,NULL,''),(37,'gmt_offset','0','yes',NULL,NULL,''),(38,'default_email_category','1','yes',NULL,NULL,''),(39,'recently_edited','','no',NULL,NULL,''),(40,'template','twentytwentyfour','yes',NULL,NULL,''),(41,'stylesheet','twentytwentyfour','yes',NULL,NULL,''),(42,'comment_registration','0','yes',NULL,NULL,''),(43,'html_type','text/html','yes',NULL,NULL,''),(44,'use_trackback','0','yes',NULL,NULL,''),(45,'default_role','subscriber','yes',NULL,NULL,''),(46,'db_version','57155','yes',NULL,NULL,''),(47,'uploads_use_yearmonth_folders','1','yes',NULL,NULL,''),(48,'upload_path','','yes',NULL,NULL,''),(49,'blog_public','0','yes',NULL,NULL,''),(50,'default_link_category','2','yes',NULL,NULL,''),(51,'show_on_front','posts','yes',NULL,NULL,''),(52,'tag_base','','yes',NULL,NULL,''),(53,'show_avatars','1','yes',NULL,NULL,''),(54,'avatar_rating','G','yes',NULL,NULL,''),(55,'upload_url_path','','yes',NULL,NULL,''),(56,'thumbnail_size_w','150','yes',NULL,NULL,''),(57,'thumbnail_size_h','150','yes',NULL,NULL,''),(58,'thumbnail_crop','1','yes',NULL,NULL,''),(59,'medium_size_w','300','yes',NULL,NULL,''),(60,'medium_size_h','300','yes',NULL,NULL,''),(61,'avatar_default','mystery','yes',NULL,NULL,''),(62,'large_size_w','1024','yes',NULL,NULL,''),(63,'large_size_h','1024','yes',NULL,NULL,''),(64,'image_default_link_type','none','yes',NULL,NULL,''),(65,'image_default_size','','yes',NULL,NULL,''),(66,'image_default_align','','yes',NULL,NULL,''),(67,'close_comments_for_old_posts','0','yes',NULL,NULL,''),(68,'close_comments_days_old','14','yes',NULL,NULL,''),(69,'thread_comments','1','yes',NULL,NULL,''),(70,'thread_comments_depth','5','yes',NULL,NULL,''),(71,'page_comments','0','yes',NULL,NULL,''),(72,'comments_per_page','50','yes',NULL,NULL,''),(73,'default_comments_page','newest','yes',NULL,NULL,''),(74,'comment_order','asc','yes',NULL,NULL,''),(75,'sticky_posts','a:0:{}','yes',NULL,NULL,''),(76,'widget_categories','a:0:{}','yes',NULL,NULL,''),(77,'widget_text','a:0:{}','yes',NULL,NULL,''),(78,'widget_rss','a:0:{}','yes',NULL,NULL,''),(79,'uninstall_plugins','a:0:{}','no',NULL,NULL,''),(80,'timezone_string','','yes',NULL,NULL,''),(81,'page_for_posts','0','yes',NULL,NULL,''),(82,'page_on_front','0','yes',NULL,NULL,''),(83,'default_post_format','0','yes',NULL,NULL,''),(84,'link_manager_enabled','0','yes',NULL,NULL,''),(85,'finished_splitting_shared_terms','1','yes',NULL,NULL,''),(86,'site_icon','0','yes',NULL,NULL,''),(87,'medium_large_size_w','768','yes',NULL,NULL,''),(88,'medium_large_size_h','0','yes',NULL,NULL,''),(89,'wp_page_for_privacy_policy','3','yes',NULL,NULL,''),(90,'show_comments_cookies_opt_in','1','yes',NULL,NULL,''),(91,'admin_email_lifespan','1727641050','yes',NULL,NULL,''),(92,'disallowed_keys','','no',NULL,NULL,''),(93,'comment_previously_approved','1','yes',NULL,NULL,''),(94,'auto_plugin_theme_update_emails','a:0:{}','no',NULL,NULL,''),(95,'auto_update_core_dev','enabled','yes',NULL,NULL,''),(96,'auto_update_core_minor','enabled','yes',NULL,NULL,''),(97,'auto_update_core_major','enabled','yes',NULL,NULL,''),(98,'wp_force_deactivated_plugins','a:0:{}','yes',NULL,NULL,''),(99,'wp_attachment_pages_enabled','0','yes',NULL,NULL,''),(100,'initial_db_version','57155','yes',NULL,NULL,''),(101,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes',NULL,NULL,''),(102,'fresh_site','1','yes',NULL,NULL,''),(103,'user_count','1','no',NULL,NULL,''),(104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(105,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes',NULL,NULL,''),(106,'cron','a:4:{i:1712092651;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1712132251;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1712175451;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes',NULL,NULL,''),(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes',NULL,NULL,''),(121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:3:\"6.5\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes',NULL,NULL,''),(123,'recovery_keys','a:0:{}','yes',NULL,NULL,''),(124,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.5.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.5-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.5\";s:7:\"version\";s:3:\"6.5\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1712089051;s:15:\"version_checked\";s:3:\"6.5\";s:12:\"translations\";a:0:{}}','no',NULL,NULL,''),(126,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1712089051;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"5.3.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}','no',NULL,NULL,''),(127,'_site_transient_timeout_theme_roots','1712090851','no',NULL,NULL,''),(128,'_site_transient_theme_roots','a:3:{s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no',NULL,NULL,''),(129,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1712089051;s:7:\"checked\";a:3:{s:16:\"twentytwentyfour\";s:3:\"1.1\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.4.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.7.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no',NULL,NULL,''),(130,'theme_mods_twentytwentyfour','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes',NULL,NULL,'');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default',NULL,NULL,''),(2,3,'_wp_page_template','default',NULL,NULL,'');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-04-02 20:17:31','2024-04-02 20:17:31','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-04-02 20:17:31','2024-04-02 20:17:31','',0,'http://wordpresssite.iceburg.ca/?p=1',0,'post','',1,NULL,NULL,''),(2,1,'2024-04-02 20:17:31','2024-04-02 20:17:31','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wordpresssite.iceburg.ca/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-04-02 20:17:31','2024-04-02 20:17:31','',0,'http://wordpresssite.iceburg.ca/?page_id=2',0,'page','',0,NULL,NULL,''),(3,1,'2024-04-02 20:17:31','2024-04-02 20:17:31','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://wordpresssite.iceburg.ca.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2024-04-02 20:17:31','2024-04-02 20:17:31','',0,'http://wordpresssite.iceburg.ca/?page_id=3',0,'page','',0,NULL,NULL,''),(4,0,'2024-04-02 20:17:31','2024-04-02 20:17:31','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-04-02 20:17:31','2024-04-02 20:17:31','',0,'http://wordpresssite.iceburg.ca/2024/04/02/navigation/',0,'wp_navigation','',0,NULL,NULL,'');
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0,NULL,NULL,'');
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1,NULL,NULL,'');
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0,NULL,NULL,'');
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','rob',NULL,NULL,''),(2,1,'first_name','',NULL,NULL,''),(3,1,'last_name','',NULL,NULL,''),(4,1,'description','',NULL,NULL,''),(5,1,'rich_editing','true',NULL,NULL,''),(6,1,'syntax_highlighting','true',NULL,NULL,''),(7,1,'comment_shortcuts','false',NULL,NULL,''),(8,1,'admin_color','fresh',NULL,NULL,''),(9,1,'use_ssl','0',NULL,NULL,''),(10,1,'show_admin_bar_front','true',NULL,NULL,''),(11,1,'locale','',NULL,NULL,''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}',NULL,NULL,''),(13,1,'wp_user_level','10',NULL,NULL,''),(14,1,'dismissed_wp_pointers','',NULL,NULL,''),(15,1,'show_welcome_panel','1',NULL,NULL,'');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ice_slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'rob','$P$B0QZ0q1rvg4b/.uY1eH6DP/0S1InQL/','rob','rob@iceburg.ca','http://wordpresssite.iceburg.ca','2024-04-02 20:17:30','',0,'rob',NULL,NULL,'');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02 20:26:52
