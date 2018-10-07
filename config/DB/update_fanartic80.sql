ALTER TABLE country_duties DROP country_duty;
ALTER TABLE country_duties DROP c_id;
ALTER TABLE country_duties ADD id int not null auto_increment primary key;

DROP TABLE IF EXISTS `customer_address`;

CREATE TABLE `customer_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_ex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalscore` double(255,0) DEFAULT NULL,
  `is_default` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `customer_address` (`id`, `customer_id`, `name`, `phone`, `zipcode`, `country`, `city`, `address_ex`, `province_jp`, `city_jp`, `address_jp`, `totalscore`, `is_default`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,16,'address1','080-0000-0000','140-0005','1',NULL,NULL,'東京都',NULL,'123',NULL,'1',NULL,NULL,NULL),
	(2,16,'address2','080-0200-0000','140-0015','1',NULL,NULL,'東京都',NULL,'12345689',NULL,'0',NULL,NULL,NULL),
	(3,21,'（公）武蔵野青年会議所','090-8432-2973','180-0004','AF','bbbbbbbbb','bbbbbbbbbbbbbbbbb','東京都',NULL,'1-4-28',NULL,'','2018-09-13 21:44:55','2018-09-30 16:44:30',NULL),
	(5,21,'井上智喜','090-8432-2973','150-0047','JP',NULL,NULL,'神奈川県','海老名市','11111',NULL,'1','2018-09-30 16:28:23','2018-09-30 16:32:16',NULL),
	(6,21,'（公）武蔵野青年会議所','090-8432-2973','180-0004','AI','aaaaaaaaaa','aaaaaaaaaaaaaa','東京都',NULL,'1-4-28',NULL,'0','2018-09-30 16:41:10','2018-09-30 16:41:10',NULL);


DROP TABLE IF EXISTS `receipt_address`;

CREATE TABLE `receipt_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_ex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_jp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalscore` double(255,0) DEFAULT NULL,
  `is_default` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;