# ************************************************************
# Sequel Pro SQL dump
# バージョン 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# ホスト: 127.0.0.1 (MySQL 5.7.22-0ubuntu18.04.1)
# データベース: fanartic_db
# 作成時刻: 2018-09-14 15:03:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# テーブルのダンプ customer_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_address`;

CREATE TABLE `customer_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `address_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_state` int(255) DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_address_ex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_address_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_totalscore` double(255,0) DEFAULT NULL,
  `address_default` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;

INSERT INTO `customer_address` (`id`, `customer_id`, `address_name`, `address_phone`, `address_postalcode`, `address_state`, `address_city`, `address_address_ex`, `address_province`, `address_county`, `address_address_jp`, `address_totalscore`, `address_default`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,16,'address1','080-0000-0000','140-0005',1,NULL,NULL,'東京都','品川区広町','123',NULL,'1',NULL,NULL,NULL),
	(2,16,'address2','080-0200-0000','140-0015',1,NULL,NULL,'東京都','品川区西大井','12345689',NULL,'0',NULL,NULL,NULL),
	(3,21,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'1','2018-09-13 21:44:55','2018-09-13 21:46:02',NULL);

/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customer_buy_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_buy_history`;

CREATE TABLE `customer_buy_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `history_customerid` int(11) DEFAULT NULL,
  `history_merchantid` int(11) DEFAULT NULL,
  `history_productid` int(11) DEFAULT NULL,
  `history_skucolorid` int(11) DEFAULT NULL,
  `history_skusizeid` int(11) DEFAULT NULL,
  `history_amount` double(255,0) DEFAULT NULL,
  `history_price` double(10,2) DEFAULT NULL,
  `history_address` int(11) DEFAULT NULL,
  `history_card` int(11) DEFAULT NULL,
  `history_status` int(11) DEFAULT '0' COMMENT '0 => cart, 1=>waiting,2=>accept,3=>decline',
  `history_group` int(11) DEFAULT NULL,
  `history_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_buy_history` WRITE;
/*!40000 ALTER TABLE `customer_buy_history` DISABLE KEYS */;

