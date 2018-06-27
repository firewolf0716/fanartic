/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : shoppingmoll

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 27/06/2018 11:45:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fan_deliverysetting
-- ----------------------------
DROP TABLE IF EXISTS `fan_deliverysetting`;
CREATE TABLE `fan_deliverysetting`  (
  `id` int(11) NOT NULL,
  `ds_merchant` int(11) DEFAULT NULL,
  `ds_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_price` decimal(10, 2) DEFAULT NULL,
  `ds_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_arrival` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_arrival_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ds_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fan_merchant
-- ----------------------------
DROP TABLE IF EXISTS `fan_merchant`;
CREATE TABLE `fan_merchant`  (
  `merchant_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_type` int(11) DEFAULT NULL,
  `merchant_plan` int(11) DEFAULT NULL,
  `merchant_taxflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_companyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_rep` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_permit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_postalcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address_ex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address_jp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_commission_jp` double(10, 2) DEFAULT NULL,
  `merchant_commission_ex` double(10, 2) DEFAULT NULL,
  `merchant_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_open` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_fixtax` double(10, 2) DEFAULT NULL,
  `merchant_commission` double(10, 2) DEFAULT NULL,
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fan_merchant
-- ----------------------------
INSERT INTO `fan_merchant` VALUES ('1', '2', '1', '0', 'sdf', 'sdf', 'sdf', 'ryu', '123', 'hokelucpy@outlook.com', 'luckylike', 'sdf', 'sdf', '1', '', '', 'sdfsdf', 'sdfsdfds', 'qwer', '123.00', '123.00', '1', NULL, '2018/06/18 07:17:09', '1', NULL, NULL);
INSERT INTO `fan_merchant` VALUES ('3', '1', '1', '1', 'sdf', 'sdf', 'sdf', 'jon', '12345', 'dragon@gmail.com', 'dragon', 'sdf', 'sdf', '2', '2', 'sad', '', '', '', '3.00', '4.00', '1', '2018/06/18 18:48:17', '2018/06/21 04:28:29', '0', NULL, NULL);
INSERT INTO `fan_merchant` VALUES ('5', '1', '1', '0', 'sdfsdf', 'sdfsdf', 'sdfdsf', 'sdfsdf', '1242', 'dragon@gmail.com', 'luckylike', 'sdf', 'sdf', '2', '2', 'sadfsadf', '', '', '', '45.00', '45.00', '1', '2018/06/21 12:38:17', '2018/06/21 12:38:52', '0', NULL, NULL);
INSERT INTO `fan_merchant` VALUES ('9', '1', '1', '0', 'asdfasdf', 'asdfsadf', 'asdfsadf', 'asdfsadf', '456', 'a@b.com', 'sdfsdf', 'sdfsdfsdf', 'sdfsdfsdf', '1', '', '', 'sdfsdf', 'sdfsdfsdf', 'sdfsdfsdf', '1.00', '4.00', '1', '2018/06/21 03:24:41', '2018/06/21 03:25:18', '0', NULL, NULL);
INSERT INTO `fan_merchant` VALUES ('10', '1', '1', '0', 'sdfsd', 'dfsdfsf', 'dsffs', 'dfsd', '1', 'a@s.com', 'fdgdfg', 'dfgdfg', 'dfgdfgfd', '2', '', '', NULL, NULL, NULL, '23.00', '23.00', '1', '2018/06/27 03:22:43', '2018/06/27 03:23:19', NULL, NULL, NULL);
INSERT INTO `fan_merchant` VALUES ('13', '1', '1', '0', 'bvc', 'bvc', 'vcb', 'bvc', '1', 'b@b.com', 'aaa', 'fghfgh', 'fghgfhg', '2', '2', 'fgh', '', '', '', '1.00', '1.00', '1', '2018/06/27 03:25:10', '2018/06/27 04:04:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fan_merchant_submit
-- ----------------------------
DROP TABLE IF EXISTS `fan_merchant_submit`;
CREATE TABLE `fan_merchant_submit`  (
  `merchant_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_type` int(11) DEFAULT NULL,
  `merchant_plan` int(11) DEFAULT NULL,
  `merchant_taxflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_companyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_rep` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_permit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_postalcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address_ex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_address_jp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_commission_jp` double(10, 2) DEFAULT NULL,
  `merchant_commission_ex` double(10, 2) DEFAULT NULL,
  `merchant_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_open` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `merchant_fixtax` double(10, 2) DEFAULT NULL,
  `merchant_commission` double(10, 2) DEFAULT NULL,
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fan_merchant_submit
-- ----------------------------
INSERT INTO `fan_merchant_submit` VALUES ('5', '1', '1', '0', 'sdfsdf', 'sdfsdf', 'sdfdsf', 'sdfsdf', '1242', 'd@g.com', 'luckylike', 'sdf', 'sdf', '2', '2', 'sadfsadf', '', '', '', '45.00', '45.00', '0', '2018/06/21 12:38:17', '2018/06/21 12:38:52', NULL, NULL, NULL);
INSERT INTO `fan_merchant_submit` VALUES ('6', '1', '1', '0', 'asdfasdf', 'asdfsadf', 'asdfsadf', 'asdfsadf', '456', 'a@b.com', 'asd', 'sdfsdfsdf', 'sdfsdfsdf', '1', '', '', 'sdfsdf', 'sdfsdfsdf', 'sdfsdfsdf', '1.00', '4.00', '2', '2018/06/21 03:24:41', '2018/06/21 03:25:18', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fan_product
-- ----------------------------
DROP TABLE IF EXISTS `fan_product`;
CREATE TABLE `fan_product`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_salemethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_salerange` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_brand` int(11) DEFAULT NULL,
  `product_category` int(11) DEFAULT NULL,
  `product_parent` int(11) DEFAULT NULL,
  `product_event` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name_kana` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price_sale` double(10, 2) DEFAULT NULL,
  `product_price_ref` double(10, 2) DEFAULT NULL,
  `product_price_law` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_taxflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_old_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_color` int(11) DEFAULT NULL,
  `product_size` int(11) DEFAULT NULL,
  `product_size2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_season` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_material` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_remain` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_merchant` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fan_product
-- ----------------------------
INSERT INTO `fan_product` VALUES ('2', '2', '01/01/2018 - 12/25/2018', '1', '5', NULL, '1', '10001', 'good1', 'sdfsdf', 'sdfsfefsfdsffefe', '100.00', '100.00', '100', '1', 'prod-1EurasVA3.jpg/**/', '1', '4', NULL, '10', '10', 'rrr', 'qqq', 'zzz', 'sdasdadwdwadwa', NULL, '1', '2018/06/19 07:25:54', '2018/06/19 07:25:54', '13');

-- ----------------------------
-- Table structure for fan_product_stock
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_stock`;
CREATE TABLE `fan_product_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_purchased` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fan_product_stock
-- ----------------------------
INSERT INTO `fan_product_stock` VALUES ('1', '2', '100', NULL);
INSERT INTO `fan_product_stock` VALUES ('2', '3', '100', NULL);

-- ----------------------------
-- Table structure for mall_brand_match
-- ----------------------------
DROP TABLE IF EXISTS `mall_brand_match`;
CREATE TABLE `mall_brand_match`  (
  `mall_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mall_brand_match
-- ----------------------------
INSERT INTO `mall_brand_match` VALUES ('5', '2');
INSERT INTO `mall_brand_match` VALUES ('3', '5');
INSERT INTO `mall_brand_match` VALUES ('1', '1');
INSERT INTO `mall_brand_match` VALUES ('7', '1');
INSERT INTO `mall_brand_match` VALUES ('7', '3');
INSERT INTO `mall_brand_match` VALUES ('1', '7');

-- ----------------------------
-- Table structure for master_admin
-- ----------------------------
DROP TABLE IF EXISTS `master_admin`;
CREATE TABLE `master_admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_permission` int(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_admin
-- ----------------------------
INSERT INTO `master_admin` VALUES ('1', 'admin', NULL, 'admin', '1');
INSERT INTO `master_admin` VALUES ('2', 'sdffg', 'c@c.com', 'aaa', '2');
INSERT INTO `master_admin` VALUES ('3', 'fff', 'd@d.com', '111', '2');

-- ----------------------------
-- Table structure for master_brand
-- ----------------------------
DROP TABLE IF EXISTS `master_brand`;
CREATE TABLE `master_brand`  (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_genre` int(11) DEFAULT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_design` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_brand
-- ----------------------------
INSERT INTO `master_brand` VALUES ('1', '1', 'brand1', 'brand1_en', '1', '0', '2018/06/12 06:15:54', '2018/06/18 02:19:14');
INSERT INTO `master_brand` VALUES ('2', NULL, 'brand2', 'cbrand2_en', '2', '2', '2018/06/12 06:26:59', '2018/06/12 07:00:34');
INSERT INTO `master_brand` VALUES ('3', NULL, 'brand3', 'sdfsdf', '1', '1', '2018/06/13 12:13:40', '2018/06/13 12:13:40');
INSERT INTO `master_brand` VALUES ('4', '1', 'brand4', 'brand4_en', '1', '1', '2018/06/18 02:09:51', '2018/06/18 02:09:51');
INSERT INTO `master_brand` VALUES ('5', '1', 'brand4', 'brand4_en', '1', '1', '2018/06/18 02:09:51', '2018/06/18 02:19:06');
INSERT INTO `master_brand` VALUES ('6', '1', 'asd11', 'asd', '1', '0', '2018/06/20 12:20:22', '2018/06/20 12:20:22');
INSERT INTO `master_brand` VALUES ('7', '1', 'asd11', 'asd', '1', '0', '2018/06/20 12:20:22', '2018/06/20 12:21:45');

-- ----------------------------
-- Table structure for master_category
-- ----------------------------
DROP TABLE IF EXISTS `master_category`;
CREATE TABLE `master_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_parent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_mall` int(11) DEFAULT NULL,
  `category_size` int(11) DEFAULT NULL,
  `category_gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_category
-- ----------------------------
INSERT INTO `master_category` VALUES ('1', NULL, '2', '2', '0', 'asda', 'dsdsa', NULL, '2018/06/12 11:46:10', '2018/06/18 08:47:43');
INSERT INTO `master_category` VALUES ('2', '1', '1', '1', '0', 'ddd', 'fff', '1', '2018/06/12 11:54:53', '2018/06/13 12:03:11');
INSERT INTO `master_category` VALUES ('3', '1', '1', '3', '0', 'sdfsdfsdf', 'sdfsdfsdfsdf', '1', '2018/06/13 12:49:32', '2018/06/13 12:50:45');
INSERT INTO `master_category` VALUES ('4', '2', NULL, '1', '0', 'qqq', 'zzz', '1,2', '2018/06/19 03:55:16', '2018/06/19 03:55:16');
INSERT INTO `master_category` VALUES ('5', '2', NULL, '2', '0', 'sss', 'asd', '1,2', '2018/06/19 03:55:57', '2018/06/19 03:55:57');
INSERT INTO `master_category` VALUES ('6', '4', '1', '1', '0', 'branch', 'branch', '1,2,4', '2018/06/19 07:37:39', '2018/06/19 07:38:52');

-- ----------------------------
-- Table structure for master_city
-- ----------------------------
DROP TABLE IF EXISTS `master_city`;
CREATE TABLE `master_city`  (
  `city_id` int(11) NOT NULL,
  `city_state` int(11) DEFAULT NULL,
  `city_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_long` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_city
-- ----------------------------
INSERT INTO `master_city` VALUES ('1', '1', 'Tokyo', '1', '1', '1');
INSERT INTO `master_city` VALUES ('2', '2', 'New York', NULL, NULL, '1');
INSERT INTO `master_city` VALUES ('3', '2', 'Los Angles', NULL, NULL, '1');

-- ----------------------------
-- Table structure for master_color
-- ----------------------------
DROP TABLE IF EXISTS `master_color`;
CREATE TABLE `master_color`  (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`color_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_color
-- ----------------------------
INSERT INTO `master_color` VALUES ('1', 'Red', 'Red_en1', '#ff0000', '2018/06/12 07:34:49', '2018/06/13 12:23:48');
INSERT INTO `master_color` VALUES ('2', 'Red', 'Red_en2', '#a32828', '2018/06/12 07:34:49', '2018/06/13 12:17:32');
INSERT INTO `master_color` VALUES ('3', 'Red', 'Red_en3', '#ff008a', '2018/06/12 07:34:49', '2018/06/13 12:17:36');
INSERT INTO `master_color` VALUES ('4', 'Orange', 'sdfsdf', '#ed9442', '2018/06/13 12:17:00', '2018/06/13 12:17:00');

-- ----------------------------
-- Table structure for master_emailtemplate
-- ----------------------------
DROP TABLE IF EXISTS `master_emailtemplate`;
CREATE TABLE `master_emailtemplate`  (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_event
-- ----------------------------
DROP TABLE IF EXISTS `master_event`;
CREATE TABLE `master_event`  (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_event
-- ----------------------------
INSERT INTO `master_event` VALUES ('1', 'event1', 'event_en', 'score > 150', '06/13/2018 - 06/13/2018', 'description', '2018/06/13 01:32:16', '2018/06/13 01:49:04');
INSERT INTO `master_event` VALUES ('2', 'event1', 'event_en', 'score > 150', '01/01/2018 - 05/12/2018', 'sdfsdfsdfsdf', '2018/06/13 01:35:39', '2018/06/13 01:47:50');
INSERT INTO `master_event` VALUES ('3', 'dfgdfg', 'dfgdfgdf', 'dfgdfg', '01/01/2016 - 01/25/2016', 'dfgdfgfdgfdg', '2018/06/13 01:35:57', '2018/06/13 01:47:15');

-- ----------------------------
-- Table structure for master_genre
-- ----------------------------
DROP TABLE IF EXISTS `master_genre`;
CREATE TABLE `master_genre`  (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_moll` int(11) DEFAULT NULL,
  `genre_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `genre_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`genre_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_genre
-- ----------------------------
INSERT INTO `master_genre` VALUES ('1', '3', 'genre1', 'genre_en', '1', '2018/06/14 12:46:37', '2018/06/14 12:56:36');
INSERT INTO `master_genre` VALUES ('2', '1', 'genre1', 'genre_en', '1', '2018/06/20 12:16:36', '2018/06/20 12:16:36');

-- ----------------------------
-- Table structure for master_mall
-- ----------------------------
DROP TABLE IF EXISTS `master_mall`;
CREATE TABLE `master_mall`  (
  `mall_id` int(11) NOT NULL AUTO_INCREMENT,
  `mall_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mall_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mall_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_mall
-- ----------------------------
INSERT INTO `master_mall` VALUES ('1', 'namejp', 'nameen', '1', '2018/06/12 05:54:11', '2018/06/13 12:22:09');
INSERT INTO `master_mall` VALUES ('2', 'mall2', 'mall2_ens', '1', '2018/06/12 05:54:06', '2018/06/13 12:22:13');
INSERT INTO `master_mall` VALUES ('3', 'mall3', 'sdfsfsdf', '1', '2018/06/13 12:14:42', '2018/06/13 12:14:42');
INSERT INTO `master_mall` VALUES ('4', 'sdfsdf', 'sdfsdfsdf', '1', '2018/06/13 01:30:26', '2018/06/13 01:30:50');
INSERT INTO `master_mall` VALUES ('5', 'mall4', 'mall4_en', '1', '2018/06/18 01:41:09', '2018/06/18 02:06:45');
INSERT INTO `master_mall` VALUES ('6', 'sdfsdf', 'nameen', '1', '2018/06/20 12:14:29', '2018/06/20 12:14:29');
INSERT INTO `master_mall` VALUES ('7', 'sdfsdf', 'nameen', '1', '2018/06/20 12:14:29', '2018/06/20 12:16:28');

-- ----------------------------
-- Table structure for master_notifycustomer
-- ----------------------------
DROP TABLE IF EXISTS `master_notifycustomer`;
CREATE TABLE `master_notifycustomer`  (
  `id` int(11) NOT NULL,
  `notify_customer` int(11) DEFAULT NULL,
  `notify_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_notifymerchant
-- ----------------------------
DROP TABLE IF EXISTS `master_notifymerchant`;
CREATE TABLE `master_notifymerchant`  (
  `id` int(11) NOT NULL,
  `notify_merchant` int(11) DEFAULT NULL,
  `notify_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_plan
-- ----------------------------
DROP TABLE IF EXISTS `master_plan`;
CREATE TABLE `master_plan`  (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_opencost` double(10, 2) DEFAULT NULL,
  `plan_fixcost` double(10, 2) DEFAULT NULL,
  `plan_tax` double(10, 2) DEFAULT NULL,
  `plan_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `plan_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_plan
-- ----------------------------
INSERT INTO `master_plan` VALUES ('1', 'Plan1', '101.00', '100.00', '101.00', '2018/06/13 01:58:37', '2018/06/13 02:04:08');

-- ----------------------------
-- Table structure for master_productstate
-- ----------------------------
DROP TABLE IF EXISTS `master_productstate`;
CREATE TABLE `master_productstate`  (
  `productstate_id` int(11) NOT NULL AUTO_INCREMENT,
  `productstate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `productstate_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`productstate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

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
CREATE TABLE `master_size`  (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size_category` int(11) DEFAULT NULL,
  `size_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`size_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_size
-- ----------------------------
INSERT INTO `master_size` VALUES ('1', '2', 'size1_1', 'size1_en_1', '2018/06/12 10:50:11', '2018/06/12 11:04:11');
INSERT INTO `master_size` VALUES ('2', '3', 'aassdfdf', 'dsdsddfdfd', '2018/06/13 12:40:21', '2018/06/13 12:43:01');

-- ----------------------------
-- Table structure for master_sizecategory
-- ----------------------------
DROP TABLE IF EXISTS `master_sizecategory`;
CREATE TABLE `master_sizecategory`  (
  `sizecategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `sizecategory_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizecategory_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sizecategory_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sizecategory_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_sizecategory
-- ----------------------------
INSERT INTO `master_sizecategory` VALUES ('1', 'size category1', '2018/06/12 08:28:33', '2018/06/13 12:34:58');
INSERT INTO `master_sizecategory` VALUES ('2', 'size category2', '2018/06/12 08:28:33', '2018/06/12 09:57:27');
INSERT INTO `master_sizecategory` VALUES ('3', 'size category3', '2018/06/13 12:35:02', '2018/06/13 12:35:02');

-- ----------------------------
-- Table structure for master_state
-- ----------------------------
DROP TABLE IF EXISTS `master_state`;
CREATE TABLE `master_state`  (
  `state_id` int(11) NOT NULL,
  `state_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_cursymbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_curcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_state
-- ----------------------------
INSERT INTO `master_state` VALUES ('1', 'JP', 'Japan', '¥', 'JPY');
INSERT INTO `master_state` VALUES ('2', 'USA', 'United States of America', '$', 'USD');

-- ----------------------------
-- Table structure for merchant_brand_match
-- ----------------------------
DROP TABLE IF EXISTS `merchant_brand_match`;
CREATE TABLE `merchant_brand_match`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of merchant_brand_match
-- ----------------------------
INSERT INTO `merchant_brand_match` VALUES ('4', '13', '1');

SET FOREIGN_KEY_CHECKS = 1;
