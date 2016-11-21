# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.27)
# Database: mezzanine_teaching
# Generation Time: 2016-11-21 19:32:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_group_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`)
VALUES
	(1,'Can add group',1,'add_group'),
	(2,'Can change group',1,'change_group'),
	(3,'Can delete group',1,'delete_group'),
	(4,'Can add permission',2,'add_permission'),
	(5,'Can change permission',2,'change_permission'),
	(6,'Can delete permission',2,'delete_permission'),
	(7,'Can add user',3,'add_user'),
	(8,'Can change user',3,'change_user'),
	(9,'Can delete user',3,'delete_user'),
	(10,'Can add content type',4,'add_contenttype'),
	(11,'Can change content type',4,'change_contenttype'),
	(12,'Can delete content type',4,'delete_contenttype'),
	(13,'Can add redirect',5,'add_redirect'),
	(14,'Can change redirect',5,'change_redirect'),
	(15,'Can delete redirect',5,'delete_redirect'),
	(16,'Can add session',6,'add_session'),
	(17,'Can change session',6,'change_session'),
	(18,'Can delete session',6,'delete_session'),
	(19,'Can add site',7,'add_site'),
	(20,'Can change site',7,'change_site'),
	(21,'Can delete site',7,'delete_site'),
	(22,'Can add Setting',8,'add_setting'),
	(23,'Can change Setting',8,'change_setting'),
	(24,'Can delete Setting',8,'delete_setting'),
	(25,'Can add Site permission',9,'add_sitepermission'),
	(26,'Can change Site permission',9,'change_sitepermission'),
	(27,'Can delete Site permission',9,'delete_sitepermission'),
	(28,'Can add Rating',10,'add_rating'),
	(29,'Can change Rating',10,'change_rating'),
	(30,'Can delete Rating',10,'delete_rating'),
	(31,'Can add assigned keyword',11,'add_assignedkeyword'),
	(32,'Can change assigned keyword',11,'change_assignedkeyword'),
	(33,'Can delete assigned keyword',11,'delete_assignedkeyword'),
	(34,'Can add Keyword',12,'add_keyword'),
	(35,'Can change Keyword',12,'change_keyword'),
	(36,'Can delete Keyword',12,'delete_keyword'),
	(37,'Can add Comment',13,'add_threadedcomment'),
	(38,'Can change Comment',13,'change_threadedcomment'),
	(39,'Can delete Comment',13,'delete_threadedcomment'),
	(40,'Can add Page',14,'add_page'),
	(41,'Can change Page',14,'change_page'),
	(42,'Can delete Page',14,'delete_page'),
	(43,'Can add Rich text page',15,'add_richtextpage'),
	(44,'Can change Rich text page',15,'change_richtextpage'),
	(45,'Can delete Rich text page',15,'delete_richtextpage'),
	(46,'Can add Link',16,'add_link'),
	(47,'Can change Link',16,'change_link'),
	(48,'Can delete Link',16,'delete_link'),
	(49,'Can add Blog Category',17,'add_blogcategory'),
	(50,'Can change Blog Category',17,'change_blogcategory'),
	(51,'Can delete Blog Category',17,'delete_blogcategory'),
	(52,'Can add Blog post',18,'add_blogpost'),
	(53,'Can change Blog post',18,'change_blogpost'),
	(54,'Can delete Blog post',18,'delete_blogpost'),
	(55,'Can add Form entry',19,'add_formentry'),
	(56,'Can change Form entry',19,'change_formentry'),
	(57,'Can delete Form entry',19,'delete_formentry'),
	(58,'Can add Form field entry',20,'add_fieldentry'),
	(59,'Can change Form field entry',20,'change_fieldentry'),
	(60,'Can delete Form field entry',20,'delete_fieldentry'),
	(61,'Can add Field',21,'add_field'),
	(62,'Can change Field',21,'change_field'),
	(63,'Can delete Field',21,'delete_field'),
	(64,'Can add Form',22,'add_form'),
	(65,'Can change Form',22,'change_form'),
	(66,'Can delete Form',22,'delete_form'),
	(67,'Can add Image',23,'add_galleryimage'),
	(68,'Can change Image',23,'change_galleryimage'),
	(69,'Can delete Image',23,'delete_galleryimage'),
	(70,'Can add Gallery',24,'add_gallery'),
	(71,'Can change Gallery',24,'change_gallery'),
	(72,'Can delete Gallery',24,'delete_gallery'),
	(73,'Can add Twitter query',25,'add_query'),
	(74,'Can change Twitter query',25,'change_query'),
	(75,'Can delete Twitter query',25,'delete_query'),
	(76,'Can add Tweet',26,'add_tweet'),
	(77,'Can change Tweet',26,'change_tweet'),
	(78,'Can delete Tweet',26,'delete_tweet'),
	(79,'Can add log entry',27,'add_logentry'),
	(80,'Can change log entry',27,'change_logentry'),
	(81,'Can delete log entry',27,'delete_logentry'),
	(82,'Can add comment flag',28,'add_commentflag'),
	(83,'Can change comment flag',28,'change_commentflag'),
	(84,'Can delete comment flag',28,'delete_commentflag'),
	(85,'Can add comment',29,'add_comment'),
	(86,'Can change comment',29,'change_comment'),
	(87,'Can delete comment',29,'delete_comment'),
	(88,'Can moderate comments',29,'can_moderate'),
	(92,'Can add concrete rich text',31,'add_concreterichtext'),
	(93,'Can change concrete rich text',31,'change_concreterichtext'),
	(94,'Can delete concrete rich text',31,'delete_concreterichtext'),
	(95,'Can add landing page',32,'add_landingpage'),
	(96,'Can change landing page',32,'change_landingpage'),
	(97,'Can delete landing page',32,'delete_landingpage');

