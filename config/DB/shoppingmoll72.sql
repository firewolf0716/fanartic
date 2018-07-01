/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : shoppingmoll

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-07-02 01:55:01
*/

SET FOREIGN_KEY_CHECKS=0;

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
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_merchant
-- ----------------------------
INSERT INTO `fan_merchant` VALUES ('15', '1', '3', '0', 'Company_01', 'Merchant_01', 'Root_01', 'root_01', '1', 'root@root.com', '123456789', '123456789', '123-456-789', '2', '2', 'Address_01', '', '', '', '10.00', '20.00', '1', '2018/07/02 12:58:20', '2018/07/02 01:01:12', null, null, null);
INSERT INTO `fan_merchant` VALUES ('16', '2', '4', '0', 'Company_02', 'Merchant_02', 'Root_02', 'root_02', '1', 'admin@admin.com', '123456789', '111', '222', '1', '', '', '都道府県', '市区町村・番地', 'マンション名', '5.00', '10.00', '1', '2018/07/02 12:59:34', '2018/07/02 01:14:29', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

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
  `product_top_category_id` int(11) DEFAULT NULL,
  `product_main_category_id` int(11) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `product_event` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name_kana` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price_sale` double(10,2) DEFAULT NULL,
  `product_price_ref` double(10,2) DEFAULT NULL,
  `product_price_law` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_taxflag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_old_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color` int(11) DEFAULT NULL,
  `product_size_category_id` int(11) DEFAULT NULL,
  `product_size_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  PRIMARY KEY (`product_id`,`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_product
-- ----------------------------
INSERT INTO `fan_product` VALUES ('15', '1', '01/01/2018 - 12/25/2018', '18', '34', '35', '36', '6', '1', 'Product_01', 'Product_01', 'Product_01', '100.00', '150.00', '100', '0', 'shirts_010gJhZCgo.jpg/**/', '1', '9', '10', '14', '1', '10', '123', '111', '111', '1', '2018/07/02 01:22:16', '2018/07/02 01:22:16', '16', null);
INSERT INTO `fan_product` VALUES ('16', '2', '01/01/2018 - 12/25/2018', '19', '34', '35', '37', '6', '2', 'Product_02', 'Product_02', 'Product_02', '200.00', '125.00', '150', '0', 'shirts_02b2DjN90x.jpg/**/', '2', '9', '10', '14', '1', '2', '3', '4', '5', '1', '2018/07/02 01:25:50', '2018/07/02 01:25:50', '16', null);
INSERT INTO `fan_product` VALUES ('17', '3', '01/01/2018 - 12/25/2018', '18', '34', '39', '41', null, '3', 'Product_03', 'Product_03', 'Product_03', '400.00', '400.00', '400', '0', 'shirts_03oPApne00.jpg/**/shirts_04vfb6pGCc.jpg/**/', '2', '10', '10', '14', '2', '2', '2', '2', '2', '1', '2018/07/02 01:27:29', '2018/07/02 01:27:29', '16', null);
INSERT INTO `fan_product` VALUES ('18', '5', '01/01/2018 - 12/25/2018', '20', '34', '35', '36', '7', '4', 'Product_04', 'Product_04', 'Product_04', '400.00', '400.00', '400', '0', 'shirts_077al5Gikk.jpg/**/', '2', '9', '9', '12', '4', '4', '4', '4', '4', '0', '2018/07/02 01:30:55', '2018/07/02 01:30:55', '16', null);
INSERT INTO `fan_product` VALUES ('19', '5', '01/01/2018 - 12/25/2018', '18', '34', '35', '36', null, '5', 'Product_05', 'Product_05', 'Product_05', '555.00', '55.00', '555', '0', 'shirts_05v9vo9UfV.jpg/**/', '4', '10', '9', '12', '5', '5', '5', '5', '5', '1', '2018/07/02 01:32:04', '2018/07/02 01:32:04', '16', '15');
INSERT INTO `fan_product` VALUES ('20', '2', '01/01/2018 - 12/25/2018', '20', '34', '35', '37', '7', '6', 'Product_06', 'Product_06', 'Product_06', '600.00', '655.00', '677', '0', 'shirts_09aENauuRH.jpg/**/', '2', '11', '10', '14', '6', '6', '66', '6', '6', '1', '2018/07/02 01:33:00', '2018/07/02 01:33:00', '16', null);
INSERT INTO `fan_product` VALUES ('21', '6', '01/01/2018 - 12/25/2018', '19', '34', '35', '36', null, '7', 'Product_07', 'Product_07', 'Product_07', '700.00', '775.00', '770', '0', 'shirts_08kt8wa3Vc.jpg/**/', '4', '11', '10', '14', '213', '123', '14', '4235', '345', '0', '2018/07/02 01:34:28', '2018/07/02 01:34:28', '16', null);

-- ----------------------------
-- Table structure for fan_product_stock
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_stock`;
CREATE TABLE `fan_product_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_purchased` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_product_stock
-- ----------------------------

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
INSERT INTO `mall_brand_match` VALUES ('64', '18');
INSERT INTO `mall_brand_match` VALUES ('65', '19');
INSERT INTO `mall_brand_match` VALUES ('64', '20');
INSERT INTO `mall_brand_match` VALUES ('65', '20');
INSERT INTO `mall_brand_match` VALUES ('64', '21');
INSERT INTO `mall_brand_match` VALUES ('65', '21');
INSERT INTO `mall_brand_match` VALUES ('67', '19');
INSERT INTO `mall_brand_match` VALUES ('67', '20');
INSERT INTO `mall_brand_match` VALUES ('67', '21');
INSERT INTO `mall_brand_match` VALUES ('66', '20');
INSERT INTO `mall_brand_match` VALUES ('66', '21');

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
INSERT INTO `mall_category_match` VALUES ('64', '34');
INSERT INTO `mall_category_match` VALUES ('65', '34');
INSERT INTO `mall_category_match` VALUES ('64', '35');
INSERT INTO `mall_category_match` VALUES ('65', '35');
INSERT INTO `mall_category_match` VALUES ('64', '36');
INSERT INTO `mall_category_match` VALUES ('65', '37');
INSERT INTO `mall_category_match` VALUES ('64', '38');
INSERT INTO `mall_category_match` VALUES ('65', '38');
INSERT INTO `mall_category_match` VALUES ('64', '39');
INSERT INTO `mall_category_match` VALUES ('65', '39');
INSERT INTO `mall_category_match` VALUES ('64', '40');
INSERT INTO `mall_category_match` VALUES ('65', '40');
INSERT INTO `mall_category_match` VALUES ('64', '41');
INSERT INTO `mall_category_match` VALUES ('67', '39');
INSERT INTO `mall_category_match` VALUES ('67', '40');
INSERT INTO `mall_category_match` VALUES ('67', '36');
INSERT INTO `mall_category_match` VALUES ('67', '41');
INSERT INTO `mall_category_match` VALUES ('66', '38');

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
  `brand_genre` int(11) DEFAULT NULL,
  `brand_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_design` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_brand
-- ----------------------------
INSERT INTO `master_brand` VALUES ('18', null, 'Brand_01', 'brand_01_en', '1', '0', '2018/07/02 12:42:32', '2018/07/02 12:42:32');
INSERT INTO `master_brand` VALUES ('19', null, 'Brand_02', 'brand_02_en', '2', '1', '2018/07/02 12:42:53', '2018/07/02 12:42:53');
INSERT INTO `master_brand` VALUES ('20', null, 'Brand_03', 'brand_03_en', '2', '2', '2018/07/02 12:43:10', '2018/07/02 12:43:10');
INSERT INTO `master_brand` VALUES ('21', null, 'Brand_04', 'brand_04_en', '1', '3', '2018/07/02 12:43:36', '2018/07/02 12:44:20');

-- ----------------------------
-- Table structure for master_category
-- ----------------------------
DROP TABLE IF EXISTS `master_category`;
CREATE TABLE `master_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `top_category_id` int(11) DEFAULT NULL,
  `main_category_id` int(11) DEFAULT NULL,
  `category_size_id` int(11) DEFAULT NULL,
  `category_gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_category
-- ----------------------------
INSERT INTO `master_category` VALUES ('34', null, null, null, '0', 'Top_Category_01', 'top_category_01_en', '2018/07/02 12:46:18', '2018/07/02 12:46:18');
INSERT INTO `master_category` VALUES ('35', '34', null, '9', '1', 'Main_Category_01_01', 'main_Category_01_01', '2018/07/02 01:01:23', '2018/07/02 01:01:53');
INSERT INTO `master_category` VALUES ('36', '34', '35', '10', '0', 'Sub_category_01_01_01', 'Sub_category_01_01_01', '2018/07/02 01:02:18', '2018/07/02 01:02:18');
INSERT INTO `master_category` VALUES ('37', '34', '35', '11', '0', 'Sub_category_01_01_02', 'Sub_category_01_01_02', '2018/07/02 01:02:42', '2018/07/02 01:02:42');
INSERT INTO `master_category` VALUES ('38', null, null, '11', '0', 'Top_category_02', 'Top_category_02', '2018/07/02 01:03:00', '2018/07/02 01:03:00');
INSERT INTO `master_category` VALUES ('39', '34', null, null, '0', 'Main_category_01_02', 'Main_category_01_02', '2018/07/02 01:03:22', '2018/07/02 01:03:22');
INSERT INTO `master_category` VALUES ('40', '34', null, '11', '0', 'Main_category_01_03', 'Main_category_01_03', '2018/07/02 01:03:51', '2018/07/02 01:03:51');
INSERT INTO `master_category` VALUES ('41', '34', '39', null, '0', 'Sub_category_01_02_01', 'Sub_category_01_02_01', '2018/07/02 01:04:08', '2018/07/02 01:04:08');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_color
-- ----------------------------
INSERT INTO `master_color` VALUES ('9', 'Red', 'red', '#ff0000', '2018/07/02 12:46:56', '2018/07/02 12:46:56');
INSERT INTO `master_color` VALUES ('10', 'Blue', 'blue', '#1400ff', '2018/07/02 12:47:07', '2018/07/02 12:47:07');
INSERT INTO `master_color` VALUES ('11', 'Yellow', 'yellow', '#ebff00', '2018/07/02 12:47:21', '2018/07/02 12:47:59');
INSERT INTO `master_color` VALUES ('12', 'Green', 'green', '#05fa00', '2018/07/02 12:47:32', '2018/07/02 12:47:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_event
-- ----------------------------
INSERT INTO `master_event` VALUES ('6', 'Event_01', 'event_01', 'Condition_01', '01/01/2016 - 01/25/2016', 'Content_01', '2018/07/02 12:51:23', '2018/07/02 12:51:55');
INSERT INTO `master_event` VALUES ('7', 'Event_02', 'event_02', 'Condition_02', '08/30/2015 - 09/12/2015', 'Content_02', '2018/07/02 12:51:58', '2018/07/02 12:52:50');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_genre
-- ----------------------------
INSERT INTO `master_genre` VALUES ('8', '64', 'Genre_01', 'genre_01_en', '1', '2018/07/02 12:40:56', '2018/07/02 12:40:56');
INSERT INTO `master_genre` VALUES ('9', '64', 'Genre_02', 'genre_02_en', '1', '2018/07/02 12:41:20', '2018/07/02 12:41:43');
INSERT INTO `master_genre` VALUES ('10', '65', 'Genre_03', 'genre_03_en', '0', '2018/07/02 12:41:46', '2018/07/02 12:41:46');

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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_mall
-- ----------------------------
INSERT INTO `master_mall` VALUES ('64', 'Mall_01', 'mall_01_en', '1', '2018/07/02 12:38:24', '2018/07/02 12:38:24');
INSERT INTO `master_mall` VALUES ('65', 'Mall_02', 'mall_02_en', '0', '2018/07/02 12:40:32', '2018/07/02 12:40:32');
INSERT INTO `master_mall` VALUES ('66', 'Mall_03', 'mall_03_en', '1', '2018/07/02 12:45:01', '2018/07/02 12:45:01');
INSERT INTO `master_mall` VALUES ('67', 'Mall_04', 'mall_04_en', '1', '2018/07/02 01:04:37', '2018/07/02 01:04:37');

-- ----------------------------
-- Table structure for master_notifycustomer
-- ----------------------------
DROP TABLE IF EXISTS `master_notifycustomer`;
CREATE TABLE `master_notifycustomer` (
  `id` int(11) NOT NULL,
  `notify_customer` int(11) DEFAULT NULL,
  `notify_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_notifycustomer
-- ----------------------------

-- ----------------------------
-- Table structure for master_notifymerchant
-- ----------------------------
DROP TABLE IF EXISTS `master_notifymerchant`;
CREATE TABLE `master_notifymerchant` (
  `id` int(11) NOT NULL,
  `notify_merchant` int(11) DEFAULT NULL,
  `notify_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_memo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_notifymerchant
-- ----------------------------

-- ----------------------------
-- Table structure for master_plan
-- ----------------------------
DROP TABLE IF EXISTS `master_plan`;
CREATE TABLE `master_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_opencost` double(10,2) DEFAULT NULL,
  `plan_fixcost` double(10,2) DEFAULT NULL,
  `plan_tax` double(10,2) DEFAULT NULL,
  `plan_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_plan
-- ----------------------------
INSERT INTO `master_plan` VALUES ('3', 'Open_Plan_01', '100.00', '10.00', '10.00', '2018/07/02 12:56:50', '2018/07/02 12:56:50');
INSERT INTO `master_plan` VALUES ('4', 'Open_Plan_02', '2000.00', '120.00', '100.00', '2018/07/02 12:57:16', '2018/07/02 12:57:38');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_size
-- ----------------------------
INSERT INTO `master_size` VALUES ('12', '9', 'Size_01_01', 'size_01_01', '2018/07/02 12:48:43', '2018/07/02 12:48:43');
INSERT INTO `master_size` VALUES ('13', '9', 'Size_01_02', 'Size_01_02', '2018/07/02 12:49:00', '2018/07/02 12:49:00');
INSERT INTO `master_size` VALUES ('14', '10', 'Size_02_01', 'size_02_01', '2018/07/02 12:49:11', '2018/07/02 12:49:33');
INSERT INTO `master_size` VALUES ('15', '11', 'Size_03_01', 'Size_03_01', '2018/07/02 12:49:38', '2018/07/02 12:49:38');
INSERT INTO `master_size` VALUES ('16', '12', 'Size_04_01', 'size_04_01', '2018/07/02 12:50:06', '2018/07/02 12:50:06');
INSERT INTO `master_size` VALUES ('17', '12', 'Size_04_02', 'size_04_02', '2018/07/02 12:50:24', '2018/07/02 12:50:40');
INSERT INTO `master_size` VALUES ('18', '11', 'Size_03_02', 'size_03_02', '2018/07/02 12:50:45', '2018/07/02 12:50:45');
INSERT INTO `master_size` VALUES ('19', '9', 'Size_01_03', 'size_01_03', '2018/07/02 12:51:09', '2018/07/02 12:51:09');

-- ----------------------------
-- Table structure for master_sizecategory
-- ----------------------------
DROP TABLE IF EXISTS `master_sizecategory`;
CREATE TABLE `master_sizecategory` (
  `sizecategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `sizecategory_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizecategory_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizecategory_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sizecategory_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_sizecategory
-- ----------------------------
INSERT INTO `master_sizecategory` VALUES ('9', 'Size_Category_01', '2018/07/02 12:48:07', '2018/07/02 12:48:07');
INSERT INTO `master_sizecategory` VALUES ('10', 'Size_Category_02', '2018/07/02 12:48:22', '2018/07/02 12:48:22');
INSERT INTO `master_sizecategory` VALUES ('11', 'Size_Category_03', '2018/07/02 12:48:27', '2018/07/02 12:48:27');
INSERT INTO `master_sizecategory` VALUES ('12', 'Size_Category_04', '2018/07/02 12:48:31', '2018/07/02 12:48:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of merchant_brand_match
-- ----------------------------
INSERT INTO `merchant_brand_match` VALUES ('26', '15', '18');
INSERT INTO `merchant_brand_match` VALUES ('31', '16', '18');
INSERT INTO `merchant_brand_match` VALUES ('32', '16', '19');
INSERT INTO `merchant_brand_match` VALUES ('33', '16', '20');
INSERT INTO `merchant_brand_match` VALUES ('34', '16', '21');

-- ----------------------------
-- Table structure for merchant_product_status
-- ----------------------------
DROP TABLE IF EXISTS `merchant_product_status`;
CREATE TABLE `merchant_product_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` int(11) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_status` int(11) NOT NULL,
  `product_merchant_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of merchant_product_status
-- ----------------------------
INSERT INTO `merchant_product_status` VALUES ('26', '1', '15', '1', '16');
INSERT INTO `merchant_product_status` VALUES ('27', '2', '34', '1', '16');
INSERT INTO `merchant_product_status` VALUES ('28', '3', '23', '1', '16');
INSERT INTO `merchant_product_status` VALUES ('29', '4', '56', '1', '16');
INSERT INTO `merchant_product_status` VALUES ('30', '5', '78', '1', '16');
INSERT INTO `merchant_product_status` VALUES ('31', '6', '12', '1', '16');
INSERT INTO `merchant_product_status` VALUES ('32', '7', '33', '1', '16');
INSERT INTO `merchant_product_status` VALUES ('33', '1', '5', '2', '16');
INSERT INTO `merchant_product_status` VALUES ('34', '3', '6', '2', '16');
INSERT INTO `merchant_product_status` VALUES ('35', '4', '7', '2', '16');
INSERT INTO `merchant_product_status` VALUES ('36', '5', '11', '2', '16');
INSERT INTO `merchant_product_status` VALUES ('37', '7', '3', '2', '16');
INSERT INTO `merchant_product_status` VALUES ('38', '1', '4', '3', '16');
INSERT INTO `merchant_product_status` VALUES ('39', '2', '234', '3', '16');
INSERT INTO `merchant_product_status` VALUES ('40', '4', '1', '3', '16');
INSERT INTO `merchant_product_status` VALUES ('41', '5', '2', '4', '16');
INSERT INTO `merchant_product_status` VALUES ('42', '6', '56', '4', '16');
INSERT INTO `merchant_product_status` VALUES ('43', '2', '76', '5', '16');
INSERT INTO `merchant_product_status` VALUES ('44', '3', '7', '5', '16');
INSERT INTO `merchant_product_status` VALUES ('45', '4', '6', '5', '16');
INSERT INTO `merchant_product_status` VALUES ('46', '5', '8', '5', '16');
INSERT INTO `merchant_product_status` VALUES ('47', '6', '21', '5', '16');
INSERT INTO `merchant_product_status` VALUES ('48', '2', '63', '6', '16');
INSERT INTO `merchant_product_status` VALUES ('49', '3', '7', '6', '16');
INSERT INTO `merchant_product_status` VALUES ('50', '5', '81', '6', '16');
