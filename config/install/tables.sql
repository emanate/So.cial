# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.29)
# Database: social_campaign_management
# Generation Time: 2013-08-23 21:27:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table service_ids
# ------------------------------------------------------------

CREATE TABLE `service_ids` (
  `_SERVICE` bigint(20) NOT NULL AUTO_INCREMENT,
  `_USER` bigint(20) DEFAULT NULL,
  `SERVICE_TYPE` varchar(64) DEFAULT '',
  `SERVICE_IDENTIFIER` varchar(128) DEFAULT NULL,
  `SERVICE_TOKEN` varchar(512) DEFAULT NULL,
  `SERVICE_USERNAME` varchar(128) DEFAULT NULL,
  `PERMISSIONS_GRANTED` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`_SERVICE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table share_tracking
# ------------------------------------------------------------

CREATE TABLE `share_tracking` (
  `_SHARE` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `_SERVICE` bigint(20) DEFAULT NULL,
  `SHARE_TYPE` varchar(24) DEFAULT NULL,
  `_USER` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`_SHARE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table user_data
# ------------------------------------------------------------

CREATE TABLE `user_data` (
  `_USER` bigint(20) unsigned NOT NULL,
  `FIRST_NAME` varchar(11) DEFAULT NULL,
  `LAST_NAME` varchar(11) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(11) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `GENDER` varchar(11) DEFAULT NULL,
  `LOCALE` varchar(11) DEFAULT NULL,
  `ADDRESS` varchar(11) DEFAULT NULL,
  `ADDRESS_EXTRA` varchar(11) DEFAULT NULL,
  `CITY` varchar(11) DEFAULT NULL,
  `PROVINCE` varchar(11) DEFAULT NULL,
  `COUNTRY` varchar(11) DEFAULT NULL,
  `ADDRESS_CODE` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `_USER` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `CREATION_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EDIT_DATE` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