INSERT INTO `customer_buy_history` (`id`, `history_customerid`, `history_merchantid`, `history_productid`, `history_skucolorid`, `history_skusizeid`, `history_amount`, `history_price`, `history_address`, `history_card`, `history_status`, `history_group`, `history_date`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(31,16,2,158,516,517,2,50000.00,1,1,4,4,'2018/07/31 02:21:58',NULL,NULL,NULL),
	(32,16,2,172,544,545,1,350000.00,1,1,1,4,'2018/07/31 02:21:59',NULL,NULL,NULL),
	(33,16,2,158,516,517,1,50000.00,1,5,2,5,'2018/08/04 00:06:35',NULL,NULL,NULL),
	(34,16,2,164,528,529,1,54000.00,2,5,2,6,'2018/08/04 00:21:58',NULL,NULL,NULL),
	(35,16,2,172,544,545,1,350000.00,1,6,2,7,'2018/08/04 00:23:44',NULL,NULL,NULL),
	(36,16,2,158,516,517,1,50000.00,1,7,2,8,'2018/08/10 12:47:37',NULL,NULL,NULL),
	(37,21,2,158,516,517,1,50000.00,3,9,2,9,'2018/09/13 23:09:20','2018-09-13 23:09:20','2018-09-13 23:09:20',NULL),
	(38,21,2,158,516,517,1,50000.00,3,9,2,10,'2018/09/13 23:15:00','2018-09-13 23:15:00','2018-09-13 23:15:00',NULL),
	(39,21,2,158,516,517,1,50000.00,3,9,2,11,'2018/09/13 23:16:54','2018-09-13 23:16:54','2018-09-13 23:16:54',NULL),
	(40,21,2,158,516,517,1,50000.00,3,9,2,12,'2018/09/13 23:18:27','2018-09-13 23:18:27','2018-09-13 23:18:27',NULL),
	(41,21,2,158,516,517,1,50000.00,3,9,2,13,'2018/09/13 23:19:09','2018-09-13 23:19:09','2018-09-13 23:19:09',NULL),
	(42,21,2,159,518,519,2,2560000.00,3,9,2,14,'2018/09/14 00:15:51','2018-09-14 00:15:51','2018-09-14 00:15:51',NULL),
	(43,21,2,159,518,519,2,2560000.00,3,9,2,15,'2018/09/14 00:16:12','2018-09-14 00:16:12','2018-09-14 00:16:12',NULL),
	(44,21,2,159,518,519,2,2560000.00,3,9,2,16,'2018/09/14 00:17:25','2018-09-14 00:17:25','2018-09-14 00:17:25',NULL),
	(45,21,2,159,518,519,2,2560000.00,3,9,2,17,'2018/09/14 00:19:18','2018-09-14 00:19:18','2018-09-14 00:19:18',NULL),
	(46,21,2,159,518,519,2,2560000.00,3,9,2,18,'2018/09/14 00:19:28','2018-09-14 00:19:28','2018-09-14 00:19:28',NULL),
	(47,21,2,159,518,519,2,2560000.00,3,9,2,19,'2018/09/14 00:23:43','2018-09-14 00:23:43','2018-09-14 00:23:43',NULL),
	(48,21,2,159,518,519,2,2560000.00,3,9,2,20,'2018/09/14 00:24:41','2018-09-14 00:24:41','2018-09-14 00:24:41',NULL),
	(49,21,2,159,518,519,2,2560000.00,3,9,2,21,'2018/09/14 00:25:29','2018-09-14 00:25:29','2018-09-14 00:25:29',NULL),
	(50,21,2,164,528,529,10,54000.00,3,9,2,21,'2018/09/14 00:25:29','2018-09-14 00:25:29','2018-09-14 00:25:29',NULL),
	(51,21,2,157,514,515,1,70000.00,3,9,2,22,'2018/09/14 02:53:49','2018-09-14 02:53:49','2018-09-14 02:53:49',NULL),
	(52,21,2,173,546,547,2,20000.00,3,9,2,22,'2018/09/14 02:53:49','2018-09-14 02:53:49','2018-09-14 02:53:49',NULL);

/*!40000 ALTER TABLE `customer_buy_history` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customer_card
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_card`;

CREATE TABLE `customer_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `card_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_validdate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_card` WRITE;
/*!40000 ALTER TABLE `customer_card` DISABLE KEYS */;

INSERT INTO `customer_card` (`id`, `customer_id`, `card_no`, `card_token`, `card_owner`, `card_validdate`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(5,16,'0003','cus_DLkcMX4Op3cf92','hokelucpy@outlook.com','2020/3',NULL,NULL,NULL),
	(6,16,'0004','cus_DLkdSVzxaoRaG2','hokelucpy@outlook.com','2019/1',NULL,NULL,NULL),
	(7,16,'4242','cus_DOE2GAsd94pXfO','hokelucpy@outlook.com','2019/11',NULL,NULL,NULL),
	(9,21,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12','2018-09-13 23:09:00','2018-09-13 23:09:00',NULL);

/*!40000 ALTER TABLE `customer_card` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customer_cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_cart`;

CREATE TABLE `customer_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_customerid` int(11) DEFAULT NULL,
  `cart_productid` int(11) DEFAULT NULL,
  `cart_skucolorid` int(11) DEFAULT NULL,
  `cart_skusizeid` int(11) DEFAULT NULL,
  `cart_amount` double(255,0) DEFAULT NULL,
  `cart_status` int(11) DEFAULT '0' COMMENT '0 => cart, 1=>waiting,2=>accept,3=>decline',
  `cart_history` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_cart` WRITE;
/*!40000 ALTER TABLE `customer_cart` DISABLE KEYS */;

INSERT INTO `customer_cart` (`id`, `cart_customerid`, `cart_productid`, `cart_skucolorid`, `cart_skusizeid`, `cart_amount`, `cart_status`, `cart_history`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(2,16,159,518,519,1,0,'1',NULL,'2018-09-13 23:45:57',NULL),
	(6,21,173,546,547,2,0,'1','2018-09-14 02:53:12','2018-09-14 02:53:12',NULL),
	(7,21,157,514,515,1,0,'1','2018-09-14 02:53:23','2018-09-14 02:53:39',NULL);

/*!40000 ALTER TABLE `customer_cart` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customer_favourite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_favourite`;

CREATE TABLE `customer_favourite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `fav_brand_id` int(11) DEFAULT NULL,
  `fav_pro_id` int(11) DEFAULT NULL,
  `fav_sku_color` int(255) DEFAULT NULL,
  `fav_sku_size` int(11) DEFAULT NULL,
  `fav_amt` double(255,0) DEFAULT NULL,
  `fav_status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_favourite` WRITE;
/*!40000 ALTER TABLE `customer_favourite` DISABLE KEYS */;

INSERT INTO `customer_favourite` (`id`, `customer_id`, `fav_brand_id`, `fav_pro_id`, `fav_sku_color`, `fav_sku_size`, `fav_amt`, `fav_status`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,21,4,159,518,519,1,NULL,NULL,NULL,NULL),
	(2,21,12,164,528,529,1,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `customer_favourite` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customer_magazine
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_magazine`;

CREATE TABLE `customer_magazine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `magazine_status` int(11) DEFAULT NULL COMMENT '''0'' => OFF, ''1'' => ON',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_magazine` WRITE;
/*!40000 ALTER TABLE `customer_magazine` DISABLE KEYS */;

INSERT INTO `customer_magazine` (`id`, `customer_id`, `magazine_status`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,21,1,'2018-09-13 16:42:41','2018-09-13 16:42:44',NULL);

/*!40000 ALTER TABLE `customer_magazine` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customer_recent_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_recent_product`;

CREATE TABLE `customer_recent_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `recent_product_id` int(11) DEFAULT NULL,
  `recent_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_recent_product` WRITE;
/*!40000 ALTER TABLE `customer_recent_product` DISABLE KEYS */;

INSERT INTO `customer_recent_product` (`id`, `customer_id`, `recent_product_id`, `recent_date`, `deleted_at`)
VALUES
	(71,16,158,'2018/07/31 02:21:40',NULL),
	(72,16,172,'2018/07/31 02:21:48',NULL),
	(73,16,158,'2018/08/03 21:52:26',NULL),
	(74,16,158,'2018/08/03 22:15:52',NULL),
	(75,16,158,'2018/08/03 22:20:18',NULL),
	(76,16,159,'2018/08/03 22:20:25',NULL),
	(77,16,172,'2018/08/03 22:20:28',NULL),
	(78,16,173,'2018/08/03 22:20:32',NULL),
	(79,16,157,'2018/08/03 22:21:01',NULL),
	(80,16,174,'2018/08/03 22:21:10',NULL),
	(81,16,167,'2018/08/03 22:21:13',NULL),
	(82,16,170,'2018/08/03 22:21:26',NULL),
	(83,16,176,'2018/08/03 22:22:31',NULL),
	(84,16,158,'2018/08/03 22:23:52',NULL),
	(85,16,158,'2018/08/04 00:08:09',NULL),
	(86,16,164,'2018/08/04 00:08:22',NULL),
	(87,16,172,'2018/08/04 00:23:32',NULL),
	(88,16,158,'2018/08/10 10:41:40',NULL),
	(89,16,159,'2018/08/10 12:49:26',NULL),
	(90,21,158,'2018/08/14 15:30:21',NULL),
	(91,21,158,'2018/08/14 15:30:54',NULL),
	(92,21,158,'2018/08/14 15:31:50',NULL),
	(93,21,159,'2018/08/14 15:34:10',NULL),
	(94,21,164,'2018/08/20 17:00:04',NULL),
	(95,21,164,'2018/08/20 17:00:13',NULL),
	(96,21,158,'2018/08/20 17:01:56',NULL),
	(97,21,159,'2018/09/13 13:00:23',NULL),
	(98,21,159,'2018/09/13 13:08:13',NULL),
	(99,21,159,'2018/09/13 13:08:15',NULL),
	(100,21,158,'2018/09/13 17:18:42',NULL),
	(101,21,158,'2018/09/13 17:53:11',NULL),
	(102,21,158,'2018/09/13 18:08:47',NULL),
	(103,21,159,'2018/09/13 23:22:16',NULL),
	(104,21,159,'2018/09/13 23:22:21',NULL),
	(105,21,159,'2018/09/13 23:22:27',NULL),
	(106,21,159,'2018/09/13 23:23:37',NULL),
	(107,21,159,'2018/09/13 23:23:57',NULL),
	(108,21,159,'2018/09/13 23:24:07',NULL),
	(109,21,159,'2018/09/13 23:24:22',NULL),
	(110,21,159,'2018/09/13 23:24:43',NULL),
	(111,21,159,'2018/09/13 23:25:03',NULL),
	(112,21,159,'2018/09/13 23:26:04',NULL),
	(113,21,159,'2018/09/13 23:26:21',NULL),
	(114,21,159,'2018/09/13 23:26:32',NULL),
	(115,21,159,'2018/09/13 23:26:57',NULL),
	(116,21,159,'2018/09/13 23:27:24',NULL),
	(117,21,159,'2018/09/13 23:27:32',NULL),
	(118,21,159,'2018/09/13 23:27:42',NULL),
	(119,21,159,'2018/09/13 23:28:34',NULL),
	(120,21,159,'2018/09/13 23:37:50',NULL),
	(121,21,159,'2018/09/13 23:38:03',NULL),
	(122,21,159,'2018/09/13 23:38:32',NULL),
	(123,21,159,'2018/09/13 23:38:38',NULL),
	(124,21,159,'2018/09/13 23:38:55',NULL),
	(125,21,159,'2018/09/13 23:39:20',NULL),
	(126,21,159,'2018/09/13 23:39:37',NULL),
	(127,21,159,'2018/09/13 23:39:40',NULL),
	(128,21,159,'2018/09/13 23:41:03',NULL),
	(129,21,159,'2018/09/13 23:42:32',NULL),
	(130,21,159,'2018/09/13 23:43:58',NULL),
	(131,21,159,'2018/09/13 23:44:19',NULL),
	(132,21,159,'2018/09/13 23:44:23',NULL),
	(133,21,159,'2018/09/13 23:44:25',NULL),
	(134,21,159,'2018/09/13 23:44:29',NULL),
	(135,21,159,'2018/09/13 23:46:00',NULL),
	(136,21,159,'2018/09/13 23:46:26',NULL),
	(137,21,159,'2018/09/13 23:46:53',NULL),
	(138,21,159,'2018/09/13 23:46:58',NULL),
	(139,21,159,'2018/09/13 23:48:16',NULL),
	(140,21,159,'2018/09/13 23:49:10',NULL),
	(141,21,159,'2018/09/13 23:49:51',NULL),
	(142,21,159,'2018/09/13 23:50:03',NULL),
	(143,21,159,'2018/09/13 23:50:50',NULL),
	(144,21,159,'2018/09/13 23:51:08',NULL),
	(145,21,159,'2018/09/13 23:51:17',NULL),
	(146,21,159,'2018/09/13 23:51:39',NULL),
	(147,21,159,'2018/09/13 23:51:44',NULL),
	(148,21,159,'2018/09/13 23:51:53',NULL),
	(149,21,159,'2018/09/13 23:52:39',NULL),
	(150,21,159,'2018/09/13 23:52:43',NULL),
	(151,21,159,'2018/09/13 23:56:28',NULL),
	(152,21,159,'2018/09/13 23:57:02',NULL),
	(153,21,159,'2018/09/13 23:58:22',NULL),
	(154,21,159,'2018/09/13 23:59:57',NULL),
	(155,21,159,'2018/09/14 00:01:13',NULL),
	(156,21,164,'2018/09/14 00:01:30',NULL),
	(157,21,173,'2018/09/14 02:53:09',NULL),
	(158,21,157,'2018/09/14 02:53:18',NULL),
	(159,21,157,'2018/09/14 02:53:27',NULL),
	(160,21,158,'2018/09/14 11:44:04',NULL);

/*!40000 ALTER TABLE `customer_recent_product` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customer_score
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_score`;

CREATE TABLE `customer_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `score_value` int(255) DEFAULT NULL,
  `score_action` int(255) DEFAULT NULL COMMENT '''1'' => buy, ''0'' => ''view''',
  `score_status` int(11) DEFAULT NULL COMMENT '''1'' => valid, ''0'' => ''invalid''',
  `score_type` int(11) DEFAULT NULL COMMENT '''1'' => plus, ''0'' => ''minus''',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_score` WRITE;
/*!40000 ALTER TABLE `customer_score` DISABLE KEYS */;

INSERT INTO `customer_score` (`id`, `customer_id`, `brand_id`, `score_value`, `score_action`, `score_status`, `score_type`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,16,12,1000,1,1,1,'2018-07-30 10:24:58','2018-07-30 10:24:58',NULL),
	(2,16,1,1000,1,1,1,'2018-07-30 21:37:00','2018-07-30 21:37:00',NULL),
	(3,16,15,1000,1,1,1,'2018-07-30 22:06:34','2018-07-30 22:06:34',NULL),
	(4,16,4,1000,1,1,1,'2018-07-30 22:06:35','2018-07-30 22:06:35',NULL),
	(5,16,15,1000,1,1,1,'2018-07-31 02:21:59','2018-07-31 02:21:59',NULL),
	(6,16,4,1000,1,1,1,'2018-07-31 02:21:59','2018-07-31 02:21:59',NULL),
	(7,16,15,1000,1,1,1,'2018-08-04 00:06:35','2018-08-04 00:06:35',NULL),
	(8,16,12,1000,1,1,1,'2018-08-04 00:21:59','2018-08-04 00:21:59',NULL),
	(9,16,4,1000,1,1,1,'2018-08-04 00:23:45','2018-08-04 00:23:45',NULL),
	(10,16,15,1000,1,1,1,'2018-08-10 12:47:37','2018-08-10 12:47:37',NULL);

/*!40000 ALTER TABLE `customer_score` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customer_scoresum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_scoresum`;

CREATE TABLE `customer_scoresum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `scoresum_value` double(255,0) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customer_scoresum` WRITE;
/*!40000 ALTER TABLE `customer_scoresum` DISABLE KEYS */;

INSERT INTO `customer_scoresum` (`id`, `customer_id`, `brand_id`, `scoresum_value`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,16,12,2000,'2018-07-30 10:24:58','2018-08-04 00:21:59',NULL),
	(2,16,1,1000,'2018-07-30 21:37:00','2018-07-30 21:37:00',NULL),
	(3,16,15,4000,'2018-07-30 22:06:34','2018-08-10 12:47:38',NULL),
	(4,16,4,3000,'2018-07-30 22:06:35','2018-08-04 00:23:45',NULL);

/*!40000 ALTER TABLE `customer_scoresum` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` int(11) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'ja',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_first` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_second` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_kana_first` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_kana_second` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_state` int(255) DEFAULT NULL,
  `customer_city` int(255) DEFAULT NULL,
  `customer_address_ex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_address_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_totalscore` double(255,0) DEFAULT NULL,
  `customer_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_gender` tinyint(2) DEFAULT NULL,
  `customer_birthday` date DEFAULT NULL,
  `customer_oauth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'JPY',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` tinyint(2) DEFAULT '0',
  `nick_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` (`customer_id`, `facebook_id`, `locale`, `name`, `email`, `customer_name_first`, `customer_name_second`, `customer_name_kana_first`, `customer_name_kana_second`, `password`, `customer_phone`, `customer_postalcode`, `customer_state`, `customer_city`, `customer_address_ex`, `customer_province`, `customer_county`, `customer_address_jp`, `customer_totalscore`, `customer_status`, `customer_gender`, `customer_birthday`, `customer_oauth`, `customer_image`, `currency`, `token`, `verified`, `nick_name`, `photo_path`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(16,NULL,NULL,NULL,'hokelucpy@outlook.com','kan','hoke','ddd','aaa','$2y$10$9sNU9.MHIsQZStMVEs5b7eG3GGK72RdmL7ZvZstt0sm4aU7gjV6be','080-0000-0000','140-0005',NULL,NULL,NULL,'東京都','品川区広町','11-001',NULL,NULL,NULL,'1960-01-01',NULL,NULL,NULL,'HLICmjX3AYi5A0dmIDumTHXrEQI9ChCFMXhb7Ugq',1,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,NULL,NULL,NULL,'sky.dragon1988@hotmail.com','jon',NULL,NULL,NULL,'$2y$10$BUN7x6qqX.mxtgAr2krA5eXYsqtYoMlNQL7QoymKkaIrCxt7voVMK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HLICmjX3AYi5A0dmIDumTHXrEQI9ChCFMXhb7Ugq',0,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,NULL,NULL,NULL,'hokelucpy@hotmail.com','aaa',NULL,NULL,NULL,'$2y$10$LrFyj39eCxr5GhoMcKSRAeXb/e49XiXEsckJ7MqYJ7zLFTFX77Uhm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HLICmjX3AYi5A0dmIDumTHXrEQI9ChCFMXhb7Ugq',0,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,NULL,NULL,NULL,'hokelucpy@outlook.com','cccc',NULL,NULL,NULL,'$2y$10$aOLHGTxINkaMMq9ONC7BA.gvFB7KxVnJjj9zfOmkdE8JWbzfaW6O2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HLICmjX3AYi5A0dmIDumTHXrEQI9ChCFMXhb7Ugq',0,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,NULL,NULL,'satoki inoue','inoue@loop-fitb.com','井上','智喜2','イノウエ','サトキ','$2y$10$OhWX7uvSOedarqw13t0PH.kurQsxhrQ5sy5t.fdbAvi20y2S/mav6','090-8432-2973','1500047',NULL,NULL,NULL,'東京都','都渋谷区神山町','24-11',NULL,NULL,1,'1992-11-09',NULL,NULL,NULL,'5b72761789c62',1,NULL,NULL,'NnrI72Xlg6tvPfGBvNmMEuuLggQMaBZJ5ShedSZTV9D3JMbpaE3D78WNgMuJ',NULL,'2018-09-14 16:37:53',NULL);

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ fan_deliverysetting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_deliverysetting`;

CREATE TABLE `fan_deliverysetting` (
  `id` int(11) NOT NULL,
  `ds_merchant` int(11) DEFAULT NULL,
  `ds_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_price` decimal(10,2) DEFAULT NULL,
  `ds_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_arrival` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_arrival_day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# テーブルのダンプ fan_merchant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_merchant`;

CREATE TABLE `fan_merchant` (
  `merchant_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_type` int(11) DEFAULT NULL,
  `merchant_plan` int(11) DEFAULT NULL,
  `merchant_taxflag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_companyname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_rep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_admin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_permit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address_ex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_commission_jp` double(10,2) DEFAULT NULL,
  `merchant_commission_ex` double(10,2) DEFAULT NULL,
  `merchant_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_open` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_fixtax` double(10,2) DEFAULT NULL,
  `merchant_commission` double(10,2) DEFAULT NULL,
  `merchant_open_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_fixcost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_opencost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `fan_merchant` WRITE;
/*!40000 ALTER TABLE `fan_merchant` DISABLE KEYS */;

INSERT INTO `fan_merchant` (`merchant_id`, `merchant_type`, `merchant_plan`, `merchant_taxflag`, `merchant_companyname`, `name`, `merchant_rep`, `merchant_admin`, `merchant_permit`, `email`, `password`, `merchant_phone`, `merchant_postalcode`, `merchant_state`, `merchant_city`, `merchant_address_ex`, `merchant_province`, `merchant_county`, `merchant_address_jp`, `merchant_commission_jp`, `merchant_commission_ex`, `merchant_status`, `merchant_open`, `merchant_fixtax`, `merchant_commission`, `merchant_open_state`, `merchant_fixcost`, `merchant_opencost`, `remember_token`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,1,'0','Butterfly Comany','Butterfly Merchant','Butterfly','Butterfly Manager','3','butterfly','123456789','123456789','123456789','2','2','Address','','','',100.00,150.00,'1',NULL,NULL,NULL,'1','100','100',NULL,'2018-07-04 12:43:23','2018-07-04 12:45:16',NULL),
	(2,2,2,NULL,'Select Shop1','Select Shop2','Select Shop3','Select Shop4','3','root','root','123456789','123456789','1','','','Adress1','Adress2','Adress3',1000.00,2000.00,'1',NULL,NULL,NULL,'1','20000','12345',NULL,'2018-07-04 12:45:21','2018-07-28 04:17:51',NULL),
	(3,3,2,'0','Not New Shop','Not New Shop','Not New Shop','Not New Shop','5','23@2.com','123456789','123456789','123456789','1','','','address01','address02','address03',2.00,NULL,'1',NULL,NULL,NULL,'1','200','120',NULL,'2018-07-04 12:46:48','2018-07-06 05:41:27',NULL),
	(4,NULL,NULL,NULL,NULL,'Satoki',NULL,NULL,NULL,'satoki.inoue@gmail.com','$2y$10$asBBtwCbt3qfk2OTU5Htp.BDGcvYaAY0mtaTY7Fd0lTv9ukothz5.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8Rf1Ar4Obns5DyoS1GSUeYKEmwxHOiUZnIVRKu0YemivwyvRBU1olsSLdA5F','2018-09-14 20:13:59','2018-09-14 20:13:59',NULL);

/*!40000 ALTER TABLE `fan_merchant` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ fan_merchant_submit
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_merchant_submit`;

CREATE TABLE `fan_merchant_submit` (
  `merchant_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_type` int(11) DEFAULT NULL,
  `merchant_plan` int(11) DEFAULT NULL,
  `merchant_taxflag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_companyname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_rep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_admin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_permit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address_ex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_commission_jp` double(10,2) DEFAULT NULL,
  `merchant_commission_ex` double(10,2) DEFAULT NULL,
  `merchant_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_open` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_fixtax` double(10,2) DEFAULT NULL,
  `merchant_commission` double(10,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# テーブルのダンプ fan_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_product`;

CREATE TABLE `fan_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_salemethod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_salerange` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_brand_id` int(11) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `product_event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name_kana` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_taxflag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_old_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size_category_id` int(11) DEFAULT NULL,
  `product_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_season` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_merchant_id` int(11) DEFAULT NULL,
  `product_parent_id` int(11) DEFAULT NULL,
  `stock_type` int(2) DEFAULT NULL,
  `max_order_count` int(10) DEFAULT NULL,
  `postage_type` int(2) DEFAULT NULL,
  `postage` int(10) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `product_size_id` int(11) DEFAULT NULL,
  `product_ca` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `fan_product` WRITE;
/*!40000 ALTER TABLE `fan_product` DISABLE KEYS */;

INSERT INTO `fan_product` (`product_id`, `product_salemethod`, `product_salerange`, `product_brand_id`, `product_category_id`, `product_event`, `product_code`, `product_name`, `product_name_kana`, `product_name_detail`, `product_taxflag`, `product_old_status`, `product_color`, `product_size_category_id`, `product_weight`, `product_season`, `product_place`, `product_material`, `product_memo`, `product_status`, `product_merchant_id`, `product_parent_id`, `stock_type`, `max_order_count`, `postage_type`, `postage`, `delivery_id`, `shipping_id`, `product_size_id`, `product_ca`, `product_color_1`, `product_size`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(157,'1','',1,69,'','10101-170629-0198','HAT 1','HAT 1','HAT 1','1','5','1',NULL,'100','','','','(表地)<br>コットン67%<br>ナイロン33%<br>(裏地)<br>ナイロン<br>(中綿)<br>ポリエステル<br>(ファー部分)<br>ダウン90%<br>フェザー10%<br>(部分使い)<br>メタルパーツ','0',2,0,1,1,0,0,1,43,NULL,NULL,'1','1','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(158,'1',NULL,15,32,NULL,'10101-170629-0199','HAND SHIRT 1','product_name_kana','HAND SHIRT 1','1','5','2',NULL,'100',NULL,NULL,NULL,NULL,'1',2,NULL,1,1,0,0,0,43,NULL,NULL,'1','1','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(159,'1','',4,32,'','10101-170629-0200','HAND SHIRT 2','HAND SHIRT 2','HAND SHIRT 2','1','5','3',NULL,'100','','','','','0',2,0,1,1,0,0,1,43,NULL,NULL,'1','2','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(160,'1','',192,69,'','10101-170629-0201','HAT 2','HAT 2','HAT 2','0','5','4',NULL,'100','','','','','1',2,0,1,1,0,0,1,43,NULL,NULL,'1','2','2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(161,'1','',192,65,'','10101-170629-0202','sleeveless shirt 5','sleeveless shirt 5','sleeveless shirt 5','0','5','5',NULL,'100','','','','','0',2,0,1,1,0,0,1,43,NULL,NULL,'1','3','2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(162,'1','',192,69,'','10101-170629-0203','HAT 3','HAT 3','HAT 3','1','5','6',NULL,'100','','','','','1',2,0,1,1,0,0,1,43,NULL,NULL,'1','3','2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(163,'1','',1,65,'','10101-170629-0204','sleeveless shirt 6','sleeveless shirt 6','sleeveless shirt 6','1','5','7',NULL,'100','','','','','1',2,0,1,1,0,0,1,42,NULL,NULL,'1','2','2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(164,'1','',12,32,'','10101-170629-0205','HAND SHIRT 3','HAND SHIRT 3','HAND SHIRT 3','1','5','8',NULL,'100','','','','','1',2,0,1,1,0,0,1,42,NULL,NULL,'1','3','2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(165,'1','',1,33,'','10101-170629-0206','sleeveless shirt 1','sleeveless shirt 1','sleeveless shirt 1','0','5','1',NULL,'100','','','','','0',2,0,1,1,0,0,1,42,NULL,NULL,'1','2','2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(166,'1','',12,69,'','10101-170629-0207','HAT 4','HAT 4','HAT 4','0','5','2',NULL,'100','','','','','0',2,0,1,1,0,0,1,42,NULL,NULL,'1','2','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(167,'1','',15,71,'','10101-170629-0208','Wallet 1','Wallet 1','Wallet 1','0','5','3',NULL,'100','','','','','0',2,0,1,1,0,0,1,42,NULL,NULL,'1','10','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(168,'1','',15,63,'','10101-170629-0209','Ring 1','Ring 1','Ring 1','1','5','4',NULL,'100','','','','','1',2,0,1,1,0,0,1,42,NULL,NULL,'1','7','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(169,'1','',15,33,'','10101-170629-0210','sleeveless shirt 2','sleeveless shirt 2','sleeveless shirt 2','0','5','5',NULL,'100','','','','','1',2,0,1,1,0,0,1,42,NULL,NULL,'1','1','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(170,'1','',4,71,'','10101-170629-0211','Wallet 3','Wallet 3','Wallet 3','0','5','6',NULL,'100','','','','','1',3,0,1,1,0,0,1,42,NULL,NULL,'1','10','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(171,'1',NULL,1,63,NULL,'10101-170629-0212','Ring 2','product_name_kana','Ring 2','0','5','7',NULL,'100',NULL,NULL,NULL,NULL,'0',3,NULL,1,1,0,0,0,42,NULL,NULL,'1','7','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(172,'1','',4,33,'','10101-170629-0213','sleeveless shirt 3','sleeveless shirt 3','sleeveless shirt 3','1','5','8',NULL,'100','','','','','1',3,0,1,1,0,0,1,43,NULL,NULL,'1','2','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(173,'1','',4,33,'','10101-170629-0214','sleeveless shirt 4','sleeveless shirt 4','sleeveless shirt 4','1','5','1',NULL,'100','','','','','1',3,0,1,1,0,0,1,43,NULL,NULL,'1','3','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(174,'1','',12,71,'','10101-170629-0215','Wallet 2','Wallet 2','Wallet 2','1','5','5',NULL,'100','','','','','1',3,0,1,1,0,0,1,43,NULL,NULL,'1','10','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(175,'1','',12,63,'','10101-170629-0216','Ring 3','Ring 3','Ring 3','0','5','6',NULL,'100','','','','','1',3,0,1,1,0,0,1,43,NULL,NULL,'1','7','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(176,'1',NULL,1,31,'1','10101-170629-02099','dg','product_name_kana','drgh','0','2','1/**/2/**/4',NULL,NULL,'sef','sef','sfe','sef','0',3,NULL,2,234,0,2,0,42,NULL,NULL,'3','1/**/3','2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(177,'1','',12,63,'','10101-170629-0217','Ring 3','Ring 3','Ring 3','0','5','6',NULL,'100','','','','','1',3,0,1,1,0,0,1,42,NULL,NULL,'1','7','2018-08-03 13:54:32','2018-08-03 13:54:32',NULL);

/*!40000 ALTER TABLE `fan_product` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ fan_product_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_product_image`;

CREATE TABLE `fan_product_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `fan_product_image` WRITE;
/*!40000 ALTER TABLE `fan_product_image` DISABLE KEYS */;

INSERT INTO `fan_product_image` (`image_id`, `product_id`, `merchant_id`, `color_id`, `image_name`, `created_at`, `update_at`, `deleted_at`)
VALUES
	(184,138,2,1,'cap_01_01.jpg','2018-07-19 05:53:01','2018-07-19 05:53:01',NULL),
	(185,138,2,1,'cap_01_02.jpg','2018-07-19 05:53:01','2018-07-19 05:53:01',NULL),
	(186,138,2,1,'cap_01_03.jpg','2018-07-19 05:53:01','2018-07-19 05:53:01',NULL),
	(187,138,2,1,'cap_01_04.jpg','2018-07-19 05:53:01','2018-07-19 05:53:01',NULL),
	(188,139,2,2,'shirts_02_01.jpg','2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(189,139,2,2,'shirts_02_02.jpg','2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(190,140,2,3,'shirts_03_01.jpg','2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(191,140,2,3,'shirts_03_02.jpg','2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(192,141,2,4,'cap_02_01.jpg','2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(193,141,2,4,'cap_02_02.jpg','2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(194,141,2,4,'cap_02_03.jpg','2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(195,141,2,4,'cap_02_04.jpg','2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(196,142,2,5,'sleeveless_shirt_01_01.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(197,142,2,5,'sleeveless_shirt_01_02.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(198,143,2,6,'cap_03_01.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(199,143,2,6,'cap_03_02.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(200,143,2,6,'cap_03_03.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(201,143,2,6,'cap_03_04.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(202,144,2,7,'sleeveless_shirt_02_01.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(203,144,2,7,'sleeveless_shirt_02_02.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(204,145,2,8,'shirts_01_01.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(205,145,2,8,'shirts_01_02.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(206,146,2,1,'sleeveless_shirt_03_01.jpg','2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(207,147,2,2,'cap_04_01.jpg','2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(208,147,2,2,'cap_04_02.jpg','2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(209,147,2,2,'cap_04_03.jpg','2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(210,147,2,2,'cap_04_04.jpg','2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(211,148,2,3,'wallet_03_01.jpg','2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(212,149,2,4,'ring_01_01.jpg','2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(213,150,2,5,'sleeveless_shirt_04_01.jpg','2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(214,151,2,6,'wallet_02_01.jpg','2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(215,151,2,6,'wallet_02_02.jpg','2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(216,151,2,6,'wallet_02_03.jpg','2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(217,152,2,7,'ring_02_01.jpg','2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(218,152,2,7,'ring_02_02.jpg','2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(219,153,2,8,'sleeveless_shirt_05_01.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(220,154,2,1,'sleeveless_shirt_06_01.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(221,155,2,5,'wallet_01_01.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(222,155,2,5,'wallet_01_02.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(223,155,2,5,'wallet_01_03.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(224,156,2,6,'ring_03_01.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(225,156,2,6,'ring_03_02.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(226,156,2,6,'ring_03_03.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(227,156,2,6,'ring_03_04.jpg','2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(228,157,2,1,'cap_01_01.jpg','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(229,157,2,1,'cap_01_02.jpg','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(230,157,2,1,'cap_01_03.jpg','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(231,157,2,1,'cap_01_04.jpg','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(232,158,2,2,'shirts_02_01.jpg','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(233,158,2,2,'shirts_02_02.jpg','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(234,159,2,3,'shirts_03_01.jpg','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(235,159,2,3,'shirts_03_02.jpg','2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(236,160,2,4,'cap_02_01.jpg','2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(237,160,2,4,'cap_02_02.jpg','2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(238,160,2,4,'cap_02_03.jpg','2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(239,160,2,4,'cap_02_04.jpg','2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(240,161,2,5,'sleeveless_shirt_01_01.jpg','2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(241,161,2,5,'sleeveless_shirt_01_02.jpg','2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(242,162,2,6,'cap_03_01.jpg','2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(243,162,2,6,'cap_03_02.jpg','2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(244,162,2,6,'cap_03_03.jpg','2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(245,162,2,6,'cap_03_04.jpg','2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(246,163,2,7,'sleeveless_shirt_02_01.jpg','2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(247,163,2,7,'sleeveless_shirt_02_02.jpg','2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(248,164,2,8,'shirts_01_01.jpg','2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(249,164,2,8,'shirts_01_02.jpg','2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(250,165,2,1,'sleeveless_shirt_03_01.jpg','2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(251,166,2,2,'cap_04_01.jpg','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(252,166,2,2,'cap_04_02.jpg','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(253,166,2,2,'cap_04_03.jpg','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(254,166,2,2,'cap_04_04.jpg','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(255,167,2,3,'wallet_03_01.jpg','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(256,168,2,4,'ring_01_01.jpg','2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(257,169,2,5,'sleeveless_shirt_04_01.jpg','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(258,170,2,6,'wallet_02_01.jpg','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(259,170,2,6,'wallet_02_02.jpg','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(260,170,2,6,'wallet_02_03.jpg','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(261,171,2,7,'ring_02_01.jpg','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(262,171,2,7,'ring_02_02.jpg','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(263,172,2,8,'sleeveless_shirt_05_01.jpg','2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(264,173,2,1,'sleeveless_shirt_06_01.jpg','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(265,174,2,5,'wallet_01_01.jpg','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(266,174,2,5,'wallet_01_02.jpg','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(267,174,2,5,'wallet_01_03.jpg','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(268,175,2,6,'ring_03_01.jpg','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(269,175,2,6,'ring_03_02.jpg','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(270,175,2,6,'ring_03_03.jpg','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(271,175,2,6,'ring_03_04.jpg','2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(272,176,2,1,'product_image_2_176_1.png','2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(273,176,2,2,'product_image_2_176_2.png','2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(274,176,2,4,'product_image_2_176_4.png','2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(278,177,2,6,'ring_03_01.jpg','2018-08-03 13:54:32','2018-08-03 13:54:32',NULL),
	(279,177,2,6,'ring_03_02.jpg','2018-08-03 13:54:32','2018-08-03 13:54:32',NULL),
	(280,177,2,6,'ring_03_03.jpg','2018-08-03 13:54:32','2018-08-03 13:54:32',NULL),
	(281,177,2,6,'ring_03_04.jpg','2018-08-03 13:54:32','2018-08-03 13:54:32',NULL);

/*!40000 ALTER TABLE `fan_product_image` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ fan_product_master_image
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_product_master_image`;

CREATE TABLE `fan_product_master_image` (
  `master_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `master_image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`master_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `fan_product_master_image` WRITE;
/*!40000 ALTER TABLE `fan_product_master_image` DISABLE KEYS */;

INSERT INTO `fan_product_master_image` (`master_image_id`, `product_id`, `master_image_name`, `merchant_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(95,138,'cap_01_01.jpg',2,'2018-07-19 05:53:01','2018-07-19 05:53:01',NULL),
	(96,138,'cap_01_02.jpg',2,'2018-07-19 05:53:01','2018-07-19 05:53:01',NULL),
	(97,138,'cap_01_03.jpg',2,'2018-07-19 05:53:01','2018-07-19 05:53:01',NULL),
	(98,138,'cap_01_04.jpg',2,'2018-07-19 05:53:01','2018-07-19 05:53:01',NULL),
	(99,139,'shirts_02_01.jpg',2,'2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(100,139,'shirts_02_02.jpg',2,'2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(101,140,'shirts_03_01.jpg',2,'2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(102,140,'shirts_03_02.jpg',2,'2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(103,141,'cap_02_01.jpg',2,'2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(104,141,'cap_02_02.jpg',2,'2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(105,141,'cap_02_03.jpg',2,'2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(106,141,'cap_02_04.jpg',2,'2018-07-19 05:53:02','2018-07-19 05:53:02',NULL),
	(107,142,'sleeveless_shirt_01_01.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(108,142,'sleeveless_shirt_01_02.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(109,143,'cap_03_01.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(110,143,'cap_03_02.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(111,143,'cap_03_03.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(112,143,'cap_03_04.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(113,144,'sleeveless_shirt_02_01.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(114,144,'sleeveless_shirt_02_02.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(115,145,'shirts_01_01.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(116,145,'shirts_01_02.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(117,146,'sleeveless_shirt_03_01.jpg',2,'2018-07-19 05:53:03','2018-07-19 05:53:03',NULL),
	(118,147,'cap_04_01.jpg',2,'2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(119,147,'cap_04_02.jpg',2,'2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(120,147,'cap_04_03.jpg',2,'2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(121,147,'cap_04_04.jpg',2,'2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(122,148,'wallet_03_01.jpg',2,'2018-07-19 05:53:04','2018-07-19 05:53:04',NULL),
	(123,149,'ring_01_01.jpg',2,'2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(124,150,'sleeveless_shirt_04_01.jpg',2,'2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(125,151,'wallet_02_01.jpg',2,'2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(126,151,'wallet_02_02.jpg',2,'2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(127,151,'wallet_02_03.jpg',2,'2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(128,152,'ring_02_01.jpg',2,'2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(129,152,'ring_02_02.jpg',2,'2018-07-19 05:53:05','2018-07-19 05:53:05',NULL),
	(130,153,'sleeveless_shirt_05_01.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(131,154,'sleeveless_shirt_06_01.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(132,155,'wallet_01_01.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(133,155,'wallet_01_02.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(134,155,'wallet_01_03.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(135,156,'ring_03_01.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(136,156,'ring_03_02.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(137,156,'ring_03_03.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(138,156,'ring_03_04.jpg',2,'2018-07-19 05:53:06','2018-07-19 05:53:06',NULL),
	(139,157,'cap_01_01.jpg',2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(140,157,'cap_01_02.jpg',2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(141,157,'cap_01_03.jpg',2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(142,157,'cap_01_04.jpg',2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(143,158,'shirts_02_01.jpg',2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(144,158,'shirts_02_02.jpg',2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(145,159,'shirts_03_01.jpg',2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(146,159,'shirts_03_02.jpg',2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(147,160,'cap_02_01.jpg',2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(148,160,'cap_02_02.jpg',2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(149,160,'cap_02_03.jpg',2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(150,160,'cap_02_04.jpg',2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(151,161,'sleeveless_shirt_01_01.jpg',2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(152,161,'sleeveless_shirt_01_02.jpg',2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(153,162,'cap_03_01.jpg',2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(154,162,'cap_03_02.jpg',2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(155,162,'cap_03_03.jpg',2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(156,162,'cap_03_04.jpg',2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(157,163,'sleeveless_shirt_02_01.jpg',2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(158,163,'sleeveless_shirt_02_02.jpg',2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(159,164,'shirts_01_01.jpg',2,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(160,164,'shirts_01_02.jpg',2,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(161,165,'sleeveless_shirt_03_01.jpg',2,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(162,166,'cap_04_01.jpg',2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(163,166,'cap_04_02.jpg',2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(164,166,'cap_04_03.jpg',2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(165,166,'cap_04_04.jpg',2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(166,167,'wallet_03_01.jpg',2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(167,168,'ring_01_01.jpg',2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(168,169,'sleeveless_shirt_04_01.jpg',2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(169,170,'wallet_02_01.jpg',2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(170,170,'wallet_02_02.jpg',2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(171,170,'wallet_02_03.jpg',2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(172,171,'ring_02_01.jpg',2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(173,171,'ring_02_02.jpg',2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(174,172,'sleeveless_shirt_05_01.jpg',2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(175,173,'sleeveless_shirt_06_01.jpg',2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(176,174,'wallet_01_01.jpg',2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(177,174,'wallet_01_02.jpg',2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(178,174,'wallet_01_03.jpg',2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(179,175,'ring_03_01.jpg',2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(180,175,'ring_03_02.jpg',2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(181,175,'ring_03_03.jpg',2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(182,175,'ring_03_04.jpg',2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(183,176,'master_image_2_176_1533047882_1.png',2,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(184,176,'master_image_2_176_1533047882_2.png',2,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(185,177,'ring_03_01.jpg',2,'2018-08-03 13:54:32','2018-08-03 13:54:32',NULL),
	(186,177,'ring_03_02.jpg',2,'2018-08-03 13:54:32','2018-08-03 13:54:32',NULL),
	(187,177,'ring_03_03.jpg',2,'2018-08-03 13:54:32','2018-08-03 13:54:32',NULL),
	(188,177,'ring_03_04.jpg',2,'2018-08-03 13:54:32','2018-08-03 13:54:32',NULL);

/*!40000 ALTER TABLE `fan_product_master_image` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ fan_product_sku
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_product_sku`;

CREATE TABLE `fan_product_sku` (
  `sku_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `sku_type` int(2) DEFAULT NULL,
  `sku_type_id` int(11) DEFAULT NULL,
  `sku_status` int(2) DEFAULT NULL,
  `product_merchant_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `fan_product_sku` WRITE;
/*!40000 ALTER TABLE `fan_product_sku` DISABLE KEYS */;

INSERT INTO `fan_product_sku` (`sku_id`, `product_id`, `sku_type`, `sku_type_id`, `sku_status`, `product_merchant_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(514,157,1,1,1,2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(515,157,2,1,1,2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(516,158,1,2,1,2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(517,158,2,1,1,2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(518,159,1,3,1,2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(519,159,2,2,1,2,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(520,160,1,4,1,2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(521,160,2,2,1,2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(522,161,1,5,1,2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(523,161,2,3,1,2,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(524,162,1,6,1,2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(525,162,2,3,1,2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(526,163,1,7,1,2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(527,163,2,2,1,2,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(528,164,1,8,1,2,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(529,164,2,3,1,2,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(530,165,1,1,1,2,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(531,165,2,2,1,2,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(532,166,1,2,1,2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(533,166,2,2,1,2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(534,167,1,3,1,2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(535,167,2,10,1,2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(536,168,1,4,1,2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(537,168,2,7,1,2,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(538,169,1,5,1,2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(539,169,2,1,1,2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(540,170,1,6,1,2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(541,170,2,10,1,2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(542,171,1,7,1,2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(543,171,2,7,1,2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(544,172,1,8,1,2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(545,172,2,2,1,2,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(546,173,1,1,1,2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(547,173,2,3,1,2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(548,174,1,5,1,2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(549,174,2,10,1,2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(550,175,1,6,1,2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(551,175,2,7,1,2,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(552,176,1,1,1,2,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(553,176,1,2,1,2,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(554,176,1,4,1,2,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(555,176,2,1,1,2,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(556,176,2,3,1,2,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(557,177,1,6,1,2,'2018-08-03 13:54:32','2018-08-03 13:54:32',NULL),
	(558,177,2,7,1,2,'2018-08-03 13:54:32','2018-08-03 13:54:32',NULL);

/*!40000 ALTER TABLE `fan_product_sku` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ fan_product_stock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_product_stock`;

CREATE TABLE `fan_product_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_purchased` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# テーブルのダンプ fan_product_stock_management
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fan_product_stock_management`;

CREATE TABLE `fan_product_stock_management` (
  `product_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_merchant_id` int(11) NOT NULL,
  `product_sku_color_id` int(11) NOT NULL,
  `product_sku_size_id` int(11) DEFAULT NULL,
  `product_price_sale` double(10,0) DEFAULT NULL,
  `product_price_ref` double(10,0) DEFAULT NULL,
  `product_price_law` double(10,0) DEFAULT NULL,
  `product_count_endless` int(2) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`product_stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `fan_product_stock_management` WRITE;
/*!40000 ALTER TABLE `fan_product_stock_management` DISABLE KEYS */;

INSERT INTO `fan_product_stock_management` (`product_stock_id`, `product_id`, `product_count`, `product_merchant_id`, `product_sku_color_id`, `product_sku_size_id`, `product_price_sale`, `product_price_ref`, `product_price_law`, `product_count_endless`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(432,157,111,2,514,515,70000,0,0,NULL,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(433,158,220,2,516,517,50000,0,0,NULL,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(434,159,331,2,518,519,2560000,0,0,NULL,'2018-07-30 12:58:20','2018-07-30 12:58:20',NULL),
	(435,160,444,2,520,521,28000,0,0,NULL,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(436,161,555,2,522,523,150000,0,0,NULL,'2018-07-30 12:58:21','2018-07-30 12:58:21',NULL),
	(437,162,666,2,524,525,504000,0,0,NULL,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(438,163,777,2,526,527,20000,0,0,NULL,'2018-07-30 12:58:22','2018-07-30 12:58:22',NULL),
	(439,164,878,2,528,529,54000,0,0,NULL,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(440,165,999,2,530,531,15600000,0,0,NULL,'2018-07-30 12:58:23','2018-07-30 12:58:23',NULL),
	(441,166,100,2,532,533,55880000,0,0,NULL,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(442,167,99,2,534,535,25000,0,0,NULL,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(443,168,88,2,536,537,350400,0,0,NULL,'2018-07-30 12:58:24','2018-07-30 12:58:24',NULL),
	(444,169,77,2,538,539,240003,0,0,NULL,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(445,170,66,2,540,541,2254000,0,0,NULL,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(446,171,55,2,542,543,550000,0,0,NULL,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(447,172,44,2,544,545,350000,0,0,NULL,'2018-07-30 12:58:25','2018-07-30 12:58:25',NULL),
	(448,173,33,2,546,547,20000,0,0,NULL,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(449,174,22,2,548,549,156000,0,0,NULL,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(450,175,11,2,550,551,990000,0,0,NULL,'2018-07-30 12:58:26','2018-07-30 12:58:26',NULL),
	(451,176,100,2,552,555,NULL,NULL,NULL,NULL,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(452,176,22,2,552,556,NULL,NULL,NULL,NULL,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(453,176,3,2,553,555,NULL,NULL,NULL,NULL,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(454,176,2340,2,553,556,NULL,NULL,NULL,NULL,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(455,176,43,2,554,555,NULL,NULL,NULL,NULL,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(456,176,5,2,554,556,NULL,NULL,NULL,NULL,'2018-07-31 10:36:17','2018-07-31 10:36:17',NULL),
	(457,177,1,2,557,558,990000,0,0,NULL,'2018-08-03 13:54:32','2018-08-03 13:54:32',NULL);

/*!40000 ALTER TABLE `fan_product_stock_management` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ fee_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fee_type`;

CREATE TABLE `fee_type` (
  `fee_type_id` int(11) NOT NULL,
  `fee_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_type_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`fee_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `fee_type` WRITE;
/*!40000 ALTER TABLE `fee_type` DISABLE KEYS */;

INSERT INTO `fee_type` (`fee_type_id`, `fee_type_name`, `fee_type_name_en`, `deleted_at`)
VALUES
	(1,'国内','Domestic',NULL),
	(2,'海外','International',NULL);

/*!40000 ALTER TABLE `fee_type` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ ltm_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ltm_translations`;

CREATE TABLE `ltm_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `ltm_translations` WRITE;
/*!40000 ALTER TABLE `ltm_translations` DISABLE KEYS */;

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`)
VALUES
	(1,1,'ja','auth','failed','アカウントが見つかりませんでした。','2018-09-13 01:21:33','2018-09-13 11:43:25'),
	(2,1,'ja','auth','throttle','ログインの施行回数が上限に達しました。 :seconds秒後にログインし直してください。','2018-09-13 01:21:33','2018-09-13 11:43:25'),
	(3,1,'ja','pagination','previous','&laquo; 前へ','2018-09-13 01:21:33','2018-09-13 11:43:26'),
	(4,1,'ja','pagination','next','次へ &raquo;','2018-09-13 01:21:33','2018-09-13 11:43:26'),
	(5,0,'ja','_json','All rights reserved.',NULL,'2018-09-13 01:21:33','2018-09-13 01:21:33'),
	(6,0,'ja','_json','Whoops!',NULL,'2018-09-13 01:21:33','2018-09-13 01:21:33'),
	(7,0,'ja','_json','Hello!',NULL,'2018-09-13 01:21:33','2018-09-13 01:21:33'),
	(8,0,'ja','_json','Regards',NULL,'2018-09-13 01:21:33','2018-09-13 01:21:33'),
	(9,0,'ja','_json','laravel-filemanager::lfm',NULL,'2018-09-13 01:21:33','2018-09-13 01:21:33'),
	(10,0,'ja','auth','hello',NULL,NULL,NULL),
	(11,1,'en','auth','failed','These credentials do not match our records.','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(12,1,'en','auth','throttle','Too many login attempts. Please try again in :seconds seconds.','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(13,1,'en','common','オアノット','or Not__','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(14,1,'en','common','near_japan','日本の匠','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(15,1,'en','common','experience','体験','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(16,1,'en','common','review','レビュー','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(17,1,'en','common','q&a','Q＆A','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(18,1,'en','common','online_host','オンライン中のホストを探す','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(19,1,'en','common','popular_categories','人気のあるカテゴリ','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(20,1,'en','common','see_all','すべて見る','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(21,1,'en','common','see_more','もっと見る','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(22,1,'en','common','see_page','ページを見る','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(23,1,'en','common','see_all_reviews','全てのレビューを見る','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(24,1,'en','common','see_all_walls','ウォール全体を見る','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(25,1,'en','common','consult','相談する','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(26,1,'en','common','watch_tour','ツアーを見る','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(27,1,'en','common','select_category','カテゴリーを選択','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(28,1,'en','common','search_experience','体験を探す','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(29,1,'en','common','select_area','エリアを選択','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(30,1,'en','common','select_person_numbers','人数を選択','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(31,1,'en','common','select_expense','金額を選択','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(32,1,'en','common','select_login_state','ログイン状態を選択','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(33,1,'en','common','select_language','言語を選択','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(34,1,'en','common','select_question','質問を選択してください','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(35,1,'en','common','search','検索','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(36,1,'en','common','search_host','ホスト検索','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(37,1,'en','common','my_page','マイページ','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(38,1,'en','common','operating_company','運営会社','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(39,1,'en','common','faq','よくある質問','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(40,1,'en','common','contact_us','お問い合わせ','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(41,1,'en','common','slide_title','東京をもっと見る','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(42,1,'en','common','slide_memo','あなたに一番近い食べ物、飲み物、<br>お店を見つけよう。','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(43,1,'en','common','password','パスワード','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(44,1,'en','common','password_confirm','パスワード（確認）','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(45,1,'en','common','mail_address','メールアドレス','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(46,1,'en','common','name','お名前','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(47,1,'en','common','agree_terms','<a href=\"\">利用規約</a>に同意をして登録します。','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(48,1,'en','common','top','トップ','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(49,1,'en','common','reservation_management','体験の予約管理','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(50,1,'en','common','favorite','お気に入り','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(51,1,'en','common','favorite_memo','お気に入りした体験、ホストたちです','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(52,1,'en','common','create_wall','ウォール作成','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(53,1,'en','common','create_experience','体験作成','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(54,1,'en','common','create_experience1','体験を作成する','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(55,1,'en','common','experience_management','体験管理','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(56,1,'en','common','experience_list','体験一覧','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(57,1,'en','common','create_qa','Q&A作成','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(58,1,'en','common','edit_profile','プロフィール変更','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(59,1,'en','common','behost','ホストになる(審査してたら:ホストモードに切替)','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(60,1,'en','common','setting','設定','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(61,1,'en','common','wall','ウォール','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(62,1,'en','common','be_host','ホストになる','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(63,1,'en','common','to_host','ホストモードに切替','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(64,1,'en','common','to_guest','ゲストモードに切替','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(65,1,'en','common','preview','プレビュー','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(66,1,'en','common','schedule','スケジュール','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(67,1,'en','common','schedule1','開催日程','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(68,1,'en','common','price','金額','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(69,1,'en','common','basic_information','基本情報','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(70,1,'en','common','host_edit_profile','ホスト用プロフィール編集','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(71,1,'en','common','answer_qa','Q&Aに回答する','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(72,1,'en','common','setting_photo','写真','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(73,1,'en','common','setting_auth','信頼＆認証','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(74,1,'en','common','view_my_profile','自分のプロフィールを見る','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(75,1,'en','common','account_management','個人情報管理','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(76,1,'en','common','bank_account_management','銀行口座管理','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(77,1,'en','common','sales_management','売上管理','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(78,1,'en','common','access','アクセス','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(79,1,'en','common','hour','時間','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(80,1,'en','common','public','公開中','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(81,1,'en','common','nonpublic','非公開','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(82,1,'en','common','edit','編集','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(83,1,'en','common','has_been_seen_times','回見られています','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(84,1,'en','common','review_template','〇〇で地元の人にも旅行者にも高評価な体験です。','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(85,1,'en','common','category','カテゴリー','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(86,1,'en','common','host','ホスト','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(87,1,'en','common','authorized_host','認定ホスト','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(88,1,'en','common','overview','概要','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(89,1,'en','common','caution','注意事項','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(90,1,'en','common','introduction_place','実施場所の紹介','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(91,1,'en','common','sold_out','完売中です','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(92,1,'en','common','choose_date','日付を選択してください','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(93,1,'en','common','available_status','の予約可能状況','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(94,1,'en','common','my_wall','マイウォール','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(95,1,'en','common','send','送信する','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(96,1,'en','common','use_stripe','Stripe Connect Customを使用','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(97,1,'en','common','san','さん','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(98,1,'en','common','santhing','さんのこと','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(99,1,'en','common','what_custom_experience','カスタム体験とは？','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(100,1,'en','common','question_answered_by','さんが答えた質問','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(101,1,'en','common','required','必須項目','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(102,1,'en','common','question','質問','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(103,1,'en','common','answer','回答','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(104,1,'en','common','save','保存する','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(105,1,'en','common','question_you_answered','あなたが回答した質問','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(106,1,'en','common','photo_memo','※ 写真は自動で正方形にトリミングされます','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(107,1,'en','common','photo_upload_drop','アップロードする<br/>ファイルをドロップ','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(108,1,'en','common','email_verified','様のメールアドレスの認証が完了しました。<br>当社とのやり取りをセキュアに保つためにも、認証済みメールアドレスはとても重要です。','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(109,1,'en','common','telephone','電話番号','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(110,1,'en','common','link_facebook','Facebookアカウントと連携する','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(111,1,'en','common','edit_host_profile','ホスト用プロフィール変更','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(112,1,'en','common','language','言語','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(113,1,'en','common','residence','在住歴','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(114,1,'en','common','words_comments','ひとことコメント','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(115,1,'en','common','appeal_tag','アピールタグ','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(116,1,'en','common','self_introduction','自己紹介','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(117,1,'en','common','gender','性別','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(118,1,'en','common','birthday','誕生日','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(119,1,'en','common','postal_code','郵便番号','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(120,1,'en','common','address','住所','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(121,1,'en','common','email_maga_setting','おすすめ(メルマガ設定)','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(122,1,'en','common','insta_url','インスタURL','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(123,1,'en','common','homepage_url','ホームページURL','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(124,1,'en','common','facebook_url','FacebookURL','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(125,1,'en','common','youtube_url','YoutubeURL','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(126,1,'en','common','created_experience_list','作成した体験一覧','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(127,1,'en','common','dashboard','ダッシュボード','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(128,1,'en','common','notice','お知らせ','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(129,1,'en','common','reservation','予約','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(130,1,'en','common','lack_content','コンテンツ不足、、','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(131,1,'en','common','lets_be_host','ホストになろう','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(132,1,'en','common','host_application_form','ホスト応募フォーム','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(133,1,'en','common','host_application_memo','応募が完了しております。現在審査中です。','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(134,1,'en','common','yours','あなたのこと','2018-09-13 11:43:23','2018-09-13 11:43:23'),
	(135,1,'en','common','possible_languages','使用可能な言語','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(136,1,'en','common','history_in_japan','日本在住歴','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(137,1,'en','common','a_message','ひとことメッセージ','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(138,1,'en','common','other','その他','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(139,1,'en','common','tag','タグ','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(140,1,'en','common','experience_category','体験のカテゴリ','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(141,1,'en','common','experience_name','体験名','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(142,1,'en','common','experience_thing','体験のこと','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(143,1,'en','common','experience_overview','体験の概要','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(144,1,'en','common','experience_reservation','体験の予約','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(145,1,'en','common','available_languages','対応可能言語','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(146,1,'en','common','to_apply','申し込む','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(147,1,'en','common','experience_reservation_management','体験予約管理','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(148,1,'en','common','message','メッセージ','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(149,1,'en','common','in_consultation','相談中','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(150,1,'en','common','reservation_detail','予約詳細','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(151,1,'en','common','write_review','レビューを書く','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(152,1,'en','common','reservation_input','入力','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(153,1,'en','common','reservation_payment','決済','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(154,1,'en','common','reservation_confirm','確認','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(155,1,'en','common','reservation_complete','完了','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(156,1,'en','common','service_notice','サービス注意事項','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(157,1,'en','common','content_confirm','内容確認','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(158,1,'en','common','determine','確定する','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(159,1,'en','common','alipay','Alipay','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(160,1,'en','common','wechat','WeChat','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(161,1,'en','common','paypal','Paypal','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(162,1,'en','common','credit_card','クレジットカード','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(163,1,'en','common','total_price','合計金額','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(164,1,'en','common','pay','支払う','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(165,1,'en','common','payment_method','支払い方法','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(166,1,'en','common','detail','詳細','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(167,1,'en','common','consult_offer','相談','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(168,1,'en','common','consult_apply','申込','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(169,1,'en','common','consult_approve','確定','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(170,1,'en','common','consult_finish','終了','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(171,1,'en','common','consult_cancel','キャンセル','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(172,1,'en','common','consult_offer1','提案','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(173,1,'en','common','consult_apply1','承認','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(174,1,'en','common','consult_approve1','確定','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(175,1,'en','common','consult_finish1','終了','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(176,1,'en','common','consult_cancel1','キャンセル','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(177,1,'en','common','consult_form','相談フォーム','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(178,1,'en','common','custom_experience_consult','カスタム体験の相談','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(179,1,'en','common','title','タイトル','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(180,1,'en','common','your_budget','ご予算','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(181,1,'en','common','date','日付','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(182,1,'en','common','consult_content','相談内容','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(183,1,'en','common','content','内容','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(184,1,'en','common','terms','利用規約とキャンセルポリシーに同意をする','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(185,1,'en','common','proceed_confirm','確認画面にすすむ','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(186,1,'en','common','total','合計','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(187,1,'en','common','person','人','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(188,1,'en','common','person_numbers','人数','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(189,1,'en','common','canceled','キャンセルとなりました','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(190,1,'en','common','consult_offer_host','ホストからの提案待ち','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(191,1,'en','common','consult_offer_host1','ホストから提案がありました','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(192,1,'en','common','consult_apply_host','ホストからの承認待ち','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(193,1,'en','common','consult_apply_host1','予約が確定しました','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(194,1,'en','common','consult_finish_host','この予約は終了しています','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(195,1,'en','common','consult_cancel_host','この予約はキャンセルとなりました','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(196,1,'en','common','consult_offer_guest','ゲストに提案をしてください','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(197,1,'en','common','consult_offer_guest1','提案の変更も可能です','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(198,1,'en','common','consult_apply_guest','ゲストの申込に提案をしてください','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(199,1,'en','common','consult_approve_guest','予約が確定しました','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(200,1,'en','common','consult_finish_guest','この予約は終了しています','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(201,1,'en','common','consult_cancel_guest','この予約はキャンセルとなりました','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(202,1,'en','common','consult_host_message',':userさんに相談をしました！<br>メッセージのやりとりをして、提案を待ちましょう。','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(203,1,'en','common','consult_guest_message','ゲストから相談がありました！<br>内容を確認して、「金額」「日時」「内容」を提案してください。','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(204,1,'en','common','consult_host_offer_message','予約の申込が完了しました！<br>ホストからの承認をお待ちください。','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(205,1,'en','common','consult_guest_offer_message','承認ボタンを押して、予約を確定しましょう！','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(206,1,'en','common','consult_guest_approve_message','予約が確定しました！<br>:userさんに体験を提供しましょう。','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(207,1,'en','common','consult_host_finish_message','体験が終了しました！<br>:userさんにレビューを書きましょう ','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(208,1,'en','common','consult_guest_finish_message','体験が終了しました！<br>:userさんにレビューを書きましょう ','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(209,1,'en','common','consult_offer_message',':userさんが予約をしました','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(210,1,'en','common','consult_update_message','すでに:user様へ提案済みですが、支払い前なので変更も可能です。','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(211,1,'en','common','offer','提案する','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(212,1,'en','common','offer_update','提案を更新する','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(213,1,'en','common','update','更新する','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(214,1,'en','common','cancel','キャンセルする','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(215,1,'en','common','experience_with_reservation','予約があった体験','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(216,1,'en','common','experience_reserved','予約した体験','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(217,1,'en','common','your_profit','あなたの収入','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(218,1,'en','common','select','選択してください','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(219,1,'en','common','attach_file','ファイルを添付','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(220,1,'en','common','leave_review','レビューを残しましょう','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(221,1,'en','common','consult_input','入力','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(222,1,'en','common','consult_payment','決済','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(223,1,'en','common','consult_complete','完了','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(224,1,'en','pagination','previous','&laquo; Previous','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(225,1,'en','pagination','next','Next &raquo;','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(226,1,'en','passwords','password','Passwords must be at least six characters and match the confirmation.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(227,1,'en','passwords','reset','Your password has been reset!','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(228,1,'en','passwords','sent','We have e-mailed your password reset link!','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(229,1,'en','passwords','token','This password reset token is invalid.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(230,1,'en','passwords','user','We can\'t find a user with that e-mail address.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(231,1,'en','validation','accepted','The :attribute must be accepted.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(232,1,'en','validation','active_url','The :attribute is not a valid URL.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(233,1,'en','validation','after','The :attribute must be a date after :date.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(234,1,'en','validation','after_or_equal','The :attribute must be a date after or equal to :date.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(235,1,'en','validation','alpha','The :attribute may only contain letters.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(236,1,'en','validation','alpha_dash','The :attribute may only contain letters, numbers, dashes and underscores.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(237,1,'en','validation','alpha_num','The :attribute may only contain letters and numbers.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(238,1,'en','validation','array','The :attribute must be an array.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(239,1,'en','validation','before','The :attribute must be a date before :date.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(240,1,'en','validation','before_or_equal','The :attribute must be a date before or equal to :date.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(241,1,'en','validation','between.numeric','The :attribute must be between :min and :max.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(242,1,'en','validation','between.file','The :attribute must be between :min and :max kilobytes.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(243,1,'en','validation','between.string','The :attribute must be between :min and :max characters.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(244,1,'en','validation','between.array','The :attribute must have between :min and :max items.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(245,1,'en','validation','boolean','The :attribute field must be true or false.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(246,1,'en','validation','confirmed','The :attribute confirmation does not match.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(247,1,'en','validation','date','The :attribute is not a valid date.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(248,1,'en','validation','date_format','The :attribute does not match the format :format.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(249,1,'en','validation','different','The :attribute and :other must be different.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(250,1,'en','validation','digits','The :attribute must be :digits digits.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(251,1,'en','validation','digits_between','The :attribute must be between :min and :max digits.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(252,1,'en','validation','dimensions','The :attribute has invalid image dimensions.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(253,1,'en','validation','distinct','The :attribute field has a duplicate value.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(254,1,'en','validation','email','The :attribute must be a valid email address.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(255,1,'en','validation','exists','The selected :attribute is invalid.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(256,1,'en','validation','file','The :attribute must be a file.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(257,1,'en','validation','filled','The :attribute field must have a value.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(258,1,'en','validation','gt.numeric','The :attribute must be greater than :value.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(259,1,'en','validation','gt.file','The :attribute must be greater than :value kilobytes.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(260,1,'en','validation','gt.string','The :attribute must be greater than :value characters.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(261,1,'en','validation','gt.array','The :attribute must have more than :value items.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(262,1,'en','validation','gte.numeric','The :attribute must be greater than or equal :value.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(263,1,'en','validation','gte.file','The :attribute must be greater than or equal :value kilobytes.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(264,1,'en','validation','gte.string','The :attribute must be greater than or equal :value characters.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(265,1,'en','validation','gte.array','The :attribute must have :value items or more.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(266,1,'en','validation','image','The :attribute must be an image.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(267,1,'en','validation','in','The selected :attribute is invalid.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(268,1,'en','validation','in_array','The :attribute field does not exist in :other.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(269,1,'en','validation','integer','The :attribute must be an integer.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(270,1,'en','validation','ip','The :attribute must be a valid IP address.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(271,1,'en','validation','ipv4','The :attribute must be a valid IPv4 address.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(272,1,'en','validation','ipv6','The :attribute must be a valid IPv6 address.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(273,1,'en','validation','json','The :attribute must be a valid JSON string.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(274,1,'en','validation','lt.numeric','The :attribute must be less than :value.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(275,1,'en','validation','lt.file','The :attribute must be less than :value kilobytes.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(276,1,'en','validation','lt.string','The :attribute must be less than :value characters.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(277,1,'en','validation','lt.array','The :attribute must have less than :value items.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(278,1,'en','validation','lte.numeric','The :attribute must be less than or equal :value.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(279,1,'en','validation','lte.file','The :attribute must be less than or equal :value kilobytes.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(280,1,'en','validation','lte.string','The :attribute must be less than or equal :value characters.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(281,1,'en','validation','lte.array','The :attribute must not have more than :value items.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(282,1,'en','validation','max.numeric','The :attribute may not be greater than :max.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(283,1,'en','validation','max.file','The :attribute may not be greater than :max kilobytes.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(284,1,'en','validation','max.string','The :attribute may not be greater than :max characters.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(285,1,'en','validation','max.array','The :attribute may not have more than :max items.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(286,1,'en','validation','mimes','The :attribute must be a file of type: :values.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(287,1,'en','validation','mimetypes','The :attribute must be a file of type: :values.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(288,1,'en','validation','min.numeric','The :attribute must be at least :min.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(289,1,'en','validation','min.file','The :attribute must be at least :min kilobytes.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(290,1,'en','validation','min.string','The :attribute must be at least :min characters.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(291,1,'en','validation','min.array','The :attribute must have at least :min items.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(292,1,'en','validation','not_in','The selected :attribute is invalid.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(293,1,'en','validation','not_regex','The :attribute format is invalid.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(294,1,'en','validation','numeric','The :attribute must be a number.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(295,1,'en','validation','present','The :attribute field must be present.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(296,1,'en','validation','regex','The :attribute format is invalid.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(297,1,'en','validation','required','The :attribute field is required.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(298,1,'en','validation','required_if','The :attribute field is required when :other is :value.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(299,1,'en','validation','required_unless','The :attribute field is required unless :other is in :values.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(300,1,'en','validation','required_with','The :attribute field is required when :values is present.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(301,1,'en','validation','required_with_all','The :attribute field is required when :values is present.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(302,1,'en','validation','required_without','The :attribute field is required when :values is not present.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(303,1,'en','validation','required_without_all','The :attribute field is required when none of :values are present.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(304,1,'en','validation','same','The :attribute and :other must match.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(305,1,'en','validation','size.numeric','The :attribute must be :size.','2018-09-13 11:43:24','2018-09-13 11:43:24'),
	(306,1,'en','validation','size.file','The :attribute must be :size kilobytes.','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(307,1,'en','validation','size.string','The :attribute must be :size characters.','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(308,1,'en','validation','size.array','The :attribute must contain :size items.','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(309,1,'en','validation','string','The :attribute must be a string.','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(310,1,'en','validation','timezone','The :attribute must be a valid zone.','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(311,1,'en','validation','unique','The :attribute has already been taken.','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(312,1,'en','validation','uploaded','The :attribute failed to upload.','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(313,1,'en','validation','url','The :attribute format is invalid.','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(314,1,'en','validation','custom.attribute-name.rule-name','custom-message','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(315,1,'ja','auth','notice_forgot_password','※パスワードを忘れた方はこちら','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(316,1,'ja','auth','notice_signup','※新規登録の方はこちら','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(317,1,'ja','auth','mail_address','メールアドレス','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(318,1,'ja','auth','password','パスワード','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(319,1,'ja','auth','password_confirm','パスワード（確認）','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(320,1,'ja','auth','password_reset','パスワード再設定','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(321,1,'ja','auth','password_reissue','パスワードを再発行','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(322,1,'ja','auth','remember_me','ログイン情報を記憶する','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(323,1,'ja','auth','login','ログイン','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(324,1,'ja','auth','login_facebook','Facebookログイン','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(325,1,'ja','auth','logout','ログアウト','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(326,1,'ja','auth','signup','新規登録','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(327,1,'ja','auth','name','お名前','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(328,1,'ja','auth','register','登録する','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(329,1,'ja','auth','register_facebook','Facebookで登録','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(330,1,'ja','common','near_japan','日本の匠','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(331,1,'ja','common','experience','体験','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(332,1,'ja','common','review','レビュー','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(333,1,'ja','common','q&a','Q＆A','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(334,1,'ja','common','online_host','オンライン中のホストを探す','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(335,1,'ja','common','popular_categories','人気のあるカテゴリ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(336,1,'ja','common','see_all','すべて見る','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(337,1,'ja','common','see_more','もっと見る','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(338,1,'ja','common','see_page','ページを見る','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(339,1,'ja','common','see_all_reviews','全てのレビューを見る','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(340,1,'ja','common','see_all_walls','ウォール全体を見る','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(341,1,'ja','common','consult','相談する','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(342,1,'ja','common','watch_tour','ツアーを見る','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(343,1,'ja','common','select_category','カテゴリーを選択','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(344,1,'ja','common','search_experience','体験を探す','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(345,1,'ja','common','select_area','エリアを選択','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(346,1,'ja','common','select_person_numbers','人数を選択','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(347,1,'ja','common','select_expense','金額を選択','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(348,1,'ja','common','select_login_state','ログイン状態を選択','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(349,1,'ja','common','select_language','言語を選択','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(350,1,'ja','common','select_question','質問を選択してください','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(351,1,'ja','common','search','検索','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(352,1,'ja','common','search_host','ホスト検索','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(353,1,'ja','common','my_page','マイページ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(354,1,'ja','common','operating_company','運営会社','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(355,1,'ja','common','faq','よくある質問','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(356,1,'ja','common','contact_us','お問い合わせ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(357,1,'ja','common','slide_title','東京をもっと見る','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(358,1,'ja','common','slide_memo','あなたに一番近い食べ物、飲み物、<br>お店を見つけよう。','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(359,1,'ja','common','password','パスワード','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(360,1,'ja','common','password_confirm','パスワード（確認）','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(361,1,'ja','common','mail_address','メールアドレス','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(362,1,'ja','common','name','お名前','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(363,1,'ja','common','agree_terms','<a href=\"\">利用規約</a>に同意をして登録します。','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(364,1,'ja','common','top','トップ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(365,1,'ja','common','reservation_management','体験の予約管理','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(366,1,'ja','common','favorite','お気に入り','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(367,1,'ja','common','favorite_memo','お気に入りした体験、ホストたちです','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(368,1,'ja','common','create_wall','ウォール作成','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(369,1,'ja','common','create_experience','体験作成','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(370,1,'ja','common','create_experience1','体験を作成する','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(371,1,'ja','common','experience_management','体験管理','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(372,1,'ja','common','experience_list','体験一覧','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(373,1,'ja','common','create_qa','Q&A作成','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(374,1,'ja','common','edit_profile','プロフィール変更','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(375,1,'ja','common','behost','ホストになる(審査してたら:ホストモードに切替)','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(376,1,'ja','common','setting','設定','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(377,1,'ja','common','wall','ウォール','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(378,1,'ja','common','be_host','ホストになる','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(379,1,'ja','common','to_host','ホストモードに切替','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(380,1,'ja','common','to_guest','ゲストモードに切替','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(381,1,'ja','common','preview','プレビュー','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(382,1,'ja','common','schedule','スケジュール','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(383,1,'ja','common','schedule1','開催日程','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(384,1,'ja','common','price','金額','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(385,1,'ja','common','basic_information','基本情報','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(386,1,'ja','common','host_edit_profile','ホスト用プロフィール編集','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(387,1,'ja','common','answer_qa','Q&Aに回答する','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(388,1,'ja','common','setting_photo','写真','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(389,1,'ja','common','setting_auth','信頼＆認証','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(390,1,'ja','common','view_my_profile','自分のプロフィールを見る','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(391,1,'ja','common','account_management','個人情報管理','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(392,1,'ja','common','bank_account_management','銀行口座管理','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(393,1,'ja','common','sales_management','売上管理','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(394,1,'ja','common','access','アクセス','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(395,1,'ja','common','hour','時間','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(396,1,'ja','common','public','公開中','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(397,1,'ja','common','nonpublic','非公開','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(398,1,'ja','common','edit','編集','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(399,1,'ja','common','has_been_seen_times','回見られています','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(400,1,'ja','common','review_template','〇〇で地元の人にも旅行者にも高評価な体験です。','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(401,1,'ja','common','category','カテゴリー','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(402,1,'ja','common','host','ホスト','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(403,1,'ja','common','authorized_host','認定ホスト','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(404,1,'ja','common','overview','概要','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(405,1,'ja','common','caution','注意事項','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(406,1,'ja','common','introduction_place','実施場所の紹介','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(407,1,'ja','common','sold_out','完売中です','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(408,1,'ja','common','choose_date','日付を選択してください','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(409,1,'ja','common','available_status','の予約可能状況','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(410,1,'ja','common','my_wall','マイウォール','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(411,1,'ja','common','send','送信する','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(412,1,'ja','common','use_stripe','Stripe Connect Customを使用','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(413,1,'ja','common','san','さん','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(414,1,'ja','common','santhing','さんのこと','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(415,1,'ja','common','what_custom_experience','カスタム体験とは？','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(416,1,'ja','common','question_answered_by','さんが答えた質問','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(417,1,'ja','common','required','必須項目','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(418,1,'ja','common','question','質問','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(419,1,'ja','common','answer','回答','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(420,1,'ja','common','save','保存する','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(421,1,'ja','common','question_you_answered','あなたが回答した質問','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(422,1,'ja','common','photo_memo','※ 写真は自動で正方形にトリミングされます','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(423,1,'ja','common','photo_upload_drop','アップロードする<br/>ファイルをドロップ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(424,1,'ja','common','email_verified','様のメールアドレスの認証が完了しました。<br>当社とのやり取りをセキュアに保つためにも、認証済みメールアドレスはとても重要です。','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(425,1,'ja','common','telephone','電話番号','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(426,1,'ja','common','link_facebook','Facebookアカウントと連携する','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(427,1,'ja','common','edit_host_profile','ホスト用プロフィール変更','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(428,1,'ja','common','language','言語','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(429,1,'ja','common','residence','在住歴','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(430,1,'ja','common','words_comments','ひとことコメント','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(431,1,'ja','common','appeal_tag','アピールタグ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(432,1,'ja','common','self_introduction','自己紹介','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(433,1,'ja','common','gender','性別','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(434,1,'ja','common','birthday','誕生日','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(435,1,'ja','common','postal_code','郵便番号','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(436,1,'ja','common','address','住所','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(437,1,'ja','common','email_maga_setting','おすすめ(メルマガ設定)','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(438,1,'ja','common','insta_url','インスタURL','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(439,1,'ja','common','homepage_url','ホームページURL','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(440,1,'ja','common','facebook_url','FacebookURL','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(441,1,'ja','common','youtube_url','YoutubeURL','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(442,1,'ja','common','created_experience_list','作成した体験一覧','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(443,1,'ja','common','dashboard','ダッシュボード','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(444,1,'ja','common','notice','お知らせ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(445,1,'ja','common','reservation','予約','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(446,1,'ja','common','lack_content','コンテンツ不足、、','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(447,1,'ja','common','lets_be_host','ホストになろう','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(448,1,'ja','common','host_application_form','ホスト応募フォーム','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(449,1,'ja','common','host_application_memo','応募が完了しております。現在審査中です。','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(450,1,'ja','common','yours','あなたのこと','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(451,1,'ja','common','possible_languages','使用可能な言語','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(452,1,'ja','common','history_in_japan','日本在住歴','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(453,1,'ja','common','a_message','ひとことメッセージ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(454,1,'ja','common','other','その他','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(455,1,'ja','common','tag','タグ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(456,1,'ja','common','experience_category','体験のカテゴリ','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(457,1,'ja','common','experience_name','体験名','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(458,1,'ja','common','experience_thing','体験のこと','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(459,1,'ja','common','experience_overview','体験の概要','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(460,1,'ja','common','experience_reservation','体験の予約','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(461,1,'ja','common','available_languages','対応可能言語','2018-09-13 11:43:25','2018-09-13 11:43:25'),
	(462,1,'ja','common','to_apply','申し込む','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(463,1,'ja','common','experience_reservation_management','体験予約管理','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(464,1,'ja','common','message','メッセージ','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(465,1,'ja','common','in_consultation','相談中','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(466,1,'ja','common','reservation_detail','予約詳細','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(467,1,'ja','common','write_review','レビューを書く','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(468,1,'ja','common','reservation_input','入力','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(469,1,'ja','common','reservation_payment','決済','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(470,1,'ja','common','reservation_confirm','確認','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(471,1,'ja','common','reservation_complete','完了','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(472,1,'ja','common','service_notice','サービス注意事項','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(473,1,'ja','common','content_confirm','内容確認','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(474,1,'ja','common','determine','確定する','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(475,1,'ja','common','alipay','Alipay','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(476,1,'ja','common','wechat','WeChat','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(477,1,'ja','common','paypal','Paypal','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(478,1,'ja','common','credit_card','クレジットカード','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(479,1,'ja','common','total_price','合計金額','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(480,1,'ja','common','pay','支払う','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(481,1,'ja','common','payment_method','支払い方法','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(482,1,'ja','common','detail','詳細','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(483,1,'ja','common','consult_offer','相談','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(484,1,'ja','common','consult_apply','申込','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(485,1,'ja','common','consult_approve','確定','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(486,1,'ja','common','consult_finish','終了','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(487,1,'ja','common','consult_cancel','キャンセル','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(488,1,'ja','common','consult_offer1','提案','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(489,1,'ja','common','consult_apply1','承認','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(490,1,'ja','common','consult_approve1','確定','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(491,1,'ja','common','consult_finish1','終了','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(492,1,'ja','common','consult_cancel1','キャンセル','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(493,1,'ja','common','consult_form','相談フォーム','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(494,1,'ja','common','custom_experience_consult','カスタム体験の相談','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(495,1,'ja','common','title','タイトル','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(496,1,'ja','common','your_budget','ご予算','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(497,1,'ja','common','date','日付','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(498,1,'ja','common','consult_content','相談内容','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(499,1,'ja','common','content','内容','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(500,1,'ja','common','terms','利用規約とキャンセルポリシーに同意をする','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(501,1,'ja','common','proceed_confirm','確認画面にすすむ','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(502,1,'ja','common','total','合計','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(503,1,'ja','common','person','人','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(504,1,'ja','common','person_numbers','人数','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(505,1,'ja','common','canceled','キャンセルとなりました','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(506,1,'ja','common','consult_offer_host','ホストからの提案待ち','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(507,1,'ja','common','consult_offer_host1','ホストから提案がありました','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(508,1,'ja','common','consult_apply_host','ホストからの承認待ち','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(509,1,'ja','common','consult_apply_host1','予約が確定しました','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(510,1,'ja','common','consult_finish_host','この予約は終了しています','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(511,1,'ja','common','consult_cancel_host','この予約はキャンセルとなりました','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(512,1,'ja','common','consult_offer_guest','ゲストに提案をしてください','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(513,1,'ja','common','consult_offer_guest1','提案の変更も可能です','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(514,1,'ja','common','consult_apply_guest','ゲストの申込に提案をしてください','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(515,1,'ja','common','consult_approve_guest','予約が確定しました','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(516,1,'ja','common','consult_finish_guest','この予約は終了しています','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(517,1,'ja','common','consult_cancel_guest','この予約はキャンセルとなりました','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(518,1,'ja','common','consult_host_message',':userさんに相談をしました！<br>メッセージのやりとりをして、提案を待ちましょう。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(519,1,'ja','common','consult_guest_message','ゲストから相談がありました！<br>内容を確認して、「金額」「日時」「内容」を提案してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(520,1,'ja','common','consult_host_offer_message','予約の申込が完了しました！<br>ホストからの承認をお待ちください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(521,1,'ja','common','consult_guest_offer_message','承認ボタンを押して、予約を確定しましょう！','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(522,1,'ja','common','consult_guest_approve_message','予約が確定しました！<br>:userさんに体験を提供しましょう。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(523,1,'ja','common','consult_host_finish_message','体験が終了しました！<br>:userさんにレビューを書きましょう ','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(524,1,'ja','common','consult_guest_finish_message','体験が終了しました！<br>:userさんにレビューを書きましょう ','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(525,1,'ja','common','consult_offer_message',':userさんが予約をしました','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(526,1,'ja','common','consult_update_message','すでに:user様へ提案済みですが、支払い前なので変更も可能です。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(527,1,'ja','common','offer','提案する','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(528,1,'ja','common','offer_update','提案を更新する','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(529,1,'ja','common','update','更新する','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(530,1,'ja','common','cancel','キャンセルする','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(531,1,'ja','common','experience_with_reservation','予約があった体験','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(532,1,'ja','common','experience_reserved','予約した体験','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(533,1,'ja','common','your_profit','あなたの収入','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(534,1,'ja','common','select','選択してください','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(535,1,'ja','common','attach_file','ファイルを添付','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(536,1,'ja','common','leave_review','レビューを残しましょう','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(537,1,'ja','common','consult_input','入力','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(538,1,'ja','common','consult_payment','決済','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(539,1,'ja','common','consult_complete','完了','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(540,1,'ja','datetime','month','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(541,1,'ja','datetime','week','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(542,1,'ja','datetime','current_week','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(543,1,'ja','datetime','previous_week','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(544,1,'ja','datetime','before_2weeks','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(545,1,'ja','datetime','before_3weeks','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(546,1,'ja','datetime','before_4weeks','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(547,1,'ja','datetime','before_5weeks','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(548,1,'ja','datetime','before_6weeks','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(549,1,'ja','datetime','within_3days','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(550,1,'ja','datetime','day','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(551,1,'ja','datetime','hour','','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(552,1,'ja','locale','en','英語','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(553,1,'ja','locale','ja','日本語','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(554,1,'ja','locale','ko','韓国語','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(555,1,'ja','messages','logo','たくみ','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(556,1,'ja','messages','full_width_within_20','全角20文字以内で入力してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(557,1,'ja','messages','max_5','最大５個まで入力可能です。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(558,1,'ja','messages','inform_admin','何か事務局に伝えておくことがありましたら、ご記入ください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(559,1,'ja','passwords','password','パスワードは最低6文字以上かつ確認用パスワードと一致している必要があります。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(560,1,'ja','passwords','reset','パスワードがリセットされました。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(561,1,'ja','passwords','sent','パスワード再設定用リンクをメールにて送信しました。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(562,1,'ja','passwords','token','URLが不正です。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(563,1,'ja','passwords','user','ご入力いただいたメールアドレスが見つかりませんでした。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(564,1,'ja','validation','accepted',':attributeを承認してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(565,1,'ja','validation','active_url',':attributeが有効なURLではありません。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(566,1,'ja','validation','after',':attributeには、:dateより後の日付を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(567,1,'ja','validation','after_or_equal',':attributeには、:date以前の日付を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(568,1,'ja','validation','alpha',':attributeはアルファベットのみがご利用できます。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(569,1,'ja','validation','alpha_dash',':attributeはアルファベットとダッシュ(-)及び下線(_)がご利用できます。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(570,1,'ja','validation','alpha_num',':attributeはアルファベット数字がご利用できます。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(571,1,'ja','validation','array',':attributeは配列でなくてはなりません。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(572,1,'ja','validation','before',':attributeには、:dateより前の日付をご利用ください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(573,1,'ja','validation','before_or_equal',':attributeには、:date以前の日付をご利用ください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(574,1,'ja','validation','between.numeric',':attributeは、:minから:maxの間で指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(575,1,'ja','validation','between.file',':attributeは、:min kBから、:max kBの間で指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(576,1,'ja','validation','between.string',':attributeは、:min文字から、:max文字の間で指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(577,1,'ja','validation','between.array',':attributeは、:min個から:max個の間で指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(578,1,'ja','validation','boolean',':attributeは、trueかfalseを指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(579,1,'ja','validation','confirmed',':attributeと、確認フィールドとが、一致していません。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(580,1,'ja','validation','date',':attributeには有効な日付を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(581,1,'ja','validation','date_format',':attributeは:format形式で指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(582,1,'ja','validation','different',':attributeと:otherには、異なった内容を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(583,1,'ja','validation','digits',':attributeは:digits桁で指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(584,1,'ja','validation','digits_between',':attributeは:min桁から:max桁の間で指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(585,1,'ja','validation','dimensions',':attributeの図形サイズが正しくありません。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(586,1,'ja','validation','distinct',':attributeには異なった値を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(587,1,'ja','validation','email',':attributeには、有効なメールアドレスを指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(588,1,'ja','validation','exists','選択された:attributeは正しくありません。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(589,1,'ja','validation','file',':attributeにはファイルを指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(590,1,'ja','validation','filled',':attributeに値を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(591,1,'ja','validation','gt.numeric',':attributeには、:valueより大きな値を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(592,1,'ja','validation','gt.file',':attributeには、:value kBより大きなファイルを指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(593,1,'ja','validation','gt.string',':attributeは、:value文字より長く指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(594,1,'ja','validation','gt.array',':attributeには、:value個より多くのアイテムを指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(595,1,'ja','validation','gte.numeric',':attributeには、:value以上の値を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(596,1,'ja','validation','gte.file',':attributeには、:value kB以上のファイルを指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(597,1,'ja','validation','gte.string',':attributeは、:value文字以上で指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(598,1,'ja','validation','gte.array',':attributeには、:value個以上のアイテムを指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(599,1,'ja','validation','image',':attributeには画像ファイルを指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(600,1,'ja','validation','in','選択された:attributeは正しくありません。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(601,1,'ja','validation','in_array',':attributeには:otherの値を指定してください。','2018-09-13 11:43:26','2018-09-13 11:43:26'),
	(602,1,'ja','validation','integer',':attributeは整数で指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(603,1,'ja','validation','ip',':attributeには、有効なIPアドレスを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(604,1,'ja','validation','ipv4',':attributeには、有効なIPv4アドレスを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(605,1,'ja','validation','ipv6',':attributeには、有効なIPv6アドレスを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(606,1,'ja','validation','json',':attributeには、有効なJSON文字列を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(607,1,'ja','validation','lt.numeric',':attributeには、:valueより小さな値を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(608,1,'ja','validation','lt.file',':attributeには、:value kBより小さなファイルを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(609,1,'ja','validation','lt.string',':attributeは、:value文字より短く指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(610,1,'ja','validation','lt.array',':attributeには、:value個より少ないアイテムを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(611,1,'ja','validation','lte.numeric',':attributeには、:value以下の値を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(612,1,'ja','validation','lte.file',':attributeには、:value kB以下のファイルを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(613,1,'ja','validation','lte.string',':attributeは、:value文字以下で指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(614,1,'ja','validation','lte.array',':attributeには、:value個以下のアイテムを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(615,1,'ja','validation','max.numeric',':attributeには、:max以下の数字を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(616,1,'ja','validation','max.file',':attributeには、:max kB以下のファイルを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(617,1,'ja','validation','max.string',':attributeは、:max文字以下で指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(618,1,'ja','validation','max.array',':attributeは:max個以下指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(619,1,'ja','validation','mimes',':attributeには:valuesタイプのファイルを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(620,1,'ja','validation','mimetypes',':attributeには:valuesタイプのファイルを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(621,1,'ja','validation','min.numeric',':attributeには、:min以上の数字を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(622,1,'ja','validation','min.file',':attributeには、:min kB以上のファイルを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(623,1,'ja','validation','min.string',':attributeは、:min文字以上で指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(624,1,'ja','validation','min.array',':attributeは:min個以上指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(625,1,'ja','validation','not_in','選択された:attributeは正しくありません。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(626,1,'ja','validation','not_regex',':attributeの形式が正しくありません。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(627,1,'ja','validation','numeric',':attributeには、数字を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(628,1,'ja','validation','present',':attributeが存在していません。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(629,1,'ja','validation','regex',':attributeに正しい形式を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(630,1,'ja','validation','required',':attributeは必ず指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(631,1,'ja','validation','required_if',':otherが:valueの場合、:attributeも指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(632,1,'ja','validation','required_unless',':otherが:valuesでない場合、:attributeを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(633,1,'ja','validation','required_with',':valuesを指定する場合は、:attributeも指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(634,1,'ja','validation','required_with_all',':valuesを指定する場合は、:attributeも指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(635,1,'ja','validation','required_without',':valuesを指定しない場合は、:attributeを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(636,1,'ja','validation','required_without_all',':valuesのどれも指定しない場合は、:attributeを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(637,1,'ja','validation','same',':attributeと:otherには同じ値を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(638,1,'ja','validation','size.numeric',':attributeは:sizeを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(639,1,'ja','validation','size.file',':attributeのファイルは、:sizeキロバイトでなくてはなりません。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(640,1,'ja','validation','size.string',':attributeは:size文字で指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(641,1,'ja','validation','size.array',':attributeは:size個指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(642,1,'ja','validation','string',':attributeは文字列を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(643,1,'ja','validation','timezone',':attributeには、有効なゾーンを指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(644,1,'ja','validation','unique',':attributeの値は既に存在しています。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(645,1,'ja','validation','uploaded',':attributeのアップロードに失敗しました。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(646,1,'ja','validation','url',':attributeに正しい形式を指定してください。','2018-09-13 11:43:27','2018-09-13 11:43:27'),
	(647,1,'ja','validation','custom.属性名.ルール名','カスタムメッセージ','2018-09-13 11:43:27','2018-09-13 11:43:27');

/*!40000 ALTER TABLE `ltm_translations` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ mall_brand_match
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mall_brand_match`;

CREATE TABLE `mall_brand_match` (
  `mall_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `mall_brand_match` WRITE;
/*!40000 ALTER TABLE `mall_brand_match` DISABLE KEYS */;

INSERT INTO `mall_brand_match` (`mall_id`, `brand_id`, `deleted_at`)
VALUES
	(24,264,NULL),
	(24,174,NULL),
	(24,187,NULL),
	(24,189,NULL),
	(24,301,NULL),
	(24,185,NULL),
	(24,155,NULL),
	(24,28,NULL),
	(24,26,NULL),
	(24,25,NULL),
	(24,39,NULL),
	(24,38,NULL),
	(24,37,NULL),
	(24,16,NULL),
	(24,17,NULL),
	(24,18,NULL),
	(24,19,NULL),
	(24,20,NULL),
	(24,21,NULL),
	(24,22,NULL),
	(24,15,NULL),
	(24,12,NULL),
	(24,11,NULL),
	(24,9,NULL),
	(24,8,NULL),
	(24,5,NULL),
	(24,4,NULL),
	(24,2,NULL),
	(24,1,NULL),
	(24,373,NULL),
	(24,100,NULL),
	(25,189,NULL),
	(25,105,NULL),
	(25,412,NULL),
	(26,105,NULL),
	(26,189,NULL),
	(26,412,NULL),
	(26,100,NULL),
	(26,373,NULL),
	(26,264,NULL);

/*!40000 ALTER TABLE `mall_brand_match` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ mall_category_match
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mall_category_match`;

CREATE TABLE `mall_category_match` (
  `mall_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT 'deleted_at',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `mall_category_match` WRITE;
/*!40000 ALTER TABLE `mall_category_match` DISABLE KEYS */;

INSERT INTO `mall_category_match` (`mall_id`, `category_id`, `deleted_at`)
VALUES
	(0,23,NULL),
	(0,23,NULL),
	(0,23,NULL),
	(24,20,NULL),
	(24,21,NULL),
	(24,22,NULL),
	(24,23,NULL),
	(24,24,NULL),
	(24,25,NULL),
	(24,26,NULL),
	(24,27,NULL),
	(24,28,NULL),
	(24,29,NULL),
	(24,30,NULL),
	(24,31,NULL),
	(24,32,NULL),
	(24,33,NULL),
	(24,82,NULL),
	(25,31,NULL),
	(25,32,NULL),
	(25,34,NULL),
	(25,87,NULL),
	(25,88,NULL),
	(25,89,NULL),
	(25,90,NULL),
	(25,91,NULL),
	(25,92,NULL),
	(25,93,NULL),
	(25,94,NULL),
	(26,31,NULL),
	(26,32,NULL),
	(26,33,NULL),
	(26,53,NULL),
	(26,54,NULL),
	(26,55,NULL),
	(26,56,NULL),
	(26,57,NULL),
	(26,58,NULL);

/*!40000 ALTER TABLE `mall_category_match` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_admin
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_admin`;

CREATE TABLE `master_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_permission` int(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_admin` WRITE;
/*!40000 ALTER TABLE `master_admin` DISABLE KEYS */;

INSERT INTO `master_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_permission`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'admin','admin','admin',1,NULL,NULL,NULL),
	(2,'root','root','root',2,NULL,NULL,NULL),
	(3,'www','www@www.com','www',2,NULL,NULL,NULL);

/*!40000 ALTER TABLE `master_admin` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_brand
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_brand`;

CREATE TABLE `master_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_design` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempostar_brand_id` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempostar_brand_parent_id` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempostar_sort_by` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_brand` WRITE;
/*!40000 ALTER TABLE `master_brand` DISABLE KEYS */;

INSERT INTO `master_brand` (`brand_id`, `brand_name`, `brand_name_en`, `brand_design`, `brand_status`, `brand_image`, `brand_description`, `tempostar_brand_id`, `tempostar_brand_parent_id`, `tempostar_sort_by`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'ADIDAS','ADIDAS','1','0','brand_1530674767.jpg','Adidas Brand',NULL,NULL,NULL,'2018-07-04 11:17:40','2018-07-04 11:42:14',NULL),
	(2,'Apple','Apple','1','0','brand_1530674784.jpg','Apple',NULL,NULL,NULL,'2018-07-04 11:26:14','2018-07-04 11:26:14',NULL),
	(4,'ButterFly','ButterFly','1','0','brand_1530674811.jpg','ButterFly',NULL,NULL,NULL,'2018-07-04 11:26:40','2018-07-04 11:26:40',NULL),
	(5,'CAMEL','CAMEL','1','0','brand_1530674836.jpg','CAMEL',NULL,NULL,NULL,'2018-07-04 11:27:02','2018-07-04 11:27:02',NULL),
	(8,'Google','Google','1','0','brand_1530674918.jpg','Google',NULL,NULL,NULL,'2018-07-04 11:28:26','2018-07-04 11:28:26',NULL),
	(9,'Intel','Intel','1','0','brand_1530674934.jpg','Intel',NULL,NULL,NULL,'2018-07-04 11:28:40','2018-07-04 11:28:40',NULL),
	(11,'Microsoft','Microsoft','1','0','brand_1530674965.jpg','Microsoft',NULL,NULL,NULL,'2018-07-04 11:29:15','2018-07-04 11:29:15',NULL),
	(12,'Nike','Nike','1','0','brand_1530674986.jpg','Nike',NULL,NULL,NULL,'2018-07-04 11:29:35','2018-07-04 11:29:35',NULL),
	(15,'DISNEY','DISNEY','1','0','brand_1530675039.jpg','DISNEY',NULL,NULL,NULL,'2018-07-04 11:30:26','2018-07-04 12:01:04',NULL),
	(16,'BMW','BMW','1','0','brand_1530795443.jpg','BMW',NULL,NULL,NULL,'2018-07-05 08:57:02','2018-07-10 10:41:51',NULL),
	(17,'NISSAN','BMWNISSAN','1','0','brand_1530795468.jpg','NISSAN',NULL,NULL,NULL,'2018-07-05 08:57:26','2018-07-10 10:42:28',NULL),
	(18,'DELL','DELL','1','0','brand_1530795496.jpg','DELL',NULL,NULL,NULL,'2018-07-05 08:58:05','2018-07-10 10:42:58',NULL),
	(19,'Lexus','Lexus','2','0','brand_1530795527.jpg','Lexus',NULL,NULL,NULL,'2018-07-05 08:58:33','2018-07-10 10:43:06',NULL),
	(20,'Samsung','Samsung','2','0','brand_1530795577.jpg','Samsung',NULL,NULL,NULL,'2018-07-05 08:59:19','2018-07-10 10:43:15',NULL),
	(21,'SONY','SONY','1','1','brand_1530795599.jpg','SONY',NULL,NULL,NULL,'2018-07-05 08:59:41','2018-07-10 10:43:22',NULL),
	(22,'TOYOTA','TOYOTA','2','3','brand_1530795622.jpg','TOYOTA',NULL,NULL,NULL,'2018-07-05 09:00:03','2018-07-10 10:43:29',NULL),
	(23,'A','A','0','0','','Tempostarブランド','22100000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(24,'A BATHING APE','A BATHING APE','0','0','','Tempostarブランド','22121800000','22100000000','11','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(25,'A.P.C','A.P.C','0','0','','Tempostarブランド','22120900000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(26,'ACNE','ACNE','0','0','','Tempostarブランド','22120100000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(27,'adidas','adidas','0','0','','Tempostarブランド','22121700000','22100000000','14','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(28,'AHKAH','AHKAH','0','0','','Tempostarブランド','22120200000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(29,'AKM','AKM','0','0','','Tempostarブランド','22120300000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(30,'Alden','Alden','0','0','','Tempostarブランド','22120400000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(31,'Alexander McQueen','Alexander McQueen','0','0','','Tempostarブランド','22120500000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(32,'Alexander McQueen','Alexander McQueen','0','0','','Tempostarブランド','22120520100','22120500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(33,'McQ','McQ','0','0','','Tempostarブランド','22120520200','22120500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(34,'ALEXANDER WANG','ALEXANDER WANG','0','0','','Tempostarブランド','22120600000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(35,'alfredoBANNISTER','alfredoBANNISTER','0','0','','Tempostarブランド','22120700000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(36,'Ann Demeulemeester','Ann Demeulemeester','0','0','','Tempostarブランド','22120800000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(37,'28216','28216','0','0','','Tempostarブランド','22121000000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(38,'ARIZONA FREEDOM','ARIZONA FREEDOM','0','0','','Tempostarブランド','22121100000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(39,'ARMANI','ARMANI','0','0','','Tempostarブランド','22121200000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(40,'アルマーニ','アルマーニ','0','0','','Tempostarブランド','22121220600','22121200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(41,'アルマーニ エクスチェンジ','アルマーニ エクスチェンジ','0','0','','Tempostarブランド','22121220800','22121200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(42,'アルマーニ コレッツォーニ','アルマーニ コレッツォーニ','0','0','','Tempostarブランド','22121220700','22121200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(43,'アルマーニ ジーンズ','アルマーニ ジーンズ','0','0','','Tempostarブランド','22121220500','22121200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(44,'エンポリオ アルマーニ','エンポリオ アルマーニ','0','0','','Tempostarブランド','22121220400','22121200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(45,'ジョルジョ アルマーニ','ジョルジョ アルマーニ','0','0','','Tempostarブランド','22121220300','22121200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(46,'ATM7 [attack the mind 7]','ATM7 [attack the mind 7]','0','0','','Tempostarブランド','22121300000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(47,'ato','ato','0','0','','Tempostarブランド','22121400000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(48,'ATTACHMENT','ATTACHMENT','0','0','','Tempostarブランド','22121500000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(49,'AULA AILA','AULA AILA','0','0','','Tempostarブランド','22121600000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(50,'【A】その他','【A】その他','0','0','','Tempostarブランド','22121900000','22100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(51,'B','B','0','0','','Tempostarブランド','22200000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(52,'BACKBONE','BACKBONE','0','0','','Tempostarブランド','22221800000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(53,'BACKLASH','BACKLASH','0','0','','Tempostarブランド','22221900000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(54,'BALENCIAGA','BALENCIAGA','0','0','','Tempostarブランド','22222000000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(55,'BALMAIN','BALMAIN','0','0','','Tempostarブランド','22222100000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(56,'banal chic bizarre','banal chic bizarre','0','0','','Tempostarブランド','22222200000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(57,'BAND OF OUTSIDERS','BAND OF OUTSIDERS','0','0','','Tempostarブランド','22222300000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(58,'BEDWIN','BEDWIN','0','0','','Tempostarブランド','22222400000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(59,'Bernhard Willhelm','Bernhard Willhelm','0','0','','Tempostarブランド','22222500000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(60,'Bloody Mary','Bloody Mary','0','0','','Tempostarブランド','22222600000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(61,'BOTTEGA VENETA','BOTTEGA VENETA','0','0','','Tempostarブランド','22222700000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(62,'Brioni','Brioni','0','0','','Tempostarブランド','22222800000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(63,'Brooks Brothers','Brooks Brothers','0','0','','Tempostarブランド','22222900000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(64,'BRUNELLO CUCINELLI','BRUNELLO CUCINELLI','0','0','','Tempostarブランド','22223100000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(65,'BURBERRY','BURBERRY','0','0','','Tempostarブランド','22223000000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(66,'バーバリー','バーバリー','0','0','','Tempostarブランド','22223021200','22223000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(67,'バーバリーブラックレーベル','バーバリーブラックレーベル','0','0','','Tempostarブランド','22223021100','22223000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(68,'バーバリーブルーレーベル','バーバリーブルーレーベル','0','0','','Tempostarブランド','22223021000','22223000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(69,'バーバリープローサム','バーバリープローサム','0','0','','Tempostarブランド','22223020900','22223000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(70,'バーバリーロンドン','バーバリーロンドン','0','0','','Tempostarブランド','22223021300','22223000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(71,'Buttero','Buttero','0','0','','Tempostarブランド','22223200000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(72,'BVLGARI','BVLGARI','0','0','','Tempostarブランド','22223300000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(73,'BWL','BWL','0','0','','Tempostarブランド','22223400000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(74,'【B】その他','【B】その他','0','0','','Tempostarブランド','22223500000','22200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(75,'C','C','0','0','','Tempostarブランド','22300000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(76,'CAROL CHRISTIAN POELL','CAROL CHRISTIAN POELL','0','0','','Tempostarブランド','22323700000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(77,'CARPE DIEM','CARPE DIEM','0','0','','Tempostarブランド','22323600000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(78,'Cartier','Cartier','0','0','','Tempostarブランド','22323800000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(79,'CARVEN','CARVEN','0','0','','Tempostarブランド','22323900000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(80,'CELINE','CELINE','0','0','','Tempostarブランド','22324000000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(81,'CHANEL','CHANEL','0','0','','Tempostarブランド','22324100000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(82,'CHEAP MONDAY','CHEAP MONDAY','0','0','','Tempostarブランド','22324200000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(83,'CHLOE','CHLOE','0','0','','Tempostarブランド','22324300000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(84,'Christian Dior','Christian Dior','0','0','','Tempostarブランド','22324400000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(85,'CHRISTIAN LOUBOUTIN','CHRISTIAN LOUBOUTIN','0','0','','Tempostarブランド','22324500000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(86,'CHROME HEARTS','CHROME HEARTS','0','0','','Tempostarブランド','22324600000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(87,'その他','その他','0','0','','Tempostarブランド','22324622500','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(88,'アパレル','アパレル','0','0','','Tempostarブランド','22324622200','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(89,'ウォレットチェーン','ウォレットチェーン','0','0','','Tempostarブランド','22324621900','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(90,'サングラス','サングラス','0','0','','Tempostarブランド','22324622000','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(91,'ネックレス','ネックレス','0','0','','Tempostarブランド','22324621500','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(92,'ネックレストップ','ネックレストップ','0','0','','Tempostarブランド','22324621600','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(93,'バッグ','バッグ','0','0','','Tempostarブランド','22324622300','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(94,'ピアス','ピアス','0','0','','Tempostarブランド','22324621800','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(95,'ブレスレット・バングル','ブレスレット・バングル','0','0','','Tempostarブランド','22324621700','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(96,'ベルト','ベルト','0','0','','Tempostarブランド','22324622400','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(97,'リング','リング','0','0','','Tempostarブランド','22324621400','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(98,'財布','財布','0','0','','Tempostarブランド','22324622100','22324600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(99,'COACH','COACH','0','0','','Tempostarブランド','22324700000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(100,'CODY SANDERSON','CODY SANDERSON','0','0','','Tempostarブランド','22325600000','22300000000','7','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(101,'collection PRIVEE?','collection PRIVEE?','0','0','','Tempostarブランド','22324800000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(102,'COMME des GARCONS','COMME des GARCONS','0','0','','Tempostarブランド','22324900000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(103,'JUNYA WATANABE','JUNYA WATANABE','0','0','','Tempostarブランド','22324924000','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(104,'コムデギャルソン','コムデギャルソン','0','0','','Tempostarブランド','22324922600','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(105,'コムデギャルソンオムオム','コムデギャルソンオムオム','0','0','','Tempostarブランド','20180228030229','22324922600','2','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(106,'コムデギャルソンオム','コムデギャルソンオム','0','0','','Tempostarブランド','22324922900','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(107,'コムデギャルソンオムドゥ','コムデギャルソンオムドゥ','0','0','','Tempostarブランド','22324923100','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(108,'コムデギャルソンオムプリュス','コムデギャルソンオムプリュス','0','0','','Tempostarブランド','22324923000','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(109,'コムデギャルソンオムプリュスエヴァーグリーン','コムデギャルソンオムプリュスエヴァーグリーン','0','0','','Tempostarブランド','22324923300','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(110,'コムデギャルソンガンリュウ','コムデギャルソンガンリュウ','0','0','','Tempostarブランド','22324923200','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(111,'コムデギャルソンコムデギャルソン','コムデギャルソンコムデギャルソン','0','0','','Tempostarブランド','22324922800','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(112,'コムデギャルソンシャツ','コムデギャルソンシャツ','0','0','','Tempostarブランド','22324922700','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(113,'コルソコモコムデギャルソン','コルソコモコムデギャルソン','0','0','','Tempostarブランド','22324923400','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(114,'タオコムデギャルソン','タオコムデギャルソン','0','0','','Tempostarブランド','22324923600','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(115,'トリココムデギャルソン','トリココムデギャルソン','0','0','','Tempostarブランド','22324923700','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(116,'ブラックコムデギャルソン','ブラックコムデギャルソン','0','0','','Tempostarブランド','22324923900','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(117,'プレイコムデギャルソン','プレイコムデギャルソン','0','0','','Tempostarブランド','22324923500','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(118,'ローブドシャンブル コムデギャルソン','ローブドシャンブル コムデギャルソン','0','0','','Tempostarブランド','22324923800','22324900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(119,'CONTEGO[アイウェア]','CONTEGO[アイウェア]','0','0','','Tempostarブランド','22325000000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(120,'COSMIC WONDER','COSMIC WONDER','0','0','','Tempostarブランド','22325100000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(121,'CoSTUME NATIONAL','CoSTUME NATIONAL','0','0','','Tempostarブランド','22325200000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(122,'CRAZY PIG','CRAZY PIG','0','0','','Tempostarブランド','22325300000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(123,'Crockett&Jones','Crockett&Jones','0','0','','Tempostarブランド','22325400000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(124,'【C】その他','【C】その他','0','0','','Tempostarブランド','22325500000','22300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(125,'D','D','0','0','','Tempostarブランド','22400000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(126,'DAMIR DOMA','DAMIR DOMA','0','0','','Tempostarブランド','22425600000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(127,'DELAY by win&sons','DELAY by win&sons','0','0','','Tempostarブランド','22425700000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(128,'DEUXIEME CLASSE','DEUXIEME CLASSE','0','0','','Tempostarブランド','22425800000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(129,'DIANE von FURSTENBERG','DIANE von FURSTENBERG','0','0','','Tempostarブランド','22425900000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(130,'DIESEL','DIESEL','0','0','','Tempostarブランド','22426000000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(131,'DIET BUTCHER SLIM SKIN','DIET BUTCHER SLIM SKIN','0','0','','Tempostarブランド','22426100000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(132,'Dior HOMME','Dior HOMME','0','0','','Tempostarブランド','22426200000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(133,'BOTTOMS','BOTTOMS','0','0','','Tempostarブランド','22426224200','22426200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(134,'GOODS','GOODS','0','0','','Tempostarブランド','22426224400','22426200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(135,'SETUP','SETUP','0','0','','Tempostarブランド','22426224500','22426200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(136,'SHOES','SHOES','0','0','','Tempostarブランド','22426224300','22426200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(137,'TOPS','TOPS','0','0','','Tempostarブランド','22426224100','22426200000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(138,'DISCOVERED','DISCOVERED','0','0','','Tempostarブランド','22426300000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(139,'DITA','DITA','0','0','','Tempostarブランド','22426400000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(140,'DOLCE&GABBANA','DOLCE&GABBANA','0','0','','Tempostarブランド','22426500000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(141,'D&G','D&G','0','0','','Tempostarブランド','22426524700','22426500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(142,'DOLCE&GABBANA','DOLCE&GABBANA','0','0','','Tempostarブランド','22426524600','22426500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(143,'Drawer','Drawer','0','0','','Tempostarブランド','22426600000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(144,'DRESSCAMP','DRESSCAMP','0','0','','Tempostarブランド','22426700000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(145,'DRESTRIP','DRESTRIP','0','0','','Tempostarブランド','22426800000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(146,'Dries Van Noten','Dries Van Noten','0','0','','Tempostarブランド','22426900000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(147,'DRKSHDW','DRKSHDW','0','0','','Tempostarブランド','22427000000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(148,'DSQUARED2','DSQUARED2','0','0','','Tempostarブランド','22427100000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(149,'DUVETICA','DUVETICA','0','0','','Tempostarブランド','22427200000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(150,'【D】その他','【D】その他','0','0','','Tempostarブランド','22427300000','22400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(151,'E','E','0','0','','Tempostarブランド','22500000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(152,'EFFECTOR','EFFECTOR','0','0','','Tempostarブランド','22527400000','22500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(153,'EKAM','EKAM','0','0','','Tempostarブランド','22527500000','22500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(154,'EMILIO PUCCI','EMILIO PUCCI','0','0','','Tempostarブランド','22527600000','22500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(155,'Engineered Garments','Engineered Garments','0','0','','Tempostarブランド','22527810000','22500000000','15','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(156,'ETRO','ETRO','0','0','','Tempostarブランド','22527700000','22500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(157,'【E】その他','【E】その他','0','0','','Tempostarブランド','22527800000','22500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(158,'F','F','0','0','','Tempostarブランド','22600000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(159,'FACETASM','FACETASM','0','0','','Tempostarブランド','22627900000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(160,'FACTOTUM','FACTOTUM','0','0','','Tempostarブランド','22628200000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(161,'FAD3','FAD3','0','0','','Tempostarブランド','22628000000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(162,'Faliero Sarti','Faliero Sarti','0','0','','Tempostarブランド','22628100000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(163,'FEAR OF GOD','FEAR OF GOD','0','0','','Tempostarブランド','22629000000','22600000000','16','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(164,'Felisi','Felisi','0','0','','Tempostarブランド','22628300000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(165,'FENDI','FENDI','0','0','','Tempostarブランド','22628400000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(166,'FOXEY','FOXEY','0','0','','Tempostarブランド','22628500000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(167,'FranCisT_MOR.K.S.','FranCisT_MOR.K.S.','0','0','','Tempostarブランド','22628600000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(168,'FRAPBOIS','FRAPBOIS','0','0','','Tempostarブランド','22628700000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(169,'FREE CITY','FREE CITY','0','0','','Tempostarブランド','22628800000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(170,'【F】その他','【F】その他','0','0','','Tempostarブランド','22628900000','22600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(171,'G','G','0','0','','Tempostarブランド','22700000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(172,'G.V.G.V.','G.V.G.V.','0','0','','Tempostarブランド','22729000000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(173,'GABOR','GABOR','0','0','','Tempostarブランド','22729100000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(174,'GABRIELE PASINI','GABRIELE PASINI','0','0','','Tempostarブランド','22730210000','22700000000','6','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(175,'GalaabenD','GalaabenD','0','0','','Tempostarブランド','22729200000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(176,'Gareth Pugh','Gareth Pugh','0','0','','Tempostarブランド','22729300000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(177,'GARNI','GARNI','0','0','','Tempostarブランド','22729400000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(178,'GIORGIO BRATO','GIORGIO BRATO','0','0','','Tempostarブランド','22729600000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(179,'GIVENCHY','GIVENCHY','0','0','','Tempostarブランド','22729500000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(180,'BAG','BAG','0','0','','Tempostarブランド','22729525000','22729500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(181,'BOTTOMS','BOTTOMS','0','0','','Tempostarブランド','22729524900','22729500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(182,'OTHER','OTHER','0','0','','Tempostarブランド','22729525200','22729500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(183,'SHOES','SHOES','0','0','','Tempostarブランド','22729525100','22729500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(184,'TOPS','TOPS','0','0','','Tempostarブランド','22729524800','22729500000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(185,'GOD SELECTION XXX','GOD SELECTION XXX','0','0','','Tempostarブランド','22730220000','22700000000','19','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(186,'GOLDEN GOOSE','GOLDEN GOOSE','0','0','','Tempostarブランド','22729700000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(187,'good thing','good thing','0','0','','Tempostarブランド','22730300000','22700000000','3','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(188,'goro\'s','goro\'s','0','0','','Tempostarブランド','22729800000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(189,'GOYARD','GOYARD','0','0','','Tempostarブランド','22746800000','22700000000','2','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(190,'GRACE CONTINENTAL','GRACE CONTINENTAL','0','0','','Tempostarブランド','22729900000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(191,'GREEN','GREEN','0','0','','Tempostarブランド','22730000000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(192,'GUCCI','GUCCI','0','0','','Tempostarブランド','22730100000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(193,'【G】その他','【G】その他','0','0','','Tempostarブランド','22730200000','22700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(194,'H','H','0','0','','Tempostarブランド','22800000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(195,'HALFMAN','HALFMAN','0','0','','Tempostarブランド','22830300000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(196,'Hanae Mori','Hanae Mori','0','0','','Tempostarブランド','22830500000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(197,'HARE','HARE','0','0','','Tempostarブランド','22830400000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(198,'HELMUT LANG','HELMUT LANG','0','0','','Tempostarブランド','22830600000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(199,'HERMES','HERMES','0','0','','Tempostarブランド','22830700000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(200,'HIROMU TAKAHARA','HIROMU TAKAHARA','0','0','','Tempostarブランド','22830800000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(201,'HOOD BY AIR','HOOD BY AIR','0','0','','Tempostarブランド','22830900000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(202,'HTC','HTC','0','0','','Tempostarブランド','22831000000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(203,'HYSTERIC GLAMOUR','HYSTERIC GLAMOUR','0','0','','Tempostarブランド','22831100000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(204,'【H】その他','【H】その他','0','0','','Tempostarブランド','22831200000','22800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(205,'I','I','0','0','','Tempostarブランド','22900000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(206,'IF SIX WAS NINE','IF SIX WAS NINE','0','0','','Tempostarブランド','22931300000','22900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(207,'Inpaichthys Kerri','Inpaichthys Kerri','0','0','','Tempostarブランド','22931400000','22900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(208,'ISABEL MARANT','ISABEL MARANT','0','0','','Tempostarブランド','22931500000','22900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(209,'ISSEY MIYAKE','ISSEY MIYAKE','0','0','','Tempostarブランド','22931600000','22900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(210,'【I】その他','【I】その他','0','0','','Tempostarブランド','22931700000','22900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(211,'J','J','0','0','','Tempostarブランド','23000000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(212,'JAM HOME MADE','JAM HOME MADE','0','0','','Tempostarブランド','23031800000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(213,'Jeffrey Campbell','Jeffrey Campbell','0','0','','Tempostarブランド','23031900000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(214,'JEREMY SCOTT','JEREMY SCOTT','0','0','','Tempostarブランド','23032000000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(215,'JIL SANDER','JIL SANDER','0','0','','Tempostarブランド','23032100000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(216,'JILLSTUART','JILLSTUART','0','0','','Tempostarブランド','23032300000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(217,'JIMMY CHOO','JIMMY CHOO','0','0','','Tempostarブランド','23032200000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(218,'John Galliano','John Galliano','0','0','','Tempostarブランド','23032700000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(219,'JOHN LAWRENCE SULLIVAN','JOHN LAWRENCE SULLIVAN','0','0','','Tempostarブランド','23032800000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(220,'JOINTRUST','JOINTRUST','0','0','','Tempostarブランド','23032900000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(221,'JOYRICH','JOYRICH','0','0','','Tempostarブランド','23033000000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(222,'JULIUS','JULIUS','0','0','','Tempostarブランド','23032400000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(223,'junhashimoto','junhashimoto','0','0','','Tempostarブランド','23032500000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(224,'JUNYA WATANABE','JUNYA WATANABE','0','0','','Tempostarブランド','23033100000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(225,'Justin Davis','Justin Davis','0','0','','Tempostarブランド','23032600000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(226,'【J】その他','【J】その他','0','0','','Tempostarブランド','23033200000','23000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(227,'K','K','0','0','','Tempostarブランド','23100000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(228,'KAPITAL','KAPITAL','0','0','','Tempostarブランド','23133400000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(229,'KAREN WALKER','KAREN WALKER','0','0','','Tempostarブランド','23133300000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(230,'KENZO','KENZO','0','0','','Tempostarブランド','23133500000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(231,'KITSUNE','KITSUNE','0','0','','Tempostarブランド','23133600000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(232,'KMRII','KMRII','0','0','','Tempostarブランド','23133700000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(233,'KOLOR','KOLOR','0','0','','Tempostarブランド','23133800000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(234,'KRIS VAN ASSCHE','KRIS VAN ASSCHE','0','0','','Tempostarブランド','23133900000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(235,'KSUBI（TSUBI）','KSUBI（TSUBI）','0','0','','Tempostarブランド','23134000000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(236,'KTZ','KTZ','0','0','','Tempostarブランド','23134100000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(237,'【K】その他','【K】その他','0','0','','Tempostarブランド','23134200000','23100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(238,'L','L','0','0','','Tempostarブランド','23200000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(239,'LAD MUSICIAN','LAD MUSICIAN','0','0','','Tempostarブランド','23234400000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(240,'LANVIN','LANVIN','0','0','','Tempostarブランド','23234300000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(241,'LE CIEL BLEU','LE CIEL BLEU','0','0','','Tempostarブランド','23234500000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(242,'LEVI\'S','LEVI\'S','0','0','','Tempostarブランド','23234600000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(243,'LGB','LGB','0','0','','Tempostarブランド','23234700000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(244,'LIMI feu','LIMI feu','0','0','','Tempostarブランド','23235300000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(245,'LITHIUM HOMME','LITHIUM HOMME','0','0','','Tempostarブランド','23234800000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(246,'LONEONES','LONEONES','0','0','','Tempostarブランド','23235100000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(247,'LOUIS VUITTON','LOUIS VUITTON','0','0','','Tempostarブランド','23234900000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(248,'LOUNGELIZARD','LOUNGELIZARD','0','0','','Tempostarブランド','23235000000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(249,'LucienPellatFinet','LucienPellatFinet','0','0','','Tempostarブランド','23235200000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(250,'【L】その他','【L】その他','0','0','','Tempostarブランド','23235400000','23200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(251,'M','M','0','0','','Tempostarブランド','23300000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(252,'Maison Martin Margiela','Maison Martin Margiela','0','0','','Tempostarブランド','23335500000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(253,'MANOLOBLAHNIK','MANOLOBLAHNIK','0','0','','Tempostarブランド','23335600000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(254,'MARC JACOBS','MARC JACOBS','0','0','','Tempostarブランド','23335800000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(255,'MARCELO BURLON','MARCELO BURLON','0','0','','Tempostarブランド','23335700000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(256,'MARNI','MARNI','0','0','','Tempostarブランド','23335900000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(257,'mastermind','mastermind','0','0','','Tempostarブランド','23336000000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(258,'Max Mara','Max Mara','0','0','','Tempostarブランド','23336100000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(259,'maxsix','maxsix','0','0','','Tempostarブランド','23336200000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(260,'MCM','MCM','0','0','','Tempostarブランド','23336300000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(261,'MIHARA YASUHIRO','MIHARA YASUHIRO','0','0','','Tempostarブランド','23336400000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(262,'miumiu','miumiu','0','0','','Tempostarブランド','23336500000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(263,'MONCLER','MONCLER','0','0','','Tempostarブランド','23336600000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(264,'MSGM','MSGM','0','0','','Tempostarブランド','23336710000','23300000000','9','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(265,'【M】その他','【M】その他','0','0','','Tempostarブランド','23336700000','23300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(266,'N','N','0','0','','Tempostarブランド','23400000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(267,'N.HOOLYWOOD','N.HOOLYWOOD','0','0','','Tempostarブランド','23436800000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(268,'アウター','アウター','0','0','','Tempostarブランド','23436825300','23436800000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(269,'シューズ','シューズ','0','0','','Tempostarブランド','23436825700','23436800000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(270,'トップス','トップス','0','0','','Tempostarブランド','23436825400','23436800000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(271,'ボトムス','ボトムス','0','0','','Tempostarブランド','23436825500','23436800000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(272,'小物','小物','0','0','','Tempostarブランド','23436825600','23436800000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(273,'NEIGHBORHOOD','NEIGHBORHOOD','0','0','','Tempostarブランド','23436900000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(274,'NEIL BARRETT','NEIL BARRETT','0','0','','Tempostarブランド','23437000000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(275,'New Balance','New Balance','0','0','','Tempostarブランド','23437100000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(276,'NIKE','NIKE','0','0','','Tempostarブランド','23437200000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(277,'NOZOMI ISHIGURO','NOZOMI ISHIGURO','0','0','','Tempostarブランド','23437300000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(278,'Nudie Jeans','Nudie Jeans','0','0','','Tempostarブランド','23437400000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(279,'NUMBER(N)INE','NUMBER(N)INE','0','0','','Tempostarブランド','23437500000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(280,'N゜21','N゜21','0','0','','Tempostarブランド','23437610000','23400000000','12','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(281,'【N】その他','【N】その他','0','0','','Tempostarブランド','23437600000','23400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(282,'O','O','0','0','','Tempostarブランド','23500000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(283,'OFF-WHITE','OFF-WHITE','0','0','','Tempostarブランド','23537700000','23500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(284,'OLIVER PEOPLES','OLIVER PEOPLES','0','0','','Tempostarブランド','23537800000','23500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(285,'OROBIANCO','OROBIANCO','0','0','','Tempostarブランド','23537900000','23500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(286,'【O】その他','【O】その他','0','0','','Tempostarブランド','23538000000','23500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(287,'OTHER','OTHER','0','0','','Tempostarブランド','24700000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(288,'1 piu 1 uguale 3/ウノピュウノ　ウグァーレトレ','1 piu 1 uguale 3/ウノピュウノ　ウグァーレトレ','0','0','','Tempostarブランド','24746300000','24700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(289,'14th Addiction','14th Addiction','0','0','','Tempostarブランド','24746400000','24700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(290,'3.1 Phillip Lim','3.1 Phillip Lim','0','0','','Tempostarブランド','24746500000','24700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(291,'5351 POUR LES HOMMES','5351 POUR LES HOMMES','0','0','','Tempostarブランド','24746600000','24700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(292,'【OTHER】その他','【OTHER】その他','0','0','','Tempostarブランド','24746700000','24700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(293,'P','P','0','0','','Tempostarブランド','23600000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(294,'PAOLA FRANI','PAOLA FRANI','0','0','','Tempostarブランド','23638810000','23600000000','10','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(295,'Patagonia','Patagonia','0','0','','Tempostarブランド','23638100000','23600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(296,'Paul Smith','Paul Smith','0','0','','Tempostarブランド','23638200000','23600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(297,'PHENOMENON','PHENOMENON','0','0','','Tempostarブランド','23638300000','23600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(298,'PIGALLE','PIGALLE','0','0','','Tempostarブランド','23638400000','23600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(299,'Pledge','Pledge','0','0','','Tempostarブランド','23638500000','23600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(300,'PORTER','PORTER','0','0','','Tempostarブランド','23638600000','23600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(301,'Porter Classic','Porter Classic','0','0','','Tempostarブランド','23638820000','23600000000','18','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(302,'PRADA','PRADA','0','0','','Tempostarブランド','23638700000','23600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(303,'BAG','BAG','0','0','','Tempostarブランド','23638726000','23638700000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(304,'BOTTOMS','BOTTOMS','0','0','','Tempostarブランド','23638725900','23638700000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(305,'OTHER','OTHER','0','0','','Tempostarブランド','23638726200','23638700000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(306,'SHOES','SHOES','0','0','','Tempostarブランド','23638726100','23638700000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(307,'TOPS','TOPS','0','0','','Tempostarブランド','23638725800','23638700000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(308,'【P】その他','【P】その他','0','0','','Tempostarブランド','23638800000','23600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(309,'Q','Q','0','0','','Tempostarブランド','23700000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(310,'Q-POT','Q-POT','0','0','','Tempostarブランド','23738900000','23700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(311,'【Q】その他','【Q】その他','0','0','','Tempostarブランド','23739000000','23700000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(312,'R','R','0','0','','Tempostarブランド','23800000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(313,'RAF SIMONS','RAF SIMONS','0','0','','Tempostarブランド','23839100000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(314,'Ralph Lauren','Ralph Lauren','0','0','','Tempostarブランド','23839200000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(315,'Rayban','Rayban','0','0','','Tempostarブランド','23839300000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(316,'RED WING','RED WING','0','0','','Tempostarブランド','23839400000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(317,'REMI RELIEF','REMI RELIEF','0','0','','Tempostarブランド','23839500000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(318,'Rick Owens','Rick Owens','0','0','','Tempostarブランド','23839600000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(319,'RICO','RICO','0','0','','Tempostarブランド','23839700000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(320,'roar','roar','0','0','','Tempostarブランド','23839800000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(321,'Roen','Roen','0','0','','Tempostarブランド','23839900000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(322,'By Roen','By Roen','0','0','','Tempostarブランド','23839926500','23839900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(323,'Rat Roen','Rat Roen','0','0','','Tempostarブランド','23839926400','23839900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(324,'Roen','Roen','0','0','','Tempostarブランド','23839926300','23839900000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(325,'Ron Herman','Ron Herman','0','0','','Tempostarブランド','23840000000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(326,'ROYAL ORDER','ROYAL ORDER','0','0','','Tempostarブランド','23840100000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(327,'RRL','RRL','0','0','','Tempostarブランド','23840200000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(328,'RUDEGALLERY','RUDEGALLERY','0','0','','Tempostarブランド','23840300000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(329,'【R】その他','【R】その他','0','0','','Tempostarブランド','23840400000','23800000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(330,'S','S','0','0','','Tempostarブランド','23900000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(331,'sacai','sacai','0','0','','Tempostarブランド','23940500000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(332,'Salvatore Ferragamo','Salvatore Ferragamo','0','0','','Tempostarブランド','23940600000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(333,'SandBlaster','SandBlaster','0','0','','Tempostarブランド','23941710000','23900000000','4','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(334,'SASSAFRAS','SASSAFRAS','0','0','','Tempostarブランド','23941720000','23900000000','5','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(335,'Sergio Rossi','Sergio Rossi','0','0','','Tempostarブランド','23940700000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(336,'SHARESPIRIT','SHARESPIRIT','0','0','','Tempostarブランド','23940800000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(337,'SHELLAC','SHELLAC','0','0','','Tempostarブランド','23940900000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(338,'soe','soe','0','0','','Tempostarブランド','23941000000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(339,'SOPHNET','SOPHNET','0','0','','Tempostarブランド','23941100000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(340,'Stella McCartney','Stella McCartney','0','0','','Tempostarブランド','23941200000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(341,'sunaokuwahara','sunaokuwahara','0','0','','Tempostarブランド','23941300000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(342,'SUPERFINE','SUPERFINE','0','0','','Tempostarブランド','23941400000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(343,'SUPREME','SUPREME','0','0','','Tempostarブランド','23941500000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(344,'SWAGGER','SWAGGER','0','0','','Tempostarブランド','23941600000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(345,'【S】その他','【S】その他','0','0','','Tempostarブランド','23941700000','23900000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(346,'T','T','0','0','','Tempostarブランド','24000000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(347,'TADY&KING','TADY&KING','0','0','','Tempostarブランド','24041800000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(348,'TAKAHIROMIYASHITA TheSoloIst','TAKAHIROMIYASHITA TheSoloIst','0','0','','Tempostarブランド','24041900000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(349,'TENDERLOIN','TENDERLOIN','0','0','','Tempostarブランド','24042000000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(350,'THE FLAT HEAD','THE FLAT HEAD','0','0','','Tempostarブランド','24042200000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(351,'THE NORTH FACE','THE NORTH FACE','0','0','','Tempostarブランド','24042100000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(352,'The Viridi-anne','The Viridi-anne','0','0','','Tempostarブランド','24042400000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(353,'Theory','Theory','0','0','','Tempostarブランド','24042300000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(354,'THOMAS WYLDE','THOMAS WYLDE','0','0','','Tempostarブランド','24042700000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(355,'THOMBROWNE','THOMBROWNE','0','0','','Tempostarブランド','24042800000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(356,'Tiffany & Co.','Tiffany & Co.','0','0','','Tempostarブランド','24042500000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(357,'TMT','TMT','0','0','','Tempostarブランド','24042600000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(358,'ToddSnyder','ToddSnyder','0','0','','Tempostarブランド','24043310000','24000000000','13','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(359,'TOGA','TOGA','0','0','','Tempostarブランド','24042900000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(360,'TOM FORD','TOM FORD','0','0','','Tempostarブランド','24043000000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(361,'TORY BURCH','TORY BURCH','0','0','','Tempostarブランド','24043100000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(362,'tsumori chisato','tsumori chisato','0','0','','Tempostarブランド','24043200000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(363,'【T】その他','【T】その他','0','0','','Tempostarブランド','24043300000','24000000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(364,'U','U','0','0','','Tempostarブランド','24100000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(365,'UGG','UGG','0','0','','Tempostarブランド','24143400000','24100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(366,'UNDERCOVER','UNDERCOVER','0','0','','Tempostarブランド','24143500000','24100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(367,'UNITED ARROWS','UNITED ARROWS','0','0','','Tempostarブランド','24143600000','24100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(368,'UNUSED','UNUSED','0','0','','Tempostarブランド','24143700000','24100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(369,'【U】その他','【U】その他','0','0','','Tempostarブランド','24143800000','24100000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(370,'V','V','0','0','','Tempostarブランド','24200000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(371,'VADEL','VADEL','0','0','','Tempostarブランド','24243900000','24200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(372,'VALENTINO','VALENTINO','0','0','','Tempostarブランド','24244000000','24200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(373,'VETEMENTS','VETEMENTS','0','0','','Tempostarブランド','24244510000','24200000000','8','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(374,'VIKTOR&ROLF','VIKTOR&ROLF','0','0','','Tempostarブランド','24244100000','24200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(375,'VINTI ANDREWS','VINTI ANDREWS','0','0','','Tempostarブランド','24244200000','24200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(376,'VISVIM','VISVIM','0','0','','Tempostarブランド','24244300000','24200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(377,'vivienne westwood','vivienne westwood','0','0','','Tempostarブランド','24244400000','24200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(378,'【V】その他','【V】その他','0','0','','Tempostarブランド','24244500000','24200000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(379,'W','W','0','0','','Tempostarブランド','24300000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(380,'WACKO MARIA','WACKO MARIA','0','0','','Tempostarブランド','24344600000','24300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(381,'WhiteMountaineering','WhiteMountaineering','0','0','','Tempostarブランド','24344700000','24300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(382,'wjk','wjk','0','0','','Tempostarブランド','24344800000','24300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(383,'WOLF\'S HEAD','WOLF\'S HEAD','0','0','','Tempostarブランド','24344900000','24300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(384,'Wrangler','Wrangler','0','0','','Tempostarブランド','24345000000','24300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(385,'WTAPS','WTAPS','0','0','','Tempostarブランド','24345100000','24300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(386,'【W】その他','【W】その他','0','0','','Tempostarブランド','24345200000','24300000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(387,'X','X','0','0','','Tempostarブランド','24400000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(388,'【X】その他','【X】その他','0','0','','Tempostarブランド','24445300000','24400000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(389,'Y','Y','0','0','','Tempostarブランド','24500000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(390,'YAECA','YAECA','0','0','','Tempostarブランド','24545400000','24500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(391,'YEEZY','YEEZY','0','0','','Tempostarブランド','24545910000','24500000000','17','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(392,'YLANG YLANG','YLANG YLANG','0','0','','Tempostarブランド','24545500000','24500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(393,'Yohji Yamamoto','Yohji Yamamoto','0','0','','Tempostarブランド','24545600000','24500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(394,'Y-3','Y-3','0','0','','Tempostarブランド','24545626800','24545600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(395,'Yohji Yamamoto','Yohji Yamamoto','0','0','','Tempostarブランド','24545626600','24545600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(396,'Ys','Ys','0','0','','Tempostarブランド','24545626700','24545600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(397,'Ysformen','Ysformen','0','0','','Tempostarブランド','24545626900','24545600000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(398,'yoshio kubo','yoshio kubo','0','0','','Tempostarブランド','24545700000','24500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(399,'YVES SAINT LAURENT','YVES SAINT LAURENT','0','0','','Tempostarブランド','24545800000','24500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(400,'SAINT LAURENT PARIS','SAINT LAURENT PARIS','0','0','','Tempostarブランド','24545827200','24545800000','2','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(401,'BOTTOMS','BOTTOMS','0','0','','Tempostarブランド','24545827222','24545827200','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(402,'OTHER','OTHER','0','0','','Tempostarブランド','24545827224','24545827200','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(403,'SHOES','SHOES','0','0','','Tempostarブランド','24545827223','24545827200','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(404,'TOPS','TOPS','0','0','','Tempostarブランド','24545827221','24545827200','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(405,'YVES SAINT LAURENT','YVES SAINT LAURENT','0','0','','Tempostarブランド','24545827000','24545800000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(406,'YVES SAINT LAURENT RIVE GAUCHE','YVES SAINT LAURENT RIVE GAUCHE','0','0','','Tempostarブランド','24545827100','24545800000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(407,'【Y】その他','【Y】その他','0','0','','Tempostarブランド','24545900000','24500000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(408,'Z','Z','0','0','','Tempostarブランド','24600000000','0','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(409,'ZAC VARGAS','ZAC VARGAS','0','0','','Tempostarブランド','24646000000','24600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(410,'zucca','zucca','0','0','','Tempostarブランド','24646100000','24600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(411,'【Z】その他','【Z】その他','0','0','','Tempostarブランド','24646200000','24600000000','1','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(412,'移動','移動','0','0','','Tempostarブランド','99999999999','','3','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL),
	(413,'移動1','移動1','0','0','','Tempostarブランド','99999999991','99999999999','2','2018-07-10 11:21:27','2018-07-10 11:21:27',NULL);

/*!40000 ALTER TABLE `master_brand` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_category`;

CREATE TABLE `master_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(11) DEFAULT NULL,
  `category_size_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_category` WRITE;
/*!40000 ALTER TABLE `master_category` DISABLE KEYS */;

INSERT INTO `master_category` (`category_id`, `category_parent_id`, `category_size_id`, `category_name`, `category_name_en`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,0,NULL,'メンズ','MENS','2018-07-06 04:09:13','2018-07-06 04:09:13',NULL),
	(2,0,NULL,'レディース','LADIES','2018-07-06 04:12:59','2018-07-06 04:12:59',NULL),
	(3,1,1,'H.外','H.OUTER','2018-07-06 04:13:29','2018-07-06 04:13:29',NULL),
	(4,1,1,'L.外','L.OUTER','2018-07-06 04:15:29','2018-07-06 04:15:29',NULL),
	(5,1,1,'シャツ','SHIRT','2018-07-06 04:15:53','2018-07-06 04:15:53',NULL),
	(6,1,1,'ニット/カージガン','KNIT/CARDIGAN','2018-07-06 04:16:12','2018-07-06 04:16:12',NULL),
	(7,1,1,'カット＆セーン','CUT&SEWN','2018-07-06 04:16:24','2018-07-06 04:16:24',NULL),
	(8,1,1,'パーカー/スウェット','PARKA/SWEAT','2018-07-06 04:16:52','2018-07-06 04:16:52',NULL),
	(9,1,5,'セットアップ','SETUP','2018-07-06 04:17:11','2018-07-06 04:17:11',NULL),
	(10,1,1,'パンツ/スカート','PANTS/SKIRT','2018-07-06 04:17:35','2018-07-06 04:17:35',NULL),
	(11,1,5,'バッグ','BAG','2018-07-06 04:17:51','2018-07-06 04:17:51',NULL),
	(12,1,5,'アクセサリー','ACCESSORY','2018-07-06 04:18:03','2018-07-06 04:18:03',NULL),
	(13,1,5,'品','GOODS','2018-07-06 04:18:17','2018-07-06 04:18:17',NULL),
	(14,1,1,'スニーカー','SNEAKER','2018-07-06 04:18:31','2018-07-06 04:18:31',NULL),
	(15,1,2,'サンダル','SANDAL','2018-07-06 04:19:13','2018-07-06 04:19:13',NULL),
	(16,1,2,'ブーツ','BOOTS','2018-07-06 04:19:25','2018-07-06 04:19:25',NULL),
	(17,1,2,'その他の靴','OTHER SHOES','2018-07-06 04:19:37','2018-07-06 04:19:37',NULL),
	(18,1,5,'宝石','JEWELRY','2018-07-06 04:19:47','2018-07-06 04:19:47',NULL),
	(19,1,4,'毛皮','FUR','2018-07-06 04:21:08','2018-07-06 04:21:08',NULL),
	(20,3,NULL,'H.ﾀﾞｳﾝｼﾞｬｹｯﾄ','H. Down jacket','2018-07-06 04:25:09','2018-07-06 04:25:09',NULL),
	(21,3,NULL,'H.ｺｰﾄ','H. Coat','2018-07-06 04:26:52','2018-07-06 04:26:52',NULL),
	(22,3,NULL,'H.ﾚｻﾞｰｼﾞｬｹｯﾄ','H. Leather jacket','2018-07-06 04:27:03','2018-07-06 04:27:03',NULL),
	(23,3,NULL,'H.ﾌﾞﾙｿﾞﾝ','H. Blouson','2018-07-06 04:27:09','2018-07-06 04:27:09',NULL),
	(24,3,NULL,'H.ﾀﾞｳﾝﾍﾞｽﾄ','H. Down vest','2018-07-06 04:27:25','2018-07-06 04:27:25',NULL),
	(25,3,NULL,'H.ｼﾞｬｹｯﾄ','H. Jacket','2018-07-06 04:27:37','2018-07-06 04:27:37',NULL),
	(26,4,NULL,'L.ﾃﾞﾆﾑｼﾞｬｹｯﾄ','L. Denim jacket','2018-07-06 04:28:18','2018-07-06 04:28:18',NULL),
	(27,4,NULL,'L.ｺｰﾄ','L. Coat','2018-07-06 04:28:33','2018-07-06 04:28:33',NULL),
	(28,4,NULL,'L.ﾚｻﾞｰｼﾞｬｹｯﾄ','L. Leather jacket','2018-07-06 04:28:39','2018-07-06 04:28:39',NULL),
	(29,4,NULL,'L.ﾌﾞﾙｿﾞﾝ','L. Blouson','2018-07-06 04:28:45','2018-07-06 04:28:45',NULL),
	(30,4,NULL,'L.ｼﾞｬｹｯﾄ','L. Jacket','2018-07-06 04:29:08','2018-07-06 04:29:08',NULL),
	(31,5,NULL,'ﾅｶﾞｿﾃﾞｼｬﾂ','Long Sleeve Shirt','2018-07-06 04:30:24','2018-07-06 04:30:24',NULL),
	(32,5,NULL,'ﾊﾝｿﾃﾞｼｬﾂ','Short Sleeve Shirt','2018-07-06 04:30:33','2018-07-06 04:30:33',NULL),
	(33,5,NULL,'ﾉｰｽﾘｰﾌﾞｼｬﾂ','Sleeveless Shirt','2018-07-06 04:30:39','2018-07-06 04:30:39',NULL),
	(34,6,NULL,'ｶｰﾃﾞｨｶﾞﾝ','Cardigan','2018-07-06 04:31:02','2018-07-06 04:31:02',NULL),
	(35,6,NULL,'ﾆｯﾄ','Knit','2018-07-06 04:31:16','2018-07-06 04:31:16',NULL),
	(36,7,NULL,'ﾊﾝｿﾃﾞﾎﾟﾛｼｬﾂ','Short Sleeve Polo Shirt','2018-07-06 04:32:26','2018-07-06 04:32:26',NULL),
	(37,7,NULL,'ﾅｶﾞｿﾃﾞｶｯﾄｿｰ','Long Sleeve Cut','2018-07-06 04:32:48','2018-07-06 04:32:48',NULL),
	(38,7,NULL,'Tｼｬﾂ','T-shirt','2018-07-06 04:32:54','2018-07-06 04:32:54',NULL),
	(39,7,NULL,'ﾀﾝｸﾄｯﾌﾟ/ﾉｰｽﾘｰﾌﾞｶｯﾄｿｰ','Tank top / Sleeveless cut','2018-07-06 04:33:07','2018-07-06 04:33:07',NULL),
	(40,7,NULL,'ｷｬﾐｿｰﾙ','Camisole','2018-07-06 04:33:14','2018-07-06 04:33:14',NULL),
	(41,7,NULL,'ﾜﾝﾋﾟｰｽ/ﾁｭﾆｯｸ/ﾌﾞﾗｳｽ','One Piece: Tunic / Blouse','2018-07-06 04:33:23','2018-07-06 04:33:23',NULL),
	(42,7,NULL,'ﾍﾞｽﾄ/ｼﾞﾚ','Best / Gillet','2018-07-06 04:33:39','2018-07-06 04:33:39',NULL),
	(43,7,NULL,'ｿﾉﾀﾄｯﾌﾟｽ','Other tops','2018-07-06 04:33:48','2018-07-06 04:33:48',NULL),
	(44,8,NULL,'ﾊﾟｰｶｰ','Parker','2018-07-06 04:34:04','2018-07-06 04:34:04',NULL),
	(45,8,NULL,'ｽｳｪｯﾄ','Sweat','2018-07-06 04:35:00','2018-07-06 04:35:00',NULL),
	(46,9,NULL,'ｽｰﾂ','Suit','2018-07-06 04:35:10','2018-07-06 04:35:10',NULL),
	(47,9,NULL,'ｿﾉﾀｾｯﾄｱｯﾌﾟ','Other setup','2018-07-06 04:35:17','2018-07-06 04:35:17',NULL),
	(48,10,NULL,'ﾛﾝｸﾞﾊﾟﾝﾂ','Long pants','2018-07-06 04:35:27','2018-07-06 04:35:27',NULL),
	(49,10,NULL,'ﾊｰﾌﾊﾟﾝﾂ/ｼｮｰﾄﾊﾟﾝﾂ/ｼｮｰﾂ','Half pants / shorts / shorts','2018-07-06 04:35:34','2018-07-06 04:35:34',NULL),
	(50,10,NULL,'ﾃﾞﾆﾑﾊﾟﾝﾂ','Denim trousers','2018-07-06 04:35:41','2018-07-06 04:35:41',NULL),
	(51,10,NULL,'ｽｶｰﾄ','Skirt','2018-07-06 04:35:48','2018-07-06 04:35:48',NULL),
	(52,10,NULL,'ｿﾉﾀﾎﾞﾄﾑｽ','Other bottoms','2018-07-06 04:35:56','2018-07-06 04:35:56',NULL),
	(53,11,NULL,'ﾄｰﾄﾊﾞｯｸﾞ','Tote bag','2018-07-06 04:37:20','2018-07-06 04:37:20',NULL),
	(54,11,NULL,'ﾊﾝﾄﾞﾊﾞｯｸﾞ','Handbag','2018-07-06 04:37:28','2018-07-06 04:37:28',NULL),
	(55,11,NULL,'ｼｮﾙﾀﾞｰﾊﾞｯｸﾞ','Shoulder bag','2018-07-06 04:37:34','2018-07-06 04:37:34',NULL),
	(56,11,NULL,'ﾎﾞｽﾄﾝﾊﾞｯｸﾞ','Boston bag','2018-07-06 04:37:44','2018-07-06 04:37:44',NULL),
	(57,11,NULL,'ｳｴｽﾄﾊﾞｯｸﾞ/ﾎﾞﾃﾞｨｰﾊﾞｯｸﾞ','Waist Bag / Body Bag','2018-07-06 04:37:51','2018-07-06 04:37:51',NULL),
	(58,11,NULL,'ﾌﾞﾘｰﾌﾊﾞｯｸﾞ','Brief bag','2018-07-06 04:37:57','2018-07-06 04:37:57',NULL),
	(59,11,NULL,'ﾎﾟｰﾁ','Pouch','2018-07-06 04:38:04','2018-07-06 04:38:04',NULL),
	(60,11,NULL,'ﾘｭｯｸ/ﾊﾞｯｸﾊﾟｯｸ','Backpack / Backpack','2018-07-06 04:38:11','2018-07-06 04:38:11',NULL),
	(61,11,NULL,'ｸﾗｯﾁﾊﾞｯｸﾞ','Clutch bag','2018-07-06 04:38:28','2018-07-06 04:38:28',NULL),
	(62,11,NULL,'ｿﾉﾀﾊﾞｯｸﾞ','Other bags','2018-07-06 04:38:35','2018-07-06 04:38:35',NULL),
	(63,12,NULL,'ﾘﾝｸﾞ','Ring','2018-07-06 04:38:54','2018-07-06 04:38:54',NULL),
	(64,12,NULL,'ﾈｯｸﾚｽ','Necklace','2018-07-06 04:39:03','2018-07-06 04:39:03',NULL),
	(65,12,NULL,'ﾈｯｸﾚｽﾄｯﾌﾟ','Necklace top','2018-07-06 04:39:09','2018-07-06 04:39:09',NULL),
	(66,12,NULL,'ﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ','Bracelet / Bangle','2018-07-06 04:39:15','2018-07-06 04:39:15',NULL),
	(67,12,NULL,'ｳｫﾚｯﾄﾁｪｰﾝ','Wallet Chain','2018-07-06 04:39:23','2018-07-06 04:39:23',NULL),
	(68,12,NULL,'ﾋﾟｱｽ/ｲﾔﾘﾝｸﾞ','Earrings','2018-07-06 04:39:28','2018-07-06 04:39:28',NULL),
	(69,13,NULL,'ﾎﾞｳｼ','Hat','2018-07-06 04:40:06','2018-07-06 04:40:06',NULL),
	(70,13,NULL,'ﾍﾞﾙﾄ','Belt','2018-07-06 04:40:21','2018-07-06 04:40:21',NULL),
	(71,13,NULL,'ｻｲﾌ','Wallet','2018-07-06 04:40:26','2018-07-06 04:40:26',NULL),
	(72,13,NULL,'ｺｲﾝｹｰｽ','Coin purse','2018-07-06 04:40:32','2018-07-06 04:40:32',NULL),
	(73,13,NULL,'ｻﾝｸﾞﾗｽ/ﾒｶﾞﾈ','Sunglasses / glasses','2018-07-06 04:40:40','2018-07-06 04:40:40',NULL),
	(74,13,NULL,'ｽﾄｰﾙ','Stall','2018-07-06 04:40:47','2018-07-06 04:40:47',NULL),
	(75,13,NULL,'ﾏﾌﾗｰ','Scarf','2018-07-06 04:40:53','2018-07-06 04:40:53',NULL),
	(76,13,NULL,'ﾈｸﾀｲ','Tie','2018-07-06 04:41:01','2018-07-06 04:41:01',NULL),
	(77,13,NULL,'ｳﾃﾞﾄﾞｴｲ','Watches','2018-07-06 04:41:08','2018-07-06 04:41:08',NULL),
	(78,13,NULL,'ｶｰﾄﾞｹｰｽ','Card case','2018-07-06 04:41:15','2018-07-06 04:41:15',NULL),
	(79,13,NULL,'ﾃﾌﾞｸﾛ/ｸﾞﾛｰﾌﾞ','Gloves / Gloves','2018-07-06 04:41:22','2018-07-06 04:41:22',NULL),
	(80,13,NULL,'ｽｶｰﾌ','Scarf','2018-07-06 04:41:28','2018-07-06 04:41:28',NULL),
	(81,13,NULL,'ｿﾉﾀｺﾓﾉ','Other accessories','2018-07-06 04:41:35','2018-07-06 04:41:35',NULL),
	(82,14,NULL,'ｽﾆｰｶｰ','Sneakers','2018-07-06 04:42:15','2018-07-06 04:42:15',NULL),
	(83,15,NULL,'ｻﾝﾀﾞﾙ','Sandals','2018-07-06 04:42:31','2018-07-06 04:42:31',NULL),
	(84,15,NULL,'ﾊﾟﾝﾌﾟｽ/ﾐｭｰﾙ','Pumps / Mule','2018-07-06 04:42:40','2018-07-06 04:42:40',NULL),
	(85,16,NULL,'ﾌﾞｰﾂ','Boots','2018-07-06 04:42:53','2018-07-06 04:42:53',NULL),
	(86,17,NULL,'ｼｭｰｽﾞ(ｿﾉﾀ)','Shoes (Others)','2018-07-06 04:43:09','2018-07-06 04:43:09',NULL),
	(87,18,NULL,'ﾎｳｼｮｸﾘﾝｸﾞ','Jewelry ring','2018-07-06 04:43:22','2018-07-06 04:43:22',NULL),
	(88,18,NULL,'ﾎｳｼｮｸﾈｯｸﾚｽ','Jewelry necklace','2018-07-06 04:43:30','2018-07-06 04:43:30',NULL),
	(89,18,NULL,'ﾎｳｼｮｸﾈｯｸﾚｽﾄｯﾌﾟ','Jewelry necklace top','2018-07-06 04:43:38','2018-07-06 04:43:38',NULL),
	(90,18,NULL,'ﾎｳｼｮｸﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ','Jewelry Bracelet / Bangle','2018-07-06 04:43:45','2018-07-06 04:43:45',NULL),
	(91,18,NULL,'ﾎｳｼｮｸﾋﾟｱｽ','Jewelry earrings','2018-07-06 04:43:51','2018-07-06 04:43:51',NULL),
	(92,18,NULL,'ﾎｳｼｮｸｲﾔﾘﾝｸﾞ','Jewelry Earrings','2018-07-06 04:43:58','2018-07-06 04:43:58',NULL),
	(93,18,NULL,'ﾎｳｼｮｸﾙｰｽ','Jewelry Ruth','2018-07-06 04:44:04','2018-07-06 04:44:04',NULL),
	(94,18,NULL,'ﾎｳｼｮｸｿﾉﾀ','Jewelry Other','2018-07-06 04:44:11','2018-07-06 04:44:11',NULL),
	(95,19,NULL,'ｹｶﾞﾜｱﾊﾟﾚﾙ','Fur apparel','2018-07-06 04:44:27','2018-07-06 04:44:27',NULL),
	(96,19,NULL,'ｹｶﾞﾜｺﾓﾉ','Furry accessories','2018-07-06 04:44:39','2018-07-06 04:44:39',NULL),
	(97,2,1,'H.外','H.OUTER','2018-07-06 04:13:29','2018-07-06 04:13:29',NULL),
	(98,2,1,'L.外','L.OUTER','2018-07-06 04:15:29','2018-07-06 04:15:29',NULL),
	(99,2,1,'シャツ','SHIRT','2018-07-06 04:15:53','2018-07-06 04:15:53',NULL),
	(100,2,1,'ニット/カージガン','KNIT/CARDIGAN','2018-07-06 04:16:12','2018-07-06 04:16:12',NULL),
	(101,2,1,'カット＆セーン','CUT&SEWN','2018-07-06 04:16:24','2018-07-06 04:16:24',NULL),
	(102,2,1,'パーカー/スウェット','PARKA/SWEAT','2018-07-06 04:16:52','2018-07-06 04:16:52',NULL),
	(103,2,5,'セットアップ','SETUP','2018-07-06 04:17:11','2018-07-06 04:17:11',NULL),
	(104,2,1,'パンツ/スカート','PANTS/SKIRT','2018-07-06 04:17:35','2018-07-06 04:17:35',NULL),
	(105,2,5,'バッグ','BAG','2018-07-06 04:17:51','2018-07-06 04:17:51',NULL),
	(106,2,5,'アクセサリー','ACCESSORY','2018-07-06 04:18:03','2018-07-06 04:18:03',NULL),
	(107,2,5,'品','GOODS','2018-07-06 04:18:17','2018-07-06 04:18:17',NULL),
	(108,2,1,'スニーカー','SNEAKER','2018-07-06 04:18:31','2018-07-06 04:18:31',NULL),
	(109,2,2,'サンダル','SANDAL','2018-07-06 04:19:13','2018-07-06 04:19:13',NULL),
	(110,2,2,'ブーツ','BOOTS','2018-07-06 04:19:25','2018-07-06 04:19:25',NULL),
	(111,2,2,'その他の靴','OTHER SHOES','2018-07-06 04:19:37','2018-07-06 04:19:37',NULL),
	(112,2,5,'宝石','JEWELRY','2018-07-06 04:19:47','2018-07-06 04:19:47',NULL),
	(113,2,4,'毛皮','FUR','2018-07-06 04:21:08','2018-07-06 04:21:08',NULL),
	(114,97,NULL,'H.ﾀﾞｳﾝｼﾞｬｹｯﾄ','H. Down jacket','2018-07-06 04:25:09','2018-07-06 04:25:09',NULL),
	(115,97,NULL,'H.ｺｰﾄ','H. Coat','2018-07-06 04:26:52','2018-07-06 04:26:52',NULL),
	(116,97,NULL,'H.ﾚｻﾞｰｼﾞｬｹｯﾄ','H. Leather jacket','2018-07-06 04:27:03','2018-07-06 04:27:03',NULL),
	(117,97,NULL,'H.ﾌﾞﾙｿﾞﾝ','H. Blouson','2018-07-06 04:27:09','2018-07-06 04:27:09',NULL),
	(118,97,NULL,'H.ﾀﾞｳﾝﾍﾞｽﾄ','H. Down vest','2018-07-06 04:27:25','2018-07-06 04:27:25',NULL),
	(119,97,NULL,'H.ｼﾞｬｹｯﾄ','H. Jacket','2018-07-06 04:27:37','2018-07-06 04:27:37',NULL),
	(120,98,NULL,'L.ﾃﾞﾆﾑｼﾞｬｹｯﾄ','L. Denim jacket','2018-07-06 04:28:18','2018-07-06 04:28:18',NULL),
	(121,98,NULL,'L.ｺｰﾄ','L. Coat','2018-07-06 04:28:33','2018-07-06 04:28:33',NULL),
	(122,98,NULL,'L.ﾚｻﾞｰｼﾞｬｹｯﾄ','L. Leather jacket','2018-07-06 04:28:39','2018-07-06 04:28:39',NULL),
	(123,98,NULL,'L.ﾌﾞﾙｿﾞﾝ','L. Blouson','2018-07-06 04:28:45','2018-07-06 04:28:45',NULL),
	(124,98,NULL,'L.ｼﾞｬｹｯﾄ','L. Jacket','2018-07-06 04:29:08','2018-07-06 04:29:08',NULL),
	(125,99,NULL,'ﾅｶﾞｿﾃﾞｼｬﾂ','Long Sleeve Shirt','2018-07-06 04:30:24','2018-07-06 04:30:24',NULL),
	(126,99,NULL,'ﾊﾝｿﾃﾞｼｬﾂ','Short Sleeve Shirt','2018-07-06 04:30:33','2018-07-06 04:30:33',NULL),
	(127,99,NULL,'ﾉｰｽﾘｰﾌﾞｼｬﾂ','Sleeveless Shirt','2018-07-06 04:30:39','2018-07-06 04:30:39',NULL),
	(128,100,NULL,'ｶｰﾃﾞｨｶﾞﾝ','Cardigan','2018-07-06 04:31:02','2018-07-06 04:31:02',NULL),
	(129,100,NULL,'ﾆｯﾄ','Knit','2018-07-06 04:31:16','2018-07-06 04:31:16',NULL),
	(130,101,NULL,'ﾊﾝｿﾃﾞﾎﾟﾛｼｬﾂ','Short Sleeve Polo Shirt','2018-07-06 04:32:26','2018-07-06 04:32:26',NULL),
	(131,101,NULL,'ﾅｶﾞｿﾃﾞｶｯﾄｿｰ','Long Sleeve Cut','2018-07-06 04:32:48','2018-07-06 04:32:48',NULL),
	(132,101,NULL,'Tｼｬﾂ','T-shirt','2018-07-06 04:32:54','2018-07-06 04:32:54',NULL),
	(133,101,NULL,'ﾀﾝｸﾄｯﾌﾟ/ﾉｰｽﾘｰﾌﾞｶｯﾄｿｰ','Tank top / Sleeveless cut','2018-07-06 04:33:07','2018-07-06 04:33:07',NULL),
	(134,101,NULL,'ｷｬﾐｿｰﾙ','Camisole','2018-07-06 04:33:14','2018-07-06 04:33:14',NULL),
	(135,101,NULL,'ﾜﾝﾋﾟｰｽ/ﾁｭﾆｯｸ/ﾌﾞﾗｳｽ','One Piece: Tunic / Blouse','2018-07-06 04:33:23','2018-07-06 04:33:23',NULL),
	(136,101,NULL,'ﾍﾞｽﾄ/ｼﾞﾚ','Best / Gillet','2018-07-06 04:33:39','2018-07-06 04:33:39',NULL),
	(137,101,NULL,'ｿﾉﾀﾄｯﾌﾟｽ','Other tops','2018-07-06 04:33:48','2018-07-06 04:33:48',NULL),
	(138,102,NULL,'ﾊﾟｰｶｰ','Parker','2018-07-06 04:34:04','2018-07-06 04:34:04',NULL),
	(139,102,NULL,'ｽｳｪｯﾄ','Sweat','2018-07-06 04:35:00','2018-07-06 04:35:00',NULL),
	(140,103,NULL,'ｽｰﾂ','Suit','2018-07-06 04:35:10','2018-07-06 04:35:10',NULL),
	(141,103,NULL,'ｿﾉﾀｾｯﾄｱｯﾌﾟ','Other setup','2018-07-06 04:35:17','2018-07-06 04:35:17',NULL),
	(142,104,NULL,'ﾛﾝｸﾞﾊﾟﾝﾂ','Long pants','2018-07-06 04:35:27','2018-07-06 04:35:27',NULL),
	(143,104,NULL,'ﾊｰﾌﾊﾟﾝﾂ/ｼｮｰﾄﾊﾟﾝﾂ/ｼｮｰﾂ','Half pants / shorts / shorts','2018-07-06 04:35:34','2018-07-06 04:35:34',NULL),
	(144,104,NULL,'ﾃﾞﾆﾑﾊﾟﾝﾂ','Denim trousers','2018-07-06 04:35:41','2018-07-06 04:35:41',NULL),
	(145,104,NULL,'ｽｶｰﾄ','Skirt','2018-07-06 04:35:48','2018-07-06 04:35:48',NULL),
	(146,104,NULL,'ｿﾉﾀﾎﾞﾄﾑｽ','Other bottoms','2018-07-06 04:35:56','2018-07-06 04:35:56',NULL),
	(147,105,NULL,'ﾄｰﾄﾊﾞｯｸﾞ','Tote bag','2018-07-06 04:37:20','2018-07-06 04:37:20',NULL),
	(148,105,NULL,'ﾊﾝﾄﾞﾊﾞｯｸﾞ','Handbag','2018-07-06 04:37:28','2018-07-06 04:37:28',NULL),
	(149,105,NULL,'ｼｮﾙﾀﾞｰﾊﾞｯｸﾞ','Shoulder bag','2018-07-06 04:37:34','2018-07-06 04:37:34',NULL),
	(150,105,NULL,'ﾎﾞｽﾄﾝﾊﾞｯｸﾞ','Boston bag','2018-07-06 04:37:44','2018-07-06 04:37:44',NULL),
	(151,105,NULL,'ｳｴｽﾄﾊﾞｯｸﾞ/ﾎﾞﾃﾞｨｰﾊﾞｯｸﾞ','Waist Bag / Body Bag','2018-07-06 04:37:51','2018-07-06 04:37:51',NULL),
	(152,105,NULL,'ﾌﾞﾘｰﾌﾊﾞｯｸﾞ','Brief bag','2018-07-06 04:37:57','2018-07-06 04:37:57',NULL),
	(153,105,NULL,'ﾎﾟｰﾁ','Pouch','2018-07-06 04:38:04','2018-07-06 04:38:04',NULL),
	(154,105,NULL,'ﾘｭｯｸ/ﾊﾞｯｸﾊﾟｯｸ','Backpack / Backpack','2018-07-06 04:38:11','2018-07-06 04:38:11',NULL),
	(155,105,NULL,'ｸﾗｯﾁﾊﾞｯｸﾞ','Clutch bag','2018-07-06 04:38:28','2018-07-06 04:38:28',NULL),
	(156,105,NULL,'ｿﾉﾀﾊﾞｯｸﾞ','Other bags','2018-07-06 04:38:35','2018-07-06 04:38:35',NULL),
	(157,106,NULL,'ﾘﾝｸﾞ','Ring','2018-07-06 04:38:54','2018-07-06 04:38:54',NULL),
	(158,106,NULL,'ﾈｯｸﾚｽ','Necklace','2018-07-06 04:39:03','2018-07-06 04:39:03',NULL),
	(159,106,NULL,'ﾈｯｸﾚｽﾄｯﾌﾟ','Necklace top','2018-07-06 04:39:09','2018-07-06 04:39:09',NULL),
	(160,106,NULL,'ﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ','Bracelet / Bangle','2018-07-06 04:39:15','2018-07-06 04:39:15',NULL),
	(161,106,NULL,'ｳｫﾚｯﾄﾁｪｰﾝ','Wallet Chain','2018-07-06 04:39:23','2018-07-06 04:39:23',NULL),
	(162,106,NULL,'ﾋﾟｱｽ/ｲﾔﾘﾝｸﾞ','Earrings','2018-07-06 04:39:28','2018-07-06 04:39:28',NULL),
	(163,107,NULL,'ﾎﾞｳｼ','Hat','2018-07-06 04:40:06','2018-07-06 04:40:06',NULL),
	(164,107,NULL,'ﾍﾞﾙﾄ','Belt','2018-07-06 04:40:21','2018-07-06 04:40:21',NULL),
	(165,107,NULL,'ｻｲﾌ','Wallet','2018-07-06 04:40:26','2018-07-06 04:40:26',NULL),
	(166,107,NULL,'ｺｲﾝｹｰｽ','Coin purse','2018-07-06 04:40:32','2018-07-06 04:40:32',NULL),
	(167,107,NULL,'ｻﾝｸﾞﾗｽ/ﾒｶﾞﾈ','Sunglasses / glasses','2018-07-06 04:40:40','2018-07-06 04:40:40',NULL),
	(168,107,NULL,'ｽﾄｰﾙ','Stall','2018-07-06 04:40:47','2018-07-06 04:40:47',NULL),
	(169,107,NULL,'ﾏﾌﾗｰ','Scarf','2018-07-06 04:40:53','2018-07-06 04:40:53',NULL),
	(170,107,NULL,'ﾈｸﾀｲ','Tie','2018-07-06 04:41:01','2018-07-06 04:41:01',NULL),
	(171,107,NULL,'ｳﾃﾞﾄﾞｴｲ','Watches','2018-07-06 04:41:08','2018-07-06 04:41:08',NULL),
	(172,107,NULL,'ｶｰﾄﾞｹｰｽ','Card case','2018-07-06 04:41:15','2018-07-06 04:41:15',NULL),
	(173,107,NULL,'ﾃﾌﾞｸﾛ/ｸﾞﾛｰﾌﾞ','Gloves / Gloves','2018-07-06 04:41:22','2018-07-06 04:41:22',NULL),
	(174,107,NULL,'ｽｶｰﾌ','Scarf','2018-07-06 04:41:28','2018-07-06 04:41:28',NULL),
	(175,107,NULL,'ｿﾉﾀｺﾓﾉ','Other accessories','2018-07-06 04:41:35','2018-07-06 04:41:35',NULL),
	(176,108,NULL,'ｽﾆｰｶｰ','Sneakers','2018-07-06 04:42:15','2018-07-06 04:42:15',NULL),
	(177,109,NULL,'ｻﾝﾀﾞﾙ','Sandals','2018-07-06 04:42:31','2018-07-06 04:42:31',NULL),
	(178,109,NULL,'ﾊﾟﾝﾌﾟｽ/ﾐｭｰﾙ','Pumps / Mule','2018-07-06 04:42:40','2018-07-06 04:42:40',NULL),
	(179,110,NULL,'ﾌﾞｰﾂ','Boots','2018-07-06 04:42:53','2018-07-06 04:42:53',NULL),
	(180,111,NULL,'ｼｭｰｽﾞ(ｿﾉﾀ)','Shoes (Others)','2018-07-06 04:43:09','2018-07-06 04:43:09',NULL),
	(181,112,NULL,'ﾎｳｼｮｸﾘﾝｸﾞ','Jewelry ring','2018-07-06 04:43:22','2018-07-06 04:43:22',NULL),
	(182,112,NULL,'ﾎｳｼｮｸﾈｯｸﾚｽ','Jewelry necklace','2018-07-06 04:43:30','2018-07-06 04:43:30',NULL),
	(183,112,NULL,'ﾎｳｼｮｸﾈｯｸﾚｽﾄｯﾌﾟ','Jewelry necklace top','2018-07-06 04:43:38','2018-07-06 04:43:38',NULL),
	(184,112,NULL,'ﾎｳｼｮｸﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ','Jewelry Bracelet / Bangle','2018-07-06 04:43:45','2018-07-06 04:43:45',NULL),
	(185,112,NULL,'ﾎｳｼｮｸﾋﾟｱｽ','Jewelry earrings','2018-07-06 04:43:51','2018-07-06 04:43:51',NULL),
	(186,112,NULL,'ﾎｳｼｮｸｲﾔﾘﾝｸﾞ','Jewelry Earrings','2018-07-06 04:43:58','2018-07-06 04:43:58',NULL),
	(187,112,NULL,'ﾎｳｼｮｸﾙｰｽ','Jewelry Ruth','2018-07-06 04:44:04','2018-07-06 04:44:04',NULL),
	(188,112,NULL,'ﾎｳｼｮｸｿﾉﾀ','Jewelry Other','2018-07-06 04:44:11','2018-07-06 04:44:11',NULL),
	(189,113,NULL,'ｹｶﾞﾜｱﾊﾟﾚﾙ','Fur apparel','2018-07-06 04:44:27','2018-07-06 04:44:27',NULL),
	(190,113,NULL,'ｹｶﾞﾜｺﾓﾉ','Furry accessories','2018-07-06 04:44:39','2018-07-06 04:44:39',NULL);

/*!40000 ALTER TABLE `master_category` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_city`;

CREATE TABLE `master_city` (
  `city_id` int(11) NOT NULL,
  `city_state` int(11) DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_long` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_city` WRITE;
/*!40000 ALTER TABLE `master_city` DISABLE KEYS */;

INSERT INTO `master_city` (`city_id`, `city_state`, `city_name`, `city_lat`, `city_long`, `city_status`, `deleted_at`)
VALUES
	(1,1,'Tokyo','1','1','1',NULL),
	(2,2,'New York','1','1','1',NULL),
	(3,2,'Los Angles','1','1','1',NULL);

/*!40000 ALTER TABLE `master_city` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_color
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_color`;

CREATE TABLE `master_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`color_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_color` WRITE;
/*!40000 ALTER TABLE `master_color` DISABLE KEYS */;

INSERT INTO `master_color` (`color_id`, `color_name`, `color_name_en`, `color_value`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Red','Red','#ff0000','2018-07-04 12:06:42','2018-07-04 12:06:42',NULL),
	(2,'Yellow','Yellow','#fff500','2018-07-04 12:06:57','2018-07-04 12:06:57',NULL),
	(3,'Blue','Blue','#0029ff','2018-07-04 12:07:06','2018-07-04 12:07:06',NULL),
	(4,'Green','Green','#00ff47','2018-07-04 12:07:20','2018-07-04 12:07:20',NULL),
	(5,'Black','Black','#000000','2018-07-04 12:07:35','2018-07-04 12:07:35',NULL),
	(6,'White','White','#ffffff','2018-07-04 12:07:42','2018-07-04 12:07:42',NULL),
	(7,'Orange','Orange','#ffa800','2018-07-04 12:07:57','2018-07-04 12:07:57',NULL),
	(8,'Spec','Orange','#ff6b00','2018-07-12 12:27:44','2018-07-12 12:29:15',NULL);

/*!40000 ALTER TABLE `master_color` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_emailtemplate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_emailtemplate`;

CREATE TABLE `master_emailtemplate` (
  `id` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;



# テーブルのダンプ master_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_event`;

CREATE TABLE `master_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_event` WRITE;
/*!40000 ALTER TABLE `master_event` DISABLE KEYS */;

INSERT INTO `master_event` (`event_id`, `event_title`, `event_title_en`, `event_condition`, `event_duration`, `event_content`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Event1','Event1','Event1','01/01/2016 12:00 AM - 01/25/2016 12:00 AM','Event1','2018-07-04 12:41:09','2018-07-06 05:59:45',NULL),
	(2,'Event2','Event2','Event2','01/01/2016 12:00 AM - 01/25/2016 12:00 AM','Event2','2018-07-04 12:41:20','2018-07-06 05:59:42',NULL),
	(3,'Event3','Event3','Event3','01/01/2016 12:00 AM - 01/25/2016 12:00 AM','Event3','2018-07-04 12:41:30','2018-07-06 05:59:39',NULL),
	(4,'Event4','Event4','Event4','07/06/2018 12:00 AM - 07/07/2018 12:00 AM','Event4','2018-07-06 05:54:54','2018-07-06 05:59:54',NULL),
	(5,'Event5','Event5','Event5','05/19/2018 6:00 AM - 09/07/2018 6:00 AM','Event5','2018-07-06 05:56:34','2018-07-06 06:00:04',NULL);

/*!40000 ALTER TABLE `master_event` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_genre
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_genre`;

CREATE TABLE `master_genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `mall_id` int(11) DEFAULT NULL,
  `genre_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`genre_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_genre` WRITE;
/*!40000 ALTER TABLE `master_genre` DISABLE KEYS */;

INSERT INTO `master_genre` (`genre_id`, `mall_id`, `genre_name`, `genre_name_en`, `genre_status`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(2,20,'Caps','Caps','1','2018-07-04 12:25:48','2018-07-06 05:58:53',NULL),
	(3,21,'Summer Shirts','Summer Shirts','1','2018-07-04 12:26:06','2018-07-06 05:58:57',NULL),
	(4,24,'Genere_01','genre_01','0','2018-07-12 05:07:26','2018-07-12 05:09:16',NULL),
	(5,26,'Genere_02','Genere_02','1','2018-07-12 12:26:14','2018-07-12 12:26:33',NULL);

/*!40000 ALTER TABLE `master_genre` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_mall
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_mall`;

CREATE TABLE `master_mall` (
  `mall_id` int(11) NOT NULL AUTO_INCREMENT,
  `mall_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`mall_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_mall` WRITE;
/*!40000 ALTER TABLE `master_mall` DISABLE KEYS */;

INSERT INTO `master_mall` (`mall_id`, `mall_name`, `mall_name_en`, `mall_status`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(24,'Mall_01','mall_01','1','2018-07-12 05:04:35','2018-07-12 05:07:08',NULL),
	(25,'Mall_02','mall_2','1','2018-07-12 05:44:11','2018-07-12 05:49:32',NULL),
	(26,'Mall_03','mall_03','0','2018-07-12 12:25:08','2018-07-12 12:26:08',NULL);

/*!40000 ALTER TABLE `master_mall` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_notifycustomer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_notifycustomer`;

CREATE TABLE `master_notifycustomer` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `notify_customer` mediumtext COLLATE utf8_unicode_ci,
  `notify_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `notify_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`notify_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_notifycustomer` WRITE;
/*!40000 ALTER TABLE `master_notifycustomer` DISABLE KEYS */;

INSERT INTO `master_notifycustomer` (`notify_id`, `notify_customer`, `notify_name`, `notify_memo`, `notify_status`, `admin_id`, `notify_name_en`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'2/**/3','Notify','Notify','1',1,'Notify','2018-07-04 12:48:21','2018-07-04 12:48:21',NULL),
	(2,'3','お知らせto顧客','memo','1',2,'News to Customer','2018-08-30 08:13:17','2018-08-30 08:13:17',NULL);

/*!40000 ALTER TABLE `master_notifycustomer` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_notifymerchant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_notifymerchant`;

CREATE TABLE `master_notifymerchant` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `notify_merchant` mediumtext COLLATE utf8_unicode_ci,
  `notify_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int(255) DEFAULT NULL,
  `notify_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`notify_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_notifymerchant` WRITE;
/*!40000 ALTER TABLE `master_notifymerchant` DISABLE KEYS */;

INSERT INTO `master_notifymerchant` (`notify_id`, `notify_merchant`, `notify_name`, `notify_memo`, `notify_status`, `admin_id`, `notify_name_en`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'1/**/2/**/3','Notify','Notify','1',1,'Notify','2018-07-04 12:48:02','2018-07-04 12:48:02',NULL),
	(2,'1/**/2/**/3','1','1','1',1,'1','2018-07-05 01:22:07','2018-07-05 01:22:07',NULL),
	(3,'3','お知らせです','メモ','1',2,'News!!!','2018-08-30 08:11:08','2018-08-30 08:11:08',NULL);

/*!40000 ALTER TABLE `master_notifymerchant` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_plan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_plan`;

CREATE TABLE `master_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_opencost` double(10,2) DEFAULT NULL,
  `plan_fixcost` double(10,2) DEFAULT NULL,
  `plan_domestic_fee` double(10,2) DEFAULT NULL,
  `plan_international_fee` double(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_plan` WRITE;
/*!40000 ALTER TABLE `master_plan` DISABLE KEYS */;

INSERT INTO `master_plan` (`plan_id`, `plan_name`, `plan_opencost`, `plan_fixcost`, `plan_domestic_fee`, `plan_international_fee`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Plan01',100.00,120.00,1.00,NULL,'2018-07-04 12:41:50','2018-07-04 12:41:50',NULL),
	(2,'Plan02',120.00,200.00,2.00,NULL,'2018-07-04 12:42:08','2018-07-04 12:42:08',NULL),
	(3,'Plan03',500.00,100.00,1.00,NULL,'2018-07-04 12:42:20','2018-07-04 12:42:20',NULL),
	(4,'Plan04',500.00,300.00,1.00,NULL,'2018-07-04 12:42:33','2018-07-04 12:42:33',NULL),
	(5,'Plan05',1000.00,1000.00,2.00,123.00,'2018-07-04 12:42:51','2018-07-10 10:45:13',NULL),
	(6,'Plan06',123.00,123.00,4342.00,34543.00,'2018-07-06 05:19:16','2018-07-12 12:31:51',NULL),
	(7,'Plan07',4.00,4.00,4.00,44.00,'2018-07-12 12:31:25','2018-07-12 12:32:00',NULL);

/*!40000 ALTER TABLE `master_plan` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_productstate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_productstate`;

CREATE TABLE `master_productstate` (
  `productstate_id` int(11) NOT NULL AUTO_INCREMENT,
  `productstate_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productstate_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`productstate_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_productstate` WRITE;
/*!40000 ALTER TABLE `master_productstate` DISABLE KEYS */;

INSERT INTO `master_productstate` (`productstate_id`, `productstate_name`, `productstate_details`, `deleted_at`)
VALUES
	(1,'N','新品',NULL),
	(2,'N-','新品&難あり',NULL),
	(3,'S','新品同様',NULL),
	(4,'A','状態良好',NULL),
	(5,'B','使用感が少ない',NULL),
	(6,'C','使用感がある',NULL);

/*!40000 ALTER TABLE `master_productstate` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_size
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_size`;

CREATE TABLE `master_size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size_category_id` int(11) DEFAULT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`size_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_size` WRITE;
/*!40000 ALTER TABLE `master_size` DISABLE KEYS */;

INSERT INTO `master_size` (`size_id`, `size_category_id`, `size_name`, `size_name_en`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,1,'XL','XL','2018-07-04 12:08:13','2018-07-04 12:08:13',NULL),
	(2,1,'XXL','XXL','2018-07-04 12:08:22','2018-07-04 12:08:22',NULL),
	(3,1,'XXXL','XXXL','2018-07-04 12:08:31','2018-07-04 12:08:31',NULL),
	(4,3,'Kg','Kg','2018-07-04 12:08:50','2018-07-04 12:08:50',NULL),
	(5,3,'g','g','2018-07-04 12:09:02','2018-07-04 12:09:02',NULL),
	(6,3,'t','t','2018-07-04 12:09:10','2018-07-04 12:09:10',NULL),
	(7,2,'Pair','Pair','2018-07-04 12:09:26','2018-07-04 12:09:26',NULL),
	(8,4,'L','L','2018-07-04 12:11:38','2018-07-04 12:11:38',NULL),
	(9,4,'m3','m3','2018-07-04 12:11:55','2018-07-04 12:11:55',NULL),
	(10,5,'Thing','Thing','2018-07-04 12:17:37','2018-07-04 12:17:37',NULL),
	(11,6,'other_size','other','2018-07-12 12:29:41','2018-07-12 12:30:17',NULL);

/*!40000 ALTER TABLE `master_size` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_sizecategory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_sizecategory`;

CREATE TABLE `master_sizecategory` (
  `sizecategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `sizecategory_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizecategory_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sizecategory_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_sizecategory` WRITE;
/*!40000 ALTER TABLE `master_sizecategory` DISABLE KEYS */;

INSERT INTO `master_sizecategory` (`sizecategory_id`, `sizecategory_name`, `sizecategory_name_en`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'Shirts','Shirts','2018-07-04 12:05:19','2018-07-04 12:05:19',NULL),
	(2,'Shoes','Shoes','2018-07-04 12:05:56','2018-07-04 12:05:56',NULL),
	(3,'Weight','Weight','2018-07-04 12:06:04','2018-07-04 12:06:04',NULL),
	(4,'Volume','Volume','2018-07-04 12:06:25','2018-07-04 12:11:28',NULL),
	(5,'Things','Things','2018-07-04 12:16:28','2018-07-04 12:16:28',NULL),
	(6,'Other','other','2018-07-12 12:29:25','2018-07-12 12:29:25',NULL);

/*!40000 ALTER TABLE `master_sizecategory` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ master_state
# ------------------------------------------------------------

DROP TABLE IF EXISTS `master_state`;

CREATE TABLE `master_state` (
  `state_id` int(11) NOT NULL,
  `state_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_cursymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_curcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `master_state` WRITE;
/*!40000 ALTER TABLE `master_state` DISABLE KEYS */;

INSERT INTO `master_state` (`state_id`, `state_code`, `state_name`, `state_cursymbol`, `state_curcode`, `deleted_at`)
VALUES
	(1,'JP','Japan','¥','JPY',NULL),
	(2,'USA','United States of America','$','USD',NULL);

/*!40000 ALTER TABLE `master_state` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ merchant_brand_match
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_brand_match`;

CREATE TABLE `merchant_brand_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `merchant_brand_match` WRITE;
/*!40000 ALTER TABLE `merchant_brand_match` DISABLE KEYS */;

INSERT INTO `merchant_brand_match` (`id`, `merchant_id`, `brand_id`, `deleted_at`)
VALUES
	(1,1,4,NULL),
	(46,2,1,NULL),
	(47,2,4,NULL),
	(48,2,12,NULL),
	(49,2,15,NULL);

/*!40000 ALTER TABLE `merchant_brand_match` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ merchant_product_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_product_status`;

CREATE TABLE `merchant_product_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` int(11) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_status` int(11) NOT NULL,
  `product_merchant_id` int(11) NOT NULL,
  `product_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `merchant_product_status` WRITE;
/*!40000 ALTER TABLE `merchant_product_status` DISABLE KEYS */;

INSERT INTO `merchant_product_status` (`id`, `product_code`, `product_count`, `product_status`, `product_merchant_id`, `product_size`, `product_color`, `deleted_at`)
VALUES
	(26,1,15,1,2,NULL,NULL,NULL),
	(27,2,34,1,2,NULL,NULL,NULL),
	(28,3,23,1,2,NULL,NULL,NULL),
	(29,4,56,1,2,NULL,NULL,NULL),
	(30,5,78,1,2,NULL,NULL,NULL),
	(31,6,12,1,2,NULL,NULL,NULL),
	(32,2,33,1,2,NULL,NULL,NULL),
	(33,1,5,2,2,NULL,NULL,NULL),
	(34,3,6,2,2,NULL,NULL,NULL),
	(35,4,7,2,2,NULL,NULL,NULL),
	(36,5,11,2,2,NULL,NULL,NULL),
	(37,3,3,2,2,NULL,NULL,NULL),
	(38,1,4,3,2,NULL,NULL,NULL),
	(39,2,12,3,2,NULL,NULL,NULL),
	(40,4,1,3,2,NULL,NULL,NULL),
	(41,5,2,4,2,NULL,NULL,NULL),
	(42,6,56,4,2,NULL,NULL,NULL),
	(43,2,76,5,2,NULL,NULL,NULL),
	(44,3,7,5,2,NULL,NULL,NULL),
	(45,4,6,5,2,NULL,NULL,NULL),
	(46,5,8,5,2,NULL,NULL,NULL),
	(47,6,21,5,2,NULL,NULL,NULL),
	(48,2,63,6,2,NULL,NULL,NULL),
	(49,3,7,6,2,NULL,NULL,NULL),
	(50,5,81,6,2,NULL,NULL,NULL);

/*!40000 ALTER TABLE `merchant_product_status` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ merchant_sale_management
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_sale_management`;

CREATE TABLE `merchant_sale_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `sale_date` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_price` decimal(20,2) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `merchant_sale_management` WRITE;
/*!40000 ALTER TABLE `merchant_sale_management` DISABLE KEYS */;

INSERT INTO `merchant_sale_management` (`id`, `merchant_id`, `sale_date`, `sale_price`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,2,'2018/05/01 12:58:22',10000.00,NULL,NULL,NULL),
	(2,2,'2018/04/20 12:58:22',5080.00,NULL,NULL,NULL),
	(3,2,'2018/06/02 12:58:22',5000.00,NULL,NULL,NULL),
	(4,2,'2018/03/30 12:58:22',6000.00,NULL,NULL,NULL),
	(5,2,'2018/07/30 12:58:22',150.00,NULL,NULL,NULL),
	(6,2,'2018/07/30 12:58:22',2888.00,NULL,NULL,NULL),
	(7,2,'2018/07/20 12:58:22',466000.00,NULL,NULL,NULL),
	(8,2,'2018/07/10 12:58:22',99999.00,NULL,NULL,NULL),
	(9,2,'2018/07/11 12:58:22',55000.00,NULL,NULL,NULL),
	(10,2,'2018/07/30 12:58:22',5546.00,NULL,NULL,NULL),
	(11,2,'2018/07/13 12:58:22',55462.00,NULL,NULL,NULL),
	(12,2,'2018/07/30 12:58:22',221156.00,NULL,NULL,NULL),
	(13,2,'2018/08/02 12:58:22',22446.00,NULL,NULL,NULL),
	(14,2,'2018/08/01 12:58:22',221465.00,NULL,NULL,NULL),
	(15,2,'2018/08/03 12:58:22',22222.00,NULL,NULL,NULL),
	(16,2,'2018/08/01 12:58:22',111156.00,NULL,NULL,NULL),
	(17,2,'2018/08/02 12:58:22',100000000.00,NULL,NULL,NULL),
	(18,2,'2018/08/01 12:58:22',222222.00,NULL,NULL,NULL),
	(19,2,'2018/08/03 12:58:22',1234567890.00,NULL,NULL,NULL),
	(20,2,'2018/08/02 12:58:22',5580.00,NULL,NULL,NULL),
	(21,2,'2018/08/03 12:58:22',6660.00,NULL,NULL,NULL),
	(22,2,'2018/08/02 12:58:22',77777.00,NULL,NULL,NULL);

/*!40000 ALTER TABLE `merchant_sale_management` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ merchant_shipping
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_shipping`;

CREATE TABLE `merchant_shipping` (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `shipping_state` int(2) DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_start_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_min_duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_max_duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_limit_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_limit_duration` int(5) DEFAULT NULL,
  `shipping_status` int(2) DEFAULT NULL,
  `shipping_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `merchant_shipping` WRITE;
/*!40000 ALTER TABLE `merchant_shipping` DISABLE KEYS */;

INSERT INTO `merchant_shipping` (`shipping_id`, `merchant_id`, `shipping_state`, `shipping_name`, `shipping_name_en`, `shipping_start_position`, `shipping_memo`, `shipping_min_duration`, `shipping_max_duration`, `shipping_limit_date`, `shipping_limit_duration`, `shipping_status`, `shipping_default`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(42,2,0,'Racten12','英名12','出発拠点12','メモ12','212','712','07/31/2018',0,1,'50012','2018-07-28 06:56:00','2018-07-28 06:56:00',NULL),
	(43,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666','2018-07-28 07:13:00','2018-07-28 07:13:00',NULL);

/*!40000 ALTER TABLE `merchant_shipping` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ merchant_shipping_price
# ------------------------------------------------------------

DROP TABLE IF EXISTS `merchant_shipping_price`;

CREATE TABLE `merchant_shipping_price` (
  `shipping_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `shipping_price` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`shipping_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `merchant_shipping_price` WRITE;
/*!40000 ALTER TABLE `merchant_shipping_price` DISABLE KEYS */;

INSERT INTO `merchant_shipping_price` (`shipping_price_id`, `shipping_id`, `merchant_id`, `shipping_price`, `shipping_description`, `deleted_at`)
VALUES
	(13,42,2,'100','100 cost',NULL),
	(17,42,2,'100','100 cost',NULL),
	(18,42,2,'300','300 cose',NULL),
	(19,42,2,'500','cost',NULL),
	(20,43,2,'1','1',NULL),
	(21,43,2,'3','3',NULL),
	(22,43,2,'4','4',NULL),
	(23,43,2,'5','5',NULL),
	(24,43,2,'6','6',NULL);

/*!40000 ALTER TABLE `merchant_shipping_price` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_04_02_193005_create_translations_table',1),
	(2,'2014_10_12_000000_create_users_table',1),
	(3,'2014_10_12_100000_create_password_resets_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# テーブルのダンプ receipt_address
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipt_address`;

CREATE TABLE `receipt_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_state` int(255) DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_address_ex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_address_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_totalscore` double(255,0) DEFAULT NULL,
  `address_default` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `receipt_address` WRITE;
/*!40000 ALTER TABLE `receipt_address` DISABLE KEYS */;

INSERT INTO `receipt_address` (`id`, `address_name`, `address_phone`, `address_postalcode`, `address_state`, `address_city`, `address_address_ex`, `address_province`, `address_county`, `address_address_jp`, `address_totalscore`, `address_default`, `deleted_at`)
VALUES
	(11,'address1','080-0000-0000','140-0005',1,NULL,NULL,'東京都','品川区広町','123',NULL,'0',NULL),
	(12,'address1','080-0000-0000','140-0005',1,NULL,NULL,'東京都','品川区広町','123',NULL,'0',NULL),
	(13,'address1','080-0000-0000','140-0005',1,NULL,NULL,'東京都','品川区広町','123',NULL,'0',NULL),
	(14,'address2','080-0200-0000','140-0015',1,NULL,NULL,'東京都','品川区西大井','12345689',NULL,'0',NULL),
	(15,'address1','080-0000-0000','140-0005',1,NULL,NULL,'東京都','品川区広町','123',NULL,'0',NULL),
	(16,'address1','080-0000-0000','140-0005',1,NULL,NULL,'東京都','品川区広町','123',NULL,'0',NULL),
	(17,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(18,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(19,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(20,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(21,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(22,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(23,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(24,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(25,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(26,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(27,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(28,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(29,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(30,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL),
	(31,'（公）武蔵野青年会議所','090-8432-2973','180-0004',1,NULL,NULL,'東京都','武蔵野市吉祥寺本町','1-4-28',NULL,'0',NULL);

/*!40000 ALTER TABLE `receipt_address` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ receipt_card
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipt_card`;

CREATE TABLE `receipt_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_validdate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `receipt_card` WRITE;
/*!40000 ALTER TABLE `receipt_card` DISABLE KEYS */;

INSERT INTO `receipt_card` (`id`, `card_no`, `card_token`, `card_owner`, `card_validdate`, `deleted_at`)
VALUES
	(11,'1234567890','1597','hhh','2018/12',NULL),
	(12,'1234567890','1597','hhh','2018/12',NULL),
	(13,'0003','cus_DLkcMX4Op3cf92','hokelucpy@outlook.com','2020/3',NULL),
	(14,'0003','cus_DLkcMX4Op3cf92','hokelucpy@outlook.com','2020/3',NULL),
	(15,'0004','cus_DLkdSVzxaoRaG2','hokelucpy@outlook.com','2019/1',NULL),
	(16,'4242','cus_DOE2GAsd94pXfO','hokelucpy@outlook.com','2019/11',NULL),
	(17,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(18,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(19,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(20,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(21,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(22,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(23,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(24,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(25,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(26,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(27,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(28,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(29,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(30,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL),
	(31,'4242','cus_Db7k6A7sHJZAHy','inoue@loop-fitb.com','2020/12',NULL);

/*!40000 ALTER TABLE `receipt_card` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ receipt_customer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipt_customer`;

CREATE TABLE `receipt_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` int(11) DEFAULT NULL,
  `customer_name_first` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_second` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_kana_first` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_kana_second` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_state` int(255) DEFAULT NULL,
  `customer_city` int(255) DEFAULT NULL,
  `customer_address_ex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_address_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_totalscore` double(255,0) DEFAULT NULL,
  `customer_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_gender` int(255) DEFAULT NULL,
  `customer_birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_oauth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` int(255) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `receipt_customer` WRITE;
/*!40000 ALTER TABLE `receipt_customer` DISABLE KEYS */;

INSERT INTO `receipt_customer` (`id`, `facebook_id`, `customer_name_first`, `customer_name_second`, `customer_name_kana_first`, `customer_name_kana_second`, `customer_email`, `customer_phone`, `customer_postalcode`, `customer_state`, `customer_city`, `customer_address_ex`, `customer_province`, `customer_county`, `customer_address_jp`, `customer_totalscore`, `customer_status`, `customer_gender`, `customer_birthday`, `customer_oauth`, `token`, `verified`, `deleted_at`)
VALUES
	(11,NULL,'kan','hoke','ddd','aaa','hokelucpy@gmail.com','080-0000-0000','140-0005',NULL,NULL,NULL,'東京都','品川区広町','11-001',NULL,NULL,NULL,'1960/1/1',NULL,NULL,0,NULL),
	(12,NULL,'kan','hoke','ddd','aaa','hokelucpy@gmail.com','080-0000-0000','140-0005',NULL,NULL,NULL,'東京都','品川区広町','11-001',NULL,NULL,NULL,'1960/1/1',NULL,NULL,0,NULL),
	(13,NULL,'kan','hoke','ddd','aaa','hokelucpy@outlook.com','080-0000-0000','140-0005',NULL,NULL,NULL,'東京都','品川区広町','11-001',NULL,NULL,NULL,'1960/1/1',NULL,NULL,0,NULL),
	(14,NULL,'kan','hoke','ddd','aaa','hokelucpy@outlook.com','080-0000-0000','140-0005',NULL,NULL,NULL,'東京都','品川区広町','11-001',NULL,NULL,NULL,'1960/1/1',NULL,NULL,0,NULL),
	(15,NULL,'kan','hoke','ddd','aaa','hokelucpy@outlook.com','080-0000-0000','140-0005',NULL,NULL,NULL,'東京都','品川区広町','11-001',NULL,NULL,NULL,'1960/1/1',NULL,NULL,0,NULL),
	(16,NULL,'kan','hoke','ddd','aaa','hokelucpy@outlook.com','080-0000-0000','140-0005',NULL,NULL,NULL,'東京都','品川区広町','11-001',NULL,NULL,NULL,'1960/1/1',NULL,NULL,0,NULL),
	(17,NULL,'井上','智喜2','イノウエ','サトキ','inoue@loop-fitb.com','090-8432-2973','1500047',NULL,NULL,NULL,'東京都','都渋谷区神山町','24-11',NULL,NULL,1,'1992/11/9',NULL,NULL,0,NULL),
	(18,NULL,'井上','智喜2','イノウエ','サトキ','inoue@loop-fitb.com','090-8432-2973','1500047',NULL,NULL,NULL,'東京都','都渋谷区神山町','24-11',NULL,NULL,1,'1992/11/9',NULL,NULL,0,NULL),
	(19,NULL,'井上','智喜2','イノウエ','サトキ','inoue@loop-fitb.com','090-8432-2973','1500047',NULL,NULL,NULL,'東京都','都渋谷区神山町','24-11',NULL,NULL,1,'1992/11/9',NULL,NULL,0,NULL),
	(20,NULL,'井上','智喜2','イノウエ','サトキ','inoue@loop-fitb.com','090-8432-2973','1500047',NULL,NULL,NULL,'東京都','都渋谷区神山町','24-11',NULL,NULL,1,'1992/11/9',NULL,NULL,0,NULL),
	(21,NULL,'井上','智喜2','イノウエ','サトキ','inoue@loop-fitb.com','090-8432-2973','1500047',NULL,NULL,NULL,'東京都','都渋谷区神山町','24-11',NULL,NULL,1,'1992/11/9',NULL,NULL,0,NULL),
	(22,NULL,'井上','智喜2','イノウエ','サトキ','inoue@loop-fitb.com','090-8432-2973','1500047',NULL,NULL,NULL,'東京都','都渋谷区神山町','24-11',NULL,NULL,1,'1992/11/9',NULL,NULL,0,NULL);

/*!40000 ALTER TABLE `receipt_customer` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ receipt_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipt_detail`;

CREATE TABLE `receipt_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_id` int(11) DEFAULT NULL,
  `history_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `product_data` int(11) DEFAULT NULL,
  `stock_data` int(11) DEFAULT NULL,
  `product_amt` int(11) DEFAULT NULL,
  `tax_flag` int(11) DEFAULT NULL,
  `tax_rate` double DEFAULT '8',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `receipt_detail` WRITE;
/*!40000 ALTER TABLE `receipt_detail` DISABLE KEYS */;

INSERT INTO `receipt_detail` (`id`, `receipt_id`, `history_id`, `stock_id`, `product_data`, `stock_data`, `product_amt`, `tax_flag`, `tax_rate`, `deleted_at`)
VALUES
	(9,10,31,433,10,9,2,1,8,NULL),
	(10,11,32,447,11,10,1,1,8,NULL),
	(11,12,33,433,12,11,1,1,8,NULL),
	(12,13,34,439,13,12,1,1,8,NULL),
	(13,14,35,447,14,13,1,1,8,NULL),
	(14,15,36,433,15,14,1,1,8,NULL),
	(15,17,49,434,17,15,2,1,8,NULL),
	(16,18,50,439,18,16,10,1,8,NULL),
	(17,19,51,432,19,17,1,1,8,NULL);

/*!40000 ALTER TABLE `receipt_detail` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ receipt_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipt_product`;

CREATE TABLE `receipt_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_salemethod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_salerange` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_brand_id` int(11) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `product_event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name_kana` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_taxflag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_old_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size_category_id` int(11) DEFAULT NULL,
  `product_weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_season` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_merchant_id` int(11) DEFAULT NULL,
  `product_parent_id` int(11) DEFAULT NULL,
  `stock_type` int(2) DEFAULT NULL,
  `max_order_count` int(10) DEFAULT NULL,
  `postage_type` int(2) DEFAULT NULL,
  `postage` int(10) DEFAULT NULL,
  `delivery_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `product_size_id` int(11) DEFAULT NULL,
  `product_ca` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

LOCK TABLES `receipt_product` WRITE;
/*!40000 ALTER TABLE `receipt_product` DISABLE KEYS */;

INSERT INTO `receipt_product` (`id`, `product_id`, `product_salemethod`, `product_salerange`, `product_brand_id`, `product_category_id`, `product_event`, `product_code`, `product_name`, `product_name_kana`, `product_name_detail`, `product_taxflag`, `product_old_status`, `product_color`, `product_size_category_id`, `product_weight`, `product_season`, `product_place`, `product_material`, `product_memo`, `product_status`, `product_merchant_id`, `product_parent_id`, `stock_type`, `max_order_count`, `postage_type`, `postage`, `delivery_id`, `shipping_id`, `product_size_id`, `product_ca`, `product_color_1`, `product_size`, `deleted_at`)
VALUES
	(10,158,'1',NULL,15,32,NULL,'10101-170629-0199','HAND SHIRT 1','product_name_kana','HAND SHIRT 1','1','5','2',NULL,'100',NULL,NULL,NULL,NULL,'1',2,NULL,1,1,0,0,0,43,NULL,NULL,'1','1',NULL),
	(11,172,'1','',4,33,'','10101-170629-0213','sleeveless shirt 3','sleeveless shirt 3','sleeveless shirt 3','1','5','8',NULL,'100','','','','','1',2,0,1,1,0,0,1,43,NULL,NULL,'1','2',NULL),
	(12,158,'1',NULL,15,32,NULL,'10101-170629-0199','HAND SHIRT 1','product_name_kana','HAND SHIRT 1','1','5','2',NULL,'100',NULL,NULL,NULL,NULL,'1',2,NULL,1,1,0,0,0,43,NULL,NULL,'1','1',NULL),
	(13,164,'1','',12,32,'','10101-170629-0205','HAND SHIRT 3','HAND SHIRT 3','HAND SHIRT 3','1','5','8',NULL,'100','','','','','1',2,0,1,1,0,0,1,42,NULL,NULL,'1','3',NULL),
	(14,172,'1','',4,33,'','10101-170629-0213','sleeveless shirt 3','sleeveless shirt 3','sleeveless shirt 3','1','5','8',NULL,'100','','','','','1',2,0,1,1,0,0,1,43,NULL,NULL,'1','2',NULL),
	(15,158,'1',NULL,15,32,NULL,'10101-170629-0199','HAND SHIRT 1','product_name_kana','HAND SHIRT 1','1','5','2',NULL,'100',NULL,NULL,NULL,NULL,'1',2,NULL,1,1,0,0,0,43,NULL,NULL,'1','1',NULL),
	(16,159,'1','',4,32,'','10101-170629-0200','HAND SHIRT 2','HAND SHIRT 2','HAND SHIRT 2','1','5','3',NULL,'100','','','','','0',2,0,1,1,0,0,1,43,NULL,NULL,'1','2',NULL),
	(17,159,'1','',4,32,'','10101-170629-0200','HAND SHIRT 2','HAND SHIRT 2','HAND SHIRT 2','1','5','3',NULL,'100','','','','','0',2,0,1,1,0,0,1,43,NULL,NULL,'1','2',NULL),
	(18,164,'1','',12,32,'','10101-170629-0205','HAND SHIRT 3','HAND SHIRT 3','HAND SHIRT 3','1','5','8',NULL,'100','','','','','1',2,0,1,1,0,0,1,42,NULL,NULL,'1','3',NULL),
	(19,157,'1','',1,69,'','10101-170629-0198','HAT 1','HAT 1','HAT 1','1','5','1',NULL,'100','','','','(表地)<br>コットン67%<br>ナイロン33%<br>(裏地)<br>ナイロン<br>(中綿)<br>ポリエステル<br>(ファー部分)<br>ダウン90%<br>フェザー10%<br>(部分使い)<br>メタルパーツ','0',2,0,1,1,0,0,1,43,NULL,NULL,'1','1',NULL);

/*!40000 ALTER TABLE `receipt_product` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ receipt_shipping
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipt_shipping`;

CREATE TABLE `receipt_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `shipping_state` int(2) DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_start_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_min_duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_max_duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_limit_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_limit_duration` int(5) DEFAULT NULL,
  `shipping_status` int(2) DEFAULT NULL,
  `shipping_default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_price` double(10,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `receipt_shipping` WRITE;
/*!40000 ALTER TABLE `receipt_shipping` DISABLE KEYS */;

INSERT INTO `receipt_shipping` (`id`, `merchant_id`, `shipping_state`, `shipping_name`, `shipping_name_en`, `shipping_start_position`, `shipping_memo`, `shipping_min_duration`, `shipping_max_duration`, `shipping_limit_date`, `shipping_limit_duration`, `shipping_status`, `shipping_default`, `shipping_price`, `deleted_at`)
VALUES
	(10,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666',NULL,NULL),
	(11,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666',NULL,NULL),
	(12,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666',NULL,NULL),
	(13,2,0,'Racten12','英名12','出発拠点12','メモ12','212','712','07/31/2018',0,1,'50012',NULL,NULL),
	(14,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666',NULL,NULL),
	(15,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666',NULL,NULL),
	(16,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666',NULL,NULL),
	(17,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666',NULL,NULL),
	(18,2,0,'Racten12','英名12','出発拠点12','メモ12','212','712','07/31/2018',0,1,'50012',NULL,NULL),
	(19,2,1,'Taobao1','Taobao1','1112','2223','3334','4445','08/03/2018',556,1,'666',NULL,NULL);

/*!40000 ALTER TABLE `receipt_shipping` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ receipt_stock
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipt_stock`;

CREATE TABLE `receipt_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_merchant_id` int(11) NOT NULL,
  `product_sku_color_id` int(11) NOT NULL,
  `product_sku_size_id` int(11) DEFAULT NULL,
  `product_stock_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_stock_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price_sale` double(10,0) DEFAULT NULL,
  `product_price_ref` double(10,0) DEFAULT NULL,
  `product_price_law` double(10,0) DEFAULT NULL,
  `product_count_endless` int(2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `receipt_stock` WRITE;
/*!40000 ALTER TABLE `receipt_stock` DISABLE KEYS */;

INSERT INTO `receipt_stock` (`id`, `product_id`, `product_count`, `product_merchant_id`, `product_sku_color_id`, `product_sku_size_id`, `product_stock_create`, `product_stock_update`, `product_price_sale`, `product_price_ref`, `product_price_law`, `product_count_endless`, `deleted_at`)
VALUES
	(9,158,89,2,516,517,'2018/07/30 12:58:20','2018/07/30 12:58:20',50000,0,0,NULL,NULL),
	(10,172,6,2,544,545,'2018/07/30 12:58:25','2018/07/30 12:58:25',350000,0,0,NULL,NULL),
	(11,158,87,2,516,517,'2018/07/30 12:58:20','2018/07/30 12:58:20',50000,0,0,NULL,NULL),
	(12,164,1,2,528,529,'2018/07/30 12:58:23','2018/07/30 12:58:23',54000,0,0,NULL,NULL),
	(13,172,6,2,544,545,'2018/07/30 12:58:25','2018/07/30 12:58:25',350000,0,0,NULL,NULL),
	(14,158,222,2,516,517,'2018/07/30 12:58:20','2018/07/30 12:58:20',50000,0,0,NULL,NULL),
	(15,159,333,2,518,519,NULL,NULL,2560000,0,0,NULL,NULL),
	(16,164,888,2,528,529,NULL,NULL,54000,0,0,NULL,NULL),
	(17,157,111,2,514,515,NULL,NULL,70000,0,0,NULL,NULL);

/*!40000 ALTER TABLE `receipt_stock` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ receipts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `receipts`;

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `profile_data` int(11) DEFAULT NULL,
  `address_data` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_data` int(11) DEFAULT NULL,
  `credit_data` int(11) DEFAULT NULL,
  `date_juchu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_pay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_delivery` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1','2','3','4') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;

INSERT INTO `receipts` (`id`, `merchant_id`, `customer_id`, `profile_data`, `address_data`, `shipping_data`, `credit_data`, `date_juchu`, `date_pay`, `date_delivery`, `status`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(10,2,16,11,'11',10,11,'2018/07/31 02:21:59',NULL,NULL,'3','2018-07-31 02:21:59','2018-07-31 02:21:59',NULL),
	(11,2,16,12,'12',11,12,'2018/07/31 02:21:59',NULL,NULL,'1','2018-07-31 02:21:59','2018-07-31 02:21:59',NULL),
	(12,2,16,13,'13',12,13,'2018/08/04 00:06:35',NULL,NULL,'2','2018-08-04 00:06:35','2018-08-04 00:06:35',NULL),
	(13,2,16,14,'14',13,14,'2018/08/04 00:21:59',NULL,NULL,'2','2018-08-04 00:21:59','2018-08-04 00:21:59',NULL),
	(14,2,16,15,'15',14,15,'2018/08/04 00:23:45',NULL,NULL,'2','2018-08-04 00:23:45','2018-08-04 00:23:45',NULL),
	(15,2,16,16,'16',15,16,'2018/08/10 12:47:37',NULL,NULL,'2','2018-08-10 12:47:37','2018-08-10 12:47:37',NULL),
	(16,2,21,18,'27',16,27,'2018/09/14 00:24:41',NULL,NULL,'2','2018-09-14 00:24:41','2018-09-14 00:24:41',NULL),
	(17,2,21,19,'28',17,28,'2018/09/14 00:25:29',NULL,NULL,'2','2018-09-14 00:25:29','2018-09-14 00:25:29',NULL),
	(18,2,21,20,'29',18,29,'2018/09/14 00:25:29',NULL,NULL,'2','2018-09-14 00:25:29','2018-09-14 00:25:29',NULL),
	(19,2,21,21,'30',19,30,'2018/09/14 02:53:49',NULL,NULL,'2','2018-09-14 02:53:49','2018-09-14 02:53:49',NULL);

/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;


# テーブルのダンプ users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(2) DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
