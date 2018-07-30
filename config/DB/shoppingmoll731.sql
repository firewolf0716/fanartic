/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : shoppingmoll

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-07-31 02:25:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` int(11) DEFAULT NULL,
  `customer_name_first` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_second` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_kana_first` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name_kana_second` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `customer_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` int(255) DEFAULT '0',
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('16', null, 'kan', 'hoke', 'ddd', 'aaa', 'hokelucpy@gmail.com', '$2y$10$9sNU9.MHIsQZStMVEs5b7eG3GGK72RdmL7ZvZstt0sm4aU7gjV6be', '080-0000-0000', '140-0005', null, null, null, '東京都', '品川区広町', '11-001', null, null, null, '1960/1/1', null, null, null, null, '1');

-- ----------------------------
-- Table structure for customer_address
-- ----------------------------
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
  `address_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_address
-- ----------------------------
INSERT INTO `customer_address` VALUES ('1', '16', 'address1', '080-0000-0000', '140-0005', '1', null, null, '東京都', '品川区広町', '123', null, '1', null, null);
INSERT INTO `customer_address` VALUES ('2', '16', 'address2', '080-0200-0000', '140-0015', '1', null, null, '東京都', '品川区西大井', '12345689', null, '0', null, null);

-- ----------------------------
-- Table structure for customer_buy_history
-- ----------------------------
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_buy_history
-- ----------------------------
INSERT INTO `customer_buy_history` VALUES ('31', '16', '2', '158', '516', '517', '2', '50000.00', '1', '1', '4', '4', '2018/07/31 02:21:58');
INSERT INTO `customer_buy_history` VALUES ('32', '16', '2', '172', '544', '545', '1', '350000.00', '1', '1', '1', '4', '2018/07/31 02:21:59');

-- ----------------------------
-- Table structure for customer_card
-- ----------------------------
DROP TABLE IF EXISTS `customer_card`;
CREATE TABLE `customer_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `card_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_validdate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_card
-- ----------------------------
INSERT INTO `customer_card` VALUES ('1', '16', '1234567890', '1597', 'hhh', '2018/12', null, null);
INSERT INTO `customer_card` VALUES ('2', '16', '9876543210', '1234', 'tgb', '2018/8', null, null);

-- ----------------------------
-- Table structure for customer_cart
-- ----------------------------
DROP TABLE IF EXISTS `customer_cart`;
CREATE TABLE `customer_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_customerid` int(11) DEFAULT NULL,
  `cart_productid` int(11) DEFAULT NULL,
  `cart_skucolorid` int(11) DEFAULT NULL,
  `cart_skusizeid` int(11) DEFAULT NULL,
  `cart_amount` double(255,0) DEFAULT NULL,
  `cart_status` int(11) DEFAULT '0' COMMENT '0 => cart, 1=>waiting,2=>accept,3=>decline',
  `cart_history` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '1',
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_cart
-- ----------------------------

-- ----------------------------
-- Table structure for customer_favourite
-- ----------------------------
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
  `fav_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fav_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_favourite
-- ----------------------------

-- ----------------------------
-- Table structure for customer_magazine
-- ----------------------------
DROP TABLE IF EXISTS `customer_magazine`;
CREATE TABLE `customer_magazine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `magazine_status` int(11) DEFAULT NULL COMMENT '''0'' => OFF, ''1'' => ON',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_magazine
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_recent_product
-- ----------------------------
INSERT INTO `customer_recent_product` VALUES ('71', '16', '158', '2018/07/31 02:21:40');
INSERT INTO `customer_recent_product` VALUES ('72', '16', '172', '2018/07/31 02:21:48');

-- ----------------------------
-- Table structure for customer_score
-- ----------------------------
DROP TABLE IF EXISTS `customer_score`;
CREATE TABLE `customer_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `score_value` int(255) DEFAULT NULL,
  `score_action` int(255) DEFAULT NULL COMMENT '''1'' => buy, ''0'' => ''view''',
  `score_status` int(11) DEFAULT NULL COMMENT '''1'' => valid, ''0'' => ''invalid''',
  `score_type` int(11) DEFAULT NULL COMMENT '''1'' => plus, ''0'' => ''minus''',
  `score_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_score
-- ----------------------------
INSERT INTO `customer_score` VALUES ('1', '16', '12', '1000', '1', '1', '1', '2018/07/30 10:24:58', '2018/07/30 10:24:58');
INSERT INTO `customer_score` VALUES ('2', '16', '1', '1000', '1', '1', '1', '2018/07/30 21:37:00', '2018/07/30 21:37:00');
INSERT INTO `customer_score` VALUES ('3', '16', '15', '1000', '1', '1', '1', '2018/07/30 22:06:34', '2018/07/30 22:06:34');
INSERT INTO `customer_score` VALUES ('4', '16', '4', '1000', '1', '1', '1', '2018/07/30 22:06:35', '2018/07/30 22:06:35');
INSERT INTO `customer_score` VALUES ('5', '16', '15', '1000', '1', '1', '1', '2018/07/31 02:21:59', '2018/07/31 02:21:59');
INSERT INTO `customer_score` VALUES ('6', '16', '4', '1000', '1', '1', '1', '2018/07/31 02:21:59', '2018/07/31 02:21:59');

-- ----------------------------
-- Table structure for customer_scoresum
-- ----------------------------
DROP TABLE IF EXISTS `customer_scoresum`;
CREATE TABLE `customer_scoresum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `scoresum_value` double(255,0) DEFAULT NULL,
  `scoresum_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scoresum_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of customer_scoresum
-- ----------------------------
INSERT INTO `customer_scoresum` VALUES ('1', '16', '12', '1000', '2018/07/30 10:24:58', '2018/07/30 10:24:58');
INSERT INTO `customer_scoresum` VALUES ('2', '16', '1', '1000', '2018/07/30 21:37:00', '2018/07/30 21:37:00');
INSERT INTO `customer_scoresum` VALUES ('3', '16', '15', '2000', '2018/07/30 22:06:34', '2018/07/31 02:21:59');
INSERT INTO `customer_scoresum` VALUES ('4', '16', '4', '2000', '2018/07/30 22:06:35', '2018/07/31 02:21:59');

-- ----------------------------
-- Table structure for fan_deliverysetting
-- ----------------------------
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
  `ds_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_deliverysetting
-- ----------------------------

