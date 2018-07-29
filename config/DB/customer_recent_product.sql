/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : shoppingmoll

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-07-29 14:36:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer_recent_product
-- ----------------------------
DROP TABLE IF EXISTS `customer_recent_product`;
CREATE TABLE `customer_recent_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `recent_product_id` int(11) DEFAULT NULL,
  `recent_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET FOREIGN_KEY_CHECKS=1;