/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`)
VALUES
	(1,'pbkdf2_sha256$30000$s27sOw1oNctZ$aSkux6GjebXa1TCh+dLabnJsS1N7C90PK99JjoakKVY=','2016-11-11 16:07:47.020402',1,'admin','','','example@example.com',1,1,'2016-10-28 14:33:03.436003');

/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table auth_user_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blog_blogcategory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_blogcategory`;

CREATE TABLE `blog_blogcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogcategory_site_id_42b9c96d_fk_django_site_id` (`site_id`),
  CONSTRAINT `blog_blogcategory_site_id_42b9c96d_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blog_blogpost
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_blogpost`;

CREATE TABLE `blog_blogpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments_count` int(11) NOT NULL,
  `keywords_string` varchar(500) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime(6) DEFAULT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blogpost_site_id_7995688f_fk_django_site_id` (`site_id`),
  KEY `blog_blogpost_user_id_12ed6b16_fk_auth_user_id` (`user_id`),
  KEY `blog_blogpost_publish_date_703abc16_uniq` (`publish_date`),
  CONSTRAINT `blog_blogpost_site_id_7995688f_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `blog_blogpost_user_id_12ed6b16_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blog_blogpost_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_blogpost_categories`;

CREATE TABLE `blog_blogpost_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blogpost_id` int(11) NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blogpost_categories_blogpost_id_a64d32c5_uniq` (`blogpost_id`,`blogcategory_id`),
  KEY `blog_blogpost_c_blogcategory_id_f6695246_fk_blog_blogcategory_id` (`blogcategory_id`),
  CONSTRAINT `blog_blogpost_c_blogcategory_id_f6695246_fk_blog_blogcategory_id` FOREIGN KEY (`blogcategory_id`) REFERENCES `blog_blogcategory` (`id`),
  CONSTRAINT `blog_blogpost_categorie_blogpost_id_daeea608_fk_blog_blogpost_id` FOREIGN KEY (`blogpost_id`) REFERENCES `blog_blogpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table blog_blogpost_related_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_blogpost_related_posts`;

CREATE TABLE `blog_blogpost_related_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_blogpost_id` int(11) NOT NULL,
  `to_blogpost_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blogpost_related_posts_from_blogpost_id_3bd0f49f_uniq` (`from_blogpost_id`,`to_blogpost_id`),
  KEY `blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blogpost_id` (`to_blogpost_id`),
  CONSTRAINT `blog_blogpost_rela_from_blogpost_id_27ea4c18_fk_blog_blogpost_id` FOREIGN KEY (`from_blogpost_id`) REFERENCES `blog_blogpost` (`id`),
  CONSTRAINT `blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blogpost_id` FOREIGN KEY (`to_blogpost_id`) REFERENCES `blog_blogpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table conf_setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `conf_setting`;

CREATE TABLE `conf_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(2000) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `conf_setting_site_id_b235f7ed_fk_django_site_id` (`site_id`),
  CONSTRAINT `conf_setting_site_id_b235f7ed_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table core_sitepermission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_sitepermission`;

CREATE TABLE `core_sitepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `core_sitepermission_user_id_0a3cbb11_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table core_sitepermission_sites
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_sitepermission_sites`;

CREATE TABLE `core_sitepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_sitepermission_sites_sitepermission_id_e3e7353a_uniq` (`sitepermission_id`,`site_id`),
  KEY `core_sitepermission_sites_site_id_38038b76_fk_django_site_id` (`site_id`),
  CONSTRAINT `core_sitepe_sitepermission_id_d33bc79e_fk_core_sitepermission_id` FOREIGN KEY (`sitepermission_id`) REFERENCES `core_sitepermission` (`id`),
  CONSTRAINT `core_sitepermission_sites_site_id_38038b76_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table django_admin_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`)
