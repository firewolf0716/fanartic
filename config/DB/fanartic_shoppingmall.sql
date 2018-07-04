/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 100131
Source Host           : localhost:3306
Source Database       : fanartic_shoppingmall

Target Server Type    : MYSQL
Target Server Version : 100131
File Encoding         : 65001

Date: 2018-07-04 13:01:50
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
  `merchant_open_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_fixcost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_opencost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_merchant
-- ----------------------------
INSERT INTO `fan_merchant` VALUES ('1', '1', '1', '0', 'Butterfly Comany', 'Butterfly Merchant', 'Butterfly', 'Butterfly Manager', '3', 'butterfly', '123456789', '123456789', '123456789', '2', '2', 'Address', '', '', '', '100.00', '150.00', '1', '2018/07/04 12:43:23', '2018/07/04 12:45:16', null, null, null, '1', '100', '100');
INSERT INTO `fan_merchant` VALUES ('2', '2', '5', '0', 'Select Shop', 'Select Shop', 'Select Shop', 'Select Shop', '2', 'root', 'root', '123456789', '123456789', '1', '', '', 'Adress', 'Adress', 'Adress', '200.00', '200.00', '1', '2018/07/04 12:45:21', '2018/07/04 12:46:42', null, null, null, '1', '1000', '1000');
INSERT INTO `fan_merchant` VALUES ('3', '3', '3', '0', 'Not New Shop', 'Not New Shop', 'Not New Shop', 'Not New Shop', '5', 'notnew', '123456789', '123456789', '123456789', '1', '', '', 'address01', 'address02', 'address03', '200.00', '250.00', '1', '2018/07/04 12:46:48', '2018/07/04 12:47:44', null, null, null, '1', '100', '500');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_product
-- ----------------------------
INSERT INTO `fan_product` VALUES ('1', '1', '01/01/2018 - 12/25/2018', '12', '1', '7', '14', '1', '1', 'T-shirt', '11', '1', '1200.00', '1000.00', '1100', '0', 'shirts_011530679997.jpg/**/shirts_021530679997.jpg/**/', '1', '5', '1', '1', '0.1', '1', '1', '1', '1', '1', '2018/07/04 12:51:38', '2018/07/04 12:51:38', '2', null);
INSERT INTO `fan_product` VALUES ('2', '2', '01/01/2018 - 12/25/2018', '12', '1', '7', '14', null, '2', 'shirts', '2', '2', '2.00', '2.00', '2', '0', 'shirts_051530680083.jpg/**/', '2', '3', '2', '7', '22', '2', '2', '2', '2', '1', '2018/07/04 12:53:42', '2018/07/04 12:53:42', '2', '1');
INSERT INTO `fan_product` VALUES ('3', '4', '01/01/2018 - 12/25/2018', '12', '1', '7', '15', '2', '3', 'Line Shirts', '3', '3', '3.00', '3.00', '3', '0', 'shirts_061530680160.jpg/**/', '3', '4', '1', '2', '3', '3', '3', '3', '3', '1', '2018/07/04 12:54:52', '2018/07/04 12:54:52', '2', null);
INSERT INTO `fan_product` VALUES ('4', '3', '01/01/2018 - 12/25/2018', '12', '1', '7', '17', '3', '4', 'Shirts_sports', '34', '4', '4.00', '4.00', '4', '0', 'shirts_081530680256.jpg/**/shirts_091530680256.jpg/**/shirts_101530680256.jpg/**/shirts_071530680256.jpg/**/', '4', '3', '1', '2', '4', '4', '4', '4', '4', '1', '2018/07/04 12:56:26', '2018/07/04 12:56:26', '2', null);
INSERT INTO `fan_product` VALUES ('5', '4', '01/01/2018 - 12/25/2018', '4', '2', '19', '24', null, '5', 'iS ScoLar', '5', '5', '5.00', '5.00', '5', '0', '33066050_20_d_1251530680373.jpg/**/', '1', '6', '1', '2', '5', '5', '5', '5', '5', '1', '2018/07/04 12:58:10', '2018/07/04 12:58:10', '2', null);
INSERT INTO `fan_product` VALUES ('6', '5', '01/01/2018 - 12/25/2018', '15', '2', '18', '21', '3', '6', 'rovtski', '6', '6', '6.00', '6.00', '6', '0', '25060225B_152_D_1251530680465.jpg/**/', '1', '5', '1', '1', '6', '6', '6', '6', '6', '1', '2018/07/04 01:00:00', '2018/07/04 01:00:00', '2', null);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of fan_product_stock
-- ----------------------------

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
INSERT INTO `mall_brand_match` VALUES ('1', '1');
INSERT INTO `mall_brand_match` VALUES ('1', '4');
INSERT INTO `mall_brand_match` VALUES ('1', '5');
INSERT INTO `mall_brand_match` VALUES ('1', '9');
INSERT INTO `mall_brand_match` VALUES ('1', '12');
INSERT INTO `mall_brand_match` VALUES ('2', '4');
INSERT INTO `mall_brand_match` VALUES ('2', '8');
INSERT INTO `mall_brand_match` VALUES ('2', '9');
INSERT INTO `mall_brand_match` VALUES ('2', '11');
INSERT INTO `mall_brand_match` VALUES ('2', '12');
INSERT INTO `mall_brand_match` VALUES ('3', '4');
INSERT INTO `mall_brand_match` VALUES ('3', '8');
INSERT INTO `mall_brand_match` VALUES ('3', '9');
INSERT INTO `mall_brand_match` VALUES ('3', '11');
INSERT INTO `mall_brand_match` VALUES ('3', '12');
INSERT INTO `mall_brand_match` VALUES ('3', '15');

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
INSERT INTO `mall_category_match` VALUES ('1', '8');
INSERT INTO `mall_category_match` VALUES ('1', '9');
INSERT INTO `mall_category_match` VALUES ('1', '10');
INSERT INTO `mall_category_match` VALUES ('1', '11');
INSERT INTO `mall_category_match` VALUES ('1', '12');
INSERT INTO `mall_category_match` VALUES ('1', '13');
INSERT INTO `mall_category_match` VALUES ('2', '11');
INSERT INTO `mall_category_match` VALUES ('2', '12');
INSERT INTO `mall_category_match` VALUES ('2', '13');
INSERT INTO `mall_category_match` VALUES ('3', '8');
INSERT INTO `mall_category_match` VALUES ('2', '18');
INSERT INTO `mall_category_match` VALUES ('3', '18');
INSERT INTO `mall_category_match` VALUES ('1', '19');
INSERT INTO `mall_category_match` VALUES ('2', '19');
INSERT INTO `mall_category_match` VALUES ('2', '20');
INSERT INTO `mall_category_match` VALUES ('3', '20');
INSERT INTO `mall_category_match` VALUES ('2', '21');
INSERT INTO `mall_category_match` VALUES ('3', '21');
INSERT INTO `mall_category_match` VALUES ('1', '23');
INSERT INTO `mall_category_match` VALUES ('2', '23');
INSERT INTO `mall_category_match` VALUES ('1', '24');
INSERT INTO `mall_category_match` VALUES ('2', '24');
INSERT INTO `mall_category_match` VALUES ('3', '24');
INSERT INTO `mall_category_match` VALUES ('1', '25');
INSERT INTO `mall_category_match` VALUES ('2', '25');
INSERT INTO `mall_category_match` VALUES ('3', '25');
INSERT INTO `mall_category_match` VALUES ('2', '26');
INSERT INTO `mall_category_match` VALUES ('3', '26');
INSERT INTO `mall_category_match` VALUES ('1', '27');
INSERT INTO `mall_category_match` VALUES ('2', '27');

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
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_brand
-- ----------------------------
INSERT INTO `master_brand` VALUES ('1', 'ADIDAS', 'ADIDAS', '1', '0', '2018/07/04 11:17:40', '2018/07/04 11:42:14', 'brand_1530674767.jpg', 'Adidas Brand');
INSERT INTO `master_brand` VALUES ('2', 'Apple', 'Apple', '1', '0', '2018/07/04 11:26:14', '2018/07/04 11:26:14', 'brand_1530674784.jpg', 'Apple');
INSERT INTO `master_brand` VALUES ('4', 'ButterFly', 'ButterFly', '1', '0', '2018/07/04 11:26:40', '2018/07/04 11:26:40', 'brand_1530674811.jpg', 'ButterFly');
INSERT INTO `master_brand` VALUES ('5', 'CAMEL', 'CAMEL', '1', '0', '2018/07/04 11:27:02', '2018/07/04 11:27:02', 'brand_1530674836.jpg', 'CAMEL');
INSERT INTO `master_brand` VALUES ('8', 'Google', 'Google', '1', '0', '2018/07/04 11:28:26', '2018/07/04 11:28:26', 'brand_1530674918.jpg', 'Google');
INSERT INTO `master_brand` VALUES ('9', 'Intel', 'Intel', '1', '0', '2018/07/04 11:28:40', '2018/07/04 11:28:40', 'brand_1530674934.jpg', 'Intel');
INSERT INTO `master_brand` VALUES ('11', 'Microsoft', 'Microsoft', '1', '0', '2018/07/04 11:29:15', '2018/07/04 11:29:15', 'brand_1530674965.jpg', 'Microsoft');
INSERT INTO `master_brand` VALUES ('12', 'Nike', 'Nike', '1', '0', '2018/07/04 11:29:35', '2018/07/04 11:29:35', 'brand_1530674986.jpg', 'Nike');
INSERT INTO `master_brand` VALUES ('15', 'DISNEY', 'DISNEY', '1', '0', '2018/07/04 11:30:26', '2018/07/04 12:01:04', 'brand_1530675039.jpg', 'DISNEY');

-- ----------------------------
-- Table structure for master_category
-- ----------------------------
DROP TABLE IF EXISTS `master_category`;
CREATE TABLE `master_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `main_category_id` int(11) DEFAULT NULL,
  `category_size_id` int(11) DEFAULT NULL,
  `top_category_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_category
-- ----------------------------
INSERT INTO `master_category` VALUES ('1', '0', null, '0', 'メンズ', 'Men', '2018/07/04 11:31:11', '2018/07/04 11:31:11');
INSERT INTO `master_category` VALUES ('2', '0', null, '0', 'レディース', 'Women', '2018/07/04 11:33:03', '2018/07/04 11:33:03');
INSERT INTO `master_category` VALUES ('3', '0', null, '1', 'Watch', 'Watch', '2018/07/04 11:36:05', '2018/07/04 11:36:05');
INSERT INTO `master_category` VALUES ('4', '0', null, '1', 'Hat', 'Hat', '2018/07/04 11:36:35', '2018/07/04 12:20:28');
INSERT INTO `master_category` VALUES ('5', '0', null, '1', 'Shoes', 'Shoes', '2018/07/04 11:36:58', '2018/07/04 11:36:58');
INSERT INTO `master_category` VALUES ('7', '0', null, '1', 'Tops', 'topstops', '2018/07/04 11:38:06', '2018/07/04 11:40:29');
INSERT INTO `master_category` VALUES ('8', '3', '5', '1', 'Watches', 'Watches', '2018/07/04 12:18:15', '2018/07/04 12:18:15');
INSERT INTO `master_category` VALUES ('9', '3', '5', '1', 'A table Clock', 'A table Clock', '2018/07/04 12:18:31', '2018/07/04 12:18:31');
INSERT INTO `master_category` VALUES ('10', '3', '5', '1', 'A wall Clock', 'A wall Clock', '2018/07/04 12:19:01', '2018/07/04 12:19:01');
INSERT INTO `master_category` VALUES ('11', '4', '5', '1', 'Cap', 'Cap', '2018/07/04 12:20:39', '2018/07/04 12:20:39');
INSERT INTO `master_category` VALUES ('12', '4', '5', '1', 'Hat', 'Hat', '2018/07/04 12:21:06', '2018/07/04 12:21:06');
INSERT INTO `master_category` VALUES ('13', '4', '5', '1', 'Sun visor', 'Sun visor', '2018/07/04 12:21:20', '2018/07/04 12:21:20');
INSERT INTO `master_category` VALUES ('14', '7', '1', '1', 'T-shirt / Cut and sewn', 'T-shirt / Cut and sewn', '2018/07/04 12:22:01', '2018/07/04 12:22:01');
INSERT INTO `master_category` VALUES ('15', '7', '1', '1', 'Parker', 'Parker', '2018/07/04 12:22:27', '2018/07/04 12:22:27');
INSERT INTO `master_category` VALUES ('16', '7', '1', '1', 'Shirts / Blouses', 'Shirts / Blouses', '2018/07/04 12:22:42', '2018/07/04 12:22:42');
INSERT INTO `master_category` VALUES ('17', '7', '1', '1', 'Camisole', 'Camisole', '2018/07/04 12:23:14', '2018/07/04 12:23:14');
INSERT INTO `master_category` VALUES ('18', '0', null, '2', 'Skirt', 'Skirt', '2018/07/04 12:26:47', '2018/07/04 12:26:47');
INSERT INTO `master_category` VALUES ('19', '0', null, '2', 'Shoes', 'Shoes', '2018/07/04 12:27:10', '2018/07/04 12:27:10');
INSERT INTO `master_category` VALUES ('20', '18', '1', '2', 'Skirt', 'Skirt', '2018/07/04 12:35:13', '2018/07/04 12:35:13');
INSERT INTO `master_category` VALUES ('21', '18', '1', '2', 'Denim skirt', 'Denim skirt', '2018/07/04 12:35:31', '2018/07/04 12:35:31');
INSERT INTO `master_category` VALUES ('23', '19', '2', '2', 'Dress Shoes', 'Dress Shoes', '2018/07/04 12:36:17', '2018/07/04 12:36:17');
INSERT INTO `master_category` VALUES ('24', '19', '2', '2', 'Sandals', 'Sandals', '2018/07/04 12:36:32', '2018/07/04 12:36:32');
INSERT INTO `master_category` VALUES ('25', '19', '2', '2', 'Shoe care / small shoes', 'Shoe care / small shoes', '2018/07/04 12:37:25', '2018/07/04 12:37:25');
INSERT INTO `master_category` VALUES ('26', '5', '2', '1', 'Dress Shoes', 'Dress Shoes', '2018/07/04 12:39:12', '2018/07/04 12:39:12');
INSERT INTO `master_category` VALUES ('27', '5', '2', '1', 'Rain Shoes', 'Rain Shoes', '2018/07/04 12:39:43', '2018/07/04 12:39:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_event
-- ----------------------------
INSERT INTO `master_event` VALUES ('1', 'Event1', 'Event1', 'Event1', '01/01/2016 - 01/25/2016', 'Event1', '2018/07/04 12:41:09', '2018/07/04 12:41:09');
INSERT INTO `master_event` VALUES ('2', 'Event2', 'Event2', 'Event2', '01/01/2016 - 01/25/2016', 'Event2', '2018/07/04 12:41:20', '2018/07/04 12:41:20');
INSERT INTO `master_event` VALUES ('3', 'Event3', 'Event3', 'Event3', '01/01/2016 - 01/25/2016', 'Event3', '2018/07/04 12:41:30', '2018/07/04 12:41:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_genre
-- ----------------------------
INSERT INTO `master_genre` VALUES ('1', '1', 'Summer Shirts', 'Summer Shirts', '1', '2018/07/04 12:25:20', '2018/07/04 12:25:20');
INSERT INTO `master_genre` VALUES ('2', '1', 'Caps', 'Caps', '1', '2018/07/04 12:25:48', '2018/07/04 12:25:48');
INSERT INTO `master_genre` VALUES ('3', '2', 'Summer Shirts', 'Summer Shirts', '1', '2018/07/04 12:26:06', '2018/07/04 12:26:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_mall
-- ----------------------------
INSERT INTO `master_mall` VALUES ('1', 'Mall_01', 'Mall_01', '1', '2018/07/04 12:23:35', '2018/07/04 12:23:35');
INSERT INTO `master_mall` VALUES ('2', 'Mall_02', 'Mall_02', '1', '2018/07/04 12:24:17', '2018/07/04 12:24:17');
INSERT INTO `master_mall` VALUES ('3', 'Mall_03', 'Mall_03', '1', '2018/07/04 12:24:47', '2018/07/04 12:24:47');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_notifymerchant
-- ----------------------------
INSERT INTO `master_notifymerchant` VALUES ('1', '1/**/2/**/3', 'Notify', 'Notify', '1', '2018/07/04 12:48:02', '2018/07/04 12:48:02', '1', 'Notify');

-- ----------------------------
-- Table structure for master_plan
-- ----------------------------
DROP TABLE IF EXISTS `master_plan`;
CREATE TABLE `master_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_opencost` double(10,2) DEFAULT NULL,
  `plan_fixcost` double(10,2) DEFAULT NULL,
  `fee_type_id` double(10,2) DEFAULT NULL,
  `plan_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_update` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_plan
-- ----------------------------
INSERT INTO `master_plan` VALUES ('1', 'Plan01', '100.00', '120.00', '1.00', '2018/07/04 12:41:50', '2018/07/04 12:41:50');
INSERT INTO `master_plan` VALUES ('2', 'Plan02', '120.00', '200.00', '2.00', '2018/07/04 12:42:08', '2018/07/04 12:42:08');
INSERT INTO `master_plan` VALUES ('3', 'Plan03', '500.00', '100.00', '1.00', '2018/07/04 12:42:20', '2018/07/04 12:42:20');
INSERT INTO `master_plan` VALUES ('4', 'Plan04', '500.00', '300.00', '1.00', '2018/07/04 12:42:33', '2018/07/04 12:42:33');
INSERT INTO `master_plan` VALUES ('5', 'Plan05', '1000.00', '1000.00', '2.00', '2018/07/04 12:42:51', '2018/07/04 12:43:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of master_sizecategory
-- ----------------------------
INSERT INTO `master_sizecategory` VALUES ('1', 'Shirts', '2018/07/04 12:05:19', '2018/07/04 12:05:19', 'Shirts');
INSERT INTO `master_sizecategory` VALUES ('2', 'Shoes', '2018/07/04 12:05:56', '2018/07/04 12:05:56', 'Shoes');
INSERT INTO `master_sizecategory` VALUES ('3', 'Weight', '2018/07/04 12:06:04', '2018/07/04 12:06:04', 'Weight');
INSERT INTO `master_sizecategory` VALUES ('4', 'Volume', '2018/07/04 12:06:25', '2018/07/04 12:11:28', 'Volume');
INSERT INTO `master_sizecategory` VALUES ('5', 'Things', '2018/07/04 12:16:28', '2018/07/04 12:16:28', 'Things');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of merchant_brand_match
-- ----------------------------
INSERT INTO `merchant_brand_match` VALUES ('1', '1', '4');
INSERT INTO `merchant_brand_match` VALUES ('2', '2', '1');
INSERT INTO `merchant_brand_match` VALUES ('3', '2', '4');
INSERT INTO `merchant_brand_match` VALUES ('4', '2', '12');
INSERT INTO `merchant_brand_match` VALUES ('5', '2', '15');

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