-- ----------------------------
-- Table structure for fan_merchant
-- ----------------------------
DROP TABLE IF EXISTS `fan_merchant`;
CREATE TABLE `fan_merchant` (
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
  `merchant_open_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_fixcost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_opencost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_merchant
-- ----------------------------
INSERT INTO `fan_merchant` VALUES ('1', '1', '1', '0', 'Butterfly Comany', 'Butterfly Merchant', 'Butterfly', 'Butterfly Manager', '3', 'butterfly', '123456789', '123456789', '123456789', '2', '2', 'Address', '', '', '', '100.00', '150.00', '1', '2018/07/04 12:43:23', '2018/07/04 12:45:16', null, null, null, '1', '100', '100');
INSERT INTO `fan_merchant` VALUES ('2', '2', '2', null, 'Select Shop1', 'Select Shop2', 'Select Shop3', 'Select Shop4', '3', 'root', 'root', '123456789', '123456789', '1', '', '', 'Adress1', 'Adress2', 'Adress3', '1000.00', '2000.00', '1', '2018/07/04 12:45:21', '2018/07/28 04:17:51', null, null, null, '1', '20000', '12345');
INSERT INTO `fan_merchant` VALUES ('3', '3', '2', '0', 'Not New Shop', 'Not New Shop', 'Not New Shop', 'Not New Shop', '5', '23@2.com', '123456789', '123456789', '123456789', '1', '', '', 'address01', 'address02', 'address03', '2.00', null, '1', '2018/07/04 12:46:48', '2018/07/06 05:41:27', null, null, null, '1', '200', '120');

-- ----------------------------
-- Table structure for fan_merchant_submit
-- ----------------------------
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
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_merchant_submit
-- ----------------------------

-- ----------------------------
-- Table structure for fan_product
-- ----------------------------
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
  `product_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_product
-- ----------------------------
INSERT INTO `fan_product` VALUES ('157', '1', '', '1', '69', '', '10101-170629-0198', 'HAT 1', 'HAT 1', 'HAT 1', '1', '5', '1', null, '100', '', '', '', '(表地)<br>コットン67%<br>ナイロン33%<br>(裏地)<br>ナイロン<br>(中綿)<br>ポリエステル<br>(ファー部分)<br>ダウン90%<br>フェザー10%<br>(部分使い)<br>メタルパーツ', '0', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '1');
INSERT INTO `fan_product` VALUES ('158', '1', null, '15', '32', null, '10101-170629-0199', 'HAND SHIRT 1', 'product_name_kana', 'HAND SHIRT 1', '1', '5', '2', null, '100', null, null, null, null, '1', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2', null, '1', '1', '0', '0', '0', '43', null, null, '1', '1');
INSERT INTO `fan_product` VALUES ('159', '1', '', '4', '32', '', '10101-170629-0200', 'HAND SHIRT 2', 'HAND SHIRT 2', 'HAND SHIRT 2', '1', '5', '3', null, '100', '', '', '', '', '0', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '2');
INSERT INTO `fan_product` VALUES ('160', '1', '', '192', '69', '', '10101-170629-0201', 'HAT 2', 'HAT 2', 'HAT 2', '0', '5', '4', null, '100', '', '', '', '', '1', '2018/07/30 12:58:21', '2018/07/30 12:58:21', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '2');
INSERT INTO `fan_product` VALUES ('161', '1', '', '192', '65', '', '10101-170629-0202', 'sleeveless shirt 5', 'sleeveless shirt 5', 'sleeveless shirt 5', '0', '5', '5', null, '100', '', '', '', '', '0', '2018/07/30 12:58:21', '2018/07/30 12:58:21', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '3');
INSERT INTO `fan_product` VALUES ('162', '1', '', '192', '69', '', '10101-170629-0203', 'HAT 3', 'HAT 3', 'HAT 3', '1', '5', '6', null, '100', '', '', '', '', '1', '2018/07/30 12:58:22', '2018/07/30 12:58:22', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '3');
INSERT INTO `fan_product` VALUES ('163', '1', '', '1', '65', '', '10101-170629-0204', 'sleeveless shirt 6', 'sleeveless shirt 6', 'sleeveless shirt 6', '1', '5', '7', null, '100', '', '', '', '', '1', '2018/07/30 12:58:22', '2018/07/30 12:58:22', '2', '0', '1', '1', '0', '0', '1', '42', null, null, '1', '2');
INSERT INTO `fan_product` VALUES ('164', '1', '', '12', '32', '', '10101-170629-0205', 'HAND SHIRT 3', 'HAND SHIRT 3', 'HAND SHIRT 3', '1', '5', '8', null, '100', '', '', '', '', '1', '2018/07/30 12:58:23', '2018/07/30 12:58:23', '2', '0', '1', '1', '0', '0', '1', '42', null, null, '1', '3');
INSERT INTO `fan_product` VALUES ('165', '1', '', '1', '33', '', '10101-170629-0206', 'sleeveless shirt 1', 'sleeveless shirt 1', 'sleeveless shirt 1', '0', '5', '1', null, '100', '', '', '', '', '0', '2018/07/30 12:58:23', '2018/07/30 12:58:23', '2', '0', '1', '1', '0', '0', '1', '42', null, null, '1', '2');
INSERT INTO `fan_product` VALUES ('166', '1', '', '12', '69', '', '10101-170629-0207', 'HAT 4', 'HAT 4', 'HAT 4', '0', '5', '2', null, '100', '', '', '', '', '0', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2', '0', '1', '1', '0', '0', '1', '42', null, null, '1', '2');
INSERT INTO `fan_product` VALUES ('167', '1', '', '15', '71', '', '10101-170629-0208', 'Wallet 1', 'Wallet 1', 'Wallet 1', '0', '5', '3', null, '100', '', '', '', '', '0', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2', '0', '1', '1', '0', '0', '1', '42', null, null, '1', '10');
INSERT INTO `fan_product` VALUES ('168', '1', '', '15', '63', '', '10101-170629-0209', 'Ring 1', 'Ring 1', 'Ring 1', '1', '5', '4', null, '100', '', '', '', '', '1', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2', '0', '1', '1', '0', '0', '1', '42', null, null, '1', '7');
INSERT INTO `fan_product` VALUES ('169', '1', '', '15', '33', '', '10101-170629-0210', 'sleeveless shirt 2', 'sleeveless shirt 2', 'sleeveless shirt 2', '0', '5', '5', null, '100', '', '', '', '', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2', '0', '1', '1', '0', '0', '1', '42', null, null, '1', '1');
INSERT INTO `fan_product` VALUES ('170', '1', '', '4', '71', '', '10101-170629-0211', 'Wallet 3', 'Wallet 3', 'Wallet 3', '0', '5', '6', null, '100', '', '', '', '', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2', '0', '1', '1', '0', '0', '1', '42', null, null, '1', '10');
INSERT INTO `fan_product` VALUES ('171', '1', null, '1', '63', null, '10101-170629-0212', 'Ring 2', 'product_name_kana', 'Ring 2', '0', '5', '7', null, '100', null, null, null, null, '0', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2', null, '1', '1', '0', '0', '0', '42', null, null, '1', '7');
INSERT INTO `fan_product` VALUES ('172', '1', '', '4', '33', '', '10101-170629-0213', 'sleeveless shirt 3', 'sleeveless shirt 3', 'sleeveless shirt 3', '1', '5', '8', null, '100', '', '', '', '', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '2');
INSERT INTO `fan_product` VALUES ('173', '1', '', '4', '33', '', '10101-170629-0214', 'sleeveless shirt 4', 'sleeveless shirt 4', 'sleeveless shirt 4', '1', '5', '1', null, '100', '', '', '', '', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '3');
INSERT INTO `fan_product` VALUES ('174', '1', '', '12', '71', '', '10101-170629-0215', 'Wallet 2', 'Wallet 2', 'Wallet 2', '1', '5', '5', null, '100', '', '', '', '', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '10');
INSERT INTO `fan_product` VALUES ('175', '1', '', '12', '63', '', '10101-170629-0216', 'Ring 3', 'Ring 3', 'Ring 3', '0', '5', '6', null, '100', '', '', '', '', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '7');

-- ----------------------------
-- Table structure for fan_product_image
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_image`;
CREATE TABLE `fan_product_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `master_image_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fan_product_image
-- ----------------------------
INSERT INTO `fan_product_image` VALUES ('184', '138', '2', '95', '1', 'cap_01_01.jpg', '2018/07/19 05:53:01', '2018/07/19 05:53:01');
INSERT INTO `fan_product_image` VALUES ('185', '138', '2', '96', '1', 'cap_01_02.jpg', '2018/07/19 05:53:01', '2018/07/19 05:53:01');
INSERT INTO `fan_product_image` VALUES ('186', '138', '2', '97', '1', 'cap_01_03.jpg', '2018/07/19 05:53:01', '2018/07/19 05:53:01');
INSERT INTO `fan_product_image` VALUES ('187', '138', '2', '98', '1', 'cap_01_04.jpg', '2018/07/19 05:53:01', '2018/07/19 05:53:01');
INSERT INTO `fan_product_image` VALUES ('188', '139', '2', '99', '2', 'shirts_02_01.jpg', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_image` VALUES ('189', '139', '2', '100', '2', 'shirts_02_02.jpg', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_image` VALUES ('190', '140', '2', '101', '3', 'shirts_03_01.jpg', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_image` VALUES ('191', '140', '2', '102', '3', 'shirts_03_02.jpg', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_image` VALUES ('192', '141', '2', '103', '4', 'cap_02_01.jpg', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_image` VALUES ('193', '141', '2', '104', '4', 'cap_02_02.jpg', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_image` VALUES ('194', '141', '2', '105', '4', 'cap_02_03.jpg', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_image` VALUES ('195', '141', '2', '106', '4', 'cap_02_04.jpg', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_image` VALUES ('196', '142', '2', '107', '5', 'sleeveless_shirt_01_01.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('197', '142', '2', '108', '5', 'sleeveless_shirt_01_02.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('198', '143', '2', '109', '6', 'cap_03_01.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('199', '143', '2', '110', '6', 'cap_03_02.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('200', '143', '2', '111', '6', 'cap_03_03.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('201', '143', '2', '112', '6', 'cap_03_04.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('202', '144', '2', '113', '7', 'sleeveless_shirt_02_01.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('203', '144', '2', '114', '7', 'sleeveless_shirt_02_02.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('204', '145', '2', '115', '8', 'shirts_01_01.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('205', '145', '2', '116', '8', 'shirts_01_02.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('206', '146', '2', '117', '1', 'sleeveless_shirt_03_01.jpg', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_image` VALUES ('207', '147', '2', '118', '2', 'cap_04_01.jpg', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_image` VALUES ('208', '147', '2', '119', '2', 'cap_04_02.jpg', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_image` VALUES ('209', '147', '2', '120', '2', 'cap_04_03.jpg', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_image` VALUES ('210', '147', '2', '121', '2', 'cap_04_04.jpg', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_image` VALUES ('211', '148', '2', '122', '3', 'wallet_03_01.jpg', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_image` VALUES ('212', '149', '2', '123', '4', 'ring_01_01.jpg', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_image` VALUES ('213', '150', '2', '124', '5', 'sleeveless_shirt_04_01.jpg', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_image` VALUES ('214', '151', '2', '125', '6', 'wallet_02_01.jpg', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_image` VALUES ('215', '151', '2', '126', '6', 'wallet_02_02.jpg', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_image` VALUES ('216', '151', '2', '127', '6', 'wallet_02_03.jpg', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_image` VALUES ('217', '152', '2', '128', '7', 'ring_02_01.jpg', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_image` VALUES ('218', '152', '2', '129', '7', 'ring_02_02.jpg', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_image` VALUES ('219', '153', '2', '130', '8', 'sleeveless_shirt_05_01.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('220', '154', '2', '131', '1', 'sleeveless_shirt_06_01.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('221', '155', '2', '132', '5', 'wallet_01_01.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('222', '155', '2', '133', '5', 'wallet_01_02.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('223', '155', '2', '134', '5', 'wallet_01_03.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('224', '156', '2', '135', '6', 'ring_03_01.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('225', '156', '2', '136', '6', 'ring_03_02.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('226', '156', '2', '137', '6', 'ring_03_03.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('227', '156', '2', '138', '6', 'ring_03_04.jpg', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_image` VALUES ('228', '157', '2', '139', '1', 'cap_01_01.jpg', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_image` VALUES ('229', '157', '2', '140', '1', 'cap_01_02.jpg', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_image` VALUES ('230', '157', '2', '141', '1', 'cap_01_03.jpg', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_image` VALUES ('231', '157', '2', '142', '1', 'cap_01_04.jpg', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_image` VALUES ('232', '158', '2', '143', '2', 'shirts_02_01.jpg', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_image` VALUES ('233', '158', '2', '144', '2', 'shirts_02_02.jpg', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_image` VALUES ('234', '159', '2', '145', '3', 'shirts_03_01.jpg', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_image` VALUES ('235', '159', '2', '146', '3', 'shirts_03_02.jpg', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_image` VALUES ('236', '160', '2', '147', '4', 'cap_02_01.jpg', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_image` VALUES ('237', '160', '2', '148', '4', 'cap_02_02.jpg', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_image` VALUES ('238', '160', '2', '149', '4', 'cap_02_03.jpg', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_image` VALUES ('239', '160', '2', '150', '4', 'cap_02_04.jpg', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_image` VALUES ('240', '161', '2', '151', '5', 'sleeveless_shirt_01_01.jpg', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_image` VALUES ('241', '161', '2', '152', '5', 'sleeveless_shirt_01_02.jpg', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_image` VALUES ('242', '162', '2', '153', '6', 'cap_03_01.jpg', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_image` VALUES ('243', '162', '2', '154', '6', 'cap_03_02.jpg', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_image` VALUES ('244', '162', '2', '155', '6', 'cap_03_03.jpg', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_image` VALUES ('245', '162', '2', '156', '6', 'cap_03_04.jpg', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_image` VALUES ('246', '163', '2', '157', '7', 'sleeveless_shirt_02_01.jpg', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_image` VALUES ('247', '163', '2', '158', '7', 'sleeveless_shirt_02_02.jpg', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_image` VALUES ('248', '164', '2', '159', '8', 'shirts_01_01.jpg', '2018/07/30 12:58:23', '2018/07/30 12:58:23');
INSERT INTO `fan_product_image` VALUES ('249', '164', '2', '160', '8', 'shirts_01_02.jpg', '2018/07/30 12:58:23', '2018/07/30 12:58:23');
INSERT INTO `fan_product_image` VALUES ('250', '165', '2', '161', '1', 'sleeveless_shirt_03_01.jpg', '2018/07/30 12:58:23', '2018/07/30 12:58:23');
INSERT INTO `fan_product_image` VALUES ('251', '166', '2', '162', '2', 'cap_04_01.jpg', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_image` VALUES ('252', '166', '2', '163', '2', 'cap_04_02.jpg', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_image` VALUES ('253', '166', '2', '164', '2', 'cap_04_03.jpg', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_image` VALUES ('254', '166', '2', '165', '2', 'cap_04_04.jpg', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_image` VALUES ('255', '167', '2', '166', '3', 'wallet_03_01.jpg', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_image` VALUES ('256', '168', '2', '167', '4', 'ring_01_01.jpg', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_image` VALUES ('257', '169', '2', '168', '5', 'sleeveless_shirt_04_01.jpg', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_image` VALUES ('258', '170', '2', '169', '6', 'wallet_02_01.jpg', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_image` VALUES ('259', '170', '2', '170', '6', 'wallet_02_02.jpg', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_image` VALUES ('260', '170', '2', '171', '6', 'wallet_02_03.jpg', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_image` VALUES ('261', '171', '2', '172', '7', 'ring_02_01.jpg', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_image` VALUES ('262', '171', '2', '173', '7', 'ring_02_02.jpg', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_image` VALUES ('263', '172', '2', '174', '8', 'sleeveless_shirt_05_01.jpg', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_image` VALUES ('264', '173', '2', '175', '1', 'sleeveless_shirt_06_01.jpg', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_image` VALUES ('265', '174', '2', '176', '5', 'wallet_01_01.jpg', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_image` VALUES ('266', '174', '2', '177', '5', 'wallet_01_02.jpg', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_image` VALUES ('267', '174', '2', '178', '5', 'wallet_01_03.jpg', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_image` VALUES ('268', '175', '2', '179', '6', 'ring_03_01.jpg', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_image` VALUES ('269', '175', '2', '180', '6', 'ring_03_02.jpg', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_image` VALUES ('270', '175', '2', '181', '6', 'ring_03_03.jpg', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_image` VALUES ('271', '175', '2', '182', '6', 'ring_03_04.jpg', '2018/07/30 12:58:26', '2018/07/30 12:58:26');

-- ----------------------------
-- Table structure for fan_product_master_image
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_master_image`;
CREATE TABLE `fan_product_master_image` (
  `master_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `master_image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `master_image_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `master_image_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`master_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fan_product_master_image
-- ----------------------------
INSERT INTO `fan_product_master_image` VALUES ('95', '138', 'cap_01_01.jpg', '2', '2018/07/19 05:53:01', '2018/07/19 05:53:01');
INSERT INTO `fan_product_master_image` VALUES ('96', '138', 'cap_01_02.jpg', '2', '2018/07/19 05:53:01', '2018/07/19 05:53:01');
INSERT INTO `fan_product_master_image` VALUES ('97', '138', 'cap_01_03.jpg', '2', '2018/07/19 05:53:01', '2018/07/19 05:53:01');
INSERT INTO `fan_product_master_image` VALUES ('98', '138', 'cap_01_04.jpg', '2', '2018/07/19 05:53:01', '2018/07/19 05:53:01');
INSERT INTO `fan_product_master_image` VALUES ('99', '139', 'shirts_02_01.jpg', '2', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_master_image` VALUES ('100', '139', 'shirts_02_02.jpg', '2', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_master_image` VALUES ('101', '140', 'shirts_03_01.jpg', '2', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_master_image` VALUES ('102', '140', 'shirts_03_02.jpg', '2', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_master_image` VALUES ('103', '141', 'cap_02_01.jpg', '2', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_master_image` VALUES ('104', '141', 'cap_02_02.jpg', '2', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_master_image` VALUES ('105', '141', 'cap_02_03.jpg', '2', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_master_image` VALUES ('106', '141', 'cap_02_04.jpg', '2', '2018/07/19 05:53:02', '2018/07/19 05:53:02');
INSERT INTO `fan_product_master_image` VALUES ('107', '142', 'sleeveless_shirt_01_01.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('108', '142', 'sleeveless_shirt_01_02.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('109', '143', 'cap_03_01.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('110', '143', 'cap_03_02.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('111', '143', 'cap_03_03.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('112', '143', 'cap_03_04.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('113', '144', 'sleeveless_shirt_02_01.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('114', '144', 'sleeveless_shirt_02_02.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('115', '145', 'shirts_01_01.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('116', '145', 'shirts_01_02.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('117', '146', 'sleeveless_shirt_03_01.jpg', '2', '2018/07/19 05:53:03', '2018/07/19 05:53:03');
INSERT INTO `fan_product_master_image` VALUES ('118', '147', 'cap_04_01.jpg', '2', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_master_image` VALUES ('119', '147', 'cap_04_02.jpg', '2', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_master_image` VALUES ('120', '147', 'cap_04_03.jpg', '2', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_master_image` VALUES ('121', '147', 'cap_04_04.jpg', '2', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_master_image` VALUES ('122', '148', 'wallet_03_01.jpg', '2', '2018/07/19 05:53:04', '2018/07/19 05:53:04');
INSERT INTO `fan_product_master_image` VALUES ('123', '149', 'ring_01_01.jpg', '2', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_master_image` VALUES ('124', '150', 'sleeveless_shirt_04_01.jpg', '2', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_master_image` VALUES ('125', '151', 'wallet_02_01.jpg', '2', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_master_image` VALUES ('126', '151', 'wallet_02_02.jpg', '2', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_master_image` VALUES ('127', '151', 'wallet_02_03.jpg', '2', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_master_image` VALUES ('128', '152', 'ring_02_01.jpg', '2', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_master_image` VALUES ('129', '152', 'ring_02_02.jpg', '2', '2018/07/19 05:53:05', '2018/07/19 05:53:05');
INSERT INTO `fan_product_master_image` VALUES ('130', '153', 'sleeveless_shirt_05_01.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('131', '154', 'sleeveless_shirt_06_01.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('132', '155', 'wallet_01_01.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('133', '155', 'wallet_01_02.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('134', '155', 'wallet_01_03.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('135', '156', 'ring_03_01.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('136', '156', 'ring_03_02.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('137', '156', 'ring_03_03.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('138', '156', 'ring_03_04.jpg', '2', '2018/07/19 05:53:06', '2018/07/19 05:53:06');
INSERT INTO `fan_product_master_image` VALUES ('139', '157', 'cap_01_01.jpg', '2', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_master_image` VALUES ('140', '157', 'cap_01_02.jpg', '2', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_master_image` VALUES ('141', '157', 'cap_01_03.jpg', '2', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_master_image` VALUES ('142', '157', 'cap_01_04.jpg', '2', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_master_image` VALUES ('143', '158', 'shirts_02_01.jpg', '2', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_master_image` VALUES ('144', '158', 'shirts_02_02.jpg', '2', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_master_image` VALUES ('145', '159', 'shirts_03_01.jpg', '2', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_master_image` VALUES ('146', '159', 'shirts_03_02.jpg', '2', '2018/07/30 12:58:20', '2018/07/30 12:58:20');
INSERT INTO `fan_product_master_image` VALUES ('147', '160', 'cap_02_01.jpg', '2', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_master_image` VALUES ('148', '160', 'cap_02_02.jpg', '2', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_master_image` VALUES ('149', '160', 'cap_02_03.jpg', '2', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_master_image` VALUES ('150', '160', 'cap_02_04.jpg', '2', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_master_image` VALUES ('151', '161', 'sleeveless_shirt_01_01.jpg', '2', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_master_image` VALUES ('152', '161', 'sleeveless_shirt_01_02.jpg', '2', '2018/07/30 12:58:21', '2018/07/30 12:58:21');
INSERT INTO `fan_product_master_image` VALUES ('153', '162', 'cap_03_01.jpg', '2', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_master_image` VALUES ('154', '162', 'cap_03_02.jpg', '2', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_master_image` VALUES ('155', '162', 'cap_03_03.jpg', '2', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_master_image` VALUES ('156', '162', 'cap_03_04.jpg', '2', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_master_image` VALUES ('157', '163', 'sleeveless_shirt_02_01.jpg', '2', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_master_image` VALUES ('158', '163', 'sleeveless_shirt_02_02.jpg', '2', '2018/07/30 12:58:22', '2018/07/30 12:58:22');
INSERT INTO `fan_product_master_image` VALUES ('159', '164', 'shirts_01_01.jpg', '2', '2018/07/30 12:58:23', '2018/07/30 12:58:23');
INSERT INTO `fan_product_master_image` VALUES ('160', '164', 'shirts_01_02.jpg', '2', '2018/07/30 12:58:23', '2018/07/30 12:58:23');
INSERT INTO `fan_product_master_image` VALUES ('161', '165', 'sleeveless_shirt_03_01.jpg', '2', '2018/07/30 12:58:23', '2018/07/30 12:58:23');
INSERT INTO `fan_product_master_image` VALUES ('162', '166', 'cap_04_01.jpg', '2', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_master_image` VALUES ('163', '166', 'cap_04_02.jpg', '2', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_master_image` VALUES ('164', '166', 'cap_04_03.jpg', '2', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_master_image` VALUES ('165', '166', 'cap_04_04.jpg', '2', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_master_image` VALUES ('166', '167', 'wallet_03_01.jpg', '2', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_master_image` VALUES ('167', '168', 'ring_01_01.jpg', '2', '2018/07/30 12:58:24', '2018/07/30 12:58:24');
INSERT INTO `fan_product_master_image` VALUES ('168', '169', 'sleeveless_shirt_04_01.jpg', '2', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_master_image` VALUES ('169', '170', 'wallet_02_01.jpg', '2', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_master_image` VALUES ('170', '170', 'wallet_02_02.jpg', '2', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_master_image` VALUES ('171', '170', 'wallet_02_03.jpg', '2', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_master_image` VALUES ('172', '171', 'ring_02_01.jpg', '2', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_master_image` VALUES ('173', '171', 'ring_02_02.jpg', '2', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_master_image` VALUES ('174', '172', 'sleeveless_shirt_05_01.jpg', '2', '2018/07/30 12:58:25', '2018/07/30 12:58:25');
INSERT INTO `fan_product_master_image` VALUES ('175', '173', 'sleeveless_shirt_06_01.jpg', '2', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_master_image` VALUES ('176', '174', 'wallet_01_01.jpg', '2', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_master_image` VALUES ('177', '174', 'wallet_01_02.jpg', '2', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_master_image` VALUES ('178', '174', 'wallet_01_03.jpg', '2', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_master_image` VALUES ('179', '175', 'ring_03_01.jpg', '2', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_master_image` VALUES ('180', '175', 'ring_03_02.jpg', '2', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_master_image` VALUES ('181', '175', 'ring_03_03.jpg', '2', '2018/07/30 12:58:26', '2018/07/30 12:58:26');
INSERT INTO `fan_product_master_image` VALUES ('182', '175', 'ring_03_04.jpg', '2', '2018/07/30 12:58:26', '2018/07/30 12:58:26');

-- ----------------------------
-- Table structure for fan_product_sku
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_sku`;
CREATE TABLE `fan_product_sku` (
  `sku_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `sku_type` int(2) DEFAULT NULL,
  `sku_type_id` int(11) DEFAULT NULL,
  `sku_status` int(2) DEFAULT NULL,
  `sku_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_merchant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fan_product_sku
-- ----------------------------
INSERT INTO `fan_product_sku` VALUES ('514', '157', '1', '1', '1', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2');
INSERT INTO `fan_product_sku` VALUES ('515', '157', '2', '1', '1', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2');
INSERT INTO `fan_product_sku` VALUES ('516', '158', '1', '2', '1', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2');
INSERT INTO `fan_product_sku` VALUES ('517', '158', '2', '1', '1', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2');
INSERT INTO `fan_product_sku` VALUES ('518', '159', '1', '3', '1', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2');
INSERT INTO `fan_product_sku` VALUES ('519', '159', '2', '2', '1', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2');
INSERT INTO `fan_product_sku` VALUES ('520', '160', '1', '4', '1', '2018/07/30 12:58:21', '2018/07/30 12:58:21', '2');
INSERT INTO `fan_product_sku` VALUES ('521', '160', '2', '2', '1', '2018/07/30 12:58:21', '2018/07/30 12:58:21', '2');
INSERT INTO `fan_product_sku` VALUES ('522', '161', '1', '5', '1', '2018/07/30 12:58:21', '2018/07/30 12:58:21', '2');
INSERT INTO `fan_product_sku` VALUES ('523', '161', '2', '3', '1', '2018/07/30 12:58:21', '2018/07/30 12:58:21', '2');
INSERT INTO `fan_product_sku` VALUES ('524', '162', '1', '6', '1', '2018/07/30 12:58:22', '2018/07/30 12:58:22', '2');
INSERT INTO `fan_product_sku` VALUES ('525', '162', '2', '3', '1', '2018/07/30 12:58:22', '2018/07/30 12:58:22', '2');
INSERT INTO `fan_product_sku` VALUES ('526', '163', '1', '7', '1', '2018/07/30 12:58:22', '2018/07/30 12:58:22', '2');
INSERT INTO `fan_product_sku` VALUES ('527', '163', '2', '2', '1', '2018/07/30 12:58:22', '2018/07/30 12:58:22', '2');
INSERT INTO `fan_product_sku` VALUES ('528', '164', '1', '8', '1', '2018/07/30 12:58:23', '2018/07/30 12:58:23', '2');
INSERT INTO `fan_product_sku` VALUES ('529', '164', '2', '3', '1', '2018/07/30 12:58:23', '2018/07/30 12:58:23', '2');
INSERT INTO `fan_product_sku` VALUES ('530', '165', '1', '1', '1', '2018/07/30 12:58:23', '2018/07/30 12:58:23', '2');
INSERT INTO `fan_product_sku` VALUES ('531', '165', '2', '2', '1', '2018/07/30 12:58:23', '2018/07/30 12:58:23', '2');
INSERT INTO `fan_product_sku` VALUES ('532', '166', '1', '2', '1', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2');
INSERT INTO `fan_product_sku` VALUES ('533', '166', '2', '2', '1', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2');
INSERT INTO `fan_product_sku` VALUES ('534', '167', '1', '3', '1', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2');
INSERT INTO `fan_product_sku` VALUES ('535', '167', '2', '10', '1', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2');
INSERT INTO `fan_product_sku` VALUES ('536', '168', '1', '4', '1', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2');
INSERT INTO `fan_product_sku` VALUES ('537', '168', '2', '7', '1', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '2');
INSERT INTO `fan_product_sku` VALUES ('538', '169', '1', '5', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2');
INSERT INTO `fan_product_sku` VALUES ('539', '169', '2', '1', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2');
INSERT INTO `fan_product_sku` VALUES ('540', '170', '1', '6', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2');
INSERT INTO `fan_product_sku` VALUES ('541', '170', '2', '10', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2');
INSERT INTO `fan_product_sku` VALUES ('542', '171', '1', '7', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2');
INSERT INTO `fan_product_sku` VALUES ('543', '171', '2', '7', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2');
INSERT INTO `fan_product_sku` VALUES ('544', '172', '1', '8', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2');
INSERT INTO `fan_product_sku` VALUES ('545', '172', '2', '2', '1', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2');
INSERT INTO `fan_product_sku` VALUES ('546', '173', '1', '1', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2');
INSERT INTO `fan_product_sku` VALUES ('547', '173', '2', '3', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2');
INSERT INTO `fan_product_sku` VALUES ('548', '174', '1', '5', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2');
INSERT INTO `fan_product_sku` VALUES ('549', '174', '2', '10', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2');
INSERT INTO `fan_product_sku` VALUES ('550', '175', '1', '6', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2');
INSERT INTO `fan_product_sku` VALUES ('551', '175', '2', '7', '1', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '2');

-- ----------------------------
-- Table structure for fan_product_stock_management
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_stock_management`;
CREATE TABLE `fan_product_stock_management` (
  `product_stock_id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`product_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fan_product_stock_management
-- ----------------------------
INSERT INTO `fan_product_stock_management` VALUES ('432', '157', '1', '2', '514', '515', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '70000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('433', '158', '87', '2', '516', '517', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '50000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('434', '159', '2', '2', '518', '519', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '2560000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('435', '160', '1', '2', '520', '521', '2018/07/30 12:58:21', '2018/07/30 12:58:21', '28000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('436', '161', '5', '2', '522', '523', '2018/07/30 12:58:21', '2018/07/30 12:58:21', '150000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('437', '162', '1', '2', '524', '525', '2018/07/30 12:58:22', '2018/07/30 12:58:22', '504000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('438', '163', '3', '2', '526', '527', '2018/07/30 12:58:22', '2018/07/30 12:58:22', '20000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('439', '164', '1', '2', '528', '529', '2018/07/30 12:58:23', '2018/07/30 12:58:23', '54000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('440', '165', '1', '2', '530', '531', '2018/07/30 12:58:23', '2018/07/30 12:58:23', '15600000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('441', '166', '23', '2', '532', '533', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '55880000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('442', '167', '1', '2', '534', '535', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '25000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('443', '168', '66', '2', '536', '537', '2018/07/30 12:58:24', '2018/07/30 12:58:24', '350400', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('444', '169', '0', '2', '538', '539', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '240003', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('445', '170', '1', '2', '540', '541', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '2254000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('446', '171', '45', '2', '542', '543', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '550000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('447', '172', '6', '2', '544', '545', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '350000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('448', '173', '1', '2', '546', '547', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '20000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('449', '174', '1', '2', '548', '549', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '156000', '0', '0', null);
INSERT INTO `fan_product_stock_management` VALUES ('450', '175', '1', '2', '550', '551', '2018/07/30 12:58:26', '2018/07/30 12:58:26', '990000', '0', '0', null);

-- ----------------------------
-- Table structure for fee_type
-- ----------------------------
DROP TABLE IF EXISTS `fee_type`;
CREATE TABLE `fee_type` (
  `fee_type_id` int(11) NOT NULL,
  `fee_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee_type_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`fee_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fee_type
-- ----------------------------
INSERT INTO `fee_type` VALUES ('1', '国内', 'Domestic');
INSERT INTO `fee_type` VALUES ('2', '海外', 'International');

-- ----------------------------
-- Table structure for mall_brand_match
-- ----------------------------
DROP TABLE IF EXISTS `mall_brand_match`;
CREATE TABLE `mall_brand_match` (
  `mall_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of mall_brand_match
-- ----------------------------
INSERT INTO `mall_brand_match` VALUES ('24', '264');
INSERT INTO `mall_brand_match` VALUES ('24', '174');
INSERT INTO `mall_brand_match` VALUES ('24', '187');
INSERT INTO `mall_brand_match` VALUES ('24', '189');
INSERT INTO `mall_brand_match` VALUES ('24', '301');
INSERT INTO `mall_brand_match` VALUES ('24', '185');
INSERT INTO `mall_brand_match` VALUES ('24', '155');
INSERT INTO `mall_brand_match` VALUES ('24', '28');
INSERT INTO `mall_brand_match` VALUES ('24', '26');
INSERT INTO `mall_brand_match` VALUES ('24', '25');
INSERT INTO `mall_brand_match` VALUES ('24', '39');
INSERT INTO `mall_brand_match` VALUES ('24', '38');
INSERT INTO `mall_brand_match` VALUES ('24', '37');
INSERT INTO `mall_brand_match` VALUES ('24', '16');
INSERT INTO `mall_brand_match` VALUES ('24', '17');
INSERT INTO `mall_brand_match` VALUES ('24', '18');
INSERT INTO `mall_brand_match` VALUES ('24', '19');
INSERT INTO `mall_brand_match` VALUES ('24', '20');
INSERT INTO `mall_brand_match` VALUES ('24', '21');
INSERT INTO `mall_brand_match` VALUES ('24', '22');
INSERT INTO `mall_brand_match` VALUES ('24', '15');
INSERT INTO `mall_brand_match` VALUES ('24', '12');
INSERT INTO `mall_brand_match` VALUES ('24', '11');
INSERT INTO `mall_brand_match` VALUES ('24', '9');
INSERT INTO `mall_brand_match` VALUES ('24', '8');
INSERT INTO `mall_brand_match` VALUES ('24', '5');
INSERT INTO `mall_brand_match` VALUES ('24', '4');
INSERT INTO `mall_brand_match` VALUES ('24', '2');
INSERT INTO `mall_brand_match` VALUES ('24', '1');
INSERT INTO `mall_brand_match` VALUES ('24', '373');
INSERT INTO `mall_brand_match` VALUES ('24', '100');
INSERT INTO `mall_brand_match` VALUES ('25', '189');
INSERT INTO `mall_brand_match` VALUES ('25', '105');
INSERT INTO `mall_brand_match` VALUES ('25', '412');
INSERT INTO `mall_brand_match` VALUES ('26', '105');
INSERT INTO `mall_brand_match` VALUES ('26', '189');
INSERT INTO `mall_brand_match` VALUES ('26', '412');
INSERT INTO `mall_brand_match` VALUES ('26', '100');
INSERT INTO `mall_brand_match` VALUES ('26', '373');
INSERT INTO `mall_brand_match` VALUES ('26', '264');

-- ----------------------------
-- Table structure for mall_category_match
-- ----------------------------
DROP TABLE IF EXISTS `mall_category_match`;
CREATE TABLE `mall_category_match` (
  `mall_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mall_category_match
-- ----------------------------
INSERT INTO `mall_category_match` VALUES ('0', '23');
INSERT INTO `mall_category_match` VALUES ('0', '23');
INSERT INTO `mall_category_match` VALUES ('0', '23');
INSERT INTO `mall_category_match` VALUES ('24', '20');
INSERT INTO `mall_category_match` VALUES ('24', '21');
INSERT INTO `mall_category_match` VALUES ('24', '22');
INSERT INTO `mall_category_match` VALUES ('24', '23');
INSERT INTO `mall_category_match` VALUES ('24', '24');
INSERT INTO `mall_category_match` VALUES ('24', '25');
INSERT INTO `mall_category_match` VALUES ('24', '26');
INSERT INTO `mall_category_match` VALUES ('24', '27');
INSERT INTO `mall_category_match` VALUES ('24', '28');
INSERT INTO `mall_category_match` VALUES ('24', '29');
INSERT INTO `mall_category_match` VALUES ('24', '30');
INSERT INTO `mall_category_match` VALUES ('24', '31');
INSERT INTO `mall_category_match` VALUES ('24', '32');
INSERT INTO `mall_category_match` VALUES ('24', '33');
INSERT INTO `mall_category_match` VALUES ('24', '82');
INSERT INTO `mall_category_match` VALUES ('25', '31');
INSERT INTO `mall_category_match` VALUES ('25', '32');
INSERT INTO `mall_category_match` VALUES ('25', '34');
INSERT INTO `mall_category_match` VALUES ('25', '87');
INSERT INTO `mall_category_match` VALUES ('25', '88');
INSERT INTO `mall_category_match` VALUES ('25', '89');
INSERT INTO `mall_category_match` VALUES ('25', '90');
INSERT INTO `mall_category_match` VALUES ('25', '91');
INSERT INTO `mall_category_match` VALUES ('25', '92');
INSERT INTO `mall_category_match` VALUES ('25', '93');
INSERT INTO `mall_category_match` VALUES ('25', '94');
INSERT INTO `mall_category_match` VALUES ('26', '31');
INSERT INTO `mall_category_match` VALUES ('26', '32');
INSERT INTO `mall_category_match` VALUES ('26', '33');
INSERT INTO `mall_category_match` VALUES ('26', '53');
INSERT INTO `mall_category_match` VALUES ('26', '54');
INSERT INTO `mall_category_match` VALUES ('26', '55');
INSERT INTO `mall_category_match` VALUES ('26', '56');
INSERT INTO `mall_category_match` VALUES ('26', '57');
INSERT INTO `mall_category_match` VALUES ('26', '58');

-- ----------------------------
-- Table structure for master_admin
-- ----------------------------
DROP TABLE IF EXISTS `master_admin`;
CREATE TABLE `master_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_permission` int(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_admin
-- ----------------------------
INSERT INTO `master_admin` VALUES ('1', 'admin', 'admin', 'admin', '1');
INSERT INTO `master_admin` VALUES ('2', 'root', 'root', 'root', '2');
INSERT INTO `master_admin` VALUES ('3', 'www', 'www@www.com', 'www', '2');

-- ----------------------------
-- Table structure for master_brand
-- ----------------------------
DROP TABLE IF EXISTS `master_brand`;
CREATE TABLE `master_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_design` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempostar_brand_id` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempostar_brand_parent_id` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempostar_sort_by` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=414 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_brand
-- ----------------------------
INSERT INTO `master_brand` VALUES ('1', 'ADIDAS', 'ADIDAS', '1', '0', '2018/07/04 11:17:40', '2018/07/04 11:42:14', 'brand_1530674767.jpg', 'Adidas Brand', null, null, null);
INSERT INTO `master_brand` VALUES ('2', 'Apple', 'Apple', '1', '0', '2018/07/04 11:26:14', '2018/07/04 11:26:14', 'brand_1530674784.jpg', 'Apple', null, null, null);
INSERT INTO `master_brand` VALUES ('4', 'ButterFly', 'ButterFly', '1', '0', '2018/07/04 11:26:40', '2018/07/04 11:26:40', 'brand_1530674811.jpg', 'ButterFly', null, null, null);
INSERT INTO `master_brand` VALUES ('5', 'CAMEL', 'CAMEL', '1', '0', '2018/07/04 11:27:02', '2018/07/04 11:27:02', 'brand_1530674836.jpg', 'CAMEL', null, null, null);
INSERT INTO `master_brand` VALUES ('8', 'Google', 'Google', '1', '0', '2018/07/04 11:28:26', '2018/07/04 11:28:26', 'brand_1530674918.jpg', 'Google', null, null, null);
INSERT INTO `master_brand` VALUES ('9', 'Intel', 'Intel', '1', '0', '2018/07/04 11:28:40', '2018/07/04 11:28:40', 'brand_1530674934.jpg', 'Intel', null, null, null);
INSERT INTO `master_brand` VALUES ('11', 'Microsoft', 'Microsoft', '1', '0', '2018/07/04 11:29:15', '2018/07/04 11:29:15', 'brand_1530674965.jpg', 'Microsoft', null, null, null);
INSERT INTO `master_brand` VALUES ('12', 'Nike', 'Nike', '1', '0', '2018/07/04 11:29:35', '2018/07/04 11:29:35', 'brand_1530674986.jpg', 'Nike', null, null, null);
INSERT INTO `master_brand` VALUES ('15', 'DISNEY', 'DISNEY', '1', '0', '2018/07/04 11:30:26', '2018/07/04 12:01:04', 'brand_1530675039.jpg', 'DISNEY', null, null, null);
INSERT INTO `master_brand` VALUES ('16', 'BMW', 'BMW', '1', '0', '2018/07/05 08:57:02', '2018/07/10 10:41:51', 'brand_1530795443.jpg', 'BMW', null, null, null);
INSERT INTO `master_brand` VALUES ('17', 'NISSAN', 'BMWNISSAN', '1', '0', '2018/07/05 08:57:26', '2018/07/10 10:42:28', 'brand_1530795468.jpg', 'NISSAN', null, null, null);
INSERT INTO `master_brand` VALUES ('18', 'DELL', 'DELL', '1', '0', '2018/07/05 08:58:05', '2018/07/10 10:42:58', 'brand_1530795496.jpg', 'DELL', null, null, null);
INSERT INTO `master_brand` VALUES ('19', 'Lexus', 'Lexus', '2', '0', '2018/07/05 08:58:33', '2018/07/10 10:43:06', 'brand_1530795527.jpg', 'Lexus', null, null, null);
INSERT INTO `master_brand` VALUES ('20', 'Samsung', 'Samsung', '2', '0', '2018/07/05 08:59:19', '2018/07/10 10:43:15', 'brand_1530795577.jpg', 'Samsung', null, null, null);
INSERT INTO `master_brand` VALUES ('21', 'SONY', 'SONY', '1', '1', '2018/07/05 08:59:41', '2018/07/10 10:43:22', 'brand_1530795599.jpg', 'SONY', null, null, null);
INSERT INTO `master_brand` VALUES ('22', 'TOYOTA', 'TOYOTA', '2', '3', '2018/07/05 09:00:03', '2018/07/10 10:43:29', 'brand_1530795622.jpg', 'TOYOTA', null, null, null);
INSERT INTO `master_brand` VALUES ('23', 'A', 'A', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22100000000', '0', '1');
INSERT INTO `master_brand` VALUES ('24', 'A BATHING APE', 'A BATHING APE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121800000', '22100000000', '11');
INSERT INTO `master_brand` VALUES ('25', 'A.P.C', 'A.P.C', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120900000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('26', 'ACNE', 'ACNE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120100000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('27', 'adidas', 'adidas', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121700000', '22100000000', '14');
INSERT INTO `master_brand` VALUES ('28', 'AHKAH', 'AHKAH', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120200000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('29', 'AKM', 'AKM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120300000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('30', 'Alden', 'Alden', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120400000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('31', 'Alexander McQueen', 'Alexander McQueen', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120500000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('32', 'Alexander McQueen', 'Alexander McQueen', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120520100', '22120500000', '1');
INSERT INTO `master_brand` VALUES ('33', 'McQ', 'McQ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120520200', '22120500000', '1');
INSERT INTO `master_brand` VALUES ('34', 'ALEXANDER WANG', 'ALEXANDER WANG', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120600000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('35', 'alfredoBANNISTER', 'alfredoBANNISTER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120700000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('36', 'Ann Demeulemeester', 'Ann Demeulemeester', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22120800000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('37', '28216', '28216', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121000000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('38', 'ARIZONA FREEDOM', 'ARIZONA FREEDOM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121100000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('39', 'ARMANI', 'ARMANI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121200000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('40', 'アルマーニ', 'アルマーニ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121220600', '22121200000', '1');
INSERT INTO `master_brand` VALUES ('41', 'アルマーニ エクスチェンジ', 'アルマーニ エクスチェンジ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121220800', '22121200000', '1');
INSERT INTO `master_brand` VALUES ('42', 'アルマーニ コレッツォーニ', 'アルマーニ コレッツォーニ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121220700', '22121200000', '1');
INSERT INTO `master_brand` VALUES ('43', 'アルマーニ ジーンズ', 'アルマーニ ジーンズ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121220500', '22121200000', '1');
INSERT INTO `master_brand` VALUES ('44', 'エンポリオ アルマーニ', 'エンポリオ アルマーニ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121220400', '22121200000', '1');
INSERT INTO `master_brand` VALUES ('45', 'ジョルジョ アルマーニ', 'ジョルジョ アルマーニ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121220300', '22121200000', '1');
INSERT INTO `master_brand` VALUES ('46', 'ATM7 [attack the mind 7]', 'ATM7 [attack the mind 7]', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121300000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('47', 'ato', 'ato', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121400000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('48', 'ATTACHMENT', 'ATTACHMENT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121500000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('49', 'AULA AILA', 'AULA AILA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121600000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('50', '【A】その他', '【A】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22121900000', '22100000000', '1');
INSERT INTO `master_brand` VALUES ('51', 'B', 'B', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22200000000', '0', '1');
INSERT INTO `master_brand` VALUES ('52', 'BACKBONE', 'BACKBONE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22221800000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('53', 'BACKLASH', 'BACKLASH', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22221900000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('54', 'BALENCIAGA', 'BALENCIAGA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222000000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('55', 'BALMAIN', 'BALMAIN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222100000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('56', 'banal chic bizarre', 'banal chic bizarre', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222200000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('57', 'BAND OF OUTSIDERS', 'BAND OF OUTSIDERS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222300000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('58', 'BEDWIN', 'BEDWIN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222400000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('59', 'Bernhard Willhelm', 'Bernhard Willhelm', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222500000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('60', 'Bloody Mary', 'Bloody Mary', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222600000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('61', 'BOTTEGA VENETA', 'BOTTEGA VENETA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222700000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('62', 'Brioni', 'Brioni', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222800000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('63', 'Brooks Brothers', 'Brooks Brothers', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22222900000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('64', 'BRUNELLO CUCINELLI', 'BRUNELLO CUCINELLI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223100000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('65', 'BURBERRY', 'BURBERRY', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223000000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('66', 'バーバリー', 'バーバリー', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223021200', '22223000000', '1');
INSERT INTO `master_brand` VALUES ('67', 'バーバリーブラックレーベル', 'バーバリーブラックレーベル', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223021100', '22223000000', '1');
INSERT INTO `master_brand` VALUES ('68', 'バーバリーブルーレーベル', 'バーバリーブルーレーベル', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223021000', '22223000000', '1');
INSERT INTO `master_brand` VALUES ('69', 'バーバリープローサム', 'バーバリープローサム', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223020900', '22223000000', '1');
INSERT INTO `master_brand` VALUES ('70', 'バーバリーロンドン', 'バーバリーロンドン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223021300', '22223000000', '1');
INSERT INTO `master_brand` VALUES ('71', 'Buttero', 'Buttero', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223200000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('72', 'BVLGARI', 'BVLGARI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223300000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('73', 'BWL', 'BWL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223400000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('74', '【B】その他', '【B】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22223500000', '22200000000', '1');
INSERT INTO `master_brand` VALUES ('75', 'C', 'C', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22300000000', '0', '1');
INSERT INTO `master_brand` VALUES ('76', 'CAROL CHRISTIAN POELL', 'CAROL CHRISTIAN POELL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22323700000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('77', 'CARPE DIEM', 'CARPE DIEM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22323600000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('78', 'Cartier', 'Cartier', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22323800000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('79', 'CARVEN', 'CARVEN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22323900000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('80', 'CELINE', 'CELINE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324000000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('81', 'CHANEL', 'CHANEL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324100000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('82', 'CHEAP MONDAY', 'CHEAP MONDAY', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324200000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('83', 'CHLOE', 'CHLOE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324300000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('84', 'Christian Dior', 'Christian Dior', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324400000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('85', 'CHRISTIAN LOUBOUTIN', 'CHRISTIAN LOUBOUTIN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324500000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('86', 'CHROME HEARTS', 'CHROME HEARTS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324600000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('87', 'その他', 'その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324622500', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('88', 'アパレル', 'アパレル', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324622200', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('89', 'ウォレットチェーン', 'ウォレットチェーン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324621900', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('90', 'サングラス', 'サングラス', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324622000', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('91', 'ネックレス', 'ネックレス', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324621500', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('92', 'ネックレストップ', 'ネックレストップ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324621600', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('93', 'バッグ', 'バッグ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324622300', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('94', 'ピアス', 'ピアス', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324621800', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('95', 'ブレスレット・バングル', 'ブレスレット・バングル', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324621700', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('96', 'ベルト', 'ベルト', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324622400', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('97', 'リング', 'リング', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324621400', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('98', '財布', '財布', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324622100', '22324600000', '1');
INSERT INTO `master_brand` VALUES ('99', 'COACH', 'COACH', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324700000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('100', 'CODY SANDERSON', 'CODY SANDERSON', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22325600000', '22300000000', '7');
INSERT INTO `master_brand` VALUES ('101', 'collection PRIVEE?', 'collection PRIVEE?', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324800000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('102', 'COMME des GARCONS', 'COMME des GARCONS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324900000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('103', 'JUNYA WATANABE', 'JUNYA WATANABE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324924000', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('104', 'コムデギャルソン', 'コムデギャルソン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324922600', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('105', 'コムデギャルソンオムオム', 'コムデギャルソンオムオム', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '20180228030229', '22324922600', '2');
INSERT INTO `master_brand` VALUES ('106', 'コムデギャルソンオム', 'コムデギャルソンオム', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324922900', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('107', 'コムデギャルソンオムドゥ', 'コムデギャルソンオムドゥ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923100', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('108', 'コムデギャルソンオムプリュス', 'コムデギャルソンオムプリュス', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923000', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('109', 'コムデギャルソンオムプリュスエヴァーグリーン', 'コムデギャルソンオムプリュスエヴァーグリーン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923300', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('110', 'コムデギャルソンガンリュウ', 'コムデギャルソンガンリュウ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923200', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('111', 'コムデギャルソンコムデギャルソン', 'コムデギャルソンコムデギャルソン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324922800', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('112', 'コムデギャルソンシャツ', 'コムデギャルソンシャツ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324922700', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('113', 'コルソコモコムデギャルソン', 'コルソコモコムデギャルソン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923400', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('114', 'タオコムデギャルソン', 'タオコムデギャルソン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923600', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('115', 'トリココムデギャルソン', 'トリココムデギャルソン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923700', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('116', 'ブラックコムデギャルソン', 'ブラックコムデギャルソン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923900', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('117', 'プレイコムデギャルソン', 'プレイコムデギャルソン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923500', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('118', 'ローブドシャンブル コムデギャルソン', 'ローブドシャンブル コムデギャルソン', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22324923800', '22324900000', '1');
INSERT INTO `master_brand` VALUES ('119', 'CONTEGO[アイウェア]', 'CONTEGO[アイウェア]', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22325000000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('120', 'COSMIC WONDER', 'COSMIC WONDER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22325100000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('121', 'CoSTUME NATIONAL', 'CoSTUME NATIONAL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22325200000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('122', 'CRAZY PIG', 'CRAZY PIG', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22325300000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('123', 'Crockett&Jones', 'Crockett&Jones', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22325400000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('124', '【C】その他', '【C】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22325500000', '22300000000', '1');
INSERT INTO `master_brand` VALUES ('125', 'D', 'D', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22400000000', '0', '1');
INSERT INTO `master_brand` VALUES ('126', 'DAMIR DOMA', 'DAMIR DOMA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22425600000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('127', 'DELAY by win&sons', 'DELAY by win&sons', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22425700000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('128', 'DEUXIEME CLASSE', 'DEUXIEME CLASSE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22425800000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('129', 'DIANE von FURSTENBERG', 'DIANE von FURSTENBERG', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22425900000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('130', 'DIESEL', 'DIESEL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426000000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('131', 'DIET BUTCHER SLIM SKIN', 'DIET BUTCHER SLIM SKIN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426100000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('132', 'Dior HOMME', 'Dior HOMME', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426200000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('133', 'BOTTOMS', 'BOTTOMS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426224200', '22426200000', '1');
INSERT INTO `master_brand` VALUES ('134', 'GOODS', 'GOODS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426224400', '22426200000', '1');
INSERT INTO `master_brand` VALUES ('135', 'SETUP', 'SETUP', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426224500', '22426200000', '1');
INSERT INTO `master_brand` VALUES ('136', 'SHOES', 'SHOES', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426224300', '22426200000', '1');
INSERT INTO `master_brand` VALUES ('137', 'TOPS', 'TOPS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426224100', '22426200000', '1');
INSERT INTO `master_brand` VALUES ('138', 'DISCOVERED', 'DISCOVERED', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426300000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('139', 'DITA', 'DITA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426400000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('140', 'DOLCE&GABBANA', 'DOLCE&GABBANA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426500000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('141', 'D&G', 'D&G', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426524700', '22426500000', '1');
INSERT INTO `master_brand` VALUES ('142', 'DOLCE&GABBANA', 'DOLCE&GABBANA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426524600', '22426500000', '1');
INSERT INTO `master_brand` VALUES ('143', 'Drawer', 'Drawer', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426600000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('144', 'DRESSCAMP', 'DRESSCAMP', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426700000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('145', 'DRESTRIP', 'DRESTRIP', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426800000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('146', 'Dries Van Noten', 'Dries Van Noten', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22426900000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('147', 'DRKSHDW', 'DRKSHDW', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22427000000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('148', 'DSQUARED2', 'DSQUARED2', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22427100000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('149', 'DUVETICA', 'DUVETICA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22427200000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('150', '【D】その他', '【D】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22427300000', '22400000000', '1');
INSERT INTO `master_brand` VALUES ('151', 'E', 'E', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22500000000', '0', '1');
INSERT INTO `master_brand` VALUES ('152', 'EFFECTOR', 'EFFECTOR', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22527400000', '22500000000', '1');
INSERT INTO `master_brand` VALUES ('153', 'EKAM', 'EKAM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22527500000', '22500000000', '1');
INSERT INTO `master_brand` VALUES ('154', 'EMILIO PUCCI', 'EMILIO PUCCI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22527600000', '22500000000', '1');
INSERT INTO `master_brand` VALUES ('155', 'Engineered Garments', 'Engineered Garments', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22527810000', '22500000000', '15');
INSERT INTO `master_brand` VALUES ('156', 'ETRO', 'ETRO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22527700000', '22500000000', '1');
INSERT INTO `master_brand` VALUES ('157', '【E】その他', '【E】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22527800000', '22500000000', '1');
INSERT INTO `master_brand` VALUES ('158', 'F', 'F', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22600000000', '0', '1');
INSERT INTO `master_brand` VALUES ('159', 'FACETASM', 'FACETASM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22627900000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('160', 'FACTOTUM', 'FACTOTUM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628200000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('161', 'FAD3', 'FAD3', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628000000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('162', 'Faliero Sarti', 'Faliero Sarti', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628100000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('163', 'FEAR OF GOD', 'FEAR OF GOD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22629000000', '22600000000', '16');
INSERT INTO `master_brand` VALUES ('164', 'Felisi', 'Felisi', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628300000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('165', 'FENDI', 'FENDI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628400000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('166', 'FOXEY', 'FOXEY', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628500000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('167', 'FranCisT_MOR.K.S.', 'FranCisT_MOR.K.S.', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628600000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('168', 'FRAPBOIS', 'FRAPBOIS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628700000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('169', 'FREE CITY', 'FREE CITY', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628800000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('170', '【F】その他', '【F】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22628900000', '22600000000', '1');
INSERT INTO `master_brand` VALUES ('171', 'G', 'G', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22700000000', '0', '1');
INSERT INTO `master_brand` VALUES ('172', 'G.V.G.V.', 'G.V.G.V.', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729000000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('173', 'GABOR', 'GABOR', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729100000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('174', 'GABRIELE PASINI', 'GABRIELE PASINI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22730210000', '22700000000', '6');
INSERT INTO `master_brand` VALUES ('175', 'GalaabenD', 'GalaabenD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729200000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('176', 'Gareth Pugh', 'Gareth Pugh', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729300000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('177', 'GARNI', 'GARNI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729400000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('178', 'GIORGIO BRATO', 'GIORGIO BRATO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729600000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('179', 'GIVENCHY', 'GIVENCHY', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729500000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('180', 'BAG', 'BAG', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729525000', '22729500000', '1');
INSERT INTO `master_brand` VALUES ('181', 'BOTTOMS', 'BOTTOMS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729524900', '22729500000', '1');
INSERT INTO `master_brand` VALUES ('182', 'OTHER', 'OTHER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729525200', '22729500000', '1');
INSERT INTO `master_brand` VALUES ('183', 'SHOES', 'SHOES', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729525100', '22729500000', '1');
INSERT INTO `master_brand` VALUES ('184', 'TOPS', 'TOPS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729524800', '22729500000', '1');
INSERT INTO `master_brand` VALUES ('185', 'GOD SELECTION XXX', 'GOD SELECTION XXX', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22730220000', '22700000000', '19');
INSERT INTO `master_brand` VALUES ('186', 'GOLDEN GOOSE', 'GOLDEN GOOSE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729700000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('187', 'good thing', 'good thing', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22730300000', '22700000000', '3');
INSERT INTO `master_brand` VALUES ('188', 'goro\'s', 'goro\'s', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729800000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('189', 'GOYARD', 'GOYARD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22746800000', '22700000000', '2');
INSERT INTO `master_brand` VALUES ('190', 'GRACE CONTINENTAL', 'GRACE CONTINENTAL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22729900000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('191', 'GREEN', 'GREEN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22730000000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('192', 'GUCCI', 'GUCCI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22730100000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('193', '【G】その他', '【G】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22730200000', '22700000000', '1');
INSERT INTO `master_brand` VALUES ('194', 'H', 'H', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22800000000', '0', '1');
INSERT INTO `master_brand` VALUES ('195', 'HALFMAN', 'HALFMAN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22830300000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('196', 'Hanae Mori', 'Hanae Mori', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22830500000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('197', 'HARE', 'HARE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22830400000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('198', 'HELMUT LANG', 'HELMUT LANG', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22830600000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('199', 'HERMES', 'HERMES', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22830700000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('200', 'HIROMU TAKAHARA', 'HIROMU TAKAHARA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22830800000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('201', 'HOOD BY AIR', 'HOOD BY AIR', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22830900000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('202', 'HTC', 'HTC', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22831000000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('203', 'HYSTERIC GLAMOUR', 'HYSTERIC GLAMOUR', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22831100000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('204', '【H】その他', '【H】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22831200000', '22800000000', '1');
INSERT INTO `master_brand` VALUES ('205', 'I', 'I', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22900000000', '0', '1');
INSERT INTO `master_brand` VALUES ('206', 'IF SIX WAS NINE', 'IF SIX WAS NINE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22931300000', '22900000000', '1');
INSERT INTO `master_brand` VALUES ('207', 'Inpaichthys Kerri', 'Inpaichthys Kerri', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22931400000', '22900000000', '1');
INSERT INTO `master_brand` VALUES ('208', 'ISABEL MARANT', 'ISABEL MARANT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22931500000', '22900000000', '1');
INSERT INTO `master_brand` VALUES ('209', 'ISSEY MIYAKE', 'ISSEY MIYAKE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22931600000', '22900000000', '1');
INSERT INTO `master_brand` VALUES ('210', '【I】その他', '【I】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '22931700000', '22900000000', '1');
INSERT INTO `master_brand` VALUES ('211', 'J', 'J', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23000000000', '0', '1');
INSERT INTO `master_brand` VALUES ('212', 'JAM HOME MADE', 'JAM HOME MADE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23031800000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('213', 'Jeffrey Campbell', 'Jeffrey Campbell', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23031900000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('214', 'JEREMY SCOTT', 'JEREMY SCOTT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032000000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('215', 'JIL SANDER', 'JIL SANDER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032100000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('216', 'JILLSTUART', 'JILLSTUART', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032300000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('217', 'JIMMY CHOO', 'JIMMY CHOO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032200000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('218', 'John Galliano', 'John Galliano', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032700000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('219', 'JOHN LAWRENCE SULLIVAN', 'JOHN LAWRENCE SULLIVAN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032800000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('220', 'JOINTRUST', 'JOINTRUST', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032900000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('221', 'JOYRICH', 'JOYRICH', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23033000000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('222', 'JULIUS', 'JULIUS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032400000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('223', 'junhashimoto', 'junhashimoto', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032500000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('224', 'JUNYA WATANABE', 'JUNYA WATANABE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23033100000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('225', 'Justin Davis', 'Justin Davis', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23032600000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('226', '【J】その他', '【J】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23033200000', '23000000000', '1');
INSERT INTO `master_brand` VALUES ('227', 'K', 'K', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23100000000', '0', '1');
INSERT INTO `master_brand` VALUES ('228', 'KAPITAL', 'KAPITAL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23133400000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('229', 'KAREN WALKER', 'KAREN WALKER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23133300000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('230', 'KENZO', 'KENZO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23133500000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('231', 'KITSUNE', 'KITSUNE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23133600000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('232', 'KMRII', 'KMRII', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23133700000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('233', 'KOLOR', 'KOLOR', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23133800000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('234', 'KRIS VAN ASSCHE', 'KRIS VAN ASSCHE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23133900000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('235', 'KSUBI（TSUBI）', 'KSUBI（TSUBI）', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23134000000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('236', 'KTZ', 'KTZ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23134100000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('237', '【K】その他', '【K】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23134200000', '23100000000', '1');
INSERT INTO `master_brand` VALUES ('238', 'L', 'L', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23200000000', '0', '1');
INSERT INTO `master_brand` VALUES ('239', 'LAD MUSICIAN', 'LAD MUSICIAN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23234400000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('240', 'LANVIN', 'LANVIN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23234300000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('241', 'LE CIEL BLEU', 'LE CIEL BLEU', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23234500000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('242', 'LEVI\'S', 'LEVI\'S', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23234600000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('243', 'LGB', 'LGB', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23234700000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('244', 'LIMI feu', 'LIMI feu', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23235300000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('245', 'LITHIUM HOMME', 'LITHIUM HOMME', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23234800000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('246', 'LONEONES', 'LONEONES', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23235100000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('247', 'LOUIS VUITTON', 'LOUIS VUITTON', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23234900000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('248', 'LOUNGELIZARD', 'LOUNGELIZARD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23235000000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('249', 'LucienPellatFinet', 'LucienPellatFinet', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23235200000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('250', '【L】その他', '【L】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23235400000', '23200000000', '1');
INSERT INTO `master_brand` VALUES ('251', 'M', 'M', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23300000000', '0', '1');
INSERT INTO `master_brand` VALUES ('252', 'Maison Martin Margiela', 'Maison Martin Margiela', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23335500000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('253', 'MANOLOBLAHNIK', 'MANOLOBLAHNIK', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23335600000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('254', 'MARC JACOBS', 'MARC JACOBS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23335800000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('255', 'MARCELO BURLON', 'MARCELO BURLON', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23335700000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('256', 'MARNI', 'MARNI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23335900000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('257', 'mastermind', 'mastermind', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336000000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('258', 'Max Mara', 'Max Mara', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336100000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('259', 'maxsix', 'maxsix', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336200000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('260', 'MCM', 'MCM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336300000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('261', 'MIHARA YASUHIRO', 'MIHARA YASUHIRO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336400000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('262', 'miumiu', 'miumiu', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336500000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('263', 'MONCLER', 'MONCLER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336600000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('264', 'MSGM', 'MSGM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336710000', '23300000000', '9');
INSERT INTO `master_brand` VALUES ('265', '【M】その他', '【M】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23336700000', '23300000000', '1');
INSERT INTO `master_brand` VALUES ('266', 'N', 'N', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23400000000', '0', '1');
INSERT INTO `master_brand` VALUES ('267', 'N.HOOLYWOOD', 'N.HOOLYWOOD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23436800000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('268', 'アウター', 'アウター', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23436825300', '23436800000', '1');
INSERT INTO `master_brand` VALUES ('269', 'シューズ', 'シューズ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23436825700', '23436800000', '1');
INSERT INTO `master_brand` VALUES ('270', 'トップス', 'トップス', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23436825400', '23436800000', '1');
INSERT INTO `master_brand` VALUES ('271', 'ボトムス', 'ボトムス', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23436825500', '23436800000', '1');
INSERT INTO `master_brand` VALUES ('272', '小物', '小物', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23436825600', '23436800000', '1');
INSERT INTO `master_brand` VALUES ('273', 'NEIGHBORHOOD', 'NEIGHBORHOOD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23436900000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('274', 'NEIL BARRETT', 'NEIL BARRETT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23437000000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('275', 'New Balance', 'New Balance', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23437100000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('276', 'NIKE', 'NIKE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23437200000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('277', 'NOZOMI ISHIGURO', 'NOZOMI ISHIGURO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23437300000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('278', 'Nudie Jeans', 'Nudie Jeans', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23437400000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('279', 'NUMBER(N)INE', 'NUMBER(N)INE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23437500000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('280', 'N゜21', 'N゜21', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23437610000', '23400000000', '12');
INSERT INTO `master_brand` VALUES ('281', '【N】その他', '【N】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23437600000', '23400000000', '1');
INSERT INTO `master_brand` VALUES ('282', 'O', 'O', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23500000000', '0', '1');
INSERT INTO `master_brand` VALUES ('283', 'OFF-WHITE', 'OFF-WHITE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23537700000', '23500000000', '1');
INSERT INTO `master_brand` VALUES ('284', 'OLIVER PEOPLES', 'OLIVER PEOPLES', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23537800000', '23500000000', '1');
INSERT INTO `master_brand` VALUES ('285', 'OROBIANCO', 'OROBIANCO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23537900000', '23500000000', '1');
INSERT INTO `master_brand` VALUES ('286', '【O】その他', '【O】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23538000000', '23500000000', '1');
INSERT INTO `master_brand` VALUES ('287', 'OTHER', 'OTHER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24700000000', '0', '1');
INSERT INTO `master_brand` VALUES ('288', '1 piu 1 uguale 3/ウノピュウノ　ウグァーレトレ', '1 piu 1 uguale 3/ウノピュウノ　ウグァーレトレ', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24746300000', '24700000000', '1');
INSERT INTO `master_brand` VALUES ('289', '14th Addiction', '14th Addiction', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24746400000', '24700000000', '1');
INSERT INTO `master_brand` VALUES ('290', '3.1 Phillip Lim', '3.1 Phillip Lim', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24746500000', '24700000000', '1');
INSERT INTO `master_brand` VALUES ('291', '5351 POUR LES HOMMES', '5351 POUR LES HOMMES', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24746600000', '24700000000', '1');
INSERT INTO `master_brand` VALUES ('292', '【OTHER】その他', '【OTHER】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24746700000', '24700000000', '1');
INSERT INTO `master_brand` VALUES ('293', 'P', 'P', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23600000000', '0', '1');
INSERT INTO `master_brand` VALUES ('294', 'PAOLA FRANI', 'PAOLA FRANI', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638810000', '23600000000', '10');
INSERT INTO `master_brand` VALUES ('295', 'Patagonia', 'Patagonia', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638100000', '23600000000', '1');
INSERT INTO `master_brand` VALUES ('296', 'Paul Smith', 'Paul Smith', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638200000', '23600000000', '1');
INSERT INTO `master_brand` VALUES ('297', 'PHENOMENON', 'PHENOMENON', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638300000', '23600000000', '1');
INSERT INTO `master_brand` VALUES ('298', 'PIGALLE', 'PIGALLE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638400000', '23600000000', '1');
INSERT INTO `master_brand` VALUES ('299', 'Pledge', 'Pledge', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638500000', '23600000000', '1');
INSERT INTO `master_brand` VALUES ('300', 'PORTER', 'PORTER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638600000', '23600000000', '1');
INSERT INTO `master_brand` VALUES ('301', 'Porter Classic', 'Porter Classic', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638820000', '23600000000', '18');
INSERT INTO `master_brand` VALUES ('302', 'PRADA', 'PRADA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638700000', '23600000000', '1');
INSERT INTO `master_brand` VALUES ('303', 'BAG', 'BAG', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638726000', '23638700000', '1');
INSERT INTO `master_brand` VALUES ('304', 'BOTTOMS', 'BOTTOMS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638725900', '23638700000', '1');
INSERT INTO `master_brand` VALUES ('305', 'OTHER', 'OTHER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638726200', '23638700000', '1');
INSERT INTO `master_brand` VALUES ('306', 'SHOES', 'SHOES', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638726100', '23638700000', '1');
INSERT INTO `master_brand` VALUES ('307', 'TOPS', 'TOPS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638725800', '23638700000', '1');
INSERT INTO `master_brand` VALUES ('308', '【P】その他', '【P】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23638800000', '23600000000', '1');
INSERT INTO `master_brand` VALUES ('309', 'Q', 'Q', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23700000000', '0', '1');
INSERT INTO `master_brand` VALUES ('310', 'Q-POT', 'Q-POT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23738900000', '23700000000', '1');
INSERT INTO `master_brand` VALUES ('311', '【Q】その他', '【Q】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23739000000', '23700000000', '1');
INSERT INTO `master_brand` VALUES ('312', 'R', 'R', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23800000000', '0', '1');
INSERT INTO `master_brand` VALUES ('313', 'RAF SIMONS', 'RAF SIMONS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839100000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('314', 'Ralph Lauren', 'Ralph Lauren', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839200000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('315', 'Rayban', 'Rayban', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839300000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('316', 'RED WING', 'RED WING', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839400000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('317', 'REMI RELIEF', 'REMI RELIEF', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839500000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('318', 'Rick Owens', 'Rick Owens', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839600000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('319', 'RICO', 'RICO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839700000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('320', 'roar', 'roar', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839800000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('321', 'Roen', 'Roen', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839900000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('322', 'By Roen', 'By Roen', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839926500', '23839900000', '1');
INSERT INTO `master_brand` VALUES ('323', 'Rat Roen', 'Rat Roen', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839926400', '23839900000', '1');
INSERT INTO `master_brand` VALUES ('324', 'Roen', 'Roen', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23839926300', '23839900000', '1');
INSERT INTO `master_brand` VALUES ('325', 'Ron Herman', 'Ron Herman', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23840000000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('326', 'ROYAL ORDER', 'ROYAL ORDER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23840100000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('327', 'RRL', 'RRL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23840200000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('328', 'RUDEGALLERY', 'RUDEGALLERY', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23840300000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('329', '【R】その他', '【R】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23840400000', '23800000000', '1');
INSERT INTO `master_brand` VALUES ('330', 'S', 'S', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23900000000', '0', '1');
INSERT INTO `master_brand` VALUES ('331', 'sacai', 'sacai', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23940500000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('332', 'Salvatore Ferragamo', 'Salvatore Ferragamo', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23940600000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('333', 'SandBlaster', 'SandBlaster', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941710000', '23900000000', '4');
INSERT INTO `master_brand` VALUES ('334', 'SASSAFRAS', 'SASSAFRAS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941720000', '23900000000', '5');
INSERT INTO `master_brand` VALUES ('335', 'Sergio Rossi', 'Sergio Rossi', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23940700000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('336', 'SHARESPIRIT', 'SHARESPIRIT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23940800000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('337', 'SHELLAC', 'SHELLAC', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23940900000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('338', 'soe', 'soe', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941000000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('339', 'SOPHNET', 'SOPHNET', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941100000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('340', 'Stella McCartney', 'Stella McCartney', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941200000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('341', 'sunaokuwahara', 'sunaokuwahara', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941300000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('342', 'SUPERFINE', 'SUPERFINE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941400000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('343', 'SUPREME', 'SUPREME', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941500000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('344', 'SWAGGER', 'SWAGGER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941600000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('345', '【S】その他', '【S】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '23941700000', '23900000000', '1');
INSERT INTO `master_brand` VALUES ('346', 'T', 'T', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24000000000', '0', '1');
INSERT INTO `master_brand` VALUES ('347', 'TADY&KING', 'TADY&KING', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24041800000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('348', 'TAKAHIROMIYASHITA TheSoloIst', 'TAKAHIROMIYASHITA TheSoloIst', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24041900000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('349', 'TENDERLOIN', 'TENDERLOIN', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042000000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('350', 'THE FLAT HEAD', 'THE FLAT HEAD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042200000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('351', 'THE NORTH FACE', 'THE NORTH FACE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042100000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('352', 'The Viridi-anne', 'The Viridi-anne', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042400000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('353', 'Theory', 'Theory', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042300000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('354', 'THOMAS WYLDE', 'THOMAS WYLDE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042700000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('355', 'THOMBROWNE', 'THOMBROWNE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042800000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('356', 'Tiffany & Co.', 'Tiffany & Co.', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042500000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('357', 'TMT', 'TMT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042600000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('358', 'ToddSnyder', 'ToddSnyder', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24043310000', '24000000000', '13');
INSERT INTO `master_brand` VALUES ('359', 'TOGA', 'TOGA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24042900000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('360', 'TOM FORD', 'TOM FORD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24043000000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('361', 'TORY BURCH', 'TORY BURCH', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24043100000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('362', 'tsumori chisato', 'tsumori chisato', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24043200000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('363', '【T】その他', '【T】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24043300000', '24000000000', '1');
INSERT INTO `master_brand` VALUES ('364', 'U', 'U', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24100000000', '0', '1');
INSERT INTO `master_brand` VALUES ('365', 'UGG', 'UGG', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24143400000', '24100000000', '1');
INSERT INTO `master_brand` VALUES ('366', 'UNDERCOVER', 'UNDERCOVER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24143500000', '24100000000', '1');
INSERT INTO `master_brand` VALUES ('367', 'UNITED ARROWS', 'UNITED ARROWS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24143600000', '24100000000', '1');
INSERT INTO `master_brand` VALUES ('368', 'UNUSED', 'UNUSED', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24143700000', '24100000000', '1');
INSERT INTO `master_brand` VALUES ('369', '【U】その他', '【U】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24143800000', '24100000000', '1');
INSERT INTO `master_brand` VALUES ('370', 'V', 'V', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24200000000', '0', '1');
INSERT INTO `master_brand` VALUES ('371', 'VADEL', 'VADEL', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24243900000', '24200000000', '1');
INSERT INTO `master_brand` VALUES ('372', 'VALENTINO', 'VALENTINO', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24244000000', '24200000000', '1');
INSERT INTO `master_brand` VALUES ('373', 'VETEMENTS', 'VETEMENTS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24244510000', '24200000000', '8');
INSERT INTO `master_brand` VALUES ('374', 'VIKTOR&ROLF', 'VIKTOR&ROLF', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24244100000', '24200000000', '1');
INSERT INTO `master_brand` VALUES ('375', 'VINTI ANDREWS', 'VINTI ANDREWS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24244200000', '24200000000', '1');
INSERT INTO `master_brand` VALUES ('376', 'VISVIM', 'VISVIM', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24244300000', '24200000000', '1');
INSERT INTO `master_brand` VALUES ('377', 'vivienne westwood', 'vivienne westwood', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24244400000', '24200000000', '1');
INSERT INTO `master_brand` VALUES ('378', '【V】その他', '【V】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24244500000', '24200000000', '1');
INSERT INTO `master_brand` VALUES ('379', 'W', 'W', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24300000000', '0', '1');
INSERT INTO `master_brand` VALUES ('380', 'WACKO MARIA', 'WACKO MARIA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24344600000', '24300000000', '1');
INSERT INTO `master_brand` VALUES ('381', 'WhiteMountaineering', 'WhiteMountaineering', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24344700000', '24300000000', '1');
INSERT INTO `master_brand` VALUES ('382', 'wjk', 'wjk', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24344800000', '24300000000', '1');
INSERT INTO `master_brand` VALUES ('383', 'WOLF\'S HEAD', 'WOLF\'S HEAD', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24344900000', '24300000000', '1');
INSERT INTO `master_brand` VALUES ('384', 'Wrangler', 'Wrangler', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24345000000', '24300000000', '1');
INSERT INTO `master_brand` VALUES ('385', 'WTAPS', 'WTAPS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24345100000', '24300000000', '1');
INSERT INTO `master_brand` VALUES ('386', '【W】その他', '【W】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24345200000', '24300000000', '1');
INSERT INTO `master_brand` VALUES ('387', 'X', 'X', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24400000000', '0', '1');
INSERT INTO `master_brand` VALUES ('388', '【X】その他', '【X】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24445300000', '24400000000', '1');
INSERT INTO `master_brand` VALUES ('389', 'Y', 'Y', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24500000000', '0', '1');
INSERT INTO `master_brand` VALUES ('390', 'YAECA', 'YAECA', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545400000', '24500000000', '1');
INSERT INTO `master_brand` VALUES ('391', 'YEEZY', 'YEEZY', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545910000', '24500000000', '17');
INSERT INTO `master_brand` VALUES ('392', 'YLANG YLANG', 'YLANG YLANG', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545500000', '24500000000', '1');
INSERT INTO `master_brand` VALUES ('393', 'Yohji Yamamoto', 'Yohji Yamamoto', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545600000', '24500000000', '1');
INSERT INTO `master_brand` VALUES ('394', 'Y-3', 'Y-3', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545626800', '24545600000', '1');
INSERT INTO `master_brand` VALUES ('395', 'Yohji Yamamoto', 'Yohji Yamamoto', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545626600', '24545600000', '1');
INSERT INTO `master_brand` VALUES ('396', 'Ys', 'Ys', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545626700', '24545600000', '1');
INSERT INTO `master_brand` VALUES ('397', 'Ysformen', 'Ysformen', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545626900', '24545600000', '1');
INSERT INTO `master_brand` VALUES ('398', 'yoshio kubo', 'yoshio kubo', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545700000', '24500000000', '1');
INSERT INTO `master_brand` VALUES ('399', 'YVES SAINT LAURENT', 'YVES SAINT LAURENT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545800000', '24500000000', '1');
INSERT INTO `master_brand` VALUES ('400', 'SAINT LAURENT PARIS', 'SAINT LAURENT PARIS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545827200', '24545800000', '2');
INSERT INTO `master_brand` VALUES ('401', 'BOTTOMS', 'BOTTOMS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545827222', '24545827200', '1');
INSERT INTO `master_brand` VALUES ('402', 'OTHER', 'OTHER', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545827224', '24545827200', '1');
INSERT INTO `master_brand` VALUES ('403', 'SHOES', 'SHOES', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545827223', '24545827200', '1');
INSERT INTO `master_brand` VALUES ('404', 'TOPS', 'TOPS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545827221', '24545827200', '1');
INSERT INTO `master_brand` VALUES ('405', 'YVES SAINT LAURENT', 'YVES SAINT LAURENT', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545827000', '24545800000', '1');
INSERT INTO `master_brand` VALUES ('406', 'YVES SAINT LAURENT RIVE GAUCHE', 'YVES SAINT LAURENT RIVE GAUCHE', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545827100', '24545800000', '1');
INSERT INTO `master_brand` VALUES ('407', '【Y】その他', '【Y】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24545900000', '24500000000', '1');
INSERT INTO `master_brand` VALUES ('408', 'Z', 'Z', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24600000000', '0', '1');
INSERT INTO `master_brand` VALUES ('409', 'ZAC VARGAS', 'ZAC VARGAS', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24646000000', '24600000000', '1');
INSERT INTO `master_brand` VALUES ('410', 'zucca', 'zucca', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24646100000', '24600000000', '1');
INSERT INTO `master_brand` VALUES ('411', '【Z】その他', '【Z】その他', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '24646200000', '24600000000', '1');
INSERT INTO `master_brand` VALUES ('412', '移動', '移動', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '99999999999', '', '3');
INSERT INTO `master_brand` VALUES ('413', '移動1', '移動1', '0', '0', '2018/07/10 11:21:27', '2018/07/10 11:21:27', '', 'Tempostarブランド', '99999999991', '99999999999', '2');

-- ----------------------------
-- Table structure for master_category
-- ----------------------------
DROP TABLE IF EXISTS `master_category`;
CREATE TABLE `master_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(11) DEFAULT NULL,
  `category_size_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_category
-- ----------------------------
INSERT INTO `master_category` VALUES ('1', '0', null, 'メンズ', 'MENS', '2018/07/06 04:09:13', '2018/07/06 04:09:13');
INSERT INTO `master_category` VALUES ('2', '0', null, 'レディース', 'LADIES', '2018/07/06 04:12:59', '2018/07/06 04:12:59');
INSERT INTO `master_category` VALUES ('3', '1', '1', 'H.外', 'H.OUTER', '2018/07/06 04:13:29', '2018/07/06 04:13:29');
INSERT INTO `master_category` VALUES ('4', '1', '1', 'L.外', 'L.OUTER', '2018/07/06 04:15:29', '2018/07/06 04:15:29');
INSERT INTO `master_category` VALUES ('5', '1', '1', 'シャツ', 'SHIRT', '2018/07/06 04:15:53', '2018/07/06 04:15:53');
INSERT INTO `master_category` VALUES ('6', '1', '1', 'ニット/カージガン', 'KNIT/CARDIGAN', '2018/07/06 04:16:12', '2018/07/06 04:16:12');
INSERT INTO `master_category` VALUES ('7', '1', '1', 'カット＆セーン', 'CUT&SEWN', '2018/07/06 04:16:24', '2018/07/06 04:16:24');
INSERT INTO `master_category` VALUES ('8', '1', '1', 'パーカー/スウェット', 'PARKA/SWEAT', '2018/07/06 04:16:52', '2018/07/06 04:16:52');
INSERT INTO `master_category` VALUES ('9', '1', '5', 'セットアップ', 'SETUP', '2018/07/06 04:17:11', '2018/07/06 04:17:11');
INSERT INTO `master_category` VALUES ('10', '1', '1', 'パンツ/スカート', 'PANTS/SKIRT', '2018/07/06 04:17:35', '2018/07/06 04:17:35');
INSERT INTO `master_category` VALUES ('11', '1', '5', 'バッグ', 'BAG', '2018/07/06 04:17:51', '2018/07/06 04:17:51');
INSERT INTO `master_category` VALUES ('12', '1', '5', 'アクセサリー', 'ACCESSORY', '2018/07/06 04:18:03', '2018/07/06 04:18:03');
INSERT INTO `master_category` VALUES ('13', '1', '5', '品', 'GOODS', '2018/07/06 04:18:17', '2018/07/06 04:18:17');
INSERT INTO `master_category` VALUES ('14', '1', '1', 'スニーカー', 'SNEAKER', '2018/07/06 04:18:31', '2018/07/06 04:18:31');
INSERT INTO `master_category` VALUES ('15', '1', '2', 'サンダル', 'SANDAL', '2018/07/06 04:19:13', '2018/07/06 04:19:13');
INSERT INTO `master_category` VALUES ('16', '1', '2', 'ブーツ', 'BOOTS', '2018/07/06 04:19:25', '2018/07/06 04:19:25');
INSERT INTO `master_category` VALUES ('17', '1', '2', 'その他の靴', 'OTHER SHOES', '2018/07/06 04:19:37', '2018/07/06 04:19:37');
INSERT INTO `master_category` VALUES ('18', '1', '5', '宝石', 'JEWELRY', '2018/07/06 04:19:47', '2018/07/06 04:19:47');
INSERT INTO `master_category` VALUES ('19', '1', '4', '毛皮', 'FUR', '2018/07/06 04:21:08', '2018/07/06 04:21:08');
INSERT INTO `master_category` VALUES ('20', '3', null, 'H.ﾀﾞｳﾝｼﾞｬｹｯﾄ', 'H. Down jacket', '2018/07/06 04:25:09', '2018/07/06 04:25:09');
INSERT INTO `master_category` VALUES ('21', '3', null, 'H.ｺｰﾄ', 'H. Coat', '2018/07/06 04:26:52', '2018/07/06 04:26:52');
INSERT INTO `master_category` VALUES ('22', '3', null, 'H.ﾚｻﾞｰｼﾞｬｹｯﾄ', 'H. Leather jacket', '2018/07/06 04:27:03', '2018/07/06 04:27:03');
INSERT INTO `master_category` VALUES ('23', '3', null, 'H.ﾌﾞﾙｿﾞﾝ', 'H. Blouson', '2018/07/06 04:27:09', '2018/07/06 04:27:09');
INSERT INTO `master_category` VALUES ('24', '3', null, 'H.ﾀﾞｳﾝﾍﾞｽﾄ', 'H. Down vest', '2018/07/06 04:27:25', '2018/07/06 04:27:25');
INSERT INTO `master_category` VALUES ('25', '3', null, 'H.ｼﾞｬｹｯﾄ', 'H. Jacket', '2018/07/06 04:27:37', '2018/07/06 04:27:37');
INSERT INTO `master_category` VALUES ('26', '4', null, 'L.ﾃﾞﾆﾑｼﾞｬｹｯﾄ', 'L. Denim jacket', '2018/07/06 04:28:18', '2018/07/06 04:28:18');
INSERT INTO `master_category` VALUES ('27', '4', null, 'L.ｺｰﾄ', 'L. Coat', '2018/07/06 04:28:33', '2018/07/06 04:28:33');
INSERT INTO `master_category` VALUES ('28', '4', null, 'L.ﾚｻﾞｰｼﾞｬｹｯﾄ', 'L. Leather jacket', '2018/07/06 04:28:39', '2018/07/06 04:28:39');
INSERT INTO `master_category` VALUES ('29', '4', null, 'L.ﾌﾞﾙｿﾞﾝ', 'L. Blouson', '2018/07/06 04:28:45', '2018/07/06 04:28:45');
INSERT INTO `master_category` VALUES ('30', '4', null, 'L.ｼﾞｬｹｯﾄ', 'L. Jacket', '2018/07/06 04:29:08', '2018/07/06 04:29:08');
INSERT INTO `master_category` VALUES ('31', '5', null, 'ﾅｶﾞｿﾃﾞｼｬﾂ', 'Long Sleeve Shirt', '2018/07/06 04:30:24', '2018/07/06 04:30:24');
INSERT INTO `master_category` VALUES ('32', '5', null, 'ﾊﾝｿﾃﾞｼｬﾂ', 'Short Sleeve Shirt', '2018/07/06 04:30:33', '2018/07/06 04:30:33');
INSERT INTO `master_category` VALUES ('33', '5', null, 'ﾉｰｽﾘｰﾌﾞｼｬﾂ', 'Sleeveless Shirt', '2018/07/06 04:30:39', '2018/07/06 04:30:39');
INSERT INTO `master_category` VALUES ('34', '6', null, 'ｶｰﾃﾞｨｶﾞﾝ', 'Cardigan', '2018/07/06 04:31:02', '2018/07/06 04:31:02');
INSERT INTO `master_category` VALUES ('35', '6', null, 'ﾆｯﾄ', 'Knit', '2018/07/06 04:31:16', '2018/07/06 04:31:16');
INSERT INTO `master_category` VALUES ('36', '7', null, 'ﾊﾝｿﾃﾞﾎﾟﾛｼｬﾂ', 'Short Sleeve Polo Shirt', '2018/07/06 04:32:26', '2018/07/06 04:32:26');
INSERT INTO `master_category` VALUES ('37', '7', null, 'ﾅｶﾞｿﾃﾞｶｯﾄｿｰ', 'Long Sleeve Cut', '2018/07/06 04:32:48', '2018/07/06 04:32:48');
INSERT INTO `master_category` VALUES ('38', '7', null, 'Tｼｬﾂ', 'T-shirt', '2018/07/06 04:32:54', '2018/07/06 04:32:54');
INSERT INTO `master_category` VALUES ('39', '7', null, 'ﾀﾝｸﾄｯﾌﾟ/ﾉｰｽﾘｰﾌﾞｶｯﾄｿｰ', 'Tank top / Sleeveless cut', '2018/07/06 04:33:07', '2018/07/06 04:33:07');
INSERT INTO `master_category` VALUES ('40', '7', null, 'ｷｬﾐｿｰﾙ', 'Camisole', '2018/07/06 04:33:14', '2018/07/06 04:33:14');
INSERT INTO `master_category` VALUES ('41', '7', null, 'ﾜﾝﾋﾟｰｽ/ﾁｭﾆｯｸ/ﾌﾞﾗｳｽ', 'One Piece: Tunic / Blouse', '2018/07/06 04:33:23', '2018/07/06 04:33:23');
INSERT INTO `master_category` VALUES ('42', '7', null, 'ﾍﾞｽﾄ/ｼﾞﾚ', 'Best / Gillet', '2018/07/06 04:33:39', '2018/07/06 04:33:39');
INSERT INTO `master_category` VALUES ('43', '7', null, 'ｿﾉﾀﾄｯﾌﾟｽ', 'Other tops', '2018/07/06 04:33:48', '2018/07/06 04:33:48');
INSERT INTO `master_category` VALUES ('44', '8', null, 'ﾊﾟｰｶｰ', 'Parker', '2018/07/06 04:34:04', '2018/07/06 04:34:04');
INSERT INTO `master_category` VALUES ('45', '8', null, 'ｽｳｪｯﾄ', 'Sweat', '2018/07/06 04:35:00', '2018/07/06 04:35:00');
INSERT INTO `master_category` VALUES ('46', '9', null, 'ｽｰﾂ', 'Suit', '2018/07/06 04:35:10', '2018/07/06 04:35:10');
INSERT INTO `master_category` VALUES ('47', '9', null, 'ｿﾉﾀｾｯﾄｱｯﾌﾟ', 'Other setup', '2018/07/06 04:35:17', '2018/07/06 04:35:17');
INSERT INTO `master_category` VALUES ('48', '10', null, 'ﾛﾝｸﾞﾊﾟﾝﾂ', 'Long pants', '2018/07/06 04:35:27', '2018/07/06 04:35:27');
INSERT INTO `master_category` VALUES ('49', '10', null, 'ﾊｰﾌﾊﾟﾝﾂ/ｼｮｰﾄﾊﾟﾝﾂ/ｼｮｰﾂ', 'Half pants / shorts / shorts', '2018/07/06 04:35:34', '2018/07/06 04:35:34');
INSERT INTO `master_category` VALUES ('50', '10', null, 'ﾃﾞﾆﾑﾊﾟﾝﾂ', 'Denim trousers', '2018/07/06 04:35:41', '2018/07/06 04:35:41');
INSERT INTO `master_category` VALUES ('51', '10', null, 'ｽｶｰﾄ', 'Skirt', '2018/07/06 04:35:48', '2018/07/06 04:35:48');
INSERT INTO `master_category` VALUES ('52', '10', null, 'ｿﾉﾀﾎﾞﾄﾑｽ', 'Other bottoms', '2018/07/06 04:35:56', '2018/07/06 04:35:56');
INSERT INTO `master_category` VALUES ('53', '11', null, 'ﾄｰﾄﾊﾞｯｸﾞ', 'Tote bag', '2018/07/06 04:37:20', '2018/07/06 04:37:20');
INSERT INTO `master_category` VALUES ('54', '11', null, 'ﾊﾝﾄﾞﾊﾞｯｸﾞ', 'Handbag', '2018/07/06 04:37:28', '2018/07/06 04:37:28');
INSERT INTO `master_category` VALUES ('55', '11', null, 'ｼｮﾙﾀﾞｰﾊﾞｯｸﾞ', 'Shoulder bag', '2018/07/06 04:37:34', '2018/07/06 04:37:34');
INSERT INTO `master_category` VALUES ('56', '11', null, 'ﾎﾞｽﾄﾝﾊﾞｯｸﾞ', 'Boston bag', '2018/07/06 04:37:44', '2018/07/06 04:37:44');
INSERT INTO `master_category` VALUES ('57', '11', null, 'ｳｴｽﾄﾊﾞｯｸﾞ/ﾎﾞﾃﾞｨｰﾊﾞｯｸﾞ', 'Waist Bag / Body Bag', '2018/07/06 04:37:51', '2018/07/06 04:37:51');
INSERT INTO `master_category` VALUES ('58', '11', null, 'ﾌﾞﾘｰﾌﾊﾞｯｸﾞ', 'Brief bag', '2018/07/06 04:37:57', '2018/07/06 04:37:57');
INSERT INTO `master_category` VALUES ('59', '11', null, 'ﾎﾟｰﾁ', 'Pouch', '2018/07/06 04:38:04', '2018/07/06 04:38:04');
INSERT INTO `master_category` VALUES ('60', '11', null, 'ﾘｭｯｸ/ﾊﾞｯｸﾊﾟｯｸ', 'Backpack / Backpack', '2018/07/06 04:38:11', '2018/07/06 04:38:11');
INSERT INTO `master_category` VALUES ('61', '11', null, 'ｸﾗｯﾁﾊﾞｯｸﾞ', 'Clutch bag', '2018/07/06 04:38:28', '2018/07/06 04:38:28');
INSERT INTO `master_category` VALUES ('62', '11', null, 'ｿﾉﾀﾊﾞｯｸﾞ', 'Other bags', '2018/07/06 04:38:35', '2018/07/06 04:38:35');
INSERT INTO `master_category` VALUES ('63', '12', null, 'ﾘﾝｸﾞ', 'Ring', '2018/07/06 04:38:54', '2018/07/06 04:38:54');
INSERT INTO `master_category` VALUES ('64', '12', null, 'ﾈｯｸﾚｽ', 'Necklace', '2018/07/06 04:39:03', '2018/07/06 04:39:03');
INSERT INTO `master_category` VALUES ('65', '12', null, 'ﾈｯｸﾚｽﾄｯﾌﾟ', 'Necklace top', '2018/07/06 04:39:09', '2018/07/06 04:39:09');
INSERT INTO `master_category` VALUES ('66', '12', null, 'ﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ', 'Bracelet / Bangle', '2018/07/06 04:39:15', '2018/07/06 04:39:15');
INSERT INTO `master_category` VALUES ('67', '12', null, 'ｳｫﾚｯﾄﾁｪｰﾝ', 'Wallet Chain', '2018/07/06 04:39:23', '2018/07/06 04:39:23');
INSERT INTO `master_category` VALUES ('68', '12', null, 'ﾋﾟｱｽ/ｲﾔﾘﾝｸﾞ', 'Earrings', '2018/07/06 04:39:28', '2018/07/06 04:39:28');
INSERT INTO `master_category` VALUES ('69', '13', null, 'ﾎﾞｳｼ', 'Hat', '2018/07/06 04:40:06', '2018/07/06 04:40:06');
INSERT INTO `master_category` VALUES ('70', '13', null, 'ﾍﾞﾙﾄ', 'Belt', '2018/07/06 04:40:21', '2018/07/06 04:40:21');
INSERT INTO `master_category` VALUES ('71', '13', null, 'ｻｲﾌ', 'Wallet', '2018/07/06 04:40:26', '2018/07/06 04:40:26');
INSERT INTO `master_category` VALUES ('72', '13', null, 'ｺｲﾝｹｰｽ', 'Coin purse', '2018/07/06 04:40:32', '2018/07/06 04:40:32');
INSERT INTO `master_category` VALUES ('73', '13', null, 'ｻﾝｸﾞﾗｽ/ﾒｶﾞﾈ', 'Sunglasses / glasses', '2018/07/06 04:40:40', '2018/07/06 04:40:40');
INSERT INTO `master_category` VALUES ('74', '13', null, 'ｽﾄｰﾙ', 'Stall', '2018/07/06 04:40:47', '2018/07/06 04:40:47');
INSERT INTO `master_category` VALUES ('75', '13', null, 'ﾏﾌﾗｰ', 'Scarf', '2018/07/06 04:40:53', '2018/07/06 04:40:53');
INSERT INTO `master_category` VALUES ('76', '13', null, 'ﾈｸﾀｲ', 'Tie', '2018/07/06 04:41:01', '2018/07/06 04:41:01');
INSERT INTO `master_category` VALUES ('77', '13', null, 'ｳﾃﾞﾄﾞｴｲ', 'Watches', '2018/07/06 04:41:08', '2018/07/06 04:41:08');
INSERT INTO `master_category` VALUES ('78', '13', null, 'ｶｰﾄﾞｹｰｽ', 'Card case', '2018/07/06 04:41:15', '2018/07/06 04:41:15');
INSERT INTO `master_category` VALUES ('79', '13', null, 'ﾃﾌﾞｸﾛ/ｸﾞﾛｰﾌﾞ', 'Gloves / Gloves', '2018/07/06 04:41:22', '2018/07/06 04:41:22');
INSERT INTO `master_category` VALUES ('80', '13', null, 'ｽｶｰﾌ', 'Scarf', '2018/07/06 04:41:28', '2018/07/06 04:41:28');
INSERT INTO `master_category` VALUES ('81', '13', null, 'ｿﾉﾀｺﾓﾉ', 'Other accessories', '2018/07/06 04:41:35', '2018/07/06 04:41:35');
INSERT INTO `master_category` VALUES ('82', '14', null, 'ｽﾆｰｶｰ', 'Sneakers', '2018/07/06 04:42:15', '2018/07/06 04:42:15');
INSERT INTO `master_category` VALUES ('83', '15', null, 'ｻﾝﾀﾞﾙ', 'Sandals', '2018/07/06 04:42:31', '2018/07/06 04:42:31');
INSERT INTO `master_category` VALUES ('84', '15', null, 'ﾊﾟﾝﾌﾟｽ/ﾐｭｰﾙ', 'Pumps / Mule', '2018/07/06 04:42:40', '2018/07/06 04:42:40');
INSERT INTO `master_category` VALUES ('85', '16', null, 'ﾌﾞｰﾂ', 'Boots', '2018/07/06 04:42:53', '2018/07/06 04:42:53');
INSERT INTO `master_category` VALUES ('86', '17', null, 'ｼｭｰｽﾞ(ｿﾉﾀ)', 'Shoes (Others)', '2018/07/06 04:43:09', '2018/07/06 04:43:09');
INSERT INTO `master_category` VALUES ('87', '18', null, 'ﾎｳｼｮｸﾘﾝｸﾞ', 'Jewelry ring', '2018/07/06 04:43:22', '2018/07/06 04:43:22');
INSERT INTO `master_category` VALUES ('88', '18', null, 'ﾎｳｼｮｸﾈｯｸﾚｽ', 'Jewelry necklace', '2018/07/06 04:43:30', '2018/07/06 04:43:30');
INSERT INTO `master_category` VALUES ('89', '18', null, 'ﾎｳｼｮｸﾈｯｸﾚｽﾄｯﾌﾟ', 'Jewelry necklace top', '2018/07/06 04:43:38', '2018/07/06 04:43:38');
INSERT INTO `master_category` VALUES ('90', '18', null, 'ﾎｳｼｮｸﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ', 'Jewelry Bracelet / Bangle', '2018/07/06 04:43:45', '2018/07/06 04:43:45');
INSERT INTO `master_category` VALUES ('91', '18', null, 'ﾎｳｼｮｸﾋﾟｱｽ', 'Jewelry earrings', '2018/07/06 04:43:51', '2018/07/06 04:43:51');
INSERT INTO `master_category` VALUES ('92', '18', null, 'ﾎｳｼｮｸｲﾔﾘﾝｸﾞ', 'Jewelry Earrings', '2018/07/06 04:43:58', '2018/07/06 04:43:58');
INSERT INTO `master_category` VALUES ('93', '18', null, 'ﾎｳｼｮｸﾙｰｽ', 'Jewelry Ruth', '2018/07/06 04:44:04', '2018/07/06 04:44:04');
INSERT INTO `master_category` VALUES ('94', '18', null, 'ﾎｳｼｮｸｿﾉﾀ', 'Jewelry Other', '2018/07/06 04:44:11', '2018/07/06 04:44:11');
INSERT INTO `master_category` VALUES ('95', '19', null, 'ｹｶﾞﾜｱﾊﾟﾚﾙ', 'Fur apparel', '2018/07/06 04:44:27', '2018/07/06 04:44:27');
INSERT INTO `master_category` VALUES ('96', '19', null, 'ｹｶﾞﾜｺﾓﾉ', 'Furry accessories', '2018/07/06 04:44:39', '2018/07/06 04:44:39');
INSERT INTO `master_category` VALUES ('97', '2', '1', 'H.外', 'H.OUTER', '2018/07/06 04:13:29', '2018/07/06 04:13:29');
INSERT INTO `master_category` VALUES ('98', '2', '1', 'L.外', 'L.OUTER', '2018/07/06 04:15:29', '2018/07/06 04:15:29');
INSERT INTO `master_category` VALUES ('99', '2', '1', 'シャツ', 'SHIRT', '2018/07/06 04:15:53', '2018/07/06 04:15:53');
INSERT INTO `master_category` VALUES ('100', '2', '1', 'ニット/カージガン', 'KNIT/CARDIGAN', '2018/07/06 04:16:12', '2018/07/06 04:16:12');
INSERT INTO `master_category` VALUES ('101', '2', '1', 'カット＆セーン', 'CUT&SEWN', '2018/07/06 04:16:24', '2018/07/06 04:16:24');
INSERT INTO `master_category` VALUES ('102', '2', '1', 'パーカー/スウェット', 'PARKA/SWEAT', '2018/07/06 04:16:52', '2018/07/06 04:16:52');
INSERT INTO `master_category` VALUES ('103', '2', '5', 'セットアップ', 'SETUP', '2018/07/06 04:17:11', '2018/07/06 04:17:11');
INSERT INTO `master_category` VALUES ('104', '2', '1', 'パンツ/スカート', 'PANTS/SKIRT', '2018/07/06 04:17:35', '2018/07/06 04:17:35');
INSERT INTO `master_category` VALUES ('105', '2', '5', 'バッグ', 'BAG', '2018/07/06 04:17:51', '2018/07/06 04:17:51');
INSERT INTO `master_category` VALUES ('106', '2', '5', 'アクセサリー', 'ACCESSORY', '2018/07/06 04:18:03', '2018/07/06 04:18:03');
INSERT INTO `master_category` VALUES ('107', '2', '5', '品', 'GOODS', '2018/07/06 04:18:17', '2018/07/06 04:18:17');
INSERT INTO `master_category` VALUES ('108', '2', '1', 'スニーカー', 'SNEAKER', '2018/07/06 04:18:31', '2018/07/06 04:18:31');
INSERT INTO `master_category` VALUES ('109', '2', '2', 'サンダル', 'SANDAL', '2018/07/06 04:19:13', '2018/07/06 04:19:13');
INSERT INTO `master_category` VALUES ('110', '2', '2', 'ブーツ', 'BOOTS', '2018/07/06 04:19:25', '2018/07/06 04:19:25');
INSERT INTO `master_category` VALUES ('111', '2', '2', 'その他の靴', 'OTHER SHOES', '2018/07/06 04:19:37', '2018/07/06 04:19:37');
INSERT INTO `master_category` VALUES ('112', '2', '5', '宝石', 'JEWELRY', '2018/07/06 04:19:47', '2018/07/06 04:19:47');
INSERT INTO `master_category` VALUES ('113', '2', '4', '毛皮', 'FUR', '2018/07/06 04:21:08', '2018/07/06 04:21:08');
INSERT INTO `master_category` VALUES ('114', '97', null, 'H.ﾀﾞｳﾝｼﾞｬｹｯﾄ', 'H. Down jacket', '2018/07/06 04:25:09', '2018/07/06 04:25:09');
INSERT INTO `master_category` VALUES ('115', '97', null, 'H.ｺｰﾄ', 'H. Coat', '2018/07/06 04:26:52', '2018/07/06 04:26:52');
INSERT INTO `master_category` VALUES ('116', '97', null, 'H.ﾚｻﾞｰｼﾞｬｹｯﾄ', 'H. Leather jacket', '2018/07/06 04:27:03', '2018/07/06 04:27:03');
INSERT INTO `master_category` VALUES ('117', '97', null, 'H.ﾌﾞﾙｿﾞﾝ', 'H. Blouson', '2018/07/06 04:27:09', '2018/07/06 04:27:09');
INSERT INTO `master_category` VALUES ('118', '97', null, 'H.ﾀﾞｳﾝﾍﾞｽﾄ', 'H. Down vest', '2018/07/06 04:27:25', '2018/07/06 04:27:25');
INSERT INTO `master_category` VALUES ('119', '97', null, 'H.ｼﾞｬｹｯﾄ', 'H. Jacket', '2018/07/06 04:27:37', '2018/07/06 04:27:37');
INSERT INTO `master_category` VALUES ('120', '98', null, 'L.ﾃﾞﾆﾑｼﾞｬｹｯﾄ', 'L. Denim jacket', '2018/07/06 04:28:18', '2018/07/06 04:28:18');
INSERT INTO `master_category` VALUES ('121', '98', null, 'L.ｺｰﾄ', 'L. Coat', '2018/07/06 04:28:33', '2018/07/06 04:28:33');
INSERT INTO `master_category` VALUES ('122', '98', null, 'L.ﾚｻﾞｰｼﾞｬｹｯﾄ', 'L. Leather jacket', '2018/07/06 04:28:39', '2018/07/06 04:28:39');
INSERT INTO `master_category` VALUES ('123', '98', null, 'L.ﾌﾞﾙｿﾞﾝ', 'L. Blouson', '2018/07/06 04:28:45', '2018/07/06 04:28:45');
INSERT INTO `master_category` VALUES ('124', '98', null, 'L.ｼﾞｬｹｯﾄ', 'L. Jacket', '2018/07/06 04:29:08', '2018/07/06 04:29:08');
INSERT INTO `master_category` VALUES ('125', '99', null, 'ﾅｶﾞｿﾃﾞｼｬﾂ', 'Long Sleeve Shirt', '2018/07/06 04:30:24', '2018/07/06 04:30:24');
INSERT INTO `master_category` VALUES ('126', '99', null, 'ﾊﾝｿﾃﾞｼｬﾂ', 'Short Sleeve Shirt', '2018/07/06 04:30:33', '2018/07/06 04:30:33');
INSERT INTO `master_category` VALUES ('127', '99', null, 'ﾉｰｽﾘｰﾌﾞｼｬﾂ', 'Sleeveless Shirt', '2018/07/06 04:30:39', '2018/07/06 04:30:39');
INSERT INTO `master_category` VALUES ('128', '100', null, 'ｶｰﾃﾞｨｶﾞﾝ', 'Cardigan', '2018/07/06 04:31:02', '2018/07/06 04:31:02');
INSERT INTO `master_category` VALUES ('129', '100', null, 'ﾆｯﾄ', 'Knit', '2018/07/06 04:31:16', '2018/07/06 04:31:16');
INSERT INTO `master_category` VALUES ('130', '101', null, 'ﾊﾝｿﾃﾞﾎﾟﾛｼｬﾂ', 'Short Sleeve Polo Shirt', '2018/07/06 04:32:26', '2018/07/06 04:32:26');
INSERT INTO `master_category` VALUES ('131', '101', null, 'ﾅｶﾞｿﾃﾞｶｯﾄｿｰ', 'Long Sleeve Cut', '2018/07/06 04:32:48', '2018/07/06 04:32:48');
INSERT INTO `master_category` VALUES ('132', '101', null, 'Tｼｬﾂ', 'T-shirt', '2018/07/06 04:32:54', '2018/07/06 04:32:54');
INSERT INTO `master_category` VALUES ('133', '101', null, 'ﾀﾝｸﾄｯﾌﾟ/ﾉｰｽﾘｰﾌﾞｶｯﾄｿｰ', 'Tank top / Sleeveless cut', '2018/07/06 04:33:07', '2018/07/06 04:33:07');
INSERT INTO `master_category` VALUES ('134', '101', null, 'ｷｬﾐｿｰﾙ', 'Camisole', '2018/07/06 04:33:14', '2018/07/06 04:33:14');
INSERT INTO `master_category` VALUES ('135', '101', null, 'ﾜﾝﾋﾟｰｽ/ﾁｭﾆｯｸ/ﾌﾞﾗｳｽ', 'One Piece: Tunic / Blouse', '2018/07/06 04:33:23', '2018/07/06 04:33:23');
INSERT INTO `master_category` VALUES ('136', '101', null, 'ﾍﾞｽﾄ/ｼﾞﾚ', 'Best / Gillet', '2018/07/06 04:33:39', '2018/07/06 04:33:39');
INSERT INTO `master_category` VALUES ('137', '101', null, 'ｿﾉﾀﾄｯﾌﾟｽ', 'Other tops', '2018/07/06 04:33:48', '2018/07/06 04:33:48');
INSERT INTO `master_category` VALUES ('138', '102', null, 'ﾊﾟｰｶｰ', 'Parker', '2018/07/06 04:34:04', '2018/07/06 04:34:04');
INSERT INTO `master_category` VALUES ('139', '102', null, 'ｽｳｪｯﾄ', 'Sweat', '2018/07/06 04:35:00', '2018/07/06 04:35:00');
INSERT INTO `master_category` VALUES ('140', '103', null, 'ｽｰﾂ', 'Suit', '2018/07/06 04:35:10', '2018/07/06 04:35:10');
INSERT INTO `master_category` VALUES ('141', '103', null, 'ｿﾉﾀｾｯﾄｱｯﾌﾟ', 'Other setup', '2018/07/06 04:35:17', '2018/07/06 04:35:17');
INSERT INTO `master_category` VALUES ('142', '104', null, 'ﾛﾝｸﾞﾊﾟﾝﾂ', 'Long pants', '2018/07/06 04:35:27', '2018/07/06 04:35:27');
INSERT INTO `master_category` VALUES ('143', '104', null, 'ﾊｰﾌﾊﾟﾝﾂ/ｼｮｰﾄﾊﾟﾝﾂ/ｼｮｰﾂ', 'Half pants / shorts / shorts', '2018/07/06 04:35:34', '2018/07/06 04:35:34');
INSERT INTO `master_category` VALUES ('144', '104', null, 'ﾃﾞﾆﾑﾊﾟﾝﾂ', 'Denim trousers', '2018/07/06 04:35:41', '2018/07/06 04:35:41');
INSERT INTO `master_category` VALUES ('145', '104', null, 'ｽｶｰﾄ', 'Skirt', '2018/07/06 04:35:48', '2018/07/06 04:35:48');
INSERT INTO `master_category` VALUES ('146', '104', null, 'ｿﾉﾀﾎﾞﾄﾑｽ', 'Other bottoms', '2018/07/06 04:35:56', '2018/07/06 04:35:56');
INSERT INTO `master_category` VALUES ('147', '105', null, 'ﾄｰﾄﾊﾞｯｸﾞ', 'Tote bag', '2018/07/06 04:37:20', '2018/07/06 04:37:20');
INSERT INTO `master_category` VALUES ('148', '105', null, 'ﾊﾝﾄﾞﾊﾞｯｸﾞ', 'Handbag', '2018/07/06 04:37:28', '2018/07/06 04:37:28');
INSERT INTO `master_category` VALUES ('149', '105', null, 'ｼｮﾙﾀﾞｰﾊﾞｯｸﾞ', 'Shoulder bag', '2018/07/06 04:37:34', '2018/07/06 04:37:34');
INSERT INTO `master_category` VALUES ('150', '105', null, 'ﾎﾞｽﾄﾝﾊﾞｯｸﾞ', 'Boston bag', '2018/07/06 04:37:44', '2018/07/06 04:37:44');
INSERT INTO `master_category` VALUES ('151', '105', null, 'ｳｴｽﾄﾊﾞｯｸﾞ/ﾎﾞﾃﾞｨｰﾊﾞｯｸﾞ', 'Waist Bag / Body Bag', '2018/07/06 04:37:51', '2018/07/06 04:37:51');
INSERT INTO `master_category` VALUES ('152', '105', null, 'ﾌﾞﾘｰﾌﾊﾞｯｸﾞ', 'Brief bag', '2018/07/06 04:37:57', '2018/07/06 04:37:57');
INSERT INTO `master_category` VALUES ('153', '105', null, 'ﾎﾟｰﾁ', 'Pouch', '2018/07/06 04:38:04', '2018/07/06 04:38:04');
INSERT INTO `master_category` VALUES ('154', '105', null, 'ﾘｭｯｸ/ﾊﾞｯｸﾊﾟｯｸ', 'Backpack / Backpack', '2018/07/06 04:38:11', '2018/07/06 04:38:11');
INSERT INTO `master_category` VALUES ('155', '105', null, 'ｸﾗｯﾁﾊﾞｯｸﾞ', 'Clutch bag', '2018/07/06 04:38:28', '2018/07/06 04:38:28');
INSERT INTO `master_category` VALUES ('156', '105', null, 'ｿﾉﾀﾊﾞｯｸﾞ', 'Other bags', '2018/07/06 04:38:35', '2018/07/06 04:38:35');
INSERT INTO `master_category` VALUES ('157', '106', null, 'ﾘﾝｸﾞ', 'Ring', '2018/07/06 04:38:54', '2018/07/06 04:38:54');
INSERT INTO `master_category` VALUES ('158', '106', null, 'ﾈｯｸﾚｽ', 'Necklace', '2018/07/06 04:39:03', '2018/07/06 04:39:03');
INSERT INTO `master_category` VALUES ('159', '106', null, 'ﾈｯｸﾚｽﾄｯﾌﾟ', 'Necklace top', '2018/07/06 04:39:09', '2018/07/06 04:39:09');
INSERT INTO `master_category` VALUES ('160', '106', null, 'ﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ', 'Bracelet / Bangle', '2018/07/06 04:39:15', '2018/07/06 04:39:15');
INSERT INTO `master_category` VALUES ('161', '106', null, 'ｳｫﾚｯﾄﾁｪｰﾝ', 'Wallet Chain', '2018/07/06 04:39:23', '2018/07/06 04:39:23');
INSERT INTO `master_category` VALUES ('162', '106', null, 'ﾋﾟｱｽ/ｲﾔﾘﾝｸﾞ', 'Earrings', '2018/07/06 04:39:28', '2018/07/06 04:39:28');
INSERT INTO `master_category` VALUES ('163', '107', null, 'ﾎﾞｳｼ', 'Hat', '2018/07/06 04:40:06', '2018/07/06 04:40:06');
INSERT INTO `master_category` VALUES ('164', '107', null, 'ﾍﾞﾙﾄ', 'Belt', '2018/07/06 04:40:21', '2018/07/06 04:40:21');
INSERT INTO `master_category` VALUES ('165', '107', null, 'ｻｲﾌ', 'Wallet', '2018/07/06 04:40:26', '2018/07/06 04:40:26');
INSERT INTO `master_category` VALUES ('166', '107', null, 'ｺｲﾝｹｰｽ', 'Coin purse', '2018/07/06 04:40:32', '2018/07/06 04:40:32');
INSERT INTO `master_category` VALUES ('167', '107', null, 'ｻﾝｸﾞﾗｽ/ﾒｶﾞﾈ', 'Sunglasses / glasses', '2018/07/06 04:40:40', '2018/07/06 04:40:40');
INSERT INTO `master_category` VALUES ('168', '107', null, 'ｽﾄｰﾙ', 'Stall', '2018/07/06 04:40:47', '2018/07/06 04:40:47');
INSERT INTO `master_category` VALUES ('169', '107', null, 'ﾏﾌﾗｰ', 'Scarf', '2018/07/06 04:40:53', '2018/07/06 04:40:53');
INSERT INTO `master_category` VALUES ('170', '107', null, 'ﾈｸﾀｲ', 'Tie', '2018/07/06 04:41:01', '2018/07/06 04:41:01');
INSERT INTO `master_category` VALUES ('171', '107', null, 'ｳﾃﾞﾄﾞｴｲ', 'Watches', '2018/07/06 04:41:08', '2018/07/06 04:41:08');
INSERT INTO `master_category` VALUES ('172', '107', null, 'ｶｰﾄﾞｹｰｽ', 'Card case', '2018/07/06 04:41:15', '2018/07/06 04:41:15');
INSERT INTO `master_category` VALUES ('173', '107', null, 'ﾃﾌﾞｸﾛ/ｸﾞﾛｰﾌﾞ', 'Gloves / Gloves', '2018/07/06 04:41:22', '2018/07/06 04:41:22');
INSERT INTO `master_category` VALUES ('174', '107', null, 'ｽｶｰﾌ', 'Scarf', '2018/07/06 04:41:28', '2018/07/06 04:41:28');
INSERT INTO `master_category` VALUES ('175', '107', null, 'ｿﾉﾀｺﾓﾉ', 'Other accessories', '2018/07/06 04:41:35', '2018/07/06 04:41:35');
INSERT INTO `master_category` VALUES ('176', '108', null, 'ｽﾆｰｶｰ', 'Sneakers', '2018/07/06 04:42:15', '2018/07/06 04:42:15');
INSERT INTO `master_category` VALUES ('177', '109', null, 'ｻﾝﾀﾞﾙ', 'Sandals', '2018/07/06 04:42:31', '2018/07/06 04:42:31');
INSERT INTO `master_category` VALUES ('178', '109', null, 'ﾊﾟﾝﾌﾟｽ/ﾐｭｰﾙ', 'Pumps / Mule', '2018/07/06 04:42:40', '2018/07/06 04:42:40');
INSERT INTO `master_category` VALUES ('179', '110', null, 'ﾌﾞｰﾂ', 'Boots', '2018/07/06 04:42:53', '2018/07/06 04:42:53');
INSERT INTO `master_category` VALUES ('180', '111', null, 'ｼｭｰｽﾞ(ｿﾉﾀ)', 'Shoes (Others)', '2018/07/06 04:43:09', '2018/07/06 04:43:09');
INSERT INTO `master_category` VALUES ('181', '112', null, 'ﾎｳｼｮｸﾘﾝｸﾞ', 'Jewelry ring', '2018/07/06 04:43:22', '2018/07/06 04:43:22');
INSERT INTO `master_category` VALUES ('182', '112', null, 'ﾎｳｼｮｸﾈｯｸﾚｽ', 'Jewelry necklace', '2018/07/06 04:43:30', '2018/07/06 04:43:30');
INSERT INTO `master_category` VALUES ('183', '112', null, 'ﾎｳｼｮｸﾈｯｸﾚｽﾄｯﾌﾟ', 'Jewelry necklace top', '2018/07/06 04:43:38', '2018/07/06 04:43:38');
INSERT INTO `master_category` VALUES ('184', '112', null, 'ﾎｳｼｮｸﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ', 'Jewelry Bracelet / Bangle', '2018/07/06 04:43:45', '2018/07/06 04:43:45');
INSERT INTO `master_category` VALUES ('185', '112', null, 'ﾎｳｼｮｸﾋﾟｱｽ', 'Jewelry earrings', '2018/07/06 04:43:51', '2018/07/06 04:43:51');
INSERT INTO `master_category` VALUES ('186', '112', null, 'ﾎｳｼｮｸｲﾔﾘﾝｸﾞ', 'Jewelry Earrings', '2018/07/06 04:43:58', '2018/07/06 04:43:58');
INSERT INTO `master_category` VALUES ('187', '112', null, 'ﾎｳｼｮｸﾙｰｽ', 'Jewelry Ruth', '2018/07/06 04:44:04', '2018/07/06 04:44:04');
INSERT INTO `master_category` VALUES ('188', '112', null, 'ﾎｳｼｮｸｿﾉﾀ', 'Jewelry Other', '2018/07/06 04:44:11', '2018/07/06 04:44:11');
INSERT INTO `master_category` VALUES ('189', '113', null, 'ｹｶﾞﾜｱﾊﾟﾚﾙ', 'Fur apparel', '2018/07/06 04:44:27', '2018/07/06 04:44:27');
INSERT INTO `master_category` VALUES ('190', '113', null, 'ｹｶﾞﾜｺﾓﾉ', 'Furry accessories', '2018/07/06 04:44:39', '2018/07/06 04:44:39');

-- ----------------------------
-- Table structure for master_city
-- ----------------------------
DROP TABLE IF EXISTS `master_city`;
CREATE TABLE `master_city` (
  `city_id` int(11) NOT NULL,
  `city_state` int(11) DEFAULT NULL,
  `city_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_long` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_city
-- ----------------------------
INSERT INTO `master_city` VALUES ('1', '1', 'Tokyo', '1', '1', '1');
INSERT INTO `master_city` VALUES ('2', '2', 'New York', '1', '1', '1');
INSERT INTO `master_city` VALUES ('3', '2', 'Los Angles', '1', '1', '1');

-- ----------------------------
-- Table structure for master_color
-- ----------------------------
DROP TABLE IF EXISTS `master_color`;
CREATE TABLE `master_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`color_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_color
-- ----------------------------
INSERT INTO `master_color` VALUES ('1', 'Red', 'Red', '#ff0000', '2018/07/04 12:06:42', '2018/07/04 12:06:42');
INSERT INTO `master_color` VALUES ('2', 'Yellow', 'Yellow', '#fff500', '2018/07/04 12:06:57', '2018/07/04 12:06:57');
INSERT INTO `master_color` VALUES ('3', 'Blue', 'Blue', '#0029ff', '2018/07/04 12:07:06', '2018/07/04 12:07:06');
INSERT INTO `master_color` VALUES ('4', 'Green', 'Green', '#00ff47', '2018/07/04 12:07:20', '2018/07/04 12:07:20');
INSERT INTO `master_color` VALUES ('5', 'Black', 'Black', '#000000', '2018/07/04 12:07:35', '2018/07/04 12:07:35');
INSERT INTO `master_color` VALUES ('6', 'White', 'White', '#ffffff', '2018/07/04 12:07:42', '2018/07/04 12:07:42');
INSERT INTO `master_color` VALUES ('7', 'Orange', 'Orange', '#ffa800', '2018/07/04 12:07:57', '2018/07/04 12:07:57');
INSERT INTO `master_color` VALUES ('8', 'Spec', 'Orange', '#ff6b00', '2018/07/12 12:27:44', '2018/07/12 12:29:15');

-- ----------------------------
-- Table structure for master_emailtemplate
-- ----------------------------
DROP TABLE IF EXISTS `master_emailtemplate`;
CREATE TABLE `master_emailtemplate` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_emailtemplate
-- ----------------------------

-- ----------------------------
-- Table structure for master_event
-- ----------------------------
DROP TABLE IF EXISTS `master_event`;
CREATE TABLE `master_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_condition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_duration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_event
-- ----------------------------
INSERT INTO `master_event` VALUES ('1', 'Event1', 'Event1', 'Event1', '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', 'Event1', '2018/07/04 12:41:09', '2018/07/06 05:59:45');
INSERT INTO `master_event` VALUES ('2', 'Event2', 'Event2', 'Event2', '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', 'Event2', '2018/07/04 12:41:20', '2018/07/06 05:59:42');
INSERT INTO `master_event` VALUES ('3', 'Event3', 'Event3', 'Event3', '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', 'Event3', '2018/07/04 12:41:30', '2018/07/06 05:59:39');
INSERT INTO `master_event` VALUES ('4', 'Event4', 'Event4', 'Event4', '07/06/2018 12:00 AM - 07/07/2018 12:00 AM', 'Event4', '2018/07/06 05:54:54', '2018/07/06 05:59:54');
INSERT INTO `master_event` VALUES ('5', 'Event5', 'Event5', 'Event5', '05/19/2018 6:00 AM - 09/07/2018 6:00 AM', 'Event5', '2018/07/06 05:56:34', '2018/07/06 06:00:04');

-- ----------------------------
-- Table structure for master_genre
-- ----------------------------
DROP TABLE IF EXISTS `master_genre`;
CREATE TABLE `master_genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `mall_id` int(11) DEFAULT NULL,
  `genre_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`genre_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_genre
-- ----------------------------
INSERT INTO `master_genre` VALUES ('2', '20', 'Caps', 'Caps', '1', '2018/07/04 12:25:48', '2018/07/06 05:58:53');
INSERT INTO `master_genre` VALUES ('3', '21', 'Summer Shirts', 'Summer Shirts', '1', '2018/07/04 12:26:06', '2018/07/06 05:58:57');
INSERT INTO `master_genre` VALUES ('4', '24', 'Genere_01', 'genre_01', '0', '2018/07/12 05:07:26', '2018/07/12 05:09:16');
INSERT INTO `master_genre` VALUES ('5', '26', 'Genere_02', 'Genere_02', '1', '2018/07/12 12:26:14', '2018/07/12 12:26:33');

-- ----------------------------
-- Table structure for master_mall
-- ----------------------------
DROP TABLE IF EXISTS `master_mall`;
CREATE TABLE `master_mall` (
  `mall_id` int(11) NOT NULL AUTO_INCREMENT,
  `mall_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mall_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_mall
-- ----------------------------
INSERT INTO `master_mall` VALUES ('20', '1', '1', '1', '2018/07/06 02:05:44', '2018/07/06 02:05:44');
INSERT INTO `master_mall` VALUES ('21', '2', '2', '1', '2018/07/06 02:06:05', '2018/07/06 02:06:05');
INSERT INTO `master_mall` VALUES ('24', 'Mall_01', 'mall_01', '1', '2018/07/12 05:04:35', '2018/07/12 05:07:08');
INSERT INTO `master_mall` VALUES ('25', 'Mall_02', 'mall_2', '1', '2018/07/12 05:44:11', '2018/07/12 05:49:32');
INSERT INTO `master_mall` VALUES ('26', 'Mall_03', 'mall_03', '0', '2018/07/12 12:25:08', '2018/07/12 12:26:08');

-- ----------------------------
-- Table structure for master_notifycustomer
-- ----------------------------
DROP TABLE IF EXISTS `master_notifycustomer`;
CREATE TABLE `master_notifycustomer` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `notify_customer` mediumtext COLLATE utf8_unicode_ci,
  `notify_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `notify_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`notify_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_notifycustomer
-- ----------------------------
INSERT INTO `master_notifycustomer` VALUES ('1', '2/**/3', 'Notify', 'Notify', '1', '2018/07/04 12:48:21', '2018/07/04 12:48:21', '1', 'Notify');

-- ----------------------------
-- Table structure for master_notifymerchant
-- ----------------------------
DROP TABLE IF EXISTS `master_notifymerchant`;
CREATE TABLE `master_notifymerchant` (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `notify_merchant` mediumtext COLLATE utf8_unicode_ci,
  `notify_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_id` int(255) DEFAULT NULL,
  `notify_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`notify_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_notifymerchant
-- ----------------------------
INSERT INTO `master_notifymerchant` VALUES ('1', '1/**/2/**/3', 'Notify', 'Notify', '1', '2018/07/04 12:48:02', '2018/07/04 12:48:02', '1', 'Notify');
INSERT INTO `master_notifymerchant` VALUES ('2', '1/**/2/**/3', '1', '1', '1', '2018/07/05 01:22:07', '2018/07/05 01:22:07', '1', '1');

-- ----------------------------
-- Table structure for master_plan
-- ----------------------------
DROP TABLE IF EXISTS `master_plan`;
CREATE TABLE `master_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_opencost` double(10,2) DEFAULT NULL,
  `plan_fixcost` double(10,2) DEFAULT NULL,
  `plan_domestic_fee` double(10,2) DEFAULT NULL,
  `plan_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_international_fee` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_plan
-- ----------------------------
INSERT INTO `master_plan` VALUES ('1', 'Plan01', '100.00', '120.00', '1.00', '2018/07/04 12:41:50', '2018/07/04 12:41:50', null);
INSERT INTO `master_plan` VALUES ('2', 'Plan02', '120.00', '200.00', '2.00', '2018/07/04 12:42:08', '2018/07/04 12:42:08', null);
INSERT INTO `master_plan` VALUES ('3', 'Plan03', '500.00', '100.00', '1.00', '2018/07/04 12:42:20', '2018/07/04 12:42:20', null);
INSERT INTO `master_plan` VALUES ('4', 'Plan04', '500.00', '300.00', '1.00', '2018/07/04 12:42:33', '2018/07/04 12:42:33', null);
INSERT INTO `master_plan` VALUES ('5', 'Plan05', '1000.00', '1000.00', '2.00', '2018/07/04 12:42:51', '2018/07/10 10:45:13', '123.00');
INSERT INTO `master_plan` VALUES ('6', 'Plan06', '123.00', '123.00', '4342.00', '2018/07/06 05:19:16', '2018/07/12 12:31:51', '34543.00');
INSERT INTO `master_plan` VALUES ('7', 'Plan07', '4.00', '4.00', '4.00', '2018/07/12 12:31:25', '2018/07/12 12:32:00', '44.00');

-- ----------------------------
-- Table structure for master_productstate
-- ----------------------------
DROP TABLE IF EXISTS `master_productstate`;
CREATE TABLE `master_productstate` (
  `productstate_id` int(11) NOT NULL AUTO_INCREMENT,
  `productstate_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productstate_details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`productstate_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_productstate
-- ----------------------------
INSERT INTO `master_productstate` VALUES ('1', 'N', '新品');
INSERT INTO `master_productstate` VALUES ('2', 'N-', '新品&難あり');
INSERT INTO `master_productstate` VALUES ('3', 'S', '新品同様');
INSERT INTO `master_productstate` VALUES ('4', 'A', '状態良好');
INSERT INTO `master_productstate` VALUES ('5', 'B', '使用感が少ない');
INSERT INTO `master_productstate` VALUES ('6', 'C', '使用感がある');

-- ----------------------------
-- Table structure for master_size
-- ----------------------------
DROP TABLE IF EXISTS `master_size`;
CREATE TABLE `master_size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size_category_id` int(11) DEFAULT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`size_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_size
-- ----------------------------
INSERT INTO `master_size` VALUES ('1', '1', 'XL', 'XL', '2018/07/04 12:08:13', '2018/07/04 12:08:13');
INSERT INTO `master_size` VALUES ('2', '1', 'XXL', 'XXL', '2018/07/04 12:08:22', '2018/07/04 12:08:22');
INSERT INTO `master_size` VALUES ('3', '1', 'XXXL', 'XXXL', '2018/07/04 12:08:31', '2018/07/04 12:08:31');
INSERT INTO `master_size` VALUES ('4', '3', 'Kg', 'Kg', '2018/07/04 12:08:50', '2018/07/04 12:08:50');
INSERT INTO `master_size` VALUES ('5', '3', 'g', 'g', '2018/07/04 12:09:02', '2018/07/04 12:09:02');
INSERT INTO `master_size` VALUES ('6', '3', 't', 't', '2018/07/04 12:09:10', '2018/07/04 12:09:10');
INSERT INTO `master_size` VALUES ('7', '2', 'Pair', 'Pair', '2018/07/04 12:09:26', '2018/07/04 12:09:26');
INSERT INTO `master_size` VALUES ('8', '4', 'L', 'L', '2018/07/04 12:11:38', '2018/07/04 12:11:38');
INSERT INTO `master_size` VALUES ('9', '4', 'm3', 'm3', '2018/07/04 12:11:55', '2018/07/04 12:11:55');
INSERT INTO `master_size` VALUES ('10', '5', 'Thing', 'Thing', '2018/07/04 12:17:37', '2018/07/04 12:17:37');
INSERT INTO `master_size` VALUES ('11', '6', 'other_size', 'other', '2018/07/12 12:29:41', '2018/07/12 12:30:17');

-- ----------------------------
-- Table structure for master_sizecategory
-- ----------------------------
DROP TABLE IF EXISTS `master_sizecategory`;
CREATE TABLE `master_sizecategory` (
  `sizecategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `sizecategory_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizecategory_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizecategory_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizecategory_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sizecategory_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_sizecategory
-- ----------------------------
INSERT INTO `master_sizecategory` VALUES ('1', 'Shirts', '2018/07/04 12:05:19', '2018/07/04 12:05:19', 'Shirts');
INSERT INTO `master_sizecategory` VALUES ('2', 'Shoes', '2018/07/04 12:05:56', '2018/07/04 12:05:56', 'Shoes');
INSERT INTO `master_sizecategory` VALUES ('3', 'Weight', '2018/07/04 12:06:04', '2018/07/04 12:06:04', 'Weight');
INSERT INTO `master_sizecategory` VALUES ('4', 'Volume', '2018/07/04 12:06:25', '2018/07/04 12:11:28', 'Volume');
INSERT INTO `master_sizecategory` VALUES ('5', 'Things', '2018/07/04 12:16:28', '2018/07/04 12:16:28', 'Things');
INSERT INTO `master_sizecategory` VALUES ('6', 'Other', '2018/07/12 12:29:25', '2018/07/12 12:29:25', 'other');

-- ----------------------------
-- Table structure for master_state
-- ----------------------------
DROP TABLE IF EXISTS `master_state`;
CREATE TABLE `master_state` (
  `state_id` int(11) NOT NULL,
  `state_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_cursymbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_curcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_state
-- ----------------------------
INSERT INTO `master_state` VALUES ('1', 'JP', 'Japan', '¥', 'JPY');
INSERT INTO `master_state` VALUES ('2', 'USA', 'United States of America', '$', 'USD');

-- ----------------------------
-- Table structure for merchant_brand_match
-- ----------------------------
DROP TABLE IF EXISTS `merchant_brand_match`;
CREATE TABLE `merchant_brand_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of merchant_brand_match
-- ----------------------------
INSERT INTO `merchant_brand_match` VALUES ('1', '1', '4');
INSERT INTO `merchant_brand_match` VALUES ('46', '2', '1');
INSERT INTO `merchant_brand_match` VALUES ('47', '2', '4');
INSERT INTO `merchant_brand_match` VALUES ('48', '2', '12');
INSERT INTO `merchant_brand_match` VALUES ('49', '2', '15');

-- ----------------------------
-- Table structure for merchant_shipping
-- ----------------------------
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
  `shipping_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of merchant_shipping
-- ----------------------------
INSERT INTO `merchant_shipping` VALUES ('42', '2', '0', 'Racten12', '英名12', '出発拠点12', 'メモ12', '212', '712', '07/31/2018', '0', '1', '50012', '2018/07/28 06:56:00', '2018/07/28 06:56:00');
INSERT INTO `merchant_shipping` VALUES ('43', '2', '1', 'Taobao1', 'Taobao1', '1112', '2223', '3334', '4445', '08/03/2018', '556', '1', '666', '2018/07/28 07:13:00', '2018/07/28 07:13:00');

-- ----------------------------
-- Table structure for merchant_shipping_price
-- ----------------------------
DROP TABLE IF EXISTS `merchant_shipping_price`;
CREATE TABLE `merchant_shipping_price` (
  `shipping_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `shipping_price` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`shipping_price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of merchant_shipping_price
-- ----------------------------
INSERT INTO `merchant_shipping_price` VALUES ('13', '42', '2', '100', '100 cost');
INSERT INTO `merchant_shipping_price` VALUES ('17', '42', '2', '100', '100 cost');
INSERT INTO `merchant_shipping_price` VALUES ('18', '42', '2', '300', '300 cose');
INSERT INTO `merchant_shipping_price` VALUES ('19', '42', '2', '500', 'cost');
INSERT INTO `merchant_shipping_price` VALUES ('20', '43', '2', '1', '1');
INSERT INTO `merchant_shipping_price` VALUES ('21', '43', '2', '3', '3');
INSERT INTO `merchant_shipping_price` VALUES ('22', '43', '2', '4', '4');
INSERT INTO `merchant_shipping_price` VALUES ('23', '43', '2', '5', '5');
INSERT INTO `merchant_shipping_price` VALUES ('24', '43', '2', '6', '6');

-- ----------------------------
-- Table structure for receipts
-- ----------------------------
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
  `create_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipts
-- ----------------------------
INSERT INTO `receipts` VALUES ('10', '2', '16', '11', '11', '10', '11', '2018/07/31 02:21:59', null, null, '3', '2018/07/31 02:21:59', '2018/07/31 02:21:59');
INSERT INTO `receipts` VALUES ('11', '2', '16', '12', '12', '11', '12', '2018/07/31 02:21:59', null, null, '1', '2018/07/31 02:21:59', '2018/07/31 02:21:59');

-- ----------------------------
-- Table structure for receipt_address
-- ----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipt_address
-- ----------------------------
INSERT INTO `receipt_address` VALUES ('11', 'address1', '080-0000-0000', '140-0005', '1', null, null, '東京都', '品川区広町', '123', null, '0');
INSERT INTO `receipt_address` VALUES ('12', 'address1', '080-0000-0000', '140-0005', '1', null, null, '東京都', '品川区広町', '123', null, '0');

-- ----------------------------
-- Table structure for receipt_card
-- ----------------------------
DROP TABLE IF EXISTS `receipt_card`;
CREATE TABLE `receipt_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_validdate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipt_card
-- ----------------------------
INSERT INTO `receipt_card` VALUES ('11', '1234567890', '1597', 'hhh', '2018/12');
INSERT INTO `receipt_card` VALUES ('12', '1234567890', '1597', 'hhh', '2018/12');

-- ----------------------------
-- Table structure for receipt_customer
-- ----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipt_customer
-- ----------------------------
INSERT INTO `receipt_customer` VALUES ('11', null, 'kan', 'hoke', 'ddd', 'aaa', 'hokelucpy@gmail.com', '080-0000-0000', '140-0005', null, null, null, '東京都', '品川区広町', '11-001', null, null, null, '1960/1/1', null, null, '0');
INSERT INTO `receipt_customer` VALUES ('12', null, 'kan', 'hoke', 'ddd', 'aaa', 'hokelucpy@gmail.com', '080-0000-0000', '140-0005', null, null, null, '東京都', '品川区広町', '11-001', null, null, null, '1960/1/1', null, null, '0');

-- ----------------------------
-- Table structure for receipt_detail
-- ----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipt_detail
-- ----------------------------
INSERT INTO `receipt_detail` VALUES ('9', '10', '31', '433', '10', '9', '2', '1', '8');
INSERT INTO `receipt_detail` VALUES ('10', '11', '32', '447', '11', '10', '1', '1', '8');

-- ----------------------------
-- Table structure for receipt_product
-- ----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of receipt_product
-- ----------------------------
INSERT INTO `receipt_product` VALUES ('10', '158', '1', null, '15', '32', null, '10101-170629-0199', 'HAND SHIRT 1', 'product_name_kana', 'HAND SHIRT 1', '1', '5', '2', null, '100', null, null, null, null, '1', '2', null, '1', '1', '0', '0', '0', '43', null, null, '1', '1');
INSERT INTO `receipt_product` VALUES ('11', '172', '1', '', '4', '33', '', '10101-170629-0213', 'sleeveless shirt 3', 'sleeveless shirt 3', 'sleeveless shirt 3', '1', '5', '8', null, '100', '', '', '', '', '1', '2', '0', '1', '1', '0', '0', '1', '43', null, null, '1', '2');

-- ----------------------------
-- Table structure for receipt_shipping
-- ----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipt_shipping
-- ----------------------------
INSERT INTO `receipt_shipping` VALUES ('10', '2', '1', 'Taobao1', 'Taobao1', '1112', '2223', '3334', '4445', '08/03/2018', '556', '1', '666', null);
INSERT INTO `receipt_shipping` VALUES ('11', '2', '1', 'Taobao1', 'Taobao1', '1112', '2223', '3334', '4445', '08/03/2018', '556', '1', '666', null);

-- ----------------------------
-- Table structure for receipt_stock
-- ----------------------------
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipt_stock
-- ----------------------------
INSERT INTO `receipt_stock` VALUES ('9', '158', '89', '2', '516', '517', '2018/07/30 12:58:20', '2018/07/30 12:58:20', '50000', '0', '0', null);
INSERT INTO `receipt_stock` VALUES ('10', '172', '6', '2', '544', '545', '2018/07/30 12:58:25', '2018/07/30 12:58:25', '350000', '0', '0', null);
SET FOREIGN_KEY_CHECKS=1;
