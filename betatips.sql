-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: betatips
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `file_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crops_file_image_unique` (`file_image`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crops`
--

LOCK TABLES `crops` WRITE;
/*!40000 ALTER TABLE `crops` DISABLE KEYS */;
INSERT INTO `crops` VALUES (1,'ESPARRAGO','2023-03-03 19:23:00','2023-03-03 19:48:38',NULL,'crops\\March2023\\AzLXq88fxvAJQMVE9TDz.jpg'),(2,'VID','2023-03-03 19:23:00','2023-03-03 19:49:35',NULL,'crops\\March2023\\dXCWoCByiLaPLhBswbYo.jpg'),(3,'GRANADO','2023-03-03 19:23:00','2023-03-03 19:51:01',NULL,'crops\\March2023\\4eInuhYudUvxxZ2hKDwD.jpg'),(4,'PALTOS','2023-03-03 19:23:00','2023-03-03 19:53:56',NULL,'crops\\March2023\\cugkApLqmESGCo2opyHJ.jpg');
/*!40000 ALTER TABLE `crops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'locale','text','Locale',0,1,1,1,1,0,NULL,12),(12,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(13,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(14,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(17,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(18,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(21,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(22,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(23,4,'id','text','Id',1,0,0,0,0,0,'{}',1),(24,4,'name','text','Name',0,1,1,1,1,1,'{}',2),(25,4,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(26,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(27,4,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',6),(28,4,'file_image','image','File Image',0,1,1,1,1,1,'{}',3),(29,5,'id','text','Id',1,0,0,0,0,0,'{}',1),(30,5,'name','text','Name',0,1,1,1,1,1,'{}',2),(31,5,'id_crops','text','Id Crops',0,1,1,1,1,1,'{}',3),(32,5,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(33,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(34,5,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),(35,5,'labor_belongsto_crop_relationship','relationship','crops',0,1,1,1,1,1,'{\"model\":\"App\\\\Cultivo\",\"table\":\"crops\",\"type\":\"belongsTo\",\"column\":\"id_crops\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"crops\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),(36,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(37,7,'fullname','text','Fullname',0,1,1,1,1,1,'{}',2),(38,7,'code','text','Code',0,1,1,1,1,1,'{}',3),(39,7,'doc_num','text','Doc Num',0,1,1,1,1,1,'{}',4),(40,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(41,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(42,7,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),(43,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(44,8,'id_labors','text','Id Labors',0,1,1,1,1,1,'{}',3),(45,8,'video','text','Video',0,1,1,1,1,1,'{}',4),(46,8,'blobVideo','media_picker','BlobVideo',0,1,1,1,1,1,'{}',5),(47,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(48,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(49,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',8),(50,8,'group_belongsto_labor_relationship','relationship','labors',0,1,1,1,1,1,'{\"model\":\"App\\\\Labors\",\"table\":\"labors\",\"type\":\"belongsTo\",\"column\":\"id_labors\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"crops\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(51,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(52,9,'labor_id','text','Labor Id',0,1,1,1,1,1,'{}',2),(53,9,'name','text','Name',0,1,1,1,1,1,'{}',4),(54,9,'description','markdown_editor','Description',0,1,1,1,1,1,'{}',5),(55,9,'image','image','Image',0,1,1,1,1,1,'{}',6),(56,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(57,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(58,9,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',9),(59,9,'implement_belongsto_labor_relationship','relationship','labors',0,1,1,1,1,1,'{\"model\":\"App\\\\Labors\",\"table\":\"labors\",\"type\":\"belongsTo\",\"column\":\"labor_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"crops\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(60,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(61,10,'implement_id','text','Implement Id',0,1,1,1,1,1,'{}',2),(62,10,'name','text','Name',1,1,1,1,1,1,'{}',4),(63,10,'des_danger','text','Des Danger',0,1,1,1,1,1,'{}',5),(64,10,'des_info','text','Des Info',0,1,1,1,1,1,'{}',6),(65,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(66,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(67,10,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',9),(68,10,'job_belongsto_implement_relationship','relationship','implements',0,1,1,1,1,1,'{\"model\":\"App\\\\Implement\",\"table\":\"implements\",\"type\":\"belongsTo\",\"column\":\"implement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"crops\",\"pivot\":\"0\",\"taggable\":\"0\"}',3);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(4,'crops','crops','Cultivo','Cultivos',NULL,'App\\Cultivo',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-03-03 19:22:58','2023-03-03 19:33:51'),(5,'labors','labors','Labor','Labores',NULL,'App\\Labors',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-03-03 19:59:22','2023-03-03 20:01:40'),(7,'employes','employes','Trabajador','Trabajadores',NULL,'App\\Employes',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2023-03-03 20:02:14','2023-03-03 20:02:14'),(8,'groups','groups','ATS','ATS',NULL,'App\\Group',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-03-03 23:15:05','2023-03-03 23:20:07'),(9,'implements','implementos','Implemento','Implementos',NULL,'App\\Implement',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-03-06 18:20:33','2023-03-06 18:23:22'),(10,'job','job','Tarea','Tareas',NULL,'App\\Job',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-03-06 18:22:44','2023-03-06 18:35:06');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employes`
--

DROP TABLE IF EXISTS `employes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_num` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employes_code_unique` (`code`),
  UNIQUE KEY `employes_doc_num_unique` (`doc_num`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employes`
--

LOCK TABLES `employes` WRITE;
/*!40000 ALTER TABLE `employes` DISABLE KEYS */;
INSERT INTO `employes` VALUES (1,'RAMON BERNARDO AGUADO APAZA','436039','71788430','2023-03-03 20:02:39','2023-03-03 20:02:39',NULL),(2,'SERGIO BERNARDO BERROCAL RAMOS','458174','72105840','2023-03-03 23:11:09','2023-03-03 23:11:09',NULL);
/*!40000 ALTER TABLE `employes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employes_checked`
--

DROP TABLE IF EXISTS `employes_checked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employes_checked` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employe` int(11) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `is_checked` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employes_checked`
--

LOCK TABLES `employes_checked` WRITE;
/*!40000 ALTER TABLE `employes_checked` DISABLE KEYS */;
INSERT INTO `employes_checked` VALUES (1,1,2,'','2023-03-03 20:49:24','2023-03-03 20:49:24',NULL),(2,1,4,'','2023-03-03 21:00:16','2023-03-03 21:00:16',NULL);
/*!40000 ALTER TABLE `employes_checked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_labors` int(11) DEFAULT NULL,
  `video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blobVideo` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (2,1,'1677801600.mp4','[object Blob]','2023-03-03 20:49:24','2023-03-03 20:49:24',NULL),(3,1,'1677801600.mp4','[object Blob]','2023-03-03 20:56:52','2023-03-03 20:56:52',NULL),(4,1,'1677801600.mp4','[object Blob]','2023-03-03 21:00:16','2023-03-03 21:00:16',NULL),(5,1,NULL,NULL,'2023-03-04 22:09:50','2023-03-04 22:09:50',NULL),(6,1,NULL,NULL,'2023-03-04 22:13:13','2023-03-04 22:13:13',NULL),(7,1,NULL,NULL,'2023-03-04 22:13:16','2023-03-04 22:13:16',NULL),(8,1,NULL,NULL,'2023-03-04 22:14:16','2023-03-04 22:14:16',NULL),(9,1,NULL,NULL,'2023-03-04 22:14:23','2023-03-04 22:14:23',NULL),(10,1,NULL,NULL,'2023-03-04 22:14:44','2023-03-04 22:14:44',NULL),(11,1,NULL,NULL,'2023-03-04 22:14:55','2023-03-04 22:14:55',NULL),(12,1,NULL,NULL,'2023-03-04 22:15:12','2023-03-04 22:15:12',NULL),(13,1,NULL,NULL,'2023-03-04 22:15:35','2023-03-04 22:15:35',NULL),(14,1,NULL,NULL,'2023-03-04 22:17:57','2023-03-04 22:17:57',NULL),(15,1,NULL,NULL,'2023-03-04 22:18:02','2023-03-04 22:18:02',NULL),(16,1,NULL,NULL,'2023-03-04 22:18:05','2023-03-04 22:18:05',NULL),(17,1,NULL,NULL,'2023-03-04 22:18:06','2023-03-04 22:18:06',NULL),(18,1,NULL,NULL,'2023-03-06 17:05:11','2023-03-06 17:05:11',NULL),(19,1,NULL,NULL,'2023-03-06 17:05:30','2023-03-06 17:05:30',NULL),(20,1,NULL,NULL,'2023-03-06 17:06:29','2023-03-06 17:06:29',NULL),(21,1,NULL,NULL,'2023-03-06 17:07:32','2023-03-06 17:07:32',NULL),(22,1,NULL,NULL,'2023-03-06 17:10:03','2023-03-06 17:10:03',NULL),(23,1,NULL,NULL,'2023-03-06 17:12:07','2023-03-06 17:12:07',NULL),(24,1,NULL,NULL,'2023-03-06 17:32:21','2023-03-06 17:32:21',NULL),(25,1,NULL,NULL,'2023-03-06 17:32:40','2023-03-06 17:32:40',NULL),(26,1,NULL,NULL,'2023-03-06 17:33:05','2023-03-06 17:33:05',NULL),(27,1,NULL,NULL,'2023-03-06 17:34:33','2023-03-06 17:34:33',NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implements`
--

DROP TABLE IF EXISTS `implements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `implements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `labor_id` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implements`
--

LOCK TABLES `implements` WRITE;
/*!40000 ALTER TABLE `implements` DISABLE KEYS */;
/*!40000 ALTER TABLE `implements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `implement_id` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des_danger` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labors`
--

DROP TABLE IF EXISTS `labors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_crops` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labors`
--

LOCK TABLES `labors` WRITE;
/*!40000 ALTER TABLE `labors` DISABLE KEYS */;
INSERT INTO `labors` VALUES (1,'LABOR 1',1,'2023-03-03 20:00:24','2023-03-03 20:00:24',NULL);
/*!40000 ALTER TABLE `labors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2023-03-02 23:38:33','2023-03-02 23:38:33',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,11,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,13,'2023-03-02 23:38:33','2023-03-02 23:38:33','voyager.hooks',NULL),(12,1,'Cultivos','','_self',NULL,NULL,NULL,15,'2023-03-03 19:22:58','2023-03-03 19:22:58','voyager.crops.index',NULL),(13,1,'Labores','','_self',NULL,NULL,NULL,16,'2023-03-03 19:59:22','2023-03-03 19:59:22','voyager.labors.index',NULL),(14,1,'Trabajadores','','_self',NULL,NULL,NULL,17,'2023-03-03 20:02:14','2023-03-03 20:02:14','voyager.employes.index',NULL),(15,1,'ATS','','_self',NULL,NULL,NULL,18,'2023-03-03 23:15:05','2023-03-03 23:15:05','voyager.groups.index',NULL),(16,1,'Implementos','','_self',NULL,NULL,NULL,19,'2023-03-06 18:20:33','2023-03-06 18:20:33','voyager.implementos.index',NULL),(17,1,'Tareas','','_self',NULL,NULL,NULL,20,'2023-03-06 18:22:44','2023-03-06 18:22:44','voyager.job.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2023-03-02 23:38:33','2023-03-02 23:38:33');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',2),(4,'2016_01_01_000000_create_data_types_table',2),(5,'2016_05_19_173453_create_menu_table',2),(6,'2016_10_21_190000_create_roles_table',2),(7,'2016_10_21_190000_create_settings_table',2),(8,'2016_11_30_135954_create_permission_table',2),(9,'2016_11_30_141208_create_permission_role_table',2),(10,'2016_12_26_201236_data_types__add__server_side',2),(11,'2017_01_13_000000_add_route_to_menu_items_table',2),(12,'2017_01_14_005015_create_translations_table',2),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',2),(14,'2017_03_06_000000_add_controller_to_data_types_table',2),(15,'2017_04_21_000000_add_order_to_data_rows_table',2),(16,'2017_07_05_210000_add_policyname_to_data_types_table',2),(17,'2017_08_05_000000_add_group_to_settings_table',2),(18,'2017_11_26_013050_add_user_role_relationship',2),(19,'2017_11_26_015000_create_user_roles_table',2),(20,'2018_03_11_000000_add_user_settings',2),(21,'2018_03_14_000000_add_details_to_data_types_table',2),(22,'2018_03_16_000000_make_settings_value_nullable',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(2,'browse_bread',NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(3,'browse_database',NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(4,'browse_media',NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(5,'browse_compass',NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(6,'browse_menus','menus','2023-03-02 23:38:33','2023-03-02 23:38:33'),(7,'read_menus','menus','2023-03-02 23:38:33','2023-03-02 23:38:33'),(8,'edit_menus','menus','2023-03-02 23:38:33','2023-03-02 23:38:33'),(9,'add_menus','menus','2023-03-02 23:38:33','2023-03-02 23:38:33'),(10,'delete_menus','menus','2023-03-02 23:38:33','2023-03-02 23:38:33'),(11,'browse_roles','roles','2023-03-02 23:38:33','2023-03-02 23:38:33'),(12,'read_roles','roles','2023-03-02 23:38:33','2023-03-02 23:38:33'),(13,'edit_roles','roles','2023-03-02 23:38:33','2023-03-02 23:38:33'),(14,'add_roles','roles','2023-03-02 23:38:33','2023-03-02 23:38:33'),(15,'delete_roles','roles','2023-03-02 23:38:33','2023-03-02 23:38:33'),(16,'browse_users','users','2023-03-02 23:38:33','2023-03-02 23:38:33'),(17,'read_users','users','2023-03-02 23:38:33','2023-03-02 23:38:33'),(18,'edit_users','users','2023-03-02 23:38:33','2023-03-02 23:38:33'),(19,'add_users','users','2023-03-02 23:38:33','2023-03-02 23:38:33'),(20,'delete_users','users','2023-03-02 23:38:33','2023-03-02 23:38:33'),(21,'browse_settings','settings','2023-03-02 23:38:33','2023-03-02 23:38:33'),(22,'read_settings','settings','2023-03-02 23:38:33','2023-03-02 23:38:33'),(23,'edit_settings','settings','2023-03-02 23:38:33','2023-03-02 23:38:33'),(24,'add_settings','settings','2023-03-02 23:38:33','2023-03-02 23:38:33'),(25,'delete_settings','settings','2023-03-02 23:38:33','2023-03-02 23:38:33'),(26,'browse_hooks',NULL,'2023-03-02 23:38:33','2023-03-02 23:38:33'),(27,'browse_crops','crops','2023-03-03 19:22:58','2023-03-03 19:22:58'),(28,'read_crops','crops','2023-03-03 19:22:58','2023-03-03 19:22:58'),(29,'edit_crops','crops','2023-03-03 19:22:58','2023-03-03 19:22:58'),(30,'add_crops','crops','2023-03-03 19:22:58','2023-03-03 19:22:58'),(31,'delete_crops','crops','2023-03-03 19:22:58','2023-03-03 19:22:58'),(32,'browse_labors','labors','2023-03-03 19:59:22','2023-03-03 19:59:22'),(33,'read_labors','labors','2023-03-03 19:59:22','2023-03-03 19:59:22'),(34,'edit_labors','labors','2023-03-03 19:59:22','2023-03-03 19:59:22'),(35,'add_labors','labors','2023-03-03 19:59:22','2023-03-03 19:59:22'),(36,'delete_labors','labors','2023-03-03 19:59:22','2023-03-03 19:59:22'),(37,'browse_employes','employes','2023-03-03 20:02:14','2023-03-03 20:02:14'),(38,'read_employes','employes','2023-03-03 20:02:14','2023-03-03 20:02:14'),(39,'edit_employes','employes','2023-03-03 20:02:14','2023-03-03 20:02:14'),(40,'add_employes','employes','2023-03-03 20:02:14','2023-03-03 20:02:14'),(41,'delete_employes','employes','2023-03-03 20:02:14','2023-03-03 20:02:14'),(42,'browse_groups','groups','2023-03-03 23:15:05','2023-03-03 23:15:05'),(43,'read_groups','groups','2023-03-03 23:15:05','2023-03-03 23:15:05'),(44,'edit_groups','groups','2023-03-03 23:15:05','2023-03-03 23:15:05'),(45,'add_groups','groups','2023-03-03 23:15:05','2023-03-03 23:15:05'),(46,'delete_groups','groups','2023-03-03 23:15:05','2023-03-03 23:15:05'),(47,'browse_implements','implements','2023-03-06 18:20:33','2023-03-06 18:20:33'),(48,'read_implements','implements','2023-03-06 18:20:33','2023-03-06 18:20:33'),(49,'edit_implements','implements','2023-03-06 18:20:33','2023-03-06 18:20:33'),(50,'add_implements','implements','2023-03-06 18:20:33','2023-03-06 18:20:33'),(51,'delete_implements','implements','2023-03-06 18:20:33','2023-03-06 18:20:33'),(52,'browse_job','job','2023-03-06 18:22:44','2023-03-06 18:22:44'),(53,'read_job','job','2023-03-06 18:22:44','2023-03-06 18:22:44'),(54,'edit_job','job','2023-03-06 18:22:44','2023-03-06 18:22:44'),(55,'add_job','job','2023-03-06 18:22:44','2023-03-06 18:22:44'),(56,'delete_job','job','2023-03-06 18:22:44','2023-03-06 18:22:44');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2023-03-02 23:38:33','2023-03-02 23:38:33'),(2,'user','Normal User','2023-03-02 23:38:33','2023-03-02 23:38:33');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'LordHunter','admin@admin.com','users/default.png','$2y$10$TQHoCc9rivx.StT4KkAG5esAP4gLbONXLI470TZ2WBl/cY2cMPfuO',NULL,NULL,'2023-03-02 23:39:39','2023-03-02 23:39:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07  9:09:58