VALUES
	(1,'2016-10-31 17:56:14.153532','6','Contact / Legals',3,'',14,1),
	(2,'2016-10-31 18:28:51.253164','9','Designing',1,'[{\"added\": {}}]',15,1),
	(3,'2016-10-31 18:38:02.185230','9','Designing',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',15,1),
	(4,'2016-10-31 18:38:28.040607','9','Designing',2,'[{\"changed\": {\"fields\": [\"status\", \"content\", \"keywords\"]}}]',15,1),
	(5,'2016-10-31 18:39:28.154244','9','Designing',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',15,1),
	(6,'2016-10-31 19:26:55.531715','9','Designing',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',15,1),
	(7,'2016-10-31 19:29:14.471092','9','Designing',2,'[{\"changed\": {\"fields\": [\"content\", \"description\", \"keywords\"]}}]',15,1),
	(8,'2016-10-31 20:15:55.132003','9','Designing',2,'[{\"changed\": {\"fields\": [\"content\", \"in_menus\", \"description\", \"keywords\"]}}]',15,1),
	(9,'2016-10-31 20:22:28.416672','2','About',2,'[{\"changed\": {\"fields\": [\"in_menus\", \"keywords\"]}}]',15,1),
	(10,'2016-10-31 20:22:32.499015','1','Blog',2,'[{\"changed\": {\"fields\": [\"in_menus\", \"keywords\"]}}]',15,1),
	(11,'2016-10-31 20:22:38.204568','8','Gallery',2,'[{\"changed\": {\"fields\": [\"in_menus\", \"keywords\"]}}]',24,1),
	(12,'2016-10-31 20:22:44.188059','3','Contact',2,'[{\"changed\": {\"fields\": [\"in_menus\", \"keywords\"]}}]',22,1),
	(13,'2016-11-10 21:21:54.436780','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"title\", \"content\", \"description\", \"keywords\"]}}]',15,1),
	(14,'2016-11-10 21:46:14.062944','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"content\", \"description\", \"keywords\"]}}]',15,1),
	(15,'2016-11-11 16:17:35.027347','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"id\"]}}]',14,1),
	(16,'2016-11-11 19:24:11.362584','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"content\", \"slug\", \"description\", \"gen_description\", \"keywords\"]}}]',15,1),
	(17,'2016-11-14 18:03:13.676710','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"tagline\", \"id\"]}}]',14,1),
	(18,'2016-11-14 18:54:35.768034','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',15,1),
	(19,'2016-11-14 21:43:12.245102','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"tagline\", \"content\", \"keywords\"]}}]',15,1),
	(20,'2016-11-14 21:50:26.024343','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"tagline\", \"content\", \"keywords\"]}}]',15,1),
	(21,'2016-11-15 20:09:15.644090','10','The Teaching Commons',1,'[{\"added\": {}}, {\"added\": {\"object\": \"ConcreteRichText object\", \"name\": \"concrete rich text\"}}]',32,1),
	(22,'2016-11-16 13:22:14.532081','10','The Teaching Commons',2,'[{\"changed\": {\"fields\": [\"keywords\"]}}, {\"changed\": {\"fields\": [\"content\"], \"object\": \"ConcreteRichText object\", \"name\": \"concrete rich text\"}}]',32,1),
	(23,'2016-11-16 14:51:10.700327','10','The Teaching Commons',2,'[{\"changed\": {\"fields\": [\"keywords\"]}}, {\"changed\": {\"fields\": [\"content\"], \"object\": \"ConcreteRichText object\", \"name\": \"concrete rich text\"}}]',32,1),
	(24,'2016-11-21 19:12:27.476557','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"content\", \"slug\", \"keywords\"]}}]',15,1),
	(25,'2016-11-21 19:24:15.130784','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',15,1),
	(26,'2016-11-21 19:28:20.871812','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',15,1),
	(27,'2016-11-21 19:31:44.841316','9','Learning Goals',2,'[{\"changed\": {\"fields\": [\"content\", \"keywords\"]}}]',15,1);

/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_comment_flags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_comment_flags`;

CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_327a6c43` (`flag`),
  CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table django_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_comments`;

CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_commen_content_type_id_c4afe962_fk_django_content_type_id` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_auth_user_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9_uniq` (`submit_date`),
  CONSTRAINT `django_commen_content_type_id_c4afe962_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `django_comments_user_id_a0a440a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table django_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`)
VALUES
	(27,'admin','logentry'),
	(1,'auth','group'),
	(2,'auth','permission'),
	(3,'auth','user'),
	(17,'blog','blogcategory'),
	(18,'blog','blogpost'),
	(8,'conf','setting'),
	(4,'contenttypes','contenttype'),
	(9,'core','sitepermission'),
	(29,'django_comments','comment'),
	(28,'django_comments','commentflag'),
	(21,'forms','field'),
	(20,'forms','fieldentry'),
	(22,'forms','form'),
	(19,'forms','formentry'),
	(24,'galleries','gallery'),
	(23,'galleries','galleryimage'),
	(11,'generic','assignedkeyword'),
	(12,'generic','keyword'),
	(10,'generic','rating'),
	(13,'generic','threadedcomment'),
	(16,'pages','link'),
	(14,'pages','page'),
	(15,'pages','richtextpage'),
	(5,'redirects','redirect'),
	(6,'sessions','session'),
	(7,'sites','site'),
	(31,'teaching','concreterichtext'),
	(32,'teaching','landingpage'),
	(25,'twitter','query'),
	(26,'twitter','tweet');

/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`)
VALUES
	(1,'contenttypes','0001_initial','2016-10-28 14:33:00.473032'),
	(2,'auth','0001_initial','2016-10-28 14:33:00.794466'),
	(3,'admin','0001_initial','2016-10-28 14:33:00.876740'),
	(4,'admin','0002_logentry_remove_auto_add','2016-10-28 14:33:00.901849'),
	(5,'contenttypes','0002_remove_content_type_name','2016-10-28 14:33:00.971281'),
	(6,'auth','0002_alter_permission_name_max_length','2016-10-28 14:33:00.997591'),
	(7,'auth','0003_alter_user_email_max_length','2016-10-28 14:33:01.020164'),
	(8,'auth','0004_alter_user_username_opts','2016-10-28 14:33:01.032463'),
	(9,'auth','0005_alter_user_last_login_null','2016-10-28 14:33:01.064716'),
	(10,'auth','0006_require_contenttypes_0002','2016-10-28 14:33:01.067206'),
	(11,'auth','0007_alter_validators_add_error_messages','2016-10-28 14:33:01.076959'),
	(12,'auth','0008_alter_user_username_max_length','2016-10-28 14:33:01.101152'),
	(13,'sites','0001_initial','2016-10-28 14:33:01.115217'),
	(14,'blog','0001_initial','2016-10-28 14:33:01.349156'),
	(15,'blog','0002_auto_20150527_1555','2016-10-28 14:33:01.377897'),
	(16,'conf','0001_initial','2016-10-28 14:33:01.424032'),
	(17,'core','0001_initial','2016-10-28 14:33:01.514292'),
	(18,'core','0002_auto_20150414_2140','2016-10-28 14:33:01.557613'),
	(19,'django_comments','0001_initial','2016-10-28 14:33:01.753258'),
	(20,'django_comments','0002_update_user_email_field_length','2016-10-28 14:33:01.790654'),
	(21,'django_comments','0003_add_submit_date_index','2016-10-28 14:33:01.822882'),
	(22,'pages','0001_initial','2016-10-28 14:33:02.040715'),
	(23,'forms','0001_initial','2016-10-28 14:33:02.319035'),
	(24,'forms','0002_auto_20141227_0224','2016-10-28 14:33:02.348656'),
	(25,'forms','0003_emailfield','2016-10-28 14:33:02.392968'),
	(26,'forms','0004_auto_20150517_0510','2016-10-28 14:33:02.434723'),
	(27,'forms','0005_auto_20151026_1600','2016-10-28 14:33:02.464689'),
	(28,'galleries','0001_initial','2016-10-28 14:33:02.606685'),
	(29,'galleries','0002_auto_20141227_0224','2016-10-28 14:33:02.637987'),
	(30,'generic','0001_initial','2016-10-28 14:33:02.961675'),
	(31,'generic','0002_auto_20141227_0224','2016-10-28 14:33:02.993471'),
	(32,'pages','0002_auto_20141227_0224','2016-10-28 14:33:03.064083'),
	(33,'pages','0003_auto_20150527_1555','2016-10-28 14:33:03.111907'),
	(34,'redirects','0001_initial','2016-10-28 14:33:03.199905'),
	(35,'sessions','0001_initial','2016-10-28 14:33:03.234006'),
	(36,'sites','0002_alter_domain_unique','2016-10-28 14:33:03.279978'),
	(37,'twitter','0001_initial','2016-10-28 14:33:03.327019'),
	(38,'teaching','0001_initial','2016-11-11 17:57:27.747650'),
	(39,'pages','0004_page_tagline','2016-11-11 18:40:56.066925'),
	(40,'teaching','0002_add_landing_page_model','2016-11-15 18:49:25.523429'),
	(41,'teaching','0003_concreterichtext_landing_page','2016-11-15 19:45:51.379804');

/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_redirect
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_redirect`;

CREATE TABLE `django_redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL,
  `old_path` varchar(200) NOT NULL,
  `new_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_redirect_site_id_ac5dd16b_uniq` (`site_id`,`old_path`),
  KEY `django_redirect_91a0b591` (`old_path`),
  CONSTRAINT `django_redirect_site_id_c3e37341_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table django_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`)
VALUES
	('d8bjuct7u4wosnczz4c7f0v005860rlm','ZDQxMWRiY2U5MDg0NDA2M2M4YjhhMzhjMGEyZThhMzY4MmQxMDg5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZWFlZGI5MWJmMTM3NjIwZDQ2MDEwYTAxOTdiOTBlMzJhN2VlYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2016-11-23 19:49:23.353718'),
	('dbmfgpkjw3khoadwmmqldo0fo93xegqm','ZDQxMWRiY2U5MDg0NDA2M2M4YjhhMzhjMGEyZThhMzY4MmQxMDg5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZWFlZGI5MWJmMTM3NjIwZDQ2MDEwYTAxOTdiOTBlMzJhN2VlYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2016-11-24 18:36:57.279592'),
	('m32sezbp293h25997225o9vyjwelzd1t','ZDQxMWRiY2U5MDg0NDA2M2M4YjhhMzhjMGEyZThhMzY4MmQxMDg5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZWFlZGI5MWJmMTM3NjIwZDQ2MDEwYTAxOTdiOTBlMzJhN2VlYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2016-11-11 14:56:36.987898'),
	('vii5suvv21r30jmxqusgld7oyghztp55','ZDQxMWRiY2U5MDg0NDA2M2M4YjhhMzhjMGEyZThhMzY4MmQxMDg5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZWFlZGI5MWJmMTM3NjIwZDQ2MDEwYTAxOTdiOTBlMzJhN2VlYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2016-11-14 20:44:15.937091'),
	('wf9zcsbrufh45evaaly5qw0qjp19yk6a','ZDQxMWRiY2U5MDg0NDA2M2M4YjhhMzhjMGEyZThhMzY4MmQxMDg5Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzZWFlZGI5MWJmMTM3NjIwZDQ2MDEwYTAxOTdiOTBlMzJhN2VlYTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJtZXp6YW5pbmUuY29yZS5hdXRoX2JhY2tlbmRzLk1lenphbmluZUJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSJ9','2016-11-25 16:07:47.022411');

/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_site
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_site`;

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;

INSERT INTO `django_site` (`id`, `domain`, `name`)
VALUES
	(1,'127.0.0.1:8000','Default');

/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table forms_field
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forms_field`;

CREATE TABLE `forms_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `label` varchar(200) NOT NULL,
  `field_type` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `choices` varchar(1000) NOT NULL,
  `default` varchar(2000) NOT NULL,
  `placeholder_text` varchar(100) NOT NULL,
  `help_text` varchar(100) NOT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_field_d6cba1ad` (`form_id`),
  CONSTRAINT `forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `forms_field` WRITE;
/*!40000 ALTER TABLE `forms_field` DISABLE KEYS */;

INSERT INTO `forms_field` (`id`, `_order`, `label`, `field_type`, `required`, `visible`, `choices`, `default`, `placeholder_text`, `help_text`, `form_id`)
VALUES
	(1,0,'Name',1,1,1,'','','','',3),
	(2,1,'Email',3,1,1,'','','','',3),
	(3,2,'Subject',6,1,1,'Billing, Sales, Support','','','',3),
	(4,3,'Message',2,1,1,'','','','',3);

/*!40000 ALTER TABLE `forms_field` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table forms_fieldentry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forms_fieldentry`;

CREATE TABLE `forms_fieldentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `value` varchar(2000) DEFAULT NULL,
  `entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_fieldentry_b64a62ea` (`entry_id`),
  CONSTRAINT `forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id` FOREIGN KEY (`entry_id`) REFERENCES `forms_formentry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table forms_form
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forms_form`;

CREATE TABLE `forms_form` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `response` longtext NOT NULL,
  `send_email` tinyint(1) NOT NULL,
  `email_from` varchar(254) NOT NULL,
  `email_copies` varchar(200) NOT NULL,
  `email_subject` varchar(200) NOT NULL,
  `email_message` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `forms_form` WRITE;
/*!40000 ALTER TABLE `forms_form` DISABLE KEYS */;

INSERT INTO `forms_form` (`page_ptr_id`, `content`, `button_text`, `response`, `send_email`, `email_from`, `email_copies`, `email_subject`, `email_message`)
VALUES
	(3,'<p>Fill in the form below to get in touch with us.</p>','','<p>Thanks for getting in touch with us. We\'ll get back to you as soon as possible.</p>',1,'','','','');

/*!40000 ALTER TABLE `forms_form` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table forms_formentry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `forms_formentry`;

CREATE TABLE `forms_formentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_time` datetime(6) NOT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id` (`form_id`),
  CONSTRAINT `forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id` FOREIGN KEY (`form_id`) REFERENCES `forms_form` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table galleries_gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `galleries_gallery`;

CREATE TABLE `galleries_gallery` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `zip_import` varchar(100) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `galleries_gallery` WRITE;
/*!40000 ALTER TABLE `galleries_gallery` DISABLE KEYS */;

INSERT INTO `galleries_gallery` (`page_ptr_id`, `content`, `zip_import`)
VALUES
	(8,'<p>A demo gallery of cities from around the world.</p>','');

/*!40000 ALTER TABLE `galleries_gallery` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table galleries_galleryimage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `galleries_galleryimage`;

CREATE TABLE `galleries_galleryimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_g_gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id` (`gallery_id`),
  CONSTRAINT `galleries_g_gallery_id_af12d3f5_fk_galleries_gallery_page_ptr_id` FOREIGN KEY (`gallery_id`) REFERENCES `galleries_gallery` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `galleries_galleryimage` WRITE;
/*!40000 ALTER TABLE `galleries_galleryimage` DISABLE KEYS */;

INSERT INTO `galleries_galleryimage` (`id`, `_order`, `file`, `description`, `gallery_id`)
VALUES
	(1,0,'uploads/gallery/Amsterdam, Holland.jpg','Amsterdam  Holland',8),
	(2,1,'uploads/gallery/Asturias, Brazil.jpg','Asturias  Brazil',8),
	(3,2,'uploads/gallery/Athens, Greece.jpg','Athens  Greece',8),
	(4,3,'uploads/gallery/Austin, USA.jpg','Austin  USA',8),
	(5,4,'uploads/gallery/AĚvila, Spain.jpg','AĚvila  Spain',8),
	(6,5,'uploads/gallery/Bangkok, Thailand.jpg','Bangkok  Thailand',8),
	(7,6,'uploads/gallery/Berlin, Germany.jpg','Berlin  Germany',8),
	(8,7,'uploads/gallery/Boston, USA.jpg','Boston  USA',8),
	(9,8,'uploads/gallery/Brisbane, Australia.jpg','Brisbane  Australia',8),
	(10,9,'uploads/gallery/Bruxelles, Belgium.jpg','Bruxelles  Belgium',8),
	(11,10,'uploads/gallery/Buenos Aires, Argentina.jpg','Buenos Aires  Argentina',8),
	(12,11,'uploads/gallery/Cairo, Egypt.jpg','Cairo  Egypt',8),
	(13,12,'uploads/gallery/Chicage, USA.jpg','Chicage  USA',8),
	(14,13,'uploads/gallery/City of Singapore, Singapore.jpg','City Of Singapore  Singapore',8),
	(15,14,'uploads/gallery/Dallas, USA.jpg','Dallas  USA',8),
	(16,15,'uploads/gallery/Denver, USA.jpg','Denver  USA',8),
	(17,16,'uploads/gallery/Dublin, Ireland.jpg','Dublin  Ireland',8),
	(18,17,'uploads/gallery/DuĚsseldorf, Germany.jpg','DuĚsseldorf  Germany',8),
	(19,18,'uploads/gallery/Frankfurt, Germany.jpg','Frankfurt  Germany',8),
	(20,19,'uploads/gallery/Geneva, Switzerland.jpg','Geneva  Switzerland',8),
	(21,20,'uploads/gallery/Inverness, Scotland.jpg','Inverness  Scotland',8),
	(22,21,'uploads/gallery/Lisbon, Portugal.jpg','Lisbon  Portugal',8),
	(23,22,'uploads/gallery/Liverpool, England.jpg','Liverpool  England',8),
	(24,23,'uploads/gallery/London, England.jpg','London  England',8),
	(25,24,'uploads/gallery/Long Beach, USA.jpg','Long Beach  USA',8),
	(26,25,'uploads/gallery/Louisville, USA.jpg','Louisville  USA',8),
	(27,26,'uploads/gallery/Marrakech, Morocco.jpg','Marrakech  Morocco',8),
	(28,27,'uploads/gallery/Miami, USA.jpg','Miami  USA',8),
	(29,28,'uploads/gallery/Monaco, Monaco.jpg','Monaco  Monaco',8),
	(30,29,'uploads/gallery/Moscow, Russia.jpg','Moscow  Russia',8),
	(31,30,'uploads/gallery/Naples, Italy.jpg','Naples  Italy',8),
	(32,31,'uploads/gallery/Palermo, Italy.jpg','Palermo  Italy',8),
	(33,32,'uploads/gallery/Paris, France.jpg','Paris  France',8),
	(34,33,'uploads/gallery/Reykjavik, Iceland.jpg','Reykjavik  Iceland',8),
	(35,34,'uploads/gallery/Rome, Italy.jpg','Rome  Italy',8),
	(36,35,'uploads/gallery/San Francisco, USA.jpg','San Francisco  USA',8),
	(37,36,'uploads/gallery/Santiago, Chile.jpg','Santiago  Chile',8),
	(38,37,'uploads/gallery/Seattle, USA.jpg','Seattle  USA',8),
	(39,38,'uploads/gallery/Stockholm, Sweden.jpg','Stockholm  Sweden',8),
	(40,39,'uploads/gallery/Sydney, Australia.jpg','Sydney  Australia',8),
	(41,40,'uploads/gallery/Tempe Town Lake, USA.jpg','Tempe Town Lake  USA',8),
	(42,41,'uploads/gallery/Tokyo, Japan.jpg','Tokyo  Japan',8),
	(43,42,'uploads/gallery/Toronto, Canada.jpg','Toronto  Canada',8),
	(44,43,'uploads/gallery/Vancouver, Canada.jpg','Vancouver  Canada',8),
	(45,44,'uploads/gallery/Venice, Italy.jpg','Venice  Italy',8),
	(46,45,'uploads/gallery/Vienna, Austria.jpg','Vienna  Austria',8),
	(47,46,'uploads/gallery/Warsaw, Poland.jpg','Warsaw  Poland',8),
	(48,47,'uploads/gallery/Yokohama, Japan.jpg','Yokohama  Japan',8),
	(49,48,'uploads/gallery/York, England.jpg','York  England',8);

/*!40000 ALTER TABLE `galleries_galleryimage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table generic_assignedkeyword
# ------------------------------------------------------------

DROP TABLE IF EXISTS `generic_assignedkeyword`;

CREATE TABLE `generic_assignedkeyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `_order` int(11) DEFAULT NULL,
  `object_pk` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_assig_content_type_id_3dd89a7f_fk_django_content_type_id` (`content_type_id`),
  KEY `generic_assignedkeyword_5c003bba` (`keyword_id`),
  CONSTRAINT `generic_assig_content_type_id_3dd89a7f_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `generic_assignedkeywor_keyword_id_44c17f9d_fk_generic_keyword_id` FOREIGN KEY (`keyword_id`) REFERENCES `generic_keyword` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table generic_keyword
# ------------------------------------------------------------

DROP TABLE IF EXISTS `generic_keyword`;

CREATE TABLE `generic_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_keyword_site_id_c5be0acc_fk_django_site_id` (`site_id`),
  CONSTRAINT `generic_keyword_site_id_c5be0acc_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table generic_rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `generic_rating`;

CREATE TABLE `generic_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) NOT NULL,
  `rating_date` datetime(6) DEFAULT NULL,
  `object_pk` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_ratin_content_type_id_eaf475fa_fk_django_content_type_id` (`content_type_id`),
  KEY `generic_rating_user_id_60020469_fk_auth_user_id` (`user_id`),
  CONSTRAINT `generic_ratin_content_type_id_eaf475fa_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `generic_rating_user_id_60020469_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table generic_threadedcomment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `generic_threadedcomment`;

CREATE TABLE `generic_threadedcomment` (
  `comment_ptr_id` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_average` double NOT NULL,
  `by_author` tinyint(1) NOT NULL,
  `replied_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_ptr_id`),
  KEY `D5c2cbe5d32cde8f103bcc4ab6ba0d0b` (`replied_to_id`),
  CONSTRAINT `D5c2cbe5d32cde8f103bcc4ab6ba0d0b` FOREIGN KEY (`replied_to_id`) REFERENCES `generic_threadedcomment` (`comment_ptr_id`),
  CONSTRAINT `generic_threadedco_comment_ptr_id_e208ed60_fk_django_comments_id` FOREIGN KEY (`comment_ptr_id`) REFERENCES `django_comments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pages_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages_link`;

CREATE TABLE `pages_link` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `pages_link_page_ptr_id_37d469f7_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pages_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages_page`;

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords_string` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(2000) DEFAULT NULL,
  `_meta_title` varchar(500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `gen_description` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `publish_date` datetime(6) DEFAULT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `short_url` varchar(200) DEFAULT NULL,
  `in_sitemap` tinyint(1) NOT NULL,
  `_order` int(11) DEFAULT NULL,
  `in_menus` varchar(100) DEFAULT NULL,
  `titles` varchar(1000) DEFAULT NULL,
  `content_model` varchar(50) DEFAULT NULL,
  `login_required` tinyint(1) NOT NULL,
  `parent_id` int(11),
  `site_id` int(11) NOT NULL,
  `tagline` longtext,
  PRIMARY KEY (`id`),
  KEY `pages_page_6be37982` (`parent_id`),
  KEY `pages_page_9365d6e7` (`site_id`),
  KEY `pages_page_publish_date_eb7c8d46_uniq` (`publish_date`),
  CONSTRAINT `pages_page_parent_id_133fa4d3_fk_pages_page_id` FOREIGN KEY (`parent_id`) REFERENCES `pages_page` (`id`),
  CONSTRAINT `pages_page_site_id_47a43e5b_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pages_page` WRITE;
/*!40000 ALTER TABLE `pages_page` DISABLE KEYS */;

INSERT INTO `pages_page` (`id`, `keywords_string`, `title`, `slug`, `_meta_title`, `description`, `gen_description`, `created`, `updated`, `status`, `publish_date`, `expiry_date`, `short_url`, `in_sitemap`, `_order`, `in_menus`, `titles`, `content_model`, `login_required`, `parent_id`, `site_id`, `tagline`)
VALUES
	(1,'','Blog','blog','','Blog',1,NULL,'2016-10-31 20:22:32.493294',2,'2016-10-31 20:22:32.493161',NULL,NULL,1,1,'','Blog','richtextpage',0,NULL,1,NULL),
	(2,'','About','about','','About us',1,NULL,'2016-10-31 20:22:28.411312',2,'2016-10-31 20:22:28.411175',NULL,NULL,1,0,'','About','richtextpage',0,NULL,1,NULL),
	(3,'','Contact','contact','','Fill in the form below to get in touch with us.',1,NULL,'2016-10-31 20:22:44.180893',2,'2016-10-31 20:22:44.180745',NULL,NULL,1,3,'','Contact','form',0,NULL,1,NULL),
	(4,'','Team','about/team',NULL,'Team',1,NULL,NULL,2,NULL,NULL,NULL,1,0,'1,2,3','About / Team','richtextpage',0,2,1,NULL),
	(5,'','History','about/history',NULL,'History',1,NULL,NULL,2,NULL,NULL,NULL,1,1,'1,2,3','About / History','richtextpage',0,2,1,NULL),
	(8,'','Gallery','gallery','','A demo gallery of cities from around the world.',1,NULL,'2016-10-31 20:22:38.194140',2,'2016-10-28 14:33:03.000000',NULL,NULL,1,2,'','Gallery','gallery',0,NULL,1,NULL),
	(9,'','Learning Goals','designing','','',0,'2016-10-31 18:28:51.241208','2016-11-21 19:31:44.833407',2,'2016-10-31 18:28:51.000000',NULL,NULL,1,4,'1','Learning Goals','richtextpage',0,NULL,1,'You undoubtedly have implicit ideas about what you want your students to take away from your course. You may also be expected to meet learning goals from your department or program. But it can be incredibly valuable to articulate each of these goals explicitly for yourself and for your students.'),
	(10,'','The Teaching Commons','the-teaching-commons','','Resources related to teaching, including tools for designing your courses, examples from faculty, and suggestions for further reading on a range of pedagogical topics',1,'2016-11-15 20:09:15.635339','2016-11-16 14:51:10.692040',2,'2016-11-15 20:09:15.000000',NULL,NULL,1,5,'1,2','The Teaching Commons','landingpage',0,NULL,1,'Resources related to teaching, including tools for designing your courses, examples from faculty, and suggestions for further reading on a range of pedagogical topics. Applicable to all disciplines and open to anyone.');

/*!40000 ALTER TABLE `pages_page` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages_richtextpage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages_richtextpage`;

CREATE TABLE `pages_richtextpage` (
  `page_ptr_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pages_richtextpage` WRITE;
/*!40000 ALTER TABLE `pages_richtextpage` DISABLE KEYS */;

INSERT INTO `pages_richtextpage` (`page_ptr_id`, `content`)
VALUES
	(1,'<p>Blog</p>'),
	(2,'<p>About us</p>'),
	(4,'<p>Team</p>'),
	(5,'<p>History</p>'),
	(9,'<h2>Specific, demonstrable and measurable</h2>\n<p>Learning goals must express specific behaviors that are demonstrable (students must be able to show what they have learned) and measurable (you must be able to distinguish between unsatisfactory, satisfactory, good and excellent performance). In introductory courses, your first instinct might be to create a goal such as this one:</p>\n<ul>\n<li>Students will gain a basic knowledge of the subject.</li>\n</ul>\n<p>In order to make this goal more specific, demonstrable and measurable, ask yourself, “what will the students need to do to show they have a basic knowledge?” Here are some examples of how you could express this:</p>\n<ul>\n<li>Students will be able to define concepts x, y and z.</li>\n<li>Students will be able to identify the theories that an author uses to support her argument.</li>\n<li>Students will be able to interpret the results of an experiment to evaluate whether the hypotheses were proven true.</li>\n<li>Students will be able to perform practical procedures x, y and z correctly in a clinical setting.</li>\n</ul>\n<div class=\"well\">\n<p><span class=\"glyphicon glyphicon-link\"></span> <a href=\"http://assessment.georgetown.edu/courselevel/identify-student-learning-goals/examples-of-course-level-learning-goals/\">Examples of Learning Goals from Georgetown Faculty</a></p>\n</div>\n<h2>Bloom\'s Taxonomy</h2>\n<p>When selecting the verbs to use to express what the students will do, you may find it helpful to use Benjamin Bloom’s taxonomy of the cognitive domain (updated by Anderson and Krathwohl). The taxonomy divides the cognitive domain into six levels of increasing complexity:</p>\n<ul>\n<li>know</li>\n<li>understand</li>\n<li>apply</li>\n<li>analyze</li>\n<li>evaluate</li>\n<li>create</li>\n</ul>\n<p>Even in an introductory course, you should aim for your students to achieve some goals in the higher dimensions. In a politics course, for example, in addition to understanding current debates, you can ask students to use this understanding to make policy recommendations for a given case. To help you devise specific, demonstrable and measurable learning goals for all levels of the cognitive domain, you can consult this list of <a href=\"http://www.cmu.edu/teaching/resources/Teaching/CourseDesign/Objectives/BloomsTaxonomyVerbs.pdf\">Verbs for Bloom’s Taxonomy</a> prepared by Carnegie Mellon University. In addition to the cognitive domain, Bloom’s Taxonomy contains two other domains: the affective domain and the psychomotor domain. For more information on these two domains, consult <a href=\"http://www.google.com/url?sa=t&amp;rct=j&amp;q=&amp;esrc=s&amp;source=web&amp;cd=7&amp;cad=rja&amp;uact=8&amp;ved=0CEcQFjAG&amp;url=http%3A%2F%2Fwww.d.umn.edu%2Fvcaa%2Fassessment%2Fbloomoverviw.docx&amp;ei=rvwOVO6oAZaONtWKgdgI&amp;usg=AFQjCNF-ZibKefaFDI6CO3zBEZH6SKDhcQ&amp;sig2=lKhFJkqYnmUuU--3CepFtA&amp;bvm=bv.74649129,d.eXY\">this handout</a> prepared by the University of Minnesota.</p>\n<h2>Short- and long-term goals</h2>\n<p>In order to refine your goals so that they express the essence of what students should be able to do by the end of the course, you can distinguish three different categories of things that students might learn in a particular course (Wiggins and McTighe, Understanding by Design):</p>\n<ol>\n<li><strong>What is merely worth being familiar with?</strong><br> Anything that is not essential for students to be able to do right now, at the end of this course, goes in this category. You may decide to devote some class time to it, but it is not an integral part of how you evaluate students’ performance in the course, and thus, not central to your course’s learning goals.</li>\n<li><strong>What is important for students to know and/or do?</strong><br> This includes content knowledge, skills and attitudes that you expect students to demonstrate by the end of the course. Students cannot successfully complete this course and move on to more advanced courses in the field without demonstrating that they have achieved these goals.</li>\n<li><strong>What enduring understanding or lasting impact do you want students to gain?</strong><br> This includes enduring understandings about the subject matter, about how practitioners in the field conceive of the subject and carry out their practice, and about other people and themselves, that you hope students will remember several years after completing the course. You can bear these in mind when determining the goals on which you will evaluate student learning at the end of this semester or year.</li>\n</ol>\n<p>In order to put the second (immediate) and third (long-term) categories of goals into perspective, Joan Middendorf and David Pace have developed an approach whereby you identify significant bottlenecks in student learning: concepts and practices that students typically struggle to learn, but which they must master in order to advance to a deeper and more complex level of understanding and skill in the field.</p>\n<p>L. Dee Fink describes another approach to developing goals that take both a short-term and a long-term view. He recommends you ask yourself, “what would I like the impact of the course to be on students two to three years after the course is over?” For more information on developing what he calls significant learning goals, see p. 8-12 of his <a href=\"http://www.deefinkandassociates.com/GuidetoCourseDesignAug05.pdf\">Self-Directed Guide to Designing Courses for Significant Learning</a>.</p>\n<h2>Course-level goals and other types of goals</h2>\n<p>Your program may already have program-level goals that indicate the knowledge, skills and attitudes that students must be able to demonstrate in order to progress through the program or what a graduate of the program should be able to do. Is it helpful to be familiar with these program-level goals so that you can ensure that your course-level goals support them. When you are designing units of teaching for your course (thematic units, individual lessons, etc.), it is a good idea to think in terms of goals as well. What will the students be able to do at the end of a particular lesson or unit? How do those goals support the course-level goals?</p>\n<h2>Aligning goals, assessments and teaching strategies</h2>\n<p>As mentioned in the section on <a href=\"{{ url_for(\'page\', path=\'design/designing_backward\') }}\">Designing Backward</a>, you must ensure that your learning goals are aligned with the assessments of student learning and with the teaching strategies you choose. As you develop those other two components of your course design, you may return to the learning goals and modify them so that they align better.</p>');

/*!40000 ALTER TABLE `pages_richtextpage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table teaching_concreterichtext
# ------------------------------------------------------------

DROP TABLE IF EXISTS `teaching_concreterichtext`;

CREATE TABLE `teaching_concreterichtext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `landing_page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teaching_concreterichtext_132ceca8` (`landing_page_id`),
  CONSTRAINT `tea_landing_page_id_f0c69ce3_fk_teaching_landingpage_page_ptr_id` FOREIGN KEY (`landing_page_id`) REFERENCES `teaching_landingpage` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `teaching_concreterichtext` WRITE;
/*!40000 ALTER TABLE `teaching_concreterichtext` DISABLE KEYS */;

INSERT INTO `teaching_concreterichtext` (`id`, `content`, `landing_page_id`)
VALUES
	(1,'<h3><span><img alt=\"\" height=\"340\" src=\"/static/media/uploads/img/tc-planning.jpg\" width=\"340\"></span></h3>\n<h3><span>Designing a Course</span></h3>\n<p><span><span>Learn how to design effective learning goals, assessment activities, and syllabi for your courses.</span></span></p>',10);

/*!40000 ALTER TABLE `teaching_concreterichtext` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table teaching_landingpage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `teaching_landingpage`;

CREATE TABLE `teaching_landingpage` (
  `page_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`page_ptr_id`),
  CONSTRAINT `teaching_landingpage_page_ptr_id_f26b4fba_fk_pages_page_id` FOREIGN KEY (`page_ptr_id`) REFERENCES `pages_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `teaching_landingpage` WRITE;
/*!40000 ALTER TABLE `teaching_landingpage` DISABLE KEYS */;

INSERT INTO `teaching_landingpage` (`page_ptr_id`)
VALUES
	(10);

/*!40000 ALTER TABLE `teaching_landingpage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table teaching_landingpage_gallery_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `teaching_landingpage_gallery_items`;

CREATE TABLE `teaching_landingpage_gallery_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `landingpage_id` int(11) NOT NULL,
  `concreterichtext_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teaching_landingpage_gallery_items_landingpage_id_12c82367_uniq` (`landingpage_id`,`concreterichtext_id`),
  KEY `tea_concreterichtext_id_e7233f68_fk_teaching_concreterichtext_id` (`concreterichtext_id`),
  CONSTRAINT `tea_concreterichtext_id_e7233f68_fk_teaching_concreterichtext_id` FOREIGN KEY (`concreterichtext_id`) REFERENCES `teaching_concreterichtext` (`id`),
  CONSTRAINT `teac_landingpage_id_7baeeaa0_fk_teaching_landingpage_page_ptr_id` FOREIGN KEY (`landingpage_id`) REFERENCES `teaching_landingpage` (`page_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `teaching_landingpage_gallery_items` WRITE;
/*!40000 ALTER TABLE `teaching_landingpage_gallery_items` DISABLE KEYS */;

INSERT INTO `teaching_landingpage_gallery_items` (`id`, `landingpage_id`, `concreterichtext_id`)
VALUES
	(1,10,1);

/*!40000 ALTER TABLE `teaching_landingpage_gallery_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table twitter_query
# ------------------------------------------------------------

DROP TABLE IF EXISTS `twitter_query`;

CREATE TABLE `twitter_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `value` varchar(140) NOT NULL,
  `interested` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `twitter_query` WRITE;
/*!40000 ALTER TABLE `twitter_query` DISABLE KEYS */;

INSERT INTO `twitter_query` (`id`, `type`, `value`, `interested`)
VALUES
	(1,'search','from:stephen_mcd mezzanine',1);

/*!40000 ALTER TABLE `twitter_query` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table twitter_tweet
# ------------------------------------------------------------

DROP TABLE IF EXISTS `twitter_tweet`;

CREATE TABLE `twitter_tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remote_id` varchar(50) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `text` longtext,
  `profile_image_url` varchar(200) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `retweeter_profile_image_url` varchar(200) DEFAULT NULL,
  `retweeter_user_name` varchar(100) DEFAULT NULL,
  `retweeter_full_name` varchar(100) DEFAULT NULL,
  `query_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `twitter_tweet_query_id_bd42b699_fk_twitter_query_id` (`query_id`),
  CONSTRAINT `twitter_tweet_query_id_bd42b699_fk_twitter_query_id` FOREIGN KEY (`query_id`) REFERENCES `twitter_query` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
