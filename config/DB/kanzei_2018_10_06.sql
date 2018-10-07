/*
SQLyog Trial v12.2.6 (32 bit)
MySQL - 10.1.35-MariaDB : Database - shoppingmoll
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoppingmoll` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `shoppingmoll`;

/*Table structure for table `country_duties` */

DROP TABLE IF EXISTS `country_duties`;

CREATE TABLE `country_duties` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_duty` int(1) DEFAULT NULL,
  `duty_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `country_duties` */

insert  into `country_duties`(`c_id`,`country`,`country_duty`,`duty_id`,`created_at`,`updated_at`,`deleted_at`) values 
(27,'Albania',15,31,'2018-10-07 12:15:53','2018-10-07 12:15:53',NULL),
(28,'Vanuatu',13,31,'2018-10-07 12:16:06','2018-10-07 12:16:06',NULL);

/*Table structure for table `duties` */

DROP TABLE IF EXISTS `duties`;

CREATE TABLE `duties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num` int(2) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `duties` */

insert  into `duties`(`id`,`name`,`num`,`created_at`,`updated_at`,`deleted_at`) values 
(30,'EU',100,'2018-10-06 11:16:08','2018-10-06 11:35:52','2018-10-06 11:35:52'),
(31,'EU',10,'2018-10-06 11:36:45','2018-10-06 11:36:45',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
