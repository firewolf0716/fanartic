/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : shoppingmoll

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 12/10/2018 23:38:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand_history
-- ----------------------------
DROP TABLE IF EXISTS `brand_history`;
CREATE TABLE `brand_history`  (
  `bh_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `b_id` int(10) UNSIGNED NOT NULL,
  `year` int(5) NULL DEFAULT NULL,
  `figure` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`bh_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for brand_news
-- ----------------------------
DROP TABLE IF EXISTS `brand_news`;
CREATE TABLE `brand_news`  (
  `bn_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `b_id` int(10) NULL DEFAULT NULL,
  `figure` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `news` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`bn_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for country_duties
-- ----------------------------
DROP TABLE IF EXISTS `country_duties`;
CREATE TABLE `country_duties`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country_duty` double(10, 2) NULL DEFAULT NULL,
  `duty_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of country_duties
-- ----------------------------
INSERT INTO `country_duties` VALUES (21, 'CN', 20.00, 37, '2018-10-12 23:50:07', '2018-10-12 23:50:07', NULL);
INSERT INTO `country_duties` VALUES (22, 'TW', 12.00, 36, '2018-10-12 23:50:21', '2018-10-12 23:50:21', NULL);
INSERT INTO `country_duties` VALUES (23, 'KR', 13.00, 36, '2018-10-13 00:19:12', '2018-10-13 00:19:12', NULL);
INSERT INTO `country_duties` VALUES (24, 'IN', 20.00, 37, '2018-10-13 00:27:58', '2018-10-13 00:27:58', NULL);
INSERT INTO `country_duties` VALUES (25, 'TH', 30.00, 39, '2018-10-13 00:29:58', '2018-10-13 00:29:58', NULL);
INSERT INTO `country_duties` VALUES (26, 'SG', 0.00, 33, '2018-10-13 00:31:03', '2018-10-13 00:31:03', NULL);
INSERT INTO `country_duties` VALUES (27, 'HK', 0.00, 33, '2018-10-13 00:31:35', '2018-10-13 00:31:35', NULL);
INSERT INTO `country_duties` VALUES (28, 'US', 28.20, 39, '2018-10-13 00:31:55', '2018-10-13 00:31:55', NULL);
INSERT INTO `country_duties` VALUES (29, 'CA', 18.00, 37, '2018-10-13 00:32:15', '2018-10-13 00:32:15', NULL);
INSERT INTO `country_duties` VALUES (30, 'AU', 5.00, 34, '2018-10-13 00:32:33', '2018-10-13 00:37:37', NULL);
INSERT INTO `country_duties` VALUES (31, 'CH', 45.00, 42, '2018-10-13 00:32:49', '2018-10-13 00:32:49', NULL);
INSERT INTO `country_duties` VALUES (32, 'NO', 10.70, 36, '2018-10-13 00:33:12', '2018-10-13 00:33:12', NULL);
INSERT INTO `country_duties` VALUES (33, 'KW', 5.00, 34, '2018-10-13 00:33:28', '2018-10-13 00:33:28', NULL);
INSERT INTO `country_duties` VALUES (34, 'QA', 5.00, 34, '2018-10-13 00:33:48', '2018-10-13 00:33:48', NULL);
INSERT INTO `country_duties` VALUES (35, 'SA', 5.00, 34, '2018-10-13 00:34:03', '2018-10-13 00:34:03', NULL);
INSERT INTO `country_duties` VALUES (36, 'AE', 5.00, 34, '2018-10-13 00:34:15', '2018-10-13 00:34:15', NULL);
INSERT INTO `country_duties` VALUES (37, 'MX', 25.00, 38, '2018-10-13 00:34:45', '2018-10-13 00:34:45', NULL);
INSERT INTO `country_duties` VALUES (38, 'BR', 35.00, 40, '2018-10-13 00:34:57', '2018-10-13 00:34:57', NULL);

-- ----------------------------
-- Table structure for currencies
-- ----------------------------
DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `valid_flag` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `currencies_code_index`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of currencies
-- ----------------------------
INSERT INTO `currencies` VALUES (8, 'RMB', 'CNY', 'R', '', '0.06091', 1, '2018-09-09 22:00:05', '2018-09-27 01:00:05', NULL);
INSERT INTO `currencies` VALUES (9, 'JPY', 'JPY', '¥', '', '1', 1, '2018-09-09 22:00:05', '2018-09-15 20:34:11', NULL);
INSERT INTO `currencies` VALUES (10, 'KRW', 'KRW', 'K', '', '9.871012', 1, '2018-09-09 22:00:05', '2018-09-27 01:00:05', NULL);
INSERT INTO `currencies` VALUES (11, 'USD', 'USD', '$', '', '0.008855', 1, '2018-09-09 22:00:05', '2018-09-27 01:00:05', NULL);

-- ----------------------------
-- Table structure for customer_address
-- ----------------------------
DROP TABLE IF EXISTS `customer_address`;
CREATE TABLE `customer_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `address_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_postalcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_state` int(255) NULL DEFAULT NULL,
  `address_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_address_ex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_address_jp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_totalscore` double(255, 0) NULL DEFAULT NULL,
  `address_default` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer_auction_claim
-- ----------------------------
DROP TABLE IF EXISTS `customer_auction_claim`;
CREATE TABLE `customer_auction_claim`  (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer_auction_items
-- ----------------------------
DROP TABLE IF EXISTS `customer_auction_items`;
CREATE TABLE `customer_auction_items`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer_auction_message
-- ----------------------------
DROP TABLE IF EXISTS `customer_auction_message`;
CREATE TABLE `customer_auction_message`  (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer_auction_price
-- ----------------------------
DROP TABLE IF EXISTS `customer_auction_price`;
CREATE TABLE `customer_auction_price`  (
  `id` int(11) NOT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer_auction_status
-- ----------------------------
DROP TABLE IF EXISTS `customer_auction_status`;
CREATE TABLE `customer_auction_status`  (
  `id` int(11) NOT NULL,
  `status_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `deleted_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer_buy_history
-- ----------------------------
DROP TABLE IF EXISTS `customer_buy_history`;
CREATE TABLE `customer_buy_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `history_customerid` int(11) NULL DEFAULT NULL,
  `history_merchantid` int(11) NULL DEFAULT NULL,
  `history_productid` int(11) NULL DEFAULT NULL,
  `history_skucolorid` int(11) NULL DEFAULT NULL,
  `history_skusizeid` int(11) NULL DEFAULT NULL,
  `history_amount` double(255, 0) NULL DEFAULT NULL,
  `history_price` double(10, 2) NULL DEFAULT NULL,
  `history_address` int(11) NULL DEFAULT NULL,
  `history_card` int(11) NULL DEFAULT NULL,
  `history_status` int(11) NULL DEFAULT 0 COMMENT '0 => cart, 1=>waiting,2=>accept,3=>decline',
  `history_group` int(11) NULL DEFAULT NULL,
  `history_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer_card
-- ----------------------------
DROP TABLE IF EXISTS `customer_card`;
CREATE TABLE `customer_card`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `card_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card_owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card_validdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer_favourite
-- ----------------------------
DROP TABLE IF EXISTS `customer_favourite`;
CREATE TABLE `customer_favourite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `fav_brand_id` int(11) NULL DEFAULT NULL,
  `fav_pro_id` int(11) NULL DEFAULT NULL,
  `fav_sku_color` int(255) NULL DEFAULT NULL,
  `fav_sku_size` int(11) NULL DEFAULT NULL,
  `fav_amt` double(255, 0) NULL DEFAULT NULL,
  `fav_status` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer_favourite
-- ----------------------------
INSERT INTO `customer_favourite` VALUES (3, 21, 1, 165, 530, 531, 1, NULL, '2018-09-15 02:26:23', '2018-09-15 02:26:23', NULL);

-- ----------------------------
-- Table structure for customer_magazine
-- ----------------------------
DROP TABLE IF EXISTS `customer_magazine`;
CREATE TABLE `customer_magazine`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `magazine_status` int(11) NULL DEFAULT NULL COMMENT '\'0\' => OFF, \'1\' => ON',
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer_magazine
-- ----------------------------
INSERT INTO `customer_magazine` VALUES (1, 21, 1, '2018-09-13 16:42:41', '2018-09-13 16:42:44', NULL);

-- ----------------------------
-- Table structure for customer_recent_product
-- ----------------------------
DROP TABLE IF EXISTS `customer_recent_product`;
CREATE TABLE `customer_recent_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `recent_product_id` int(11) NULL DEFAULT NULL,
  `recent_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 279 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer_recent_product
-- ----------------------------
INSERT INTO `customer_recent_product` VALUES (71, 16, 158, '2018/07/31 02:21:40', NULL);
INSERT INTO `customer_recent_product` VALUES (72, 16, 172, '2018/07/31 02:21:48', NULL);
INSERT INTO `customer_recent_product` VALUES (73, 16, 158, '2018/08/03 21:52:26', NULL);
INSERT INTO `customer_recent_product` VALUES (74, 16, 158, '2018/08/03 22:15:52', NULL);
INSERT INTO `customer_recent_product` VALUES (75, 16, 158, '2018/08/03 22:20:18', NULL);
INSERT INTO `customer_recent_product` VALUES (76, 16, 159, '2018/08/03 22:20:25', NULL);
INSERT INTO `customer_recent_product` VALUES (77, 16, 172, '2018/08/03 22:20:28', NULL);
INSERT INTO `customer_recent_product` VALUES (78, 16, 173, '2018/08/03 22:20:32', NULL);
INSERT INTO `customer_recent_product` VALUES (79, 16, 157, '2018/08/03 22:21:01', NULL);
INSERT INTO `customer_recent_product` VALUES (80, 16, 174, '2018/08/03 22:21:10', NULL);
INSERT INTO `customer_recent_product` VALUES (81, 16, 167, '2018/08/03 22:21:13', NULL);
INSERT INTO `customer_recent_product` VALUES (82, 16, 170, '2018/08/03 22:21:26', NULL);
INSERT INTO `customer_recent_product` VALUES (83, 16, 176, '2018/08/03 22:22:31', NULL);
INSERT INTO `customer_recent_product` VALUES (84, 16, 158, '2018/08/03 22:23:52', NULL);
INSERT INTO `customer_recent_product` VALUES (85, 16, 158, '2018/08/04 00:08:09', NULL);
INSERT INTO `customer_recent_product` VALUES (86, 16, 164, '2018/08/04 00:08:22', NULL);
INSERT INTO `customer_recent_product` VALUES (87, 16, 172, '2018/08/04 00:23:32', NULL);
INSERT INTO `customer_recent_product` VALUES (88, 16, 158, '2018/08/10 10:41:40', NULL);
INSERT INTO `customer_recent_product` VALUES (89, 16, 159, '2018/08/10 12:49:26', NULL);
INSERT INTO `customer_recent_product` VALUES (90, 21, 158, '2018/08/14 15:30:21', NULL);
INSERT INTO `customer_recent_product` VALUES (91, 21, 158, '2018/08/14 15:30:54', NULL);
INSERT INTO `customer_recent_product` VALUES (92, 21, 158, '2018/08/14 15:31:50', NULL);
INSERT INTO `customer_recent_product` VALUES (93, 21, 159, '2018/08/14 15:34:10', NULL);
INSERT INTO `customer_recent_product` VALUES (94, 21, 164, '2018/08/20 17:00:04', NULL);
INSERT INTO `customer_recent_product` VALUES (95, 21, 164, '2018/08/20 17:00:13', NULL);
INSERT INTO `customer_recent_product` VALUES (96, 21, 158, '2018/08/20 17:01:56', NULL);
INSERT INTO `customer_recent_product` VALUES (97, 21, 159, '2018/09/13 13:00:23', NULL);
INSERT INTO `customer_recent_product` VALUES (98, 21, 159, '2018/09/13 13:08:13', NULL);
INSERT INTO `customer_recent_product` VALUES (99, 21, 159, '2018/09/13 13:08:15', NULL);
INSERT INTO `customer_recent_product` VALUES (100, 21, 158, '2018/09/13 17:18:42', NULL);
INSERT INTO `customer_recent_product` VALUES (101, 21, 158, '2018/09/13 17:53:11', NULL);
INSERT INTO `customer_recent_product` VALUES (102, 21, 158, '2018/09/13 18:08:47', NULL);
INSERT INTO `customer_recent_product` VALUES (103, 21, 159, '2018/09/13 23:22:16', NULL);
INSERT INTO `customer_recent_product` VALUES (104, 21, 159, '2018/09/13 23:22:21', NULL);
INSERT INTO `customer_recent_product` VALUES (105, 21, 159, '2018/09/13 23:22:27', NULL);
INSERT INTO `customer_recent_product` VALUES (106, 21, 159, '2018/09/13 23:23:37', NULL);
INSERT INTO `customer_recent_product` VALUES (107, 21, 159, '2018/09/13 23:23:57', NULL);
INSERT INTO `customer_recent_product` VALUES (108, 21, 159, '2018/09/13 23:24:07', NULL);
INSERT INTO `customer_recent_product` VALUES (109, 21, 159, '2018/09/13 23:24:22', NULL);
INSERT INTO `customer_recent_product` VALUES (110, 21, 159, '2018/09/13 23:24:43', NULL);
INSERT INTO `customer_recent_product` VALUES (111, 21, 159, '2018/09/13 23:25:03', NULL);
INSERT INTO `customer_recent_product` VALUES (112, 21, 159, '2018/09/13 23:26:04', NULL);
INSERT INTO `customer_recent_product` VALUES (113, 21, 159, '2018/09/13 23:26:21', NULL);
INSERT INTO `customer_recent_product` VALUES (114, 21, 159, '2018/09/13 23:26:32', NULL);
INSERT INTO `customer_recent_product` VALUES (115, 21, 159, '2018/09/13 23:26:57', NULL);
INSERT INTO `customer_recent_product` VALUES (116, 21, 159, '2018/09/13 23:27:24', NULL);
INSERT INTO `customer_recent_product` VALUES (117, 21, 159, '2018/09/13 23:27:32', NULL);
INSERT INTO `customer_recent_product` VALUES (118, 21, 159, '2018/09/13 23:27:42', NULL);
INSERT INTO `customer_recent_product` VALUES (119, 21, 159, '2018/09/13 23:28:34', NULL);
INSERT INTO `customer_recent_product` VALUES (120, 21, 159, '2018/09/13 23:37:50', NULL);
INSERT INTO `customer_recent_product` VALUES (121, 21, 159, '2018/09/13 23:38:03', NULL);
INSERT INTO `customer_recent_product` VALUES (122, 21, 159, '2018/09/13 23:38:32', NULL);
INSERT INTO `customer_recent_product` VALUES (123, 21, 159, '2018/09/13 23:38:38', NULL);
INSERT INTO `customer_recent_product` VALUES (124, 21, 159, '2018/09/13 23:38:55', NULL);
INSERT INTO `customer_recent_product` VALUES (125, 21, 159, '2018/09/13 23:39:20', NULL);
INSERT INTO `customer_recent_product` VALUES (126, 21, 159, '2018/09/13 23:39:37', NULL);
INSERT INTO `customer_recent_product` VALUES (127, 21, 159, '2018/09/13 23:39:40', NULL);
INSERT INTO `customer_recent_product` VALUES (128, 21, 159, '2018/09/13 23:41:03', NULL);
INSERT INTO `customer_recent_product` VALUES (129, 21, 159, '2018/09/13 23:42:32', NULL);
INSERT INTO `customer_recent_product` VALUES (130, 21, 159, '2018/09/13 23:43:58', NULL);
INSERT INTO `customer_recent_product` VALUES (131, 21, 159, '2018/09/13 23:44:19', NULL);
INSERT INTO `customer_recent_product` VALUES (132, 21, 159, '2018/09/13 23:44:23', NULL);
INSERT INTO `customer_recent_product` VALUES (133, 21, 159, '2018/09/13 23:44:25', NULL);
INSERT INTO `customer_recent_product` VALUES (134, 21, 159, '2018/09/13 23:44:29', NULL);
INSERT INTO `customer_recent_product` VALUES (135, 21, 159, '2018/09/13 23:46:00', NULL);
INSERT INTO `customer_recent_product` VALUES (136, 21, 159, '2018/09/13 23:46:26', NULL);
INSERT INTO `customer_recent_product` VALUES (137, 21, 159, '2018/09/13 23:46:53', NULL);
INSERT INTO `customer_recent_product` VALUES (138, 21, 159, '2018/09/13 23:46:58', NULL);
INSERT INTO `customer_recent_product` VALUES (139, 21, 159, '2018/09/13 23:48:16', NULL);
INSERT INTO `customer_recent_product` VALUES (140, 21, 159, '2018/09/13 23:49:10', NULL);
INSERT INTO `customer_recent_product` VALUES (141, 21, 159, '2018/09/13 23:49:51', NULL);
INSERT INTO `customer_recent_product` VALUES (142, 21, 159, '2018/09/13 23:50:03', NULL);
INSERT INTO `customer_recent_product` VALUES (143, 21, 159, '2018/09/13 23:50:50', NULL);
INSERT INTO `customer_recent_product` VALUES (144, 21, 159, '2018/09/13 23:51:08', NULL);
INSERT INTO `customer_recent_product` VALUES (145, 21, 159, '2018/09/13 23:51:17', NULL);
INSERT INTO `customer_recent_product` VALUES (146, 21, 159, '2018/09/13 23:51:39', NULL);
INSERT INTO `customer_recent_product` VALUES (147, 21, 159, '2018/09/13 23:51:44', NULL);
INSERT INTO `customer_recent_product` VALUES (148, 21, 159, '2018/09/13 23:51:53', NULL);
INSERT INTO `customer_recent_product` VALUES (149, 21, 159, '2018/09/13 23:52:39', NULL);
INSERT INTO `customer_recent_product` VALUES (150, 21, 159, '2018/09/13 23:52:43', NULL);
INSERT INTO `customer_recent_product` VALUES (151, 21, 159, '2018/09/13 23:56:28', NULL);
INSERT INTO `customer_recent_product` VALUES (152, 21, 159, '2018/09/13 23:57:02', NULL);
INSERT INTO `customer_recent_product` VALUES (153, 21, 159, '2018/09/13 23:58:22', NULL);
INSERT INTO `customer_recent_product` VALUES (154, 21, 159, '2018/09/13 23:59:57', NULL);
INSERT INTO `customer_recent_product` VALUES (155, 21, 159, '2018/09/14 00:01:13', NULL);
INSERT INTO `customer_recent_product` VALUES (156, 21, 164, '2018/09/14 00:01:30', NULL);
INSERT INTO `customer_recent_product` VALUES (157, 21, 173, '2018/09/14 02:53:09', NULL);
INSERT INTO `customer_recent_product` VALUES (158, 21, 157, '2018/09/14 02:53:18', NULL);
INSERT INTO `customer_recent_product` VALUES (159, 21, 157, '2018/09/14 02:53:27', NULL);
INSERT INTO `customer_recent_product` VALUES (160, 21, 158, '2018/09/14 11:44:04', NULL);
INSERT INTO `customer_recent_product` VALUES (161, 21, 169, '2018/09/15 01:02:41', NULL);
INSERT INTO `customer_recent_product` VALUES (162, 21, 169, '2018/09/15 01:02:59', NULL);
INSERT INTO `customer_recent_product` VALUES (163, 21, 165, '2018/09/15 01:03:09', NULL);
INSERT INTO `customer_recent_product` VALUES (164, 21, 158, '2018/09/15 02:03:43', NULL);
INSERT INTO `customer_recent_product` VALUES (165, 21, 159, '2018/09/15 02:12:08', NULL);
INSERT INTO `customer_recent_product` VALUES (166, 21, 173, '2018/09/15 02:12:19', NULL);
INSERT INTO `customer_recent_product` VALUES (167, 21, 173, '2018/09/15 02:12:35', NULL);
INSERT INTO `customer_recent_product` VALUES (168, 21, 173, '2018/09/15 02:16:20', NULL);
INSERT INTO `customer_recent_product` VALUES (169, 21, 173, '2018/09/15 02:16:26', NULL);
INSERT INTO `customer_recent_product` VALUES (170, 21, 173, '2018/09/15 02:17:53', NULL);
INSERT INTO `customer_recent_product` VALUES (171, 21, 173, '2018/09/15 02:19:25', NULL);
INSERT INTO `customer_recent_product` VALUES (172, 21, 173, '2018/09/15 02:19:28', NULL);
INSERT INTO `customer_recent_product` VALUES (173, 21, 173, '2018/09/15 02:19:39', NULL);
INSERT INTO `customer_recent_product` VALUES (174, 21, 173, '2018/09/15 02:19:41', NULL);
INSERT INTO `customer_recent_product` VALUES (175, 21, 173, '2018/09/15 02:20:22', NULL);
INSERT INTO `customer_recent_product` VALUES (176, 21, 173, '2018/09/15 02:20:33', NULL);
INSERT INTO `customer_recent_product` VALUES (177, 21, 173, '2018/09/15 02:20:35', NULL);
INSERT INTO `customer_recent_product` VALUES (178, 21, 173, '2018/09/15 02:20:36', NULL);
INSERT INTO `customer_recent_product` VALUES (179, 21, 173, '2018/09/15 02:20:52', NULL);
INSERT INTO `customer_recent_product` VALUES (180, 21, 173, '2018/09/15 02:21:31', NULL);
INSERT INTO `customer_recent_product` VALUES (181, 21, 165, '2018/09/15 02:21:39', NULL);
INSERT INTO `customer_recent_product` VALUES (182, 21, 165, '2018/09/15 02:21:47', NULL);
INSERT INTO `customer_recent_product` VALUES (183, 21, 165, '2018/09/15 02:21:53', NULL);
INSERT INTO `customer_recent_product` VALUES (184, 21, 165, '2018/09/15 02:22:29', NULL);
INSERT INTO `customer_recent_product` VALUES (185, 21, 165, '2018/09/15 02:22:37', NULL);
INSERT INTO `customer_recent_product` VALUES (186, 21, 165, '2018/09/15 02:23:13', NULL);
INSERT INTO `customer_recent_product` VALUES (187, 21, 165, '2018/09/15 02:23:15', NULL);
INSERT INTO `customer_recent_product` VALUES (188, 21, 165, '2018/09/15 02:23:24', NULL);
INSERT INTO `customer_recent_product` VALUES (189, 21, 165, '2018/09/15 02:23:31', NULL);
INSERT INTO `customer_recent_product` VALUES (190, 21, 165, '2018/09/15 02:23:43', NULL);
INSERT INTO `customer_recent_product` VALUES (191, 21, 165, '2018/09/15 02:23:50', NULL);
INSERT INTO `customer_recent_product` VALUES (192, 21, 165, '2018/09/15 02:24:23', NULL);
INSERT INTO `customer_recent_product` VALUES (193, 21, 165, '2018/09/15 02:24:25', NULL);
INSERT INTO `customer_recent_product` VALUES (194, 21, 165, '2018/09/15 02:25:28', NULL);
INSERT INTO `customer_recent_product` VALUES (195, 21, 165, '2018/09/15 02:26:21', NULL);
INSERT INTO `customer_recent_product` VALUES (196, 21, 165, '2018/09/15 02:27:26', NULL);
INSERT INTO `customer_recent_product` VALUES (197, 21, 165, '2018/09/15 02:27:55', NULL);
INSERT INTO `customer_recent_product` VALUES (198, 21, 165, '2018/09/15 02:28:22', NULL);
INSERT INTO `customer_recent_product` VALUES (199, 21, 165, '2018/09/15 02:28:26', NULL);
INSERT INTO `customer_recent_product` VALUES (200, 21, 165, '2018/09/15 02:28:56', NULL);
INSERT INTO `customer_recent_product` VALUES (201, 21, 165, '2018/09/15 02:29:22', NULL);
INSERT INTO `customer_recent_product` VALUES (202, 21, 165, '2018/09/15 02:30:32', NULL);
INSERT INTO `customer_recent_product` VALUES (203, 21, 165, '2018/09/15 02:31:28', NULL);
INSERT INTO `customer_recent_product` VALUES (204, 21, 165, '2018/09/15 02:31:38', NULL);
INSERT INTO `customer_recent_product` VALUES (205, 21, 165, '2018/09/15 02:32:10', NULL);
INSERT INTO `customer_recent_product` VALUES (206, 21, 165, '2018/09/15 02:32:18', NULL);
INSERT INTO `customer_recent_product` VALUES (207, 21, 165, '2018/09/15 02:32:28', NULL);
INSERT INTO `customer_recent_product` VALUES (208, 21, 165, '2018/09/15 02:32:45', NULL);
INSERT INTO `customer_recent_product` VALUES (209, 21, 165, '2018/09/15 02:33:41', NULL);
INSERT INTO `customer_recent_product` VALUES (210, 21, 165, '2018/09/15 02:34:51', NULL);
INSERT INTO `customer_recent_product` VALUES (211, 21, 165, '2018/09/15 02:35:37', NULL);
INSERT INTO `customer_recent_product` VALUES (212, 21, 165, '2018/09/15 02:37:59', NULL);
INSERT INTO `customer_recent_product` VALUES (213, 21, 165, '2018/09/15 02:38:24', NULL);
INSERT INTO `customer_recent_product` VALUES (214, 21, 165, '2018/09/15 02:38:38', NULL);
INSERT INTO `customer_recent_product` VALUES (215, 21, 165, '2018/09/15 02:38:41', NULL);
INSERT INTO `customer_recent_product` VALUES (216, 21, 165, '2018/09/15 02:38:42', NULL);
INSERT INTO `customer_recent_product` VALUES (217, 21, 158, '2018/09/25 15:27:42', NULL);
INSERT INTO `customer_recent_product` VALUES (218, 21, 158, '2018/09/25 15:28:59', NULL);
INSERT INTO `customer_recent_product` VALUES (219, 21, 158, '2018/09/25 15:32:15', NULL);
INSERT INTO `customer_recent_product` VALUES (220, 21, 158, '2018/09/25 15:33:03', NULL);
INSERT INTO `customer_recent_product` VALUES (221, 21, 158, '2018/09/25 15:34:40', NULL);
INSERT INTO `customer_recent_product` VALUES (222, 21, 158, '2018/09/26 14:27:35', NULL);
INSERT INTO `customer_recent_product` VALUES (223, 21, 159, '2018/09/26 19:31:08', NULL);
INSERT INTO `customer_recent_product` VALUES (224, 21, 164, '2018/09/26 19:44:57', NULL);
INSERT INTO `customer_recent_product` VALUES (225, 16, 158, '2018/10/09 23:18:02', NULL);
INSERT INTO `customer_recent_product` VALUES (226, 16, 169, '2018/10/09 23:18:23', NULL);
INSERT INTO `customer_recent_product` VALUES (227, 16, 158, '2018/10/09 23:57:15', NULL);
INSERT INTO `customer_recent_product` VALUES (228, 16, 158, '2018/10/10 00:27:07', NULL);
INSERT INTO `customer_recent_product` VALUES (229, 16, 158, '2018/10/10 00:35:00', NULL);
INSERT INTO `customer_recent_product` VALUES (230, 16, 158, '2018/10/10 00:37:00', NULL);
INSERT INTO `customer_recent_product` VALUES (231, 16, 158, '2018/10/10 00:38:15', NULL);
INSERT INTO `customer_recent_product` VALUES (232, 16, 158, '2018/10/10 00:46:09', NULL);
INSERT INTO `customer_recent_product` VALUES (233, 16, 158, '2018/10/10 00:57:13', NULL);
INSERT INTO `customer_recent_product` VALUES (234, 16, 158, '2018/10/10 00:57:39', NULL);
INSERT INTO `customer_recent_product` VALUES (235, 16, 158, '2018/10/10 01:50:50', NULL);
INSERT INTO `customer_recent_product` VALUES (236, 16, 158, '2018/10/10 01:52:10', NULL);
INSERT INTO `customer_recent_product` VALUES (237, 16, 158, '2018/10/10 01:53:12', NULL);
INSERT INTO `customer_recent_product` VALUES (238, 16, 158, '2018/10/10 01:53:31', NULL);
INSERT INTO `customer_recent_product` VALUES (239, 16, 158, '2018/10/10 01:53:56', NULL);
INSERT INTO `customer_recent_product` VALUES (240, 16, 158, '2018/10/10 01:54:45', NULL);
INSERT INTO `customer_recent_product` VALUES (241, 16, 158, '2018/10/10 01:56:53', NULL);
INSERT INTO `customer_recent_product` VALUES (242, 16, 158, '2018/10/10 01:57:10', NULL);
INSERT INTO `customer_recent_product` VALUES (243, 16, 158, '2018/10/10 02:03:53', NULL);
INSERT INTO `customer_recent_product` VALUES (244, 16, 158, '2018/10/10 02:05:04', NULL);
INSERT INTO `customer_recent_product` VALUES (245, 16, 158, '2018/10/10 02:05:42', NULL);
INSERT INTO `customer_recent_product` VALUES (246, 16, 158, '2018/10/10 02:16:14', NULL);
INSERT INTO `customer_recent_product` VALUES (247, 16, 158, '2018/10/10 02:16:49', NULL);
INSERT INTO `customer_recent_product` VALUES (248, 16, 158, '2018/10/10 02:17:09', NULL);
INSERT INTO `customer_recent_product` VALUES (249, 16, 158, '2018/10/10 02:17:57', NULL);
INSERT INTO `customer_recent_product` VALUES (250, 16, 158, '2018/10/10 02:18:06', NULL);
INSERT INTO `customer_recent_product` VALUES (251, 16, 158, '2018/10/10 02:19:05', NULL);
INSERT INTO `customer_recent_product` VALUES (252, 16, 158, '2018/10/10 02:19:14', NULL);
INSERT INTO `customer_recent_product` VALUES (253, 16, 158, '2018/10/10 02:19:32', NULL);
INSERT INTO `customer_recent_product` VALUES (254, 16, 158, '2018/10/10 02:22:15', NULL);
INSERT INTO `customer_recent_product` VALUES (255, 16, 158, '2018/10/10 02:39:51', NULL);
INSERT INTO `customer_recent_product` VALUES (256, 16, 158, '2018/10/10 02:39:56', NULL);
INSERT INTO `customer_recent_product` VALUES (257, 16, 158, '2018/10/10 02:41:40', NULL);
INSERT INTO `customer_recent_product` VALUES (258, 16, 158, '2018/10/10 02:42:44', NULL);
INSERT INTO `customer_recent_product` VALUES (259, 16, 158, '2018/10/10 02:45:06', NULL);
INSERT INTO `customer_recent_product` VALUES (260, 16, 158, '2018/10/10 02:50:45', NULL);
INSERT INTO `customer_recent_product` VALUES (261, 16, 158, '2018/10/10 02:51:16', NULL);
INSERT INTO `customer_recent_product` VALUES (262, 16, 158, '2018/10/10 02:51:41', NULL);
INSERT INTO `customer_recent_product` VALUES (263, 16, 158, '2018/10/10 02:51:58', NULL);
INSERT INTO `customer_recent_product` VALUES (264, 16, 158, '2018/10/10 02:53:36', NULL);
INSERT INTO `customer_recent_product` VALUES (265, 16, 158, '2018/10/10 02:54:10', NULL);
INSERT INTO `customer_recent_product` VALUES (266, 16, 158, '2018/10/10 02:54:32', NULL);
INSERT INTO `customer_recent_product` VALUES (267, 16, 158, '2018/10/10 02:55:28', NULL);
INSERT INTO `customer_recent_product` VALUES (268, 16, 158, '2018/10/10 02:57:10', NULL);
INSERT INTO `customer_recent_product` VALUES (269, 16, 158, '2018/10/10 02:59:25', NULL);
INSERT INTO `customer_recent_product` VALUES (270, 16, 158, '2018/10/10 03:00:41', NULL);
INSERT INTO `customer_recent_product` VALUES (271, 16, 158, '2018/10/10 03:02:07', NULL);
INSERT INTO `customer_recent_product` VALUES (272, 16, 159, '2018/10/10 03:07:37', NULL);
INSERT INTO `customer_recent_product` VALUES (273, 16, 159, '2018/10/10 03:07:57', NULL);
INSERT INTO `customer_recent_product` VALUES (274, 16, 159, '2018/10/10 03:11:34', NULL);
INSERT INTO `customer_recent_product` VALUES (275, 16, 159, '2018/10/10 03:12:21', NULL);
INSERT INTO `customer_recent_product` VALUES (276, 16, 158, '2018/10/10 03:12:45', NULL);
INSERT INTO `customer_recent_product` VALUES (277, 16, 158, '2018/10/10 03:14:05', NULL);
INSERT INTO `customer_recent_product` VALUES (278, 16, 164, '2018/10/10 03:53:50', NULL);

-- ----------------------------
-- Table structure for customer_score
-- ----------------------------
DROP TABLE IF EXISTS `customer_score`;
CREATE TABLE `customer_score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `brand_id` int(11) NULL DEFAULT NULL,
  `score_value` int(255) NULL DEFAULT NULL,
  `score_action` int(255) NULL DEFAULT NULL COMMENT '\'1\' => buy, \'0\' => \'view\'',
  `score_status` int(11) NULL DEFAULT NULL COMMENT '\'1\' => valid, \'0\' => \'invalid\'',
  `score_type` int(11) NULL DEFAULT NULL COMMENT '\'1\' => plus, \'0\' => \'minus\'',
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer_score
-- ----------------------------
INSERT INTO `customer_score` VALUES (1, 16, 12, 1000, 1, 1, 1, '2018-07-30 10:24:58', '2018-07-30 10:24:58', NULL);
INSERT INTO `customer_score` VALUES (2, 16, 1, 1000, 1, 1, 1, '2018-07-30 21:37:00', '2018-07-30 21:37:00', NULL);
INSERT INTO `customer_score` VALUES (3, 16, 15, 1000, 1, 1, 1, '2018-07-30 22:06:34', '2018-07-30 22:06:34', NULL);
INSERT INTO `customer_score` VALUES (4, 16, 4, 1000, 1, 1, 1, '2018-07-30 22:06:35', '2018-07-30 22:06:35', NULL);
INSERT INTO `customer_score` VALUES (5, 16, 15, 1000, 1, 1, 1, '2018-07-31 02:21:59', '2018-07-31 02:21:59', NULL);
INSERT INTO `customer_score` VALUES (6, 16, 4, 1000, 1, 1, 1, '2018-07-31 02:21:59', '2018-07-31 02:21:59', NULL);
INSERT INTO `customer_score` VALUES (7, 16, 15, 1000, 1, 1, 1, '2018-08-04 00:06:35', '2018-08-04 00:06:35', NULL);
INSERT INTO `customer_score` VALUES (8, 16, 12, 1000, 1, 1, 1, '2018-08-04 00:21:59', '2018-08-04 00:21:59', NULL);
INSERT INTO `customer_score` VALUES (9, 16, 4, 1000, 1, 1, 1, '2018-08-04 00:23:45', '2018-08-04 00:23:45', NULL);
INSERT INTO `customer_score` VALUES (10, 16, 15, 1000, 1, 1, 1, '2018-08-10 12:47:37', '2018-08-10 12:47:37', NULL);

-- ----------------------------
-- Table structure for customer_scoresum
-- ----------------------------
DROP TABLE IF EXISTS `customer_scoresum`;
CREATE TABLE `customer_scoresum`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NULL DEFAULT NULL,
  `brand_id` int(11) NULL DEFAULT NULL,
  `scoresum_value` double(255, 0) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer_scoresum
-- ----------------------------
INSERT INTO `customer_scoresum` VALUES (1, 16, 12, 2000, '2018-07-30 10:24:58', '2018-08-04 00:21:59', NULL);
INSERT INTO `customer_scoresum` VALUES (2, 16, 1, 1000, '2018-07-30 21:37:00', '2018-07-30 21:37:00', NULL);
INSERT INTO `customer_scoresum` VALUES (3, 16, 15, 4000, '2018-07-30 22:06:34', '2018-08-10 12:47:38', NULL);
INSERT INTO `customer_scoresum` VALUES (4, 16, 4, 3000, '2018-07-30 22:06:35', '2018-08-04 00:23:45', NULL);

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` int(11) NULL DEFAULT NULL,
  `locale` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'ja',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_name_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_name_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_name_kana_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_name_kana_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_postalcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_state` int(255) NULL DEFAULT NULL,
  `customer_city` int(255) NULL DEFAULT NULL,
  `customer_address_ex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_address_jp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_totalscore` double(255, 0) NULL DEFAULT NULL,
  `customer_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_gender` tinyint(2) NULL DEFAULT NULL,
  `customer_birthday` date NULL DEFAULT NULL,
  `customer_oauth` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT 'JPY',
  `mall` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `verified` tinyint(2) NULL DEFAULT 0,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (16, NULL, NULL, 'gfhdfh', 'hokelucpy@outlook.com', 'kan', 'hoke', 'ddd', 'aaa', '$2y$10$9sNU9.MHIsQZStMVEs5b7eG3GGK72RdmL7ZvZstt0sm4aU7gjV6be', '080-0000-0000', '140-0005', NULL, NULL, NULL, '東京都', '品川区広町', '11-001', NULL, NULL, NULL, '1960-01-01', NULL, NULL, NULL, 'mall_01', 'HLICmjX3AYi5A0dmIDumTHXrEQI9ChCFMXhb7Ugq', 1, NULL, NULL, 'LCPmo4Aj7G7K2dP30nDMI9FGgwpfjtAIgniAijwyJJaWBwqTChFwajbf2Hjs', NULL, '2018-10-09 23:50:01', NULL);
INSERT INTO `customers` VALUES (17, NULL, NULL, 'fghfdh', 'sky.dragon1988@hotmail.com', 'jon', 'gh', NULL, NULL, '$2y$10$BUN7x6qqX.mxtgAr2krA5eXYsqtYoMlNQL7QoymKkaIrCxt7voVMK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HLICmjX3AYi5A0dmIDumTHXrEQI9ChCFMXhb7Ugq', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (18, NULL, NULL, 'fghfg', 'hokelucpy@hotmail.com', 'aaa', 'fgh', NULL, NULL, '$2y$10$LrFyj39eCxr5GhoMcKSRAeXb/e49XiXEsckJ7MqYJ7zLFTFX77Uhm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HLICmjX3AYi5A0dmIDumTHXrEQI9ChCFMXhb7Ugq', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (19, NULL, NULL, 'fghfg', 'hokelucpy@outlook.com', 'cccc', 'fgh', NULL, NULL, '$2y$10$aOLHGTxINkaMMq9ONC7BA.gvFB7KxVnJjj9zfOmkdE8JWbzfaW6O2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HLICmjX3AYi5A0dmIDumTHXrEQI9ChCFMXhb7Ugq', 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` VALUES (21, NULL, NULL, 'satoki inoue', 'inoue@loop-fitb.com', '井上2', '智喜2', 'イノウエ', 'サトキ', '$2y$10$OhWX7uvSOedarqw13t0PH.kurQsxhrQ5sy5t.fdbAvi20y2S/mav6', '090-8432-2973', '1500047', NULL, NULL, NULL, '東京都', '都渋谷区神山町', '24-11', NULL, NULL, 1, '1960-01-01', NULL, NULL, NULL, NULL, '5b72761789c62', 1, NULL, NULL, '2hGob86GEgWeyGnZio8QcgsToYgng9j56xmgw1d4lMAdgrXd8YdbGl6v9e9j', NULL, '2018-09-26 16:40:29', NULL);
INSERT INTO `customers` VALUES (37, NULL, 'ja', 'firewolf', 'firewolf@outlook.com', 'fgh', 'gfh', NULL, NULL, '$2y$10$NKMxlquXUU0zS1bLRstrx.sHqTAXFeF/5k348KeVHJJqhpww1prYq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JPY', NULL, 'ZmlyZXdvbGZAb3V0bG9vay5jb20=', 0, NULL, NULL, NULL, '2018-10-02 13:44:14', '2018-10-02 13:44:14', NULL);
INSERT INTO `customers` VALUES (38, NULL, 'ja', 'fghhgh', NULL, NULL, 'gfh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JPY', NULL, NULL, 0, NULL, NULL, NULL, '2018-10-05 23:13:49', '2018-10-05 23:13:49', NULL);

-- ----------------------------
-- Table structure for duties
-- ----------------------------
DROP TABLE IF EXISTS `duties`;
CREATE TABLE `duties`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `num` int(2) NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of duties
-- ----------------------------
INSERT INTO `duties` VALUES (33, '1', 0, '2018-10-12 23:48:35', '2018-10-12 23:48:35', NULL);
INSERT INTO `duties` VALUES (34, '2', 5, '2018-10-12 23:48:40', '2018-10-12 23:48:40', NULL);
INSERT INTO `duties` VALUES (35, '3', 10, '2018-10-12 23:48:47', '2018-10-12 23:48:47', NULL);
INSERT INTO `duties` VALUES (36, '4', 15, '2018-10-12 23:48:52', '2018-10-12 23:48:52', NULL);
INSERT INTO `duties` VALUES (37, '5', 20, '2018-10-12 23:48:59', '2018-10-12 23:48:59', NULL);
INSERT INTO `duties` VALUES (38, '6', 25, '2018-10-12 23:49:05', '2018-10-12 23:49:05', NULL);
INSERT INTO `duties` VALUES (39, '7', 30, '2018-10-12 23:49:09', '2018-10-12 23:49:09', NULL);
INSERT INTO `duties` VALUES (40, '8', 35, '2018-10-12 23:49:14', '2018-10-12 23:49:14', NULL);
INSERT INTO `duties` VALUES (41, '9', 40, '2018-10-12 23:49:18', '2018-10-12 23:49:18', NULL);
INSERT INTO `duties` VALUES (42, '10', 45, '2018-10-12 23:49:22', '2018-10-12 23:49:22', NULL);
INSERT INTO `duties` VALUES (43, '11', 50, '2018-10-12 23:49:34', '2018-10-12 23:49:34', NULL);
INSERT INTO `duties` VALUES (44, '12', 55, '2018-10-12 23:49:48', '2018-10-12 23:49:48', NULL);
INSERT INTO `duties` VALUES (45, '13', 60, '2018-10-12 23:49:53', '2018-10-12 23:49:53', NULL);

-- ----------------------------
-- Table structure for fan_deliverysetting
-- ----------------------------
DROP TABLE IF EXISTS `fan_deliverysetting`;
CREATE TABLE `fan_deliverysetting`  (
  `id` int(11) NOT NULL,
  `ds_merchant` int(11) NULL DEFAULT NULL,
  `ds_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ds_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ds_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ds_price` decimal(10, 2) NULL DEFAULT NULL,
  `ds_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ds_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ds_arrival` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ds_arrival_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ds_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fan_merchant
-- ----------------------------
DROP TABLE IF EXISTS `fan_merchant`;
CREATE TABLE `fan_merchant`  (
  `merchant_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_type` int(11) NULL DEFAULT NULL,
  `merchant_plan` int(11) NULL DEFAULT NULL,
  `merchant_taxflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_companyname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_rep` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_permit` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_postalcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_address_ex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_address_jp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_commission_jp` double(10, 2) NULL DEFAULT NULL,
  `merchant_commission_ex` double(10, 2) NULL DEFAULT NULL,
  `merchant_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_open` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_fixtax` double(10, 2) NULL DEFAULT NULL,
  `merchant_commission` double(10, 2) NULL DEFAULT NULL,
  `merchant_open_state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_fixcost` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_opencost` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`merchant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fan_merchant
-- ----------------------------
INSERT INTO `fan_merchant` VALUES (1, 1, 1, '0', 'Butterfly Comany', 'Butterfly Merchant', 'Butterfly', 'Butterfly Manager', '3', 'butterfly', '123456789', '123456789', '123456789', '2', '2', 'Address', '', '', '', 100.00, 150.00, '1', NULL, NULL, NULL, '1', '100', '100', NULL, '2018-07-04 12:43:23', '2018-07-04 12:45:16', NULL);
INSERT INTO `fan_merchant` VALUES (2, 2, 2, '0', 'Select Shop1', 'Select Shop2', 'Select Shop3', 'Select Shop4', '3', 'firewolf', '$2y$10$NKMxlquXUU0zS1bLRstrx.sHqTAXFeF/5k348KeVHJJqhpww1prYq', '123456789', '123456789', '1', '', '', 'Adress1', 'Adress2', 'Adress3', 1000.00, 2000.00, '1', NULL, NULL, NULL, '1', '20000', '12345', NULL, '2018-07-04 12:45:21', '2018-07-28 04:17:51', NULL);
INSERT INTO `fan_merchant` VALUES (3, 3, 2, '0', 'Not New Shop', 'Not New Shop', 'Not New Shop', 'Not New Shop', '5', '23@2.com', '123456789', '123456789', '123456789', '1', '', '', 'address01', 'address02', 'address03', 2.00, NULL, '1', NULL, NULL, NULL, '1', '200', '120', NULL, '2018-07-04 12:46:48', '2018-07-06 05:41:27', NULL);
INSERT INTO `fan_merchant` VALUES (4, 3, 1, '0', 'SHOP', 'Satoki', NULL, NULL, NULL, 'satoki.inoue@gmail.com', '$2y$10$asBBtwCbt3qfk2OTU5Htp.BDGcvYaAY0mtaTY7Fd0lTv9ukothz5.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8Rf1Ar4Obns5DyoS1GSUeYKEmwxHOiUZnIVRKu0YemivwyvRBU1olsSLdA5F', '2018-09-14 20:13:59', '2018-09-14 20:13:59', NULL);

-- ----------------------------
-- Table structure for fan_product
-- ----------------------------
DROP TABLE IF EXISTS `fan_product`;
CREATE TABLE `fan_product`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_salemethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_salerange` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_brand_id` int(11) NULL DEFAULT NULL,
  `product_category_id` int(11) NULL DEFAULT NULL,
  `product_event` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_name_kana` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_name_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_taxflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_old_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_size_category_id` int(11) NULL DEFAULT NULL,
  `product_weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_season` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_material` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_merchant_id` int(11) NULL DEFAULT NULL,
  `product_parent_id` int(11) NULL DEFAULT NULL,
  `stock_type` int(2) NULL DEFAULT NULL,
  `max_order_count` int(10) NULL DEFAULT NULL,
  `postage_type` int(2) NULL DEFAULT NULL,
  `postage` int(10) NULL DEFAULT NULL,
  `delivery_id` int(11) NULL DEFAULT NULL,
  `shipping_id` int(11) NULL DEFAULT NULL,
  `product_size_id` int(11) NULL DEFAULT NULL,
  `product_ca` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_color_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 185 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fan_product_image
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_image`;
CREATE TABLE `fan_product_image`  (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `color_id` int(11) NULL DEFAULT NULL,
  `image_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 303 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fan_product_master_image
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_master_image`;
CREATE TABLE `fan_product_master_image`  (
  `master_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `master_image_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`master_image_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 211 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fan_product_sku
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_sku`;
CREATE TABLE `fan_product_sku`  (
  `sku_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `sku_type` int(2) NULL DEFAULT NULL,
  `sku_type_id` int(11) NULL DEFAULT NULL,
  `sku_status` int(2) NULL DEFAULT NULL,
  `product_merchant_id` int(11) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`sku_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 573 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fan_product_stock_management
-- ----------------------------
DROP TABLE IF EXISTS `fan_product_stock_management`;
CREATE TABLE `fan_product_stock_management`  (
  `product_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `product_count` int(11) NULL DEFAULT NULL,
  `product_merchant_id` int(11) NOT NULL,
  `product_sku_color_id` int(11) NOT NULL,
  `product_sku_size_id` int(11) NULL DEFAULT NULL,
  `product_price_sale` double(10, 0) NULL DEFAULT NULL,
  `product_price_ref` double(10, 0) NULL DEFAULT NULL,
  `product_price_law` double(10, 0) NULL DEFAULT NULL,
  `product_count_endless` int(2) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`product_stock_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 465 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fee_type
-- ----------------------------
DROP TABLE IF EXISTS `fee_type`;
CREATE TABLE `fee_type`  (
  `fee_type_id` int(11) NOT NULL,
  `fee_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `fee_type_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`fee_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fee_type
-- ----------------------------
INSERT INTO `fee_type` VALUES (1, '国内', 'Domestic', NULL);
INSERT INTO `fee_type` VALUES (2, '海外', 'International', NULL);

-- ----------------------------
-- Table structure for ltm_translations
-- ----------------------------
DROP TABLE IF EXISTS `ltm_translations`;
CREATE TABLE `ltm_translations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 648 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ltm_translations
-- ----------------------------
INSERT INTO `ltm_translations` VALUES (1, 1, 'ja', 'auth', 'failed', 'アカウントが見つかりませんでした。', '2018-09-13 01:21:33', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (2, 1, 'ja', 'auth', 'throttle', 'ログインの施行回数が上限に達しました。 :seconds秒後にログインし直してください。', '2018-09-13 01:21:33', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (3, 1, 'ja', 'pagination', 'previous', '&laquo; 前へ', '2018-09-13 01:21:33', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (4, 1, 'ja', 'pagination', 'next', '次へ &raquo;', '2018-09-13 01:21:33', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (5, 0, 'ja', '_json', 'All rights reserved.', NULL, '2018-09-13 01:21:33', '2018-09-13 01:21:33');
INSERT INTO `ltm_translations` VALUES (6, 0, 'ja', '_json', 'Whoops!', NULL, '2018-09-13 01:21:33', '2018-09-13 01:21:33');
INSERT INTO `ltm_translations` VALUES (7, 0, 'ja', '_json', 'Hello!', NULL, '2018-09-13 01:21:33', '2018-09-13 01:21:33');
INSERT INTO `ltm_translations` VALUES (8, 0, 'ja', '_json', 'Regards', NULL, '2018-09-13 01:21:33', '2018-09-13 01:21:33');
INSERT INTO `ltm_translations` VALUES (9, 0, 'ja', '_json', 'laravel-filemanager::lfm', NULL, '2018-09-13 01:21:33', '2018-09-13 01:21:33');
INSERT INTO `ltm_translations` VALUES (10, 0, 'ja', 'auth', 'hello', NULL, NULL, NULL);
INSERT INTO `ltm_translations` VALUES (11, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (12, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (13, 1, 'en', 'common', 'オアノット', 'or Not__', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (14, 1, 'en', 'common', 'near_japan', '日本の匠', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (15, 1, 'en', 'common', 'experience', '体験', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (16, 1, 'en', 'common', 'review', 'レビュー', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (17, 1, 'en', 'common', 'q&a', 'Q＆A', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (18, 1, 'en', 'common', 'online_host', 'オンライン中のホストを探す', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (19, 1, 'en', 'common', 'popular_categories', '人気のあるカテゴリ', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (20, 1, 'en', 'common', 'see_all', 'すべて見る', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (21, 1, 'en', 'common', 'see_more', 'もっと見る', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (22, 1, 'en', 'common', 'see_page', 'ページを見る', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (23, 1, 'en', 'common', 'see_all_reviews', '全てのレビューを見る', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (24, 1, 'en', 'common', 'see_all_walls', 'ウォール全体を見る', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (25, 1, 'en', 'common', 'consult', '相談する', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (26, 1, 'en', 'common', 'watch_tour', 'ツアーを見る', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (27, 1, 'en', 'common', 'select_category', 'カテゴリーを選択', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (28, 1, 'en', 'common', 'search_experience', '体験を探す', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (29, 1, 'en', 'common', 'select_area', 'エリアを選択', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (30, 1, 'en', 'common', 'select_person_numbers', '人数を選択', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (31, 1, 'en', 'common', 'select_expense', '金額を選択', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (32, 1, 'en', 'common', 'select_login_state', 'ログイン状態を選択', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (33, 1, 'en', 'common', 'select_language', '言語を選択', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (34, 1, 'en', 'common', 'select_question', '質問を選択してください', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (35, 1, 'en', 'common', 'search', '検索', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (36, 1, 'en', 'common', 'search_host', 'ホスト検索', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (37, 1, 'en', 'common', 'my_page', 'マイページ', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (38, 1, 'en', 'common', 'operating_company', '運営会社', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (39, 1, 'en', 'common', 'faq', 'よくある質問', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (40, 1, 'en', 'common', 'contact_us', 'お問い合わせ', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (41, 1, 'en', 'common', 'slide_title', '東京をもっと見る', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (42, 1, 'en', 'common', 'slide_memo', 'あなたに一番近い食べ物、飲み物、<br>お店を見つけよう。', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (43, 1, 'en', 'common', 'password', 'パスワード', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (44, 1, 'en', 'common', 'password_confirm', 'パスワード（確認）', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (45, 1, 'en', 'common', 'mail_address', 'メールアドレス', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (46, 1, 'en', 'common', 'name', 'お名前', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (47, 1, 'en', 'common', 'agree_terms', '<a href=\"\">利用規約</a>に同意をして登録します。', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (48, 1, 'en', 'common', 'top', 'トップ', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (49, 1, 'en', 'common', 'reservation_management', '体験の予約管理', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (50, 1, 'en', 'common', 'favorite', 'お気に入り', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (51, 1, 'en', 'common', 'favorite_memo', 'お気に入りした体験、ホストたちです', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (52, 1, 'en', 'common', 'create_wall', 'ウォール作成', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (53, 1, 'en', 'common', 'create_experience', '体験作成', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (54, 1, 'en', 'common', 'create_experience1', '体験を作成する', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (55, 1, 'en', 'common', 'experience_management', '体験管理', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (56, 1, 'en', 'common', 'experience_list', '体験一覧', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (57, 1, 'en', 'common', 'create_qa', 'Q&A作成', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (58, 1, 'en', 'common', 'edit_profile', 'プロフィール変更', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (59, 1, 'en', 'common', 'behost', 'ホストになる(審査してたら:ホストモードに切替)', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (60, 1, 'en', 'common', 'setting', '設定', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (61, 1, 'en', 'common', 'wall', 'ウォール', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (62, 1, 'en', 'common', 'be_host', 'ホストになる', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (63, 1, 'en', 'common', 'to_host', 'ホストモードに切替', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (64, 1, 'en', 'common', 'to_guest', 'ゲストモードに切替', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (65, 1, 'en', 'common', 'preview', 'プレビュー', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (66, 1, 'en', 'common', 'schedule', 'スケジュール', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (67, 1, 'en', 'common', 'schedule1', '開催日程', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (68, 1, 'en', 'common', 'price', '金額', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (69, 1, 'en', 'common', 'basic_information', '基本情報', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (70, 1, 'en', 'common', 'host_edit_profile', 'ホスト用プロフィール編集', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (71, 1, 'en', 'common', 'answer_qa', 'Q&Aに回答する', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (72, 1, 'en', 'common', 'setting_photo', '写真', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (73, 1, 'en', 'common', 'setting_auth', '信頼＆認証', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (74, 1, 'en', 'common', 'view_my_profile', '自分のプロフィールを見る', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (75, 1, 'en', 'common', 'account_management', '個人情報管理', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (76, 1, 'en', 'common', 'bank_account_management', '銀行口座管理', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (77, 1, 'en', 'common', 'sales_management', '売上管理', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (78, 1, 'en', 'common', 'access', 'アクセス', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (79, 1, 'en', 'common', 'hour', '時間', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (80, 1, 'en', 'common', 'public', '公開中', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (81, 1, 'en', 'common', 'nonpublic', '非公開', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (82, 1, 'en', 'common', 'edit', '編集', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (83, 1, 'en', 'common', 'has_been_seen_times', '回見られています', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (84, 1, 'en', 'common', 'review_template', '〇〇で地元の人にも旅行者にも高評価な体験です。', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (85, 1, 'en', 'common', 'category', 'カテゴリー', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (86, 1, 'en', 'common', 'host', 'ホスト', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (87, 1, 'en', 'common', 'authorized_host', '認定ホスト', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (88, 1, 'en', 'common', 'overview', '概要', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (89, 1, 'en', 'common', 'caution', '注意事項', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (90, 1, 'en', 'common', 'introduction_place', '実施場所の紹介', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (91, 1, 'en', 'common', 'sold_out', '完売中です', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (92, 1, 'en', 'common', 'choose_date', '日付を選択してください', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (93, 1, 'en', 'common', 'available_status', 'の予約可能状況', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (94, 1, 'en', 'common', 'my_wall', 'マイウォール', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (95, 1, 'en', 'common', 'send', '送信する', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (96, 1, 'en', 'common', 'use_stripe', 'Stripe Connect Customを使用', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (97, 1, 'en', 'common', 'san', 'さん', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (98, 1, 'en', 'common', 'santhing', 'さんのこと', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (99, 1, 'en', 'common', 'what_custom_experience', 'カスタム体験とは？', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (100, 1, 'en', 'common', 'question_answered_by', 'さんが答えた質問', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (101, 1, 'en', 'common', 'required', '必須項目', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (102, 1, 'en', 'common', 'question', '質問', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (103, 1, 'en', 'common', 'answer', '回答', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (104, 1, 'en', 'common', 'save', '保存する', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (105, 1, 'en', 'common', 'question_you_answered', 'あなたが回答した質問', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (106, 1, 'en', 'common', 'photo_memo', '※ 写真は自動で正方形にトリミングされます', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (107, 1, 'en', 'common', 'photo_upload_drop', 'アップロードする<br/>ファイルをドロップ', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (108, 1, 'en', 'common', 'email_verified', '様のメールアドレスの認証が完了しました。<br>当社とのやり取りをセキュアに保つためにも、認証済みメールアドレスはとても重要です。', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (109, 1, 'en', 'common', 'telephone', '電話番号', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (110, 1, 'en', 'common', 'link_facebook', 'Facebookアカウントと連携する', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (111, 1, 'en', 'common', 'edit_host_profile', 'ホスト用プロフィール変更', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (112, 1, 'en', 'common', 'language', '言語', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (113, 1, 'en', 'common', 'residence', '在住歴', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (114, 1, 'en', 'common', 'words_comments', 'ひとことコメント', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (115, 1, 'en', 'common', 'appeal_tag', 'アピールタグ', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (116, 1, 'en', 'common', 'self_introduction', '自己紹介', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (117, 1, 'en', 'common', 'gender', '性別', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (118, 1, 'en', 'common', 'birthday', '誕生日', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (119, 1, 'en', 'common', 'postal_code', '郵便番号', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (120, 1, 'en', 'common', 'address', '住所', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (121, 1, 'en', 'common', 'email_maga_setting', 'おすすめ(メルマガ設定)', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (122, 1, 'en', 'common', 'insta_url', 'インスタURL', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (123, 1, 'en', 'common', 'homepage_url', 'ホームページURL', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (124, 1, 'en', 'common', 'facebook_url', 'FacebookURL', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (125, 1, 'en', 'common', 'youtube_url', 'YoutubeURL', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (126, 1, 'en', 'common', 'created_experience_list', '作成した体験一覧', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (127, 1, 'en', 'common', 'dashboard', 'ダッシュボード', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (128, 1, 'en', 'common', 'notice', 'お知らせ', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (129, 1, 'en', 'common', 'reservation', '予約', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (130, 1, 'en', 'common', 'lack_content', 'コンテンツ不足、、', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (131, 1, 'en', 'common', 'lets_be_host', 'ホストになろう', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (132, 1, 'en', 'common', 'host_application_form', 'ホスト応募フォーム', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (133, 1, 'en', 'common', 'host_application_memo', '応募が完了しております。現在審査中です。', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (134, 1, 'en', 'common', 'yours', 'あなたのこと', '2018-09-13 11:43:23', '2018-09-13 11:43:23');
INSERT INTO `ltm_translations` VALUES (135, 1, 'en', 'common', 'possible_languages', '使用可能な言語', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (136, 1, 'en', 'common', 'history_in_japan', '日本在住歴', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (137, 1, 'en', 'common', 'a_message', 'ひとことメッセージ', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (138, 1, 'en', 'common', 'other', 'その他', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (139, 1, 'en', 'common', 'tag', 'タグ', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (140, 1, 'en', 'common', 'experience_category', '体験のカテゴリ', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (141, 1, 'en', 'common', 'experience_name', '体験名', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (142, 1, 'en', 'common', 'experience_thing', '体験のこと', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (143, 1, 'en', 'common', 'experience_overview', '体験の概要', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (144, 1, 'en', 'common', 'experience_reservation', '体験の予約', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (145, 1, 'en', 'common', 'available_languages', '対応可能言語', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (146, 1, 'en', 'common', 'to_apply', '申し込む', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (147, 1, 'en', 'common', 'experience_reservation_management', '体験予約管理', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (148, 1, 'en', 'common', 'message', 'メッセージ', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (149, 1, 'en', 'common', 'in_consultation', '相談中', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (150, 1, 'en', 'common', 'reservation_detail', '予約詳細', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (151, 1, 'en', 'common', 'write_review', 'レビューを書く', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (152, 1, 'en', 'common', 'reservation_input', '入力', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (153, 1, 'en', 'common', 'reservation_payment', '決済', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (154, 1, 'en', 'common', 'reservation_confirm', '確認', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (155, 1, 'en', 'common', 'reservation_complete', '完了', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (156, 1, 'en', 'common', 'service_notice', 'サービス注意事項', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (157, 1, 'en', 'common', 'content_confirm', '内容確認', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (158, 1, 'en', 'common', 'determine', '確定する', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (159, 1, 'en', 'common', 'alipay', 'Alipay', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (160, 1, 'en', 'common', 'wechat', 'WeChat', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (161, 1, 'en', 'common', 'paypal', 'Paypal', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (162, 1, 'en', 'common', 'credit_card', 'クレジットカード', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (163, 1, 'en', 'common', 'total_price', '合計金額', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (164, 1, 'en', 'common', 'pay', '支払う', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (165, 1, 'en', 'common', 'payment_method', '支払い方法', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (166, 1, 'en', 'common', 'detail', '詳細', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (167, 1, 'en', 'common', 'consult_offer', '相談', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (168, 1, 'en', 'common', 'consult_apply', '申込', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (169, 1, 'en', 'common', 'consult_approve', '確定', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (170, 1, 'en', 'common', 'consult_finish', '終了', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (171, 1, 'en', 'common', 'consult_cancel', 'キャンセル', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (172, 1, 'en', 'common', 'consult_offer1', '提案', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (173, 1, 'en', 'common', 'consult_apply1', '承認', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (174, 1, 'en', 'common', 'consult_approve1', '確定', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (175, 1, 'en', 'common', 'consult_finish1', '終了', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (176, 1, 'en', 'common', 'consult_cancel1', 'キャンセル', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (177, 1, 'en', 'common', 'consult_form', '相談フォーム', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (178, 1, 'en', 'common', 'custom_experience_consult', 'カスタム体験の相談', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (179, 1, 'en', 'common', 'title', 'タイトル', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (180, 1, 'en', 'common', 'your_budget', 'ご予算', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (181, 1, 'en', 'common', 'date', '日付', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (182, 1, 'en', 'common', 'consult_content', '相談内容', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (183, 1, 'en', 'common', 'content', '内容', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (184, 1, 'en', 'common', 'terms', '利用規約とキャンセルポリシーに同意をする', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (185, 1, 'en', 'common', 'proceed_confirm', '確認画面にすすむ', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (186, 1, 'en', 'common', 'total', '合計', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (187, 1, 'en', 'common', 'person', '人', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (188, 1, 'en', 'common', 'person_numbers', '人数', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (189, 1, 'en', 'common', 'canceled', 'キャンセルとなりました', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (190, 1, 'en', 'common', 'consult_offer_host', 'ホストからの提案待ち', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (191, 1, 'en', 'common', 'consult_offer_host1', 'ホストから提案がありました', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (192, 1, 'en', 'common', 'consult_apply_host', 'ホストからの承認待ち', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (193, 1, 'en', 'common', 'consult_apply_host1', '予約が確定しました', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (194, 1, 'en', 'common', 'consult_finish_host', 'この予約は終了しています', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (195, 1, 'en', 'common', 'consult_cancel_host', 'この予約はキャンセルとなりました', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (196, 1, 'en', 'common', 'consult_offer_guest', 'ゲストに提案をしてください', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (197, 1, 'en', 'common', 'consult_offer_guest1', '提案の変更も可能です', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (198, 1, 'en', 'common', 'consult_apply_guest', 'ゲストの申込に提案をしてください', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (199, 1, 'en', 'common', 'consult_approve_guest', '予約が確定しました', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (200, 1, 'en', 'common', 'consult_finish_guest', 'この予約は終了しています', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (201, 1, 'en', 'common', 'consult_cancel_guest', 'この予約はキャンセルとなりました', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (202, 1, 'en', 'common', 'consult_host_message', ':userさんに相談をしました！<br>メッセージのやりとりをして、提案を待ちましょう。', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (203, 1, 'en', 'common', 'consult_guest_message', 'ゲストから相談がありました！<br>内容を確認して、「金額」「日時」「内容」を提案してください。', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (204, 1, 'en', 'common', 'consult_host_offer_message', '予約の申込が完了しました！<br>ホストからの承認をお待ちください。', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (205, 1, 'en', 'common', 'consult_guest_offer_message', '承認ボタンを押して、予約を確定しましょう！', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (206, 1, 'en', 'common', 'consult_guest_approve_message', '予約が確定しました！<br>:userさんに体験を提供しましょう。', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (207, 1, 'en', 'common', 'consult_host_finish_message', '体験が終了しました！<br>:userさんにレビューを書きましょう ', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (208, 1, 'en', 'common', 'consult_guest_finish_message', '体験が終了しました！<br>:userさんにレビューを書きましょう ', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (209, 1, 'en', 'common', 'consult_offer_message', ':userさんが予約をしました', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (210, 1, 'en', 'common', 'consult_update_message', 'すでに:user様へ提案済みですが、支払い前なので変更も可能です。', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (211, 1, 'en', 'common', 'offer', '提案する', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (212, 1, 'en', 'common', 'offer_update', '提案を更新する', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (213, 1, 'en', 'common', 'update', '更新する', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (214, 1, 'en', 'common', 'cancel', 'キャンセルする', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (215, 1, 'en', 'common', 'experience_with_reservation', '予約があった体験', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (216, 1, 'en', 'common', 'experience_reserved', '予約した体験', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (217, 1, 'en', 'common', 'your_profit', 'あなたの収入', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (218, 1, 'en', 'common', 'select', '選択してください', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (219, 1, 'en', 'common', 'attach_file', 'ファイルを添付', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (220, 1, 'en', 'common', 'leave_review', 'レビューを残しましょう', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (221, 1, 'en', 'common', 'consult_input', '入力', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (222, 1, 'en', 'common', 'consult_payment', '決済', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (223, 1, 'en', 'common', 'consult_complete', '完了', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (224, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (225, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (226, 1, 'en', 'passwords', 'password', 'Passwords must be at least six characters and match the confirmation.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (227, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (228, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (229, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (230, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (231, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (232, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (233, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (234, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (235, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (236, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (237, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (238, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (239, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (240, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (241, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (242, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (243, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (244, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (245, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (246, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (247, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (248, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (249, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (250, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (251, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (252, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (253, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (254, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (255, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (256, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (257, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (258, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (259, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (260, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (261, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (262, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (263, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (264, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (265, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (266, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (267, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (268, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (269, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (270, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (271, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (272, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (273, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (274, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (275, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (276, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (277, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (278, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (279, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (280, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (281, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (282, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (283, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (284, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (285, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (286, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (287, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (288, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (289, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (290, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (291, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (292, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (293, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (294, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (295, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (296, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (297, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (298, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (299, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (300, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (301, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values is present.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (302, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (303, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (304, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (305, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2018-09-13 11:43:24', '2018-09-13 11:43:24');
INSERT INTO `ltm_translations` VALUES (306, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (307, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (308, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (309, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (310, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (311, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (312, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (313, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (314, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (315, 1, 'ja', 'auth', 'notice_forgot_password', '※パスワードを忘れた方はこちら', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (316, 1, 'ja', 'auth', 'notice_signup', '※新規登録の方はこちら', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (317, 1, 'ja', 'auth', 'mail_address', 'メールアドレス', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (318, 1, 'ja', 'auth', 'password', 'パスワード', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (319, 1, 'ja', 'auth', 'password_confirm', 'パスワード（確認）', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (320, 1, 'ja', 'auth', 'password_reset', 'パスワード再設定', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (321, 1, 'ja', 'auth', 'password_reissue', 'パスワードを再発行', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (322, 1, 'ja', 'auth', 'remember_me', 'ログイン情報を記憶する', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (323, 1, 'ja', 'auth', 'login', 'ログイン', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (324, 1, 'ja', 'auth', 'login_facebook', 'Facebookログイン', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (325, 1, 'ja', 'auth', 'logout', 'ログアウト', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (326, 1, 'ja', 'auth', 'signup', '新規登録', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (327, 1, 'ja', 'auth', 'name', 'お名前', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (328, 1, 'ja', 'auth', 'register', '登録する', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (329, 1, 'ja', 'auth', 'register_facebook', 'Facebookで登録', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (330, 1, 'ja', 'common', 'near_japan', '日本の匠', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (331, 1, 'ja', 'common', 'experience', '体験', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (332, 1, 'ja', 'common', 'review', 'レビュー', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (333, 1, 'ja', 'common', 'q&a', 'Q＆A', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (334, 1, 'ja', 'common', 'online_host', 'オンライン中のホストを探す', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (335, 1, 'ja', 'common', 'popular_categories', '人気のあるカテゴリ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (336, 1, 'ja', 'common', 'see_all', 'すべて見る', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (337, 1, 'ja', 'common', 'see_more', 'もっと見る', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (338, 1, 'ja', 'common', 'see_page', 'ページを見る', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (339, 1, 'ja', 'common', 'see_all_reviews', '全てのレビューを見る', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (340, 1, 'ja', 'common', 'see_all_walls', 'ウォール全体を見る', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (341, 1, 'ja', 'common', 'consult', '相談する', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (342, 1, 'ja', 'common', 'watch_tour', 'ツアーを見る', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (343, 1, 'ja', 'common', 'select_category', 'カテゴリーを選択', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (344, 1, 'ja', 'common', 'search_experience', '体験を探す', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (345, 1, 'ja', 'common', 'select_area', 'エリアを選択', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (346, 1, 'ja', 'common', 'select_person_numbers', '人数を選択', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (347, 1, 'ja', 'common', 'select_expense', '金額を選択', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (348, 1, 'ja', 'common', 'select_login_state', 'ログイン状態を選択', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (349, 1, 'ja', 'common', 'select_language', '言語を選択', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (350, 1, 'ja', 'common', 'select_question', '質問を選択してください', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (351, 1, 'ja', 'common', 'search', '検索', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (352, 1, 'ja', 'common', 'search_host', 'ホスト検索', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (353, 1, 'ja', 'common', 'my_page', 'マイページ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (354, 1, 'ja', 'common', 'operating_company', '運営会社', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (355, 1, 'ja', 'common', 'faq', 'よくある質問', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (356, 1, 'ja', 'common', 'contact_us', 'お問い合わせ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (357, 1, 'ja', 'common', 'slide_title', '東京をもっと見る', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (358, 1, 'ja', 'common', 'slide_memo', 'あなたに一番近い食べ物、飲み物、<br>お店を見つけよう。', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (359, 1, 'ja', 'common', 'password', 'パスワード', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (360, 1, 'ja', 'common', 'password_confirm', 'パスワード（確認）', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (361, 1, 'ja', 'common', 'mail_address', 'メールアドレス', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (362, 1, 'ja', 'common', 'name', 'お名前', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (363, 1, 'ja', 'common', 'agree_terms', '<a href=\"\">利用規約</a>に同意をして登録します。', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (364, 1, 'ja', 'common', 'top', 'トップ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (365, 1, 'ja', 'common', 'reservation_management', '体験の予約管理', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (366, 1, 'ja', 'common', 'favorite', 'お気に入り', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (367, 1, 'ja', 'common', 'favorite_memo', 'お気に入りした体験、ホストたちです', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (368, 1, 'ja', 'common', 'create_wall', 'ウォール作成', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (369, 1, 'ja', 'common', 'create_experience', '体験作成', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (370, 1, 'ja', 'common', 'create_experience1', '体験を作成する', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (371, 1, 'ja', 'common', 'experience_management', '体験管理', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (372, 1, 'ja', 'common', 'experience_list', '体験一覧', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (373, 1, 'ja', 'common', 'create_qa', 'Q&A作成', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (374, 1, 'ja', 'common', 'edit_profile', 'プロフィール変更', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (375, 1, 'ja', 'common', 'behost', 'ホストになる(審査してたら:ホストモードに切替)', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (376, 1, 'ja', 'common', 'setting', '設定', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (377, 1, 'ja', 'common', 'wall', 'ウォール', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (378, 1, 'ja', 'common', 'be_host', 'ホストになる', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (379, 1, 'ja', 'common', 'to_host', 'ホストモードに切替', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (380, 1, 'ja', 'common', 'to_guest', 'ゲストモードに切替', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (381, 1, 'ja', 'common', 'preview', 'プレビュー', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (382, 1, 'ja', 'common', 'schedule', 'スケジュール', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (383, 1, 'ja', 'common', 'schedule1', '開催日程', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (384, 1, 'ja', 'common', 'price', '金額', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (385, 1, 'ja', 'common', 'basic_information', '基本情報', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (386, 1, 'ja', 'common', 'host_edit_profile', 'ホスト用プロフィール編集', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (387, 1, 'ja', 'common', 'answer_qa', 'Q&Aに回答する', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (388, 1, 'ja', 'common', 'setting_photo', '写真', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (389, 1, 'ja', 'common', 'setting_auth', '信頼＆認証', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (390, 1, 'ja', 'common', 'view_my_profile', '自分のプロフィールを見る', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (391, 1, 'ja', 'common', 'account_management', '個人情報管理', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (392, 1, 'ja', 'common', 'bank_account_management', '銀行口座管理', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (393, 1, 'ja', 'common', 'sales_management', '売上管理', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (394, 1, 'ja', 'common', 'access', 'アクセス', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (395, 1, 'ja', 'common', 'hour', '時間', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (396, 1, 'ja', 'common', 'public', '公開中', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (397, 1, 'ja', 'common', 'nonpublic', '非公開', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (398, 1, 'ja', 'common', 'edit', '編集', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (399, 1, 'ja', 'common', 'has_been_seen_times', '回見られています', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (400, 1, 'ja', 'common', 'review_template', '〇〇で地元の人にも旅行者にも高評価な体験です。', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (401, 1, 'ja', 'common', 'category', 'カテゴリー', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (402, 1, 'ja', 'common', 'host', 'ホスト', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (403, 1, 'ja', 'common', 'authorized_host', '認定ホスト', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (404, 1, 'ja', 'common', 'overview', '概要', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (405, 1, 'ja', 'common', 'caution', '注意事項', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (406, 1, 'ja', 'common', 'introduction_place', '実施場所の紹介', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (407, 1, 'ja', 'common', 'sold_out', '完売中です', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (408, 1, 'ja', 'common', 'choose_date', '日付を選択してください', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (409, 1, 'ja', 'common', 'available_status', 'の予約可能状況', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (410, 1, 'ja', 'common', 'my_wall', 'マイウォール', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (411, 1, 'ja', 'common', 'send', '送信する', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (412, 1, 'ja', 'common', 'use_stripe', 'Stripe Connect Customを使用', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (413, 1, 'ja', 'common', 'san', 'さん', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (414, 1, 'ja', 'common', 'santhing', 'さんのこと', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (415, 1, 'ja', 'common', 'what_custom_experience', 'カスタム体験とは？', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (416, 1, 'ja', 'common', 'question_answered_by', 'さんが答えた質問', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (417, 1, 'ja', 'common', 'required', '必須項目', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (418, 1, 'ja', 'common', 'question', '質問', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (419, 1, 'ja', 'common', 'answer', '回答', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (420, 1, 'ja', 'common', 'save', '保存する', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (421, 1, 'ja', 'common', 'question_you_answered', 'あなたが回答した質問', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (422, 1, 'ja', 'common', 'photo_memo', '※ 写真は自動で正方形にトリミングされます', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (423, 1, 'ja', 'common', 'photo_upload_drop', 'アップロードする<br/>ファイルをドロップ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (424, 1, 'ja', 'common', 'email_verified', '様のメールアドレスの認証が完了しました。<br>当社とのやり取りをセキュアに保つためにも、認証済みメールアドレスはとても重要です。', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (425, 1, 'ja', 'common', 'telephone', '電話番号', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (426, 1, 'ja', 'common', 'link_facebook', 'Facebookアカウントと連携する', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (427, 1, 'ja', 'common', 'edit_host_profile', 'ホスト用プロフィール変更', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (428, 1, 'ja', 'common', 'language', '言語', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (429, 1, 'ja', 'common', 'residence', '在住歴', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (430, 1, 'ja', 'common', 'words_comments', 'ひとことコメント', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (431, 1, 'ja', 'common', 'appeal_tag', 'アピールタグ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (432, 1, 'ja', 'common', 'self_introduction', '自己紹介', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (433, 1, 'ja', 'common', 'gender', '性別', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (434, 1, 'ja', 'common', 'birthday', '誕生日', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (435, 1, 'ja', 'common', 'postal_code', '郵便番号', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (436, 1, 'ja', 'common', 'address', '住所', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (437, 1, 'ja', 'common', 'email_maga_setting', 'おすすめ(メルマガ設定)', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (438, 1, 'ja', 'common', 'insta_url', 'インスタURL', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (439, 1, 'ja', 'common', 'homepage_url', 'ホームページURL', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (440, 1, 'ja', 'common', 'facebook_url', 'FacebookURL', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (441, 1, 'ja', 'common', 'youtube_url', 'YoutubeURL', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (442, 1, 'ja', 'common', 'created_experience_list', '作成した体験一覧', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (443, 1, 'ja', 'common', 'dashboard', 'ダッシュボード', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (444, 1, 'ja', 'common', 'notice', 'お知らせ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (445, 1, 'ja', 'common', 'reservation', '予約', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (446, 1, 'ja', 'common', 'lack_content', 'コンテンツ不足、、', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (447, 1, 'ja', 'common', 'lets_be_host', 'ホストになろう', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (448, 1, 'ja', 'common', 'host_application_form', 'ホスト応募フォーム', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (449, 1, 'ja', 'common', 'host_application_memo', '応募が完了しております。現在審査中です。', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (450, 1, 'ja', 'common', 'yours', 'あなたのこと', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (451, 1, 'ja', 'common', 'possible_languages', '使用可能な言語', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (452, 1, 'ja', 'common', 'history_in_japan', '日本在住歴', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (453, 1, 'ja', 'common', 'a_message', 'ひとことメッセージ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (454, 1, 'ja', 'common', 'other', 'その他', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (455, 1, 'ja', 'common', 'tag', 'タグ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (456, 1, 'ja', 'common', 'experience_category', '体験のカテゴリ', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (457, 1, 'ja', 'common', 'experience_name', '体験名', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (458, 1, 'ja', 'common', 'experience_thing', '体験のこと', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (459, 1, 'ja', 'common', 'experience_overview', '体験の概要', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (460, 1, 'ja', 'common', 'experience_reservation', '体験の予約', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (461, 1, 'ja', 'common', 'available_languages', '対応可能言語', '2018-09-13 11:43:25', '2018-09-13 11:43:25');
INSERT INTO `ltm_translations` VALUES (462, 1, 'ja', 'common', 'to_apply', '申し込む', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (463, 1, 'ja', 'common', 'experience_reservation_management', '体験予約管理', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (464, 1, 'ja', 'common', 'message', 'メッセージ', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (465, 1, 'ja', 'common', 'in_consultation', '相談中', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (466, 1, 'ja', 'common', 'reservation_detail', '予約詳細', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (467, 1, 'ja', 'common', 'write_review', 'レビューを書く', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (468, 1, 'ja', 'common', 'reservation_input', '入力', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (469, 1, 'ja', 'common', 'reservation_payment', '決済', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (470, 1, 'ja', 'common', 'reservation_confirm', '確認', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (471, 1, 'ja', 'common', 'reservation_complete', '完了', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (472, 1, 'ja', 'common', 'service_notice', 'サービス注意事項', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (473, 1, 'ja', 'common', 'content_confirm', '内容確認', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (474, 1, 'ja', 'common', 'determine', '確定する', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (475, 1, 'ja', 'common', 'alipay', 'Alipay', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (476, 1, 'ja', 'common', 'wechat', 'WeChat', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (477, 1, 'ja', 'common', 'paypal', 'Paypal', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (478, 1, 'ja', 'common', 'credit_card', 'クレジットカード', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (479, 1, 'ja', 'common', 'total_price', '合計金額', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (480, 1, 'ja', 'common', 'pay', '支払う', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (481, 1, 'ja', 'common', 'payment_method', '支払い方法', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (482, 1, 'ja', 'common', 'detail', '詳細', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (483, 1, 'ja', 'common', 'consult_offer', '相談', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (484, 1, 'ja', 'common', 'consult_apply', '申込', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (485, 1, 'ja', 'common', 'consult_approve', '確定', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (486, 1, 'ja', 'common', 'consult_finish', '終了', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (487, 1, 'ja', 'common', 'consult_cancel', 'キャンセル', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (488, 1, 'ja', 'common', 'consult_offer1', '提案', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (489, 1, 'ja', 'common', 'consult_apply1', '承認', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (490, 1, 'ja', 'common', 'consult_approve1', '確定', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (491, 1, 'ja', 'common', 'consult_finish1', '終了', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (492, 1, 'ja', 'common', 'consult_cancel1', 'キャンセル', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (493, 1, 'ja', 'common', 'consult_form', '相談フォーム', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (494, 1, 'ja', 'common', 'custom_experience_consult', 'カスタム体験の相談', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (495, 1, 'ja', 'common', 'title', 'タイトル', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (496, 1, 'ja', 'common', 'your_budget', 'ご予算', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (497, 1, 'ja', 'common', 'date', '日付', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (498, 1, 'ja', 'common', 'consult_content', '相談内容', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (499, 1, 'ja', 'common', 'content', '内容', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (500, 1, 'ja', 'common', 'terms', '利用規約とキャンセルポリシーに同意をする', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (501, 1, 'ja', 'common', 'proceed_confirm', '確認画面にすすむ', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (502, 1, 'ja', 'common', 'total', '合計', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (503, 1, 'ja', 'common', 'person', '人', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (504, 1, 'ja', 'common', 'person_numbers', '人数', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (505, 1, 'ja', 'common', 'canceled', 'キャンセルとなりました', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (506, 1, 'ja', 'common', 'consult_offer_host', 'ホストからの提案待ち', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (507, 1, 'ja', 'common', 'consult_offer_host1', 'ホストから提案がありました', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (508, 1, 'ja', 'common', 'consult_apply_host', 'ホストからの承認待ち', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (509, 1, 'ja', 'common', 'consult_apply_host1', '予約が確定しました', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (510, 1, 'ja', 'common', 'consult_finish_host', 'この予約は終了しています', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (511, 1, 'ja', 'common', 'consult_cancel_host', 'この予約はキャンセルとなりました', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (512, 1, 'ja', 'common', 'consult_offer_guest', 'ゲストに提案をしてください', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (513, 1, 'ja', 'common', 'consult_offer_guest1', '提案の変更も可能です', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (514, 1, 'ja', 'common', 'consult_apply_guest', 'ゲストの申込に提案をしてください', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (515, 1, 'ja', 'common', 'consult_approve_guest', '予約が確定しました', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (516, 1, 'ja', 'common', 'consult_finish_guest', 'この予約は終了しています', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (517, 1, 'ja', 'common', 'consult_cancel_guest', 'この予約はキャンセルとなりました', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (518, 1, 'ja', 'common', 'consult_host_message', ':userさんに相談をしました！<br>メッセージのやりとりをして、提案を待ちましょう。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (519, 1, 'ja', 'common', 'consult_guest_message', 'ゲストから相談がありました！<br>内容を確認して、「金額」「日時」「内容」を提案してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (520, 1, 'ja', 'common', 'consult_host_offer_message', '予約の申込が完了しました！<br>ホストからの承認をお待ちください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (521, 1, 'ja', 'common', 'consult_guest_offer_message', '承認ボタンを押して、予約を確定しましょう！', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (522, 1, 'ja', 'common', 'consult_guest_approve_message', '予約が確定しました！<br>:userさんに体験を提供しましょう。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (523, 1, 'ja', 'common', 'consult_host_finish_message', '体験が終了しました！<br>:userさんにレビューを書きましょう ', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (524, 1, 'ja', 'common', 'consult_guest_finish_message', '体験が終了しました！<br>:userさんにレビューを書きましょう ', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (525, 1, 'ja', 'common', 'consult_offer_message', ':userさんが予約をしました', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (526, 1, 'ja', 'common', 'consult_update_message', 'すでに:user様へ提案済みですが、支払い前なので変更も可能です。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (527, 1, 'ja', 'common', 'offer', '提案する', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (528, 1, 'ja', 'common', 'offer_update', '提案を更新する', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (529, 1, 'ja', 'common', 'update', '更新する', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (530, 1, 'ja', 'common', 'cancel', 'キャンセルする', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (531, 1, 'ja', 'common', 'experience_with_reservation', '予約があった体験', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (532, 1, 'ja', 'common', 'experience_reserved', '予約した体験', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (533, 1, 'ja', 'common', 'your_profit', 'あなたの収入', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (534, 1, 'ja', 'common', 'select', '選択してください', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (535, 1, 'ja', 'common', 'attach_file', 'ファイルを添付', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (536, 1, 'ja', 'common', 'leave_review', 'レビューを残しましょう', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (537, 1, 'ja', 'common', 'consult_input', '入力', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (538, 1, 'ja', 'common', 'consult_payment', '決済', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (539, 1, 'ja', 'common', 'consult_complete', '完了', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (540, 1, 'ja', 'datetime', 'month', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (541, 1, 'ja', 'datetime', 'week', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (542, 1, 'ja', 'datetime', 'current_week', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (543, 1, 'ja', 'datetime', 'previous_week', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (544, 1, 'ja', 'datetime', 'before_2weeks', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (545, 1, 'ja', 'datetime', 'before_3weeks', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (546, 1, 'ja', 'datetime', 'before_4weeks', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (547, 1, 'ja', 'datetime', 'before_5weeks', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (548, 1, 'ja', 'datetime', 'before_6weeks', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (549, 1, 'ja', 'datetime', 'within_3days', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (550, 1, 'ja', 'datetime', 'day', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (551, 1, 'ja', 'datetime', 'hour', '', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (552, 1, 'ja', 'locale', 'en', '英語', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (553, 1, 'ja', 'locale', 'ja', '日本語', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (554, 1, 'ja', 'locale', 'ko', '韓国語', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (555, 1, 'ja', 'messages', 'logo', 'たくみ', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (556, 1, 'ja', 'messages', 'full_width_within_20', '全角20文字以内で入力してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (557, 1, 'ja', 'messages', 'max_5', '最大５個まで入力可能です。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (558, 1, 'ja', 'messages', 'inform_admin', '何か事務局に伝えておくことがありましたら、ご記入ください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (559, 1, 'ja', 'passwords', 'password', 'パスワードは最低6文字以上かつ確認用パスワードと一致している必要があります。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (560, 1, 'ja', 'passwords', 'reset', 'パスワードがリセットされました。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (561, 1, 'ja', 'passwords', 'sent', 'パスワード再設定用リンクをメールにて送信しました。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (562, 1, 'ja', 'passwords', 'token', 'URLが不正です。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (563, 1, 'ja', 'passwords', 'user', 'ご入力いただいたメールアドレスが見つかりませんでした。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (564, 1, 'ja', 'validation', 'accepted', ':attributeを承認してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (565, 1, 'ja', 'validation', 'active_url', ':attributeが有効なURLではありません。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (566, 1, 'ja', 'validation', 'after', ':attributeには、:dateより後の日付を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (567, 1, 'ja', 'validation', 'after_or_equal', ':attributeには、:date以前の日付を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (568, 1, 'ja', 'validation', 'alpha', ':attributeはアルファベットのみがご利用できます。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (569, 1, 'ja', 'validation', 'alpha_dash', ':attributeはアルファベットとダッシュ(-)及び下線(_)がご利用できます。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (570, 1, 'ja', 'validation', 'alpha_num', ':attributeはアルファベット数字がご利用できます。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (571, 1, 'ja', 'validation', 'array', ':attributeは配列でなくてはなりません。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (572, 1, 'ja', 'validation', 'before', ':attributeには、:dateより前の日付をご利用ください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (573, 1, 'ja', 'validation', 'before_or_equal', ':attributeには、:date以前の日付をご利用ください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (574, 1, 'ja', 'validation', 'between.numeric', ':attributeは、:minから:maxの間で指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (575, 1, 'ja', 'validation', 'between.file', ':attributeは、:min kBから、:max kBの間で指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (576, 1, 'ja', 'validation', 'between.string', ':attributeは、:min文字から、:max文字の間で指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (577, 1, 'ja', 'validation', 'between.array', ':attributeは、:min個から:max個の間で指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (578, 1, 'ja', 'validation', 'boolean', ':attributeは、trueかfalseを指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (579, 1, 'ja', 'validation', 'confirmed', ':attributeと、確認フィールドとが、一致していません。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (580, 1, 'ja', 'validation', 'date', ':attributeには有効な日付を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (581, 1, 'ja', 'validation', 'date_format', ':attributeは:format形式で指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (582, 1, 'ja', 'validation', 'different', ':attributeと:otherには、異なった内容を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (583, 1, 'ja', 'validation', 'digits', ':attributeは:digits桁で指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (584, 1, 'ja', 'validation', 'digits_between', ':attributeは:min桁から:max桁の間で指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (585, 1, 'ja', 'validation', 'dimensions', ':attributeの図形サイズが正しくありません。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (586, 1, 'ja', 'validation', 'distinct', ':attributeには異なった値を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (587, 1, 'ja', 'validation', 'email', ':attributeには、有効なメールアドレスを指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (588, 1, 'ja', 'validation', 'exists', '選択された:attributeは正しくありません。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (589, 1, 'ja', 'validation', 'file', ':attributeにはファイルを指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (590, 1, 'ja', 'validation', 'filled', ':attributeに値を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (591, 1, 'ja', 'validation', 'gt.numeric', ':attributeには、:valueより大きな値を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (592, 1, 'ja', 'validation', 'gt.file', ':attributeには、:value kBより大きなファイルを指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (593, 1, 'ja', 'validation', 'gt.string', ':attributeは、:value文字より長く指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (594, 1, 'ja', 'validation', 'gt.array', ':attributeには、:value個より多くのアイテムを指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (595, 1, 'ja', 'validation', 'gte.numeric', ':attributeには、:value以上の値を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (596, 1, 'ja', 'validation', 'gte.file', ':attributeには、:value kB以上のファイルを指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (597, 1, 'ja', 'validation', 'gte.string', ':attributeは、:value文字以上で指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (598, 1, 'ja', 'validation', 'gte.array', ':attributeには、:value個以上のアイテムを指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (599, 1, 'ja', 'validation', 'image', ':attributeには画像ファイルを指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (600, 1, 'ja', 'validation', 'in', '選択された:attributeは正しくありません。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (601, 1, 'ja', 'validation', 'in_array', ':attributeには:otherの値を指定してください。', '2018-09-13 11:43:26', '2018-09-13 11:43:26');
INSERT INTO `ltm_translations` VALUES (602, 1, 'ja', 'validation', 'integer', ':attributeは整数で指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (603, 1, 'ja', 'validation', 'ip', ':attributeには、有効なIPアドレスを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (604, 1, 'ja', 'validation', 'ipv4', ':attributeには、有効なIPv4アドレスを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (605, 1, 'ja', 'validation', 'ipv6', ':attributeには、有効なIPv6アドレスを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (606, 1, 'ja', 'validation', 'json', ':attributeには、有効なJSON文字列を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (607, 1, 'ja', 'validation', 'lt.numeric', ':attributeには、:valueより小さな値を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (608, 1, 'ja', 'validation', 'lt.file', ':attributeには、:value kBより小さなファイルを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (609, 1, 'ja', 'validation', 'lt.string', ':attributeは、:value文字より短く指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (610, 1, 'ja', 'validation', 'lt.array', ':attributeには、:value個より少ないアイテムを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (611, 1, 'ja', 'validation', 'lte.numeric', ':attributeには、:value以下の値を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (612, 1, 'ja', 'validation', 'lte.file', ':attributeには、:value kB以下のファイルを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (613, 1, 'ja', 'validation', 'lte.string', ':attributeは、:value文字以下で指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (614, 1, 'ja', 'validation', 'lte.array', ':attributeには、:value個以下のアイテムを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (615, 1, 'ja', 'validation', 'max.numeric', ':attributeには、:max以下の数字を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (616, 1, 'ja', 'validation', 'max.file', ':attributeには、:max kB以下のファイルを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (617, 1, 'ja', 'validation', 'max.string', ':attributeは、:max文字以下で指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (618, 1, 'ja', 'validation', 'max.array', ':attributeは:max個以下指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (619, 1, 'ja', 'validation', 'mimes', ':attributeには:valuesタイプのファイルを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (620, 1, 'ja', 'validation', 'mimetypes', ':attributeには:valuesタイプのファイルを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (621, 1, 'ja', 'validation', 'min.numeric', ':attributeには、:min以上の数字を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (622, 1, 'ja', 'validation', 'min.file', ':attributeには、:min kB以上のファイルを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (623, 1, 'ja', 'validation', 'min.string', ':attributeは、:min文字以上で指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (624, 1, 'ja', 'validation', 'min.array', ':attributeは:min個以上指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (625, 1, 'ja', 'validation', 'not_in', '選択された:attributeは正しくありません。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (626, 1, 'ja', 'validation', 'not_regex', ':attributeの形式が正しくありません。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (627, 1, 'ja', 'validation', 'numeric', ':attributeには、数字を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (628, 1, 'ja', 'validation', 'present', ':attributeが存在していません。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (629, 1, 'ja', 'validation', 'regex', ':attributeに正しい形式を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (630, 1, 'ja', 'validation', 'required', ':attributeは必ず指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (631, 1, 'ja', 'validation', 'required_if', ':otherが:valueの場合、:attributeも指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (632, 1, 'ja', 'validation', 'required_unless', ':otherが:valuesでない場合、:attributeを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (633, 1, 'ja', 'validation', 'required_with', ':valuesを指定する場合は、:attributeも指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (634, 1, 'ja', 'validation', 'required_with_all', ':valuesを指定する場合は、:attributeも指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (635, 1, 'ja', 'validation', 'required_without', ':valuesを指定しない場合は、:attributeを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (636, 1, 'ja', 'validation', 'required_without_all', ':valuesのどれも指定しない場合は、:attributeを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (637, 1, 'ja', 'validation', 'same', ':attributeと:otherには同じ値を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (638, 1, 'ja', 'validation', 'size.numeric', ':attributeは:sizeを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (639, 1, 'ja', 'validation', 'size.file', ':attributeのファイルは、:sizeキロバイトでなくてはなりません。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (640, 1, 'ja', 'validation', 'size.string', ':attributeは:size文字で指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (641, 1, 'ja', 'validation', 'size.array', ':attributeは:size個指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (642, 1, 'ja', 'validation', 'string', ':attributeは文字列を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (643, 1, 'ja', 'validation', 'timezone', ':attributeには、有効なゾーンを指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (644, 1, 'ja', 'validation', 'unique', ':attributeの値は既に存在しています。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (645, 1, 'ja', 'validation', 'uploaded', ':attributeのアップロードに失敗しました。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (646, 1, 'ja', 'validation', 'url', ':attributeに正しい形式を指定してください。', '2018-09-13 11:43:27', '2018-09-13 11:43:27');
INSERT INTO `ltm_translations` VALUES (647, 1, 'ja', 'validation', 'custom.属性名.ルール名', 'カスタムメッセージ', '2018-09-13 11:43:27', '2018-09-13 11:43:27');

-- ----------------------------
-- Table structure for mall_brand_match
-- ----------------------------
DROP TABLE IF EXISTS `mall_brand_match`;
CREATE TABLE `mall_brand_match`  (
  `mall_id` int(11) NOT NULL,
  `brand_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mall_brand_match
-- ----------------------------
INSERT INTO `mall_brand_match` VALUES (30, 1, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_brand_match` VALUES (30, 4, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_brand_match` VALUES (30, 6, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_brand_match` VALUES (30, 7, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_brand_match` VALUES (30, 8, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);

-- ----------------------------
-- Table structure for mall_category_match
-- ----------------------------
DROP TABLE IF EXISTS `mall_category_match`;
CREATE TABLE `mall_category_match`  (
  `mall_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL COMMENT 'deleted_at',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mall_category_match
-- ----------------------------
INSERT INTO `mall_category_match` VALUES (30, 20, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_category_match` VALUES (30, 21, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_category_match` VALUES (30, 22, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_category_match` VALUES (30, 23, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_category_match` VALUES (30, 24, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);
INSERT INTO `mall_category_match` VALUES (30, 25, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);

-- ----------------------------
-- Table structure for master_admin
-- ----------------------------
DROP TABLE IF EXISTS `master_admin`;
CREATE TABLE `master_admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `admin_permission` int(255) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_admin
-- ----------------------------
INSERT INTO `master_admin` VALUES (1, 'admin', 'admin', '$2y$10$NKMxlquXUU0zS1bLRstrx.sHqTAXFeF/5k348KeVHJJqhpww1prYq', 1, NULL, NULL, NULL);
INSERT INTO `master_admin` VALUES (2, 'root', 'root', '$2y$10$NKMxlquXUU0zS1bLRstrx.sHqTAXFeF/5k348KeVHJJqhpww1prYq', 2, NULL, NULL, NULL);
INSERT INTO `master_admin` VALUES (3, 'www', 'www@www.com', '$2y$10$NKMxlquXUU0zS1bLRstrx.sHqTAXFeF/5k348KeVHJJqhpww1prYq', 2, NULL, NULL, NULL);
INSERT INTO `master_admin` VALUES (4, 'firewolf', 'firewolf@outlook.com', '$2y$10$NKMxlquXUU0zS1bLRstrx.sHqTAXFeF/5k348KeVHJJqhpww1prYq', 1, '2018-10-02 12:46:10', '2018-10-02 12:46:14', NULL);

-- ----------------------------
-- Table structure for master_brand
-- ----------------------------
DROP TABLE IF EXISTS `master_brand`;
CREATE TABLE `master_brand`  (
  `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `brand_name_en` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `figure` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `founder` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `foundyear` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `foundplace` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `overview` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `updated_at` date NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  `deleted_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 626 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_brand
-- ----------------------------
INSERT INTO `master_brand` VALUES (1, 'firreee', 'firreee', '', 'wewe', '122', 'efa4', 'sdfsdfdsf', '2018-10-04', '2018-10-04', NULL);
INSERT INTO `master_brand` VALUES (2, '08sircus', '08sircus', NULL, 'Kiminori Morishita', '2019', 'Japan', 'アパレルメーカーにてチーフデザイナーとして数々のブランドを手がけてきたKiminori Morishitaによるブランド。2010年春夏シーズンにパリにてファーストコレクションを発表。計算されたパターンで、静かながら強いコレクションを展開している。ブランド名は英国の称号であるSIRと、CUSTOMERから成る造語。', '2018-10-04', NULL, '2018-10-04');
INSERT INTO `master_brand` VALUES (3, '14th Addiction?', '14th_addiction', NULL, 'TERUKI', '2007', 'Japan', '元KEMRiiのデザイナーTERUKIが2007年に創立したブランド。バリ島にあるアトリエにてコレクションを制作している。\r', '2018-10-04', NULL, '2018-10-04');
INSERT INTO `master_brand` VALUES (4, '1piu1uguale3', '1piu1uguale3', 'brand_5bb5c15be8e40.jpg', 'Tomohiro Ozawa', '2011', 'Japan', 'メンズファッションブランド。世界各国に存在する至高の素材、美しい資材により構成され、限定数量だけ生み出される特別なコレクションである。', '2018-10-04', NULL, NULL);
INSERT INTO `master_brand` VALUES (5, '3.1 Phillip Lim', '3_1_phillip_lim', 'brand_5bb5c630c1877.jpg', 'Phillip Lim and Wen Zhou', '2005', 'USA', 'モダンラグジュアリーブランド。提案する世界観は、「クール」「イージー」「シック」。本来のその人らしさを引き出す、斬新さと洗練された上品さを併せ持ったデザイン。ミニマルなフォルムでモダンなシルエットが特徴。', '2018-10-04', NULL, '2018-10-04');
INSERT INTO `master_brand` VALUES (6, '99%IS-', '99percent_is', NULL, 'Bajowoo', '2012', 'Korea', 'デザイナー?Bajowooは2003年、韓国で初となるパンクブランドを立ち上げた。2008年より東京に拠点を移し、2012年に99%IS-を創立。様々な国で感じたPUNKをコレクションに落とし込む。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (7, 'A BATHING APE', 'a_bathing_ape', 'brand_5bb5c15be8e40.jpg', 'NIGO', '1993', 'Japan', '東京を拠点とする世界的なストリートブランド。トレードマークの猿(Ape)をモチーフとした迷彩柄など、アイコニックなデザインやアイテム、キャラクター等を発表してきた。創立者のNIGOは2013年デザイナーを退任。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (8, 'A&G', 'a_and_g', 'brand_5bb5c15be8e40.jpg', 'Amal Guessous and Guillaume Pajolec', '1994', 'USA', 'シルバー?アクセサリーブランド。ゴシック調を基本としたデザインは、CHROME HEARTS、Leonard Kamhoutとともに、シルバーの世界三大ブランドの一つに数えられる。近年では上質なカシミアやレザーをROCKテイストに仕上げ、大人のROCKをテーマにした作品を展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (9, 'A.P.C.', 'apc', 'brand_5bb5c15be8e40.jpg', 'Jean Touitou', '1987', 'France', 'フレンチベーシックなデザインに加えて、ストリートを意識した仕上がりが特徴。ブランド名は生産と創造のアトリエを意味するAtelier de Production et de Creationの略。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (10, 'Acne Studios', 'acne_studios', NULL, 'Johnny Johansson', '1996', 'Sweden', 'スウェーデンのクリエイティブ集団?Acneの一員であったJohnny Johanssonが創立したデニムブランド「Acne Jeans」が起源。ブランド名のACNEは「Ambition to Create Novel Expression（新しい表現をつくるという野心）」の頭文字から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (11, 'ADAM KIMMEL', 'adam_kimmel', NULL, 'Adam Kimmel', '2004', 'USA', 'ニューヨーク発のブランド。デザインは1940年代から50年代のアメリカのアートシーンからインスピレーションを受けている。全ての生産工程はイタリアで行われている。2012年秋冬コレクションを最後にブランド休止を発表。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (12, 'ADDICT CLOTHES', 'addict_clothes', NULL, 'Satoshi Ishijima', '2010', 'Japan', 'レザーアイテムブランド。日本で、イギリスのヴィンテージライダースジャケット専門店として創業。VINTAGEに対するリスペクトと愛情が詰め込んだアイテムやサービスを展開する。コンセプトは「NEW VINTAGE」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (13, 'AFFA', 'affa', NULL, 'Hiroshi Fujiwara and Jun Takahasi', '1994', 'Japan', '限定的にコレクションを発表することもあり、入手困難なアイテムが多い。ブランド名は「Anarchy Forever Forever Anarchy」の略。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (14, 'agnès b.', 'agnes_b', NULL, 'Agnès Troublé', '1973', 'France', '正統派フレンチカジュアルブランド。繊細でありながらシックで、カジュアルなスタイル。ブランド名?ロゴは、デザイナーの手書きのサインから。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (15, 'AKM', 'akm', NULL, 'Jun Hashimoto and Tomohiro Ozawa', '2006', 'Japan', 'wjkのラグジュアリーライン。着た時にこそ力強く、美しい、ロゴやアイコンに頼らない洋服を展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (16, 'ALEX MATTSSON', 'alex_mattsson', NULL, 'Alex Mattsson', '-', 'UK', 'ロンドンのラグジュアリー?ストリートブランド。レザー使いやテーラリング技術に長けている。デザインは子供時代に興味を抱いていたロボット、テレビゲーム、アニメ、バイクカルチャーなどからインスピレーションを受けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (17, 'ALEX STREETER', 'alex_streeter', NULL, 'Alex Streeter', '1971', 'USA', 'ニューヨークのシルバーアクセサリーブランド。独創的でミステリアスな作品を生み出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (18, 'Alexander McQueen', 'alexander_mcqueen', NULL, 'Alexander McQueen', '1992', 'UK', 'ロンドンを拠点として展開しているファッションブランド。イギリスを代表する”アバンギャルド”なデザインや攻撃的なメッセージを、高いテーラリング技術で精巧でモダンに仕立て上げる。創業者のAlexander McQueenは2010年、40歳の若さで逝去。同年、かねてからメンズウェアのヘッドデザイナーを務めていたSarah Burtonがメンズ?ウィメンズ両部門のクリエイティブ?ディレクターに就任。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (19, 'ALEXANDER WANG', 'alexander_wang', NULL, 'Alexander Wang', '2004', 'USA', 'ニューヨークを拠点とするファッションブランド。2007年NYコレクションデビュー。シンプルでミニマルな、都会的な洗練さを感じられるデザイン。2011年からメンズウェアの展開をスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (20, 'AlexanderLeeChang', 'alexanderleechang', NULL, 'Alexander Lee Chang', '2004', 'USA', 'プロスケーターとして活躍したデザイナーによるブランド。ストリートを軸にしながらも独特のセンスから生み出される自由で自然体なデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (21, 'AMBUSH', 'ambush', NULL, 'VERBAL and YOON', '2008', 'Japan', 'ジュエリーブランドAntonio Murphy & Astroのセカンドラインとしてスタート。遊び心のあるデザインを追求し、今までジュエリーでは使用されなかった新素材や塗装との融合で新たなスタイルを提案。世界的アーティストも愛用する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (22, 'ami alexandre mattiussi', 'ami_alexandre_mattiussi', NULL, 'Alexandre Mattiussi', '2011', 'France', 'パリのストリートブランド。「ami」はフランス語で「友人」の意。気取らずフレンドリー、そしてオーセンティックなスタイルを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (23, 'AMIRI', 'amiri', NULL, 'Mike Amiri', '2013', 'USA', 'LAのストリートブランド。アンダーグラウンドパンクやハリウッドのクラブなど、音楽やカルチャーの影響を受け、ラグジュアリーなコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (24, 'ANN DEMEULEMEESTER', 'ann_demeulemeester', NULL, 'Ann Demeulemeester', '1885', 'Belgium', '「アントワープの6人」のひとりであるANN DEMEULEMEESTERの名を冠したブランド。光と闇の詩的なバランス、前衛的で繊細なディテールのデザインが特徴。2013年、創業者のANN DEMEULEMEESTER退任。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (25, 'ANREALAGE', 'anrealage', NULL, 'Kunihiko Morinaga', '2003', 'Japan', '移りゆく時代の中で、日常では見過ごされてしまうようなことに目を向けた服。「神は細部に宿る」を軸とし、洋服デザインやショーを展開する。ブランド名は「REAL(日常)」「UN REAL(非日常)」「AGE(時代)」を組み合わせた言葉から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (26, 'April 77', 'april_77', NULL, 'Brice Partouche', '2002', 'France', 'ミニマルかつロックなデザインが特徴のブランド。スキニーパンツ、デニムが人気。ブランド名の由来は、デザイナーBrice Partoucheの誕生月である1977年4月から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (27, 'ARIZONA', 'arizona', NULL, 'Soichiro Suzuki', '1989', 'Japan', 'シルバーアクセサリーブランド。千葉県市川市のシルバーショップから始まった。すべてのショップに工房を構え、職人が創りあげている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (28, 'ARMED?', 'armed?', NULL, 'Hiromitsu Kan-oh', '-', 'Japan', '生地や加工やディテール、サイズにこだわり、「さり気なさ」によって生み出される新しい視点からの新しい服作りを提案している。コンセプトは「MY MOOD NOW」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (29, 'Astrid Andersen', 'astrid_andersen', NULL, 'Astrid Andersen', '2011', 'UK', 'デンマーク生まれの女性デザイナーによる、スホ?ーツとヒッフ?ホッフ?、ストリートとラク?シ?ュアリーの要素を融合したデザインのブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (30, 'AT LAST & CO', 'at_last_and_co', NULL, 'Kei Henmi', '-', 'Japan', '1920～30年代のアメリカをテーマとし、ワークウェアなどを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (31, 'ato', 'ato', NULL, 'Ato Matsumoto', '1993', 'Japan', '男性らしさ、女性らしさに捉われることなく身体を個性の象徴と捉え、「個々の個性を引き出す」という考えのもとものづくりを行う。全てのアイテムを立体裁断で作り上げる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (32, 'ATTACHMENT', 'attachment', NULL, 'Kazuyuki Kumagai', '1999', 'Japan', '素材?ディテールに強いこだわりを持ち、洗練されたデザインを展開。「ATTACHMENT」は「付属」と言う意味。あくまで服は付属品という観点から、着る人の個性や魅力がシンプルに出るような服作りをしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (33, 'attack the mind 7', 'attack_the_mind_7', NULL, 'Takeshi Shimoyama', '2011', 'Japan', 'コンセプトは「考えることなく手に取り、袖を通し、様になる“使える服” 気取らない、自然体の日常着。 着る者を限定せず誰もが試すことのできる“普遍着” 着るだけで身体を 美しく見せる独自のフィッティングと着心地の良さを重視した“調整服” “使える服“ いつでもどんな服とも自然と調和する都合のよい服 “普遍着”時代関係なくいつまでも変わらず支持される服 “調整服” 着るだけでスタイルをよく見せ、着こなし全体のバランスを整える服。」\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (34, 'BACKBONE', 'backbone', NULL, 'Naoya Ota', '2001', 'Japan', 'コンセプトは「普遍的な男らしさと価値観」。旧き良きアメリカンカルチャーを軸としたアイテムを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (35, 'BALMAIN', 'balmain', NULL, 'Pierre Balmain', '1945', 'France', 'フランスのラグジュアリーブランド。力みのない洗練さとシンプルでありながらエレガンスなスタイルは、当時の大女優をも魅了した。今もBALMAINのアイコンとして話題となるバイカーファッションは、2009年にパリコレクションで発表された。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (36, 'banal chic bizarre', 'banal_chic_bizarre', NULL, 'Ayano Ichige and Shun Nakagawa', '2002', 'Japan', 'コンセプトは「シンプルの中にある奇抜」。2008年、東京コレクションに初参加。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (37, 'BAND OF OUTSIDERS', 'band_of_outsiders', NULL, 'Scott Sternberg', '2004', 'USA', 'LAを拠点とするファッションブランド。上質なテーラリングをベースに、伝統を重んじながらも、ユーモアに溢れたデザインと、優れた品質が特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (38, 'BANKROBBER', 'bankrobber', NULL, 'Yosuke Kimura', '2009', 'Japan', '元NUMBER(N)INEのアシスタント?デザイナーYosuke Kimuraが創立したブランド。ヴィンテージファッションやワークウェアからインスピレーションを得たデイリーウェアを発表。ブランド名はUKのバンド「the clash」の曲名から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (39, 'BED J.W. FORD', 'bed_j_w_ford', NULL, 'Shinpei Yamagishi and Keisuke Kosaka', '2010', 'Japan', '\"メンズファッションブランド。\"\"生活の中にある物事で美しさ、儚さを感じられる空間やモノ、音や映像をブランドの解釈で形を変え毎シーズンテーマを設けコレクションを発表している。」」のバンド「the clas\"\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (40, 'BEDWIN & THE HEARTBREAKERS', 'bedwin_and_the_heartbreakers', NULL, 'Masafumi Watanabe', '2004', 'Japan', 'シンプルなアメリカントラッドをベースに、世界を旅して触れてきたもののディテールを加えて再構築。クリーンな中に、独特の着崩しを加えて不良性を表現する。2011秋冬シーズンよりレディースラインをスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (41, 'Berluti', 'berluti', NULL, 'Alessandro Berluti', '1895', 'France', '創業者のAlessandro Berlutiがイタリアで「ビスポーク」のシューメーカーとして1895年に創業したのが始まり。レザーアイテムの他に、アパレル、やジュエリー?アクセサリー類も手がけている。2005年からバッグの展開をスタート。2011年からレディスウェアも展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (42, 'Bernhard Willhelm', 'bernhard_willhelm', NULL, 'Bernhard Willhelm', '1999', 'France', 'アントワープ王立芸術アカデミーを卒業したベルギー第二世代を代表するデザイナーBernhard Willhelmによるブランド。デザイナーのマインドの中で生まれる物語からコレクションが生み出されている。2003年にメンズラインがスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (43, 'BLACK COMME des GARCONS', 'black_comme_des_garcons', NULL, 'Rei Kawakubo', '2009', 'Japan', 'COMME des GAR?ONSからエマージェンシーブランドとして発足したブランド。2009年の経済状況下において、緊急事態に対処するブランドという位置づけでスタート。当初は期間限定の予定であったが、継続されている。構想から約1ヶ月で製品化に踏み切ったという、時代に即した柔軟な対応であった。「個性ある値頃」を狙い、コレクションラインの60％程度の価格帯となっている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (44, 'BLESS', 'bless', NULL, 'Desiree Heiss and Ines Kaag', '1996', 'Germany', 'デザインデュオが手がけるブランド。コンセプチュアルなコレクションを展開する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (45, 'Bloody Mary', 'bloody_mary', NULL, '-', '1999', 'Japan', 'シルバーアクセサリーブランド。美しい彫刻や有機的なデザインが特徴。「自然を身にまとい、それぞれが意味を込めてお守りとする」ことをテーマとしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (46, 'BORIS BIDJAN SABERI', 'boris_bidjan_saberi', NULL, 'Boris Bidjan Saberi', '2008', 'Spain', 'バルセロナを拠点とするブメンズウェアランド。正確なカッティングと、エッジの効いたディテールが特徴。ハンドクラフトにこだわったアイテムが人気を博している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (47, 'BOTTEGA VENETA', 'bottega_veneta', NULL, 'Michele Taddei and Renzo Zengiaro', '1966', 'Italy', '高級革製品を中心に展開するブランド。上質なプロダクトは、卓越したクラフトマンシップによって作り上げられている。ブランドのモットーは「When your own initials are enough(自分のイニシャルだけで十分)」。ロゴを全面に出して持ち主のイニシャルを隠すことはせず、「控え目でさりげなく、気品があること」を哲学としている。ブランド名は「ベネチアの工房」の意。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (48, 'BRIGHT THINGS', 'bright_things', NULL, '-', '2013', 'Japan', '東京発のモードブランド。コンセプトは「あらゆるファッションを通過してきた大人たちのために、着心地ありきで、シンプルながらも“今の空気感と色気”をプラス。夜に映える“ブラック”が織りなす“エレガンス?ミリタリー”な世界。」\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (49, 'BRUNELLO CUCINELLI', 'brunello_cucinelli', NULL, 'Brunello Cucinelli', '1978', 'Italy', '高級カシミアのニットウェアを中心に展開するブランド。カラー?カシミヤがよく知られている。品質の高い、伝統的なイタリア製品をベースにしており、非常に柔らかく着心地が良いため、世界中で評価されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (50, 'bukht?', 'bukht?', NULL, 'Tetsuya Hashimoto', '2011', 'Japan', 'bukhtは中東で良質なラクダを指し、人々の暮らしの中で非常に重宝される存在を意味する。コンセプトは「人々に愛されるブランド創り」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (51, 'Burberry LONDON', 'burberry_london', NULL, 'Thomas Burberry', '1856', 'UK', 'イギリスを代表するブランドのひとつ。ギャバジン素材やトレンチコートの開発、またその裏地であった「バーバリー?チェック」が世間の注目を集め、ブランド地位を確立した。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (52, 'Burberry PRORSUM', 'burberry_prorsum', NULL, 'Roberto Menichetti', '1998', 'UK', 'BURBERRYの最上級ライン。ラテン語で「前進」を意味し、BURBERRYの伝統にモード性を加えてモダンなスタイルを目指している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (53, 'BUSCEMI', 'buscemi', NULL, 'Jon Buscemi', '2013', 'USA', 'スニーカー愛好家のJon Buscemiが立ち上げた、LA発のシューズブランド。最高品質のレザー、ハイエンドな装飾、ハンドペイントによるエッジやステッチなど、イタリアの職人によりハンドメイドで仕立て上げられる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (54, 'BVLGARI', 'bvlgari', NULL, 'Sotirios Boulgaris', '1884', 'Italy', 'ギリシャの銀細工職人Sotirios Boulgarisによってローマで誕生した、高級宝飾品ブランド。時計、香水、レザーアイテムなども手がけている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (55, 'C.E', 'ce', NULL, 'SK8THING and Toby Feltwell and Yutaka Hishiyama', '2011', 'Japan', 'ストリートブランド。ブランド名はアメリカの作家Philip K Dickの著書「Ubik」が由来。「Bring back Street Wear!」をテーマとし、サイエンスフィクションにインスピレーションを得たアイテムを展開。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (56, 'CABANE de ZUCCa', 'cabane_de_zucca', NULL, 'Akira Onozuka', '1988', 'Japan', 'メンズ?レディースを展開するブランド。コンセプトは「着る人にも、見る人にも心地よく。日々に、新しいオーガニック?スパイスを加えるような”日常着”」。ブランド名はデザイナーの愛称から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (57, 'CALEE', 'calee', NULL, '-', '2004', 'Japan', '90年代のアメリカン?カジュアルとジャパニーズ?カジュアルを融合させたスタイルのストリートブランド。CALIFORNIAの別名でもあるCALYがブランド名の由来。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (58, 'CAROL CHRISTIAN POELL?', 'carol_christian_poell?', NULL, 'Carol Christian Poell', '1996', 'Italy', '高いテーラリングの技術と、膨大な時間と労力を費やし開発されるマテリアル。ひねりのあるディテールなど、コンセプチュアルでユニークな作品を展開している。1995年にメンズコレクション、1998年にレディースコレクションを発表。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (59, 'C DIEM', 'carpe_diem', NULL, 'Maurizio Altieri', '1994', 'Italy', 'ペルージャ発のブランド。ブランド名の由来は紀元前1世紀古代ローマの詩人、Quintus Horatius Flaccuの詩に登場する「seize the da(その日を摘め)」から。「今この瞬間を生きる」などの意味を指す。一点ずつイタリアでハンドメイドされるコレクションには、熟練のクラフツマンシップとマテリアルへのこだわりが現れている。10年間の休止後、当時のメンバーが集まり2017年秋冬シーズンより再始動。 \r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (60, 'Cartier', 'cartier', NULL, 'Louis-Francois Cartier', '1847', 'France', '\"「Jeweller of kings', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (61, 'CARVEN', 'carven', NULL, 'Madame Carven', '1945', 'France', '1945年にパリ?シャンゼリゼ通りでMadame Carvenがスタートしたオートクチュールメゾン。1993年のMadame Carven引退後、新生CARVENとして新しいロゴ及びカラーが発表された。2012年よりメンズラインがスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (62, 'Casely-Hayford', 'casely_hayford', NULL, 'Joe Casely-Hayford', '1985', 'UK', '親子でデザインを手がけるブランド。コレクションのキーワードは「伝統のその先」。イギリスの伝統とサヴィル?ロウのテーラリングなどの技術をベースとしつつ、モダンな解釈でデザインをしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (63, 'CELT&COBRA', 'celt_and_cobra', NULL, 'Toshiyuki Terui', '1998', 'Japan', '元BLANKEY JET CITYのベーシストToshiyuki Teruiがスタートした、シルバー?レザーアクセサリーを中心としたブランド。後にウェアも展開するようになる。2007年ブランド終了。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (64, 'CHANEL', 'chanel', NULL, 'Gabrielle Bonheur Chanel', '1910', 'France', '1910年にGabrielle Chanelがパリ?カンボン通り21番地に開業した帽子店「シャネル?モード」が原点。Gabrielle Chanelはジャージー素材のドレスやツイード素材のスーツ、リトル?ブラック?ドレスなど、ファッション界に革命を起こしてきたブランドである。アパレル以外にも、サングラス、バッグなど様々なアイテムを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (65, 'CHRISTIAN DADA?', 'christian_dada?', NULL, 'Masanori Morikawa', '2010', 'Japan', 'モードをベースとしつつ、ストリートやロックといったテイストも含んだ個性的なスタイルを多く展開している。コンセプトは「アドレッセンス(＝思春期)性を持ったプロダクトアウト」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (66, 'Christian Lacroix', 'christian_lacroix', NULL, 'Christian Lacroix', '1987', 'France', '装飾的なスタイルのブランド。2011年秋冬コレクションより、デザイナー?Sacha Walckhoffがメンズラインをスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (67, 'Christopher Kane', 'christopher_kane', NULL, 'Christopher Kane', '2007', 'UK', 'ロンドンの芸術大学Central Saint Martins卒業コレクションで最優秀賞に選ばれ、大きな注目を浴びたデザイナー?Christopher Kaneによるブランド。ファッションのアワードを多数受賞している。2011春夏シーズンよりメンズラインをスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (68, 'Christopher Nemeth', 'christopher_nemeth', NULL, 'Christopher Louis Nemeth', '1986', 'UK', '活動拠点は東京。自由な発想から生み出されたディスコンストラクション(＝脱構築)スタイルは、ファッション業界関係者を中心に根強いファンを持った。創業者Christopher Nemethは2010年逝去。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (69, 'Christopher Raeburn', 'christopher_raeburn', NULL, 'Christopher Raeburn', '2008', 'UK', 'エシカルな取り組みをしているブランドのひとつとして、スポンサーシップを受けて活動している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (70, 'CICATA', 'cicata', NULL, 'Rihito', '2000', 'Japan', 'スクールをブランドテーマの根底に、シンプルかつ上質でありながらポップにドレスダウンしたスタイルを展開。ブランド名の由来は「～の仕方」から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (71, 'CINOH', 'cinoh', NULL, 'Takayuki Chino', '2008', 'Japan', '東京のストリートから生まれる自由な発想をベースしたブランド。2008年にスタートした「bethourire」を2014年春夏シーズンより「CINOH」に改称。コンセプトは「一瞬の時の中に存在するだけでなく、ワードローブ?想い出に残るモノ創り」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (72, 'CINZIA ARAIA', 'cinzia_araia', NULL, 'Cinzia Araia', '2010', 'Italy', 'ラグジュアリーシューズブランド。数々のメゾンにてシューズデザイナーとして活躍したCinzia Araiaによって、2010春夏シーズンよりスタート。全てのモデルがユニセックスでのサイズ展開となっている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (73, 'Cippy Crazy Horse', 'cippy_crazy_horse', NULL, 'Cippy Crazy Horse', '-', 'USA', 'インディアンジュエリーブランド。作品は稀代のシルバースミスJoe H. Quintana2の息子であり、コチティプエプロ族の酋長を務めるCippy Crazy Horseによって、一つ一つ手作業で制作されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (74, 'CLANE', 'clane', NULL, 'Ena Matsumoto', '2015', 'Japan', 'ブランドコンセプトは「ORIGINAL STANDARD」。「STANDARD」に現代的な柄、素材、デザインを取り入れ新しいフォルムを表現する。 2016年秋冬コレクションより、メンズラインCLANE HOMMEをスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (75, 'COALBLACK', 'coalblack', NULL, 'Satoshi Ogawa', '2007', 'Japan', 'アメリカンカジュアルをベースにしたシャープなシルエットと独自の世界を持った男らしいスタイル。2012年ブランド終了。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (76, 'Cody Sanderson', 'cody_sanderson', NULL, 'Cody Sanderson', '1999', 'USA', 'アメリカの南西部ナバホ出身のジュエリーアーティストCody Sandersonが創り出す、インディアンジュエリー。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (77, 'COMMON PROJECTS', 'common_projects', NULL, 'Flavio Girolami and Prathan Poopat', '2004', 'USA', '2004年にスタートしたニューヨーク発のシューズブランド。シンプルでミニマルなデザインが特徴。イタリアのファクトリーで職人のハンドメイドによって仕立てられ、すべての製品にシリアルナンバーが施されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (78, 'Corto Moltedo', 'corto_moltedo', NULL, 'Gabrielecorto Moltedo', '2004', 'Italy', 'BOTTEGA VENETAの創始者?Moltedo夫妻の息子であるGabrielecorto Moltedoが創立したラグジュアリーバッグ＆アクセサリーブランド。パリでデザインを行い、イタリアで生産される。ポップでシック、アーバンでカントリーな、絶妙なバランス感覚で生み出される高品質なアイテムが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (79, 'COSMIC WONDER', 'cosmic_wonder', NULL, 'Yukinori Maeda', '1997', 'Japan', '現代美術作家のYukinori Maedaが主宰。ファッションだけでなく、「精神に作用する波動」としてのアート、ファッション、印刷物の発行など、多岐にわたる表現で国際的な活動をおこなうブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (80, 'CoSTUME NATIONAL', 'costume_national', NULL, 'Ennio Capasa', '1986', 'Italy', '「Edgy Chic」と評されるデザインは、シャープでエッジー、センシュアル。ミニマルをはじめ、多くのトレンドを牽引してきた。2018春夏シーズンから新たにクリエイティブダイレクターとして、メンズは「FACTOTUM」のKoji Udo、レディースは「YASUTOSHI EZUMI」のYasutoshi Ezumiを迎え、本格的なブランド?リローンチをスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (81, 'COTTWEILER', 'cottweiler', NULL, 'Ben Cottrell and Matthew Dainty', '2012', 'UK', 'ロンドンのメンズウェアブランド。テクニカルでスポーツテイスト、先進的で洗練されたデザインのカジュアルウェアを生み出す。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (82, 'CRAZY PIG', 'crazy_pig', NULL, 'Armand Serra and Jeanette Austin', '1992', 'UK', 'ロンドン発のシルバーアクセサリーブランド。ギタリストとしての顔も持つデザイナーArmand Serraによる、ロックテイスト溢れるデザイン。大半のデザインがスカルをモチーフとしていることや、そのクオリティーの高さから「King of Skull」の異名を持つ。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (83, 'Cruciani', 'cruciani', NULL, '-', '1966', 'Italy', 'ペルージャで創業されたMaglital社の生み出す、紡績、染色、縫製まですべてを行うニットウェアブランド。最高級の素材を使用し、モダンで洗練されたデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (85, 'DAMIR DOMA', 'damir_doma', NULL, 'Damir Doma', '2006', 'Belgium', 'フランス?パリを拠点とするファッションブランド。アートや建築の世界からインスピレーションを受けたシルエット、アバンギャルドながらも洗練れたデザインが特徴。創立当初はアントワープをデザインの拠点としていたが、現在はパリを拠点に活動している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (86, 'Daniel Palillo?', 'daniel_palillo', NULL, 'Daniel Palillo', '2008', 'Finland', 'フィンランド人アーティスト＆デザイナーのDaniel Palilloが手がけるブランド。絵画を学んでいたDaniel Palilloは、パッチワークでアートピースのような作品を制作する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (87, 'Dartin Bonaparto', 'dartin_bonaparto', NULL, 'Akira Inoue', '2007', 'Japan', '架空の4人組バンド「MICK(ミック)」をアイコンキャラクターとしてコレクションを展開し、人気が高まった。スワロフスキー社に別注したジッパーとスパンコール刺繍がゴージャスなフーデットパーカーは、世界に通じるパーカーの真髄を追求する。ブランド名の由来は、フランスの三銃士伝説に加わった「D\'Artagnan(ダルタニアン)」とフランス革命期の闘将「Napoléon Bonaparte(ナポレオン?ボナパルト)」がインスピレーション源となっている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (88, 'deafbreed', 'deafbreed', NULL, 'Motohiro Takahashi', '2000', 'Japan', 'シルバーアクセサリーブランド。オリジナリティ溢れるデザインとミステリアスな世界観、高度な彫金技術で、日本のシルバーアクセサリー最高峰に名を連ねる。創業者?高橋基寛は、デフブリードを立ち上げるわずか2年前に彫金を始めた。ワックス型制作からキャスト(鋳造)まで、全ての工程をひとりで行っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (89, 'DEALDESIGN', 'dealdesign?', NULL, 'Satoshi Yamashita ', '2001', 'Japan', 'シルバーアクセサリーブランド。コンセプトは「Refind Rock(洗練されたロック)」。アイアンクロスやスカルなどハードなモチーフをメインとするアイテムは、細部まで丁寧に製作される。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (90, 'DeeTA', 'deeta', NULL, 'Takushi Asami', '2009', 'Japan', '日本製デニムブランド。1970年代のPUNK SPIRIT、SURF CULTURE、時代性を、デザイナー独自の解釈で融合し、デザインへ落とし込む。ミリ単位でデザイン?パターン?縫製にこだわりを持ち、デニムの新しい可能性を追求している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (91, 'Delay by Win&Sons', 'delay_by_win_and_sons', NULL, 'Kazuyuki Akitani', '2008', 'Japan', '岡山のデニムファクトリーから生まれたオリジナルブランド。デニムを中心に扱う。2008年秋冬シーズンにスタイリスト?Kazuyuki Akitaniをデザイナーに迎え「Win&Sons Type-Akitani」としてブランドがスタート。2009年秋冬シーズンには元COALBLACKのTakafumi Umemotoがデザイナーに就任し、ブランド名を「Delay by Win&Sons」へ変更。2016年ブランド終了。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (92, 'DIAMOND DOGS?', 'diamond_dogs?', NULL, 'Jeffrey Sebelia and Michel Berandi', '2002', 'USA', 'ロックテイスト溢れるデザインが特徴のリメイクブランド。正式名称は「Diamond Dogs by Cosa Nostra L.A.」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (93, 'DIET BUTCHER SLIM SKIN', 'diet_butcher_slim_skin', NULL, 'Hisashi Fukatami', '2002', 'Japan', 'メンズファッションブランド。モードとストリート、どちらにも完全に属さない、独自のスタイル。アートや音楽など芸術性の高いコレクションは、ランウェイ?インスタレーション?映像などの形式にとらわれない様々な形で展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (94, 'DIGAWEL?', 'digawel?', NULL, 'Kohei Nishimura', '2006', 'Japan', '東京発のファッションブランド。リラックスした抜け感のあるデザインの中に、微妙なシルエットの変化などの遊び心やこだわりが垣間見える。定番の白シャツが人気を博している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (95, 'DIRK BIKKEMBERGS', 'dirk_bikkembergs', NULL, 'Dirk Bikkembergs', '1986', 'Belgium', '創設者はドイツ?ケルン出身のファッションデザイナーで、「アントワープの6人」のひとり。ブランドのモットーは「mens sana in corpore sano(健全な精神は健全な身体に宿る)」である。マスキュリンでプラクティカルなスタイルを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (96, 'DISCOVERED?', 'discovered?', NULL, 'Tatsuya Kimura and Sanae Yoshida', '2001', 'Japan', '東京のデザインデュオが手がけるメンズファッションブランド。リアルクローズをベースに、オリジナリティあふれるコレクションを展開している。コンセプトは「Opposition mix up」で、相反するテイスト?デザインの融合、ジャンルレスのデザインを目指している。2001年からアーティストへオーダーメイドでの洋服製作を開始。2010春夏シーズンよりファッションショー形式でのコレクションを発表している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (97, 'DOLCE&GABBANA', 'dolce_and_gabbana', NULL, 'Domenico Dolce and Stefano Gabbana', '1985', 'Italy', 'ラグジュアリーブランド。コンセプトは「自由の肯定形。偽りのない表現に、かつてになく都会的な感性が加えられ、型にとらわれずそこから脱却した洗練のスタイル」。インスピレーションとなるのは「シチリアの強い女」である。メンズ?レディースともにセクシーなスタイルを表現し、ミラノファッションに新風を吹き込んだ。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (98, 'DRESSCAMP', 'dresscamp', NULL, 'Toshikazu Iwaya', '2002', 'Japan', '日本のテキスタイルメーカー「AT ONES\' 」が展開するブランド。Toshikazu Iwayaをデザイナーとしてブランドスタート。独特の色彩表現で魅せるプリントや装飾性を特徴としたコレクションを展開。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (99, 'DRESSEDUNDRESSED', 'dressedundressed', NULL, 'Takeshi Kitazawa and Emiko Sato', '2009', 'Japan', '東京のセレクトショップ「CANDY」を立ち上げたデザインデュオが手がけるブランド。二元性、対比性、対犠牲の結合をブランドコンセプトに、様々な異なる要素を結合し、男女2人によるアセクシャルなストリートクチュールを展開。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (100, 'drestrip', 'drestrip', NULL, 'Yuji Kobayashi', '2006', 'Japan', '大人のための上質なデイリーウェアを提案するブランド。ジャージ素材のコレクションとレザーアイテムが人気。「毒と華」をテーマとし、「ベーシックな中に毒があり、華やかなのに日常的」なデザインを生み出す。ブランド名は「Dress(着飾る)」「Strip(シンプルさ)」「Trip(高揚感)」から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (102, 'DSQUARED2', 'dsquared2', NULL, 'Dean Caten and Dan Caten', '1994', 'Italy', 'カナダ出身の一卵性双生児の兄弟が手がけるイタリアンブランド。「自分達が着たいものをつくる」というコンセプトを基に、ファッションにおける基礎や伝統に、イタリアンモードとスポーティーをかけ合わせたスタイルが特徴。フィロソフィーは「カナディアン?ウィットと洗練されたイタリアン?テーラーリングの知的な融合」。独特な創造性と躍動感のあるファッションショーを展開しており、ミュージシャンの愛用者も多く、衣装提供も多数手がけている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (103, 'DUVETICA', 'duvetica', NULL, 'Giampiero Vagliano and Stefano Rovoletto', '2002', 'Italy', 'ダウンのスペシャリスト達によって創立されたダウン専業ブランド。創業者はMONCLER出身。上質なダウンのみを使用しており、その品質の高さとデザインからまたたく間に人気となった。ブランド名は「DUVET（フランス語でダウンの意）」と「ETICA（イタリア語で倫理や道徳の意）」から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (104, 'EFILEVOL', 'efilevol', NULL, 'Taisuke Ota and Takuya Tobise and Seiji Akutsu', '2006', 'Japan', '人の中に必ず存在する“愛”に焦点を当て、ドレス?ミリタリー?ワーク?トラッド等の完成されたベーシックをジャンルレスにデザイン。ディテールやパターンには自由な視点から生まれる発想を取り入れており、ギミックや皮肉的ユーモアを織り交ぜた服作りを提案している。表記は創業時の「.efiLevol」から、2017年春夏シーズンより「EFILEVOL」へ変更。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (105, 'ELEVEN PARIS', 'eleven_paris', NULL, 'Oriel Bensimon and Dan Cohen', '2003', 'France', 'パリのストリートブランド。高いクリエイティビティとスタイリングで、瞬く間に世界中のファッショニスタを魅了した。特に音楽はインスピレーション元となっており、「Like a joke」シリーズは最も人気がある。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (106, 'ELVIRA', 'elvira', NULL, '-', '2013', 'Japan', 'ニューヨークや東京を中心に世界のクリエイターが集まり、ストリートの「今」を様々なアイテムで表現することを目的にスタートしたブランド。取り扱いは厳選させれたショップのみとなっており、入荷時には行列が出来ることもある。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (108, 'ENGINEERED GARMENTS', 'engineered_garments', NULL, 'Daiki Suzuki', '1999', 'USA', '日本のセレクトショップ「NEPENTHES」から発足し、ニューヨークで設立したメンズウェアブランド。1930年代から70年代の象徴的なクラシックテーラリング、スポーツウェア、ワークウェア、ミリタリーユニフォーム等の、古き良き時代の優れたアメリカ製品のデザインを解体?再構築し、新たなプロダクトを作り出す。本当にアメリカらしい製品、完成された未完成品を作ることをテーマとし、そんなアメリカものに惹かれる、ちょっとへそ曲がりな大人のための日常着を提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (109, 'ERMANNO SCERVINO', 'ermanno_scervino', NULL, 'Ermanno Scervino and Toni Scervino', '1999', 'Italy', 'イタリア?フィレンツェのブランド。アイテムは全てフィレンツェの自社工場で生産されている。仕立て職人サルトリアーレの技術が際立つスポーティクチュールスタイルは、型にとらわれない新しいラグジュアリーとして高く評価されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (110, 'ETRO', 'etro', NULL, 'Gimmo Etro', '1968', 'Italy', 'イタリアで誕生したテキスタイルブランド。現在ではレディース?メンズファッションから生活用品、フレグランスまで幅広く手がけている。シグネチャーモチーフのペイズリーは、インドのカシミール地方で生産されていたショールに描かれた伝統的な文様から生み出された。オリエンタルとイタリア文化が融合したようなデザインと色調を創り出し、イタリアから世界のファッション界へと存在感を放った。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (111, 'EYEFUNNY', 'eyefunny', NULL, 'Yoichi Jury Kawamura', '2004', 'Japan', 'ダイヤモンドジュエリーブランド。トップグレードのダイヤモンドを使用し、日本の職人技による卓越した技術による、ハイレベルなジュエリーを生み出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (112, 'F.C.Real Bristol', 'f_c_real_bristol', NULL, 'Hirofumi Kiyonaga', '1999', 'Japan', '\"日本のブランド「SOPH.」の中の\"\"ーワードから派生したブランド。架空のサッカーチームを取り巻く全ての人々をイメージしている。イイズリーは、インドのカ\"\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (113, 'FACETASM?', 'facetasm', NULL, 'Hiromichi Ochiai', '2007', 'Japan', 'ブランドコンセプトは「HUMOR OF POP(服に遊びを入れることを忘れずに）」。アイテムにはほぼオリジナルのテキスタイルを使用し、トレンドや人気にとらわれることなく、デザイナーの気に入ったテキスタイルを取り入れている。そんなテキスタイルにデザイナーの感性をプラスしたデザインが特徴。ブランド名は「facet(フランス語でダイヤモンドやジュエリーのカット面)」に由来し、「様々な顔」「様々な見え方」という意味であり、常にチャレンジして変わっていきたいという思いを込めている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (114, 'FACTOTUM', 'factotum', NULL, 'Koji Udo', '2004', 'Japan', 'デニムへの深い思いから、生地にこだわり、ディテールまで心配りのあるデザインで仕立てられている。モードとリアルクローズを融合した魅力的なデザインが特徴。デザイナーは毎回、テーマになる国や地域を訪れ、そこで出会った人や風景、空気からインスパイアされたコレクションを展開している。ブランド名は、ラテン語で「勝手に生きろ」という意味から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (115, 'FAD3', 'fad3', NULL, '-', '2002', 'Japan', '東京を拠点に、毎シーズン世界各地のアーティストやデザイナーが様々な専門分野の人々と完成させる、新しい形のコラボレーションブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (116, 'FAITH CONNEXION', 'faith_connexion', NULL, 'Ilam Delouis', '2004', 'France', 'フランス?パリのブランド。ストリートにルーツを持つ D.I.Y.なクリエイションによって、創設後わずか2年で世界中のセレブリティを魅了するまでに急成長を遂げた。2015秋冬コレクションから元BALMAINのデザインチームがFAITH CONNEXIONに移り、リブランディング。大胆でアーティスティックなデザインと、グラマラスな世界観が魅力。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (117, 'fear of god', 'fear_of_god', NULL, 'Jerry Lorenzo', '2012', 'USA', 'ファッションアイコンとしても名高いJerry Lorenzoが手掛ける、LA発のストリートブランド。ストリートを重点に、グランジ、ロック、モード、スポーツ等、様々な要素を融合し表現している。ブランド名に「GOD」と入っているように、日常にある神聖な存在や場所、景色から得たインスピレーションを大切にしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (118, 'FENDI', 'fendi', NULL, 'Adele Fendi and Edoardo Fendi', '1925', 'Italy', 'イタリアの革製品店としてスタートしたラグジュアリーブランド。メンズウェアのクリエイティブ?ディレクターは創業者の孫?Silvia Venturini Fendiが務め、伝統的な専門技術を現代的にアレンジし、モダンなアイテムを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (119, 'FilMelange?', 'filmelange', NULL, '-', '2007', 'Japan', '日本の職人が仕立てる「究極のカットソー」のブランド。原料である「わた」の選定から、糸?生地?縫製に至るまで、全て自社開発をしている。ブランド名は?混ざった色の(Melange)糸(Fil)?から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (120, 'Finders Keepers', 'finders_keepers', NULL, 'Kazuyuki Akitani', '2011', 'Japan', '東京発のブランド。東京コレクションや雑誌、ミュージシャンのスタイリストを経験したディレクター?秋谷和之が創立。90年代の東京で培ったスタイルをベースに、現代の東京にもフィットする「New american vintage style」を展開。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (121, 'FIRST ARROW\'s', 'first_arrows', NULL, 'Kazuya Ito', '1996', 'Japan', 'シルバーアクセサリーブランド。丹念に妥協なく、国内の工房で製作されている。ブランド名にある「Arrow(矢)」はより良い道を指し示し、幸運へ導かれるようにとの祈りが込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (122, 'FLASHPOINT', 'flashpoint', NULL, 'Alfred Albrizio Ⅲ', '1994', 'USA', 'NYのシルバーアクセサリーブランド。代表的なアイテムはスカルリング。ミュージシャンやハリウッドスターなどにファンが多い。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (123, 'foot the coacher', 'foot_the_coacher', NULL, 'Toshinosuke Takegahara', '2000', 'Japan', '日本のシューズブランド「AUTHENTIC SHOE &Co.」のカジュアルライン。1900年代前半に履かれていたワークシューズやデイリーシューズなどをデザインソースに、独自の理念で現代風にアレンジした「最上級のカジュアルシューズ」を展開している。創立者のToshinosuke Takegaharaは、大学時代に独学で靴製作を開始。1994年「竹ヶ原敏之介」名義でコレクションを発表。2000年にブランド名を「AUTHENTIC SHOE &Co.」へと変更し、「foot the coacher」もスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (124, 'FranCisT_MOR.K.S.', 'francist_mor_k_s', NULL, 'Hiroyuki Nakamura', '2003', 'Japan', 'アンダーグラウンドカルチャーとモードの融合をベースとしたブランド。コンセプトは「繊細さとタフさの融合　細部に拘りを持つ　音楽を愛する大人達の贅沢な日常着」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (125, 'FRANK LEDER?', 'frank_leder', NULL, 'Frank Leder', '1999', 'Germany', 'ドイツ発のデザイナーズブランド。ロンドンの芸術大学?Central Saint Martins卒業前にブランドを立ち上げた。ブランドコンセプトは「安定した商品の提供?色々な人の共感」。ドイツの歴史と文化を取り入れた独特のスタイルでありながら、馴染み深い仕上がりとなる。ドイツ国内の小規模な工場で生産を行い、ブランドの魅力を引き出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (126, 'FRAPBOIS', 'frapbois', NULL, 'Eri Utsugi', '2001', 'Japan', '遊び心のあるデザインのファッションブランド。コンセプトは「大人げない大人の服」。ダメージや洗いといった加工を施し、リラックスウェアを展開する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (127, 'FREECITY', 'freecity', NULL, 'Nina Garduno', '2001', 'USA', 'カリフォルニア発のブランド。元Ron Herman/Fred Segalのメンズバイヤーだった創業者?Nina Gardunoがスタートした。プリントや加工を施したTシャツやスウェット、パーカーなどのアイテムを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (128, 'FRESH.i.AM', 'fresh_i_am', NULL, 'Tunde Ogunnoiki', '2009', 'USA', 'アトランタ発のストリートブランド。オーバーサイズのトップスに、スキニーやボクサーショーツを合わせるたスタイルは世界中に影響を与え、ミュージシャンにも愛用されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (129, 'G.V.G.V.', 'gvgv', NULL, 'Mug', '1999', 'Japan', '東京を拠点とするファッションブランド。日本のセレクトショップ「k3」のプライベートブランドとしてスタート。ブランドのテーマはフェミニンとマスキュリンの同居する「女性の二面性」であるが、性別の枠を超えて愛される商品づくりを目指している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (130, 'GalaabenD', 'galaabend', NULL, 'Miki Okawara', '2004', 'Japan', '女性デザイナーの視点と感性で仕立てられたメンズウェアを中心とするブランド。ブランドコンセプトは「Dism & Tica」（Dandyism × Erotica）。クラシカルをベースに、モダンなディテールを追求。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (131, 'GANRYU', 'ganryu', NULL, 'Fumihito Ganryu', '2008', 'Japan', 'COMME des GARCONSからデビューしたブランド。ロック調でストリートの感覚を取り込んだコレクションを展開。2017年春夏シーズンで終了。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (132, 'Gareth Pugh', 'gareth_pugh', NULL, 'Gareth Pugh', '2006', 'UK', 'コレクションでは、大胆なデザインで度々話題となる。Alexander McQueen、Vivienne Westwood、John Gallianoらと並んで、「パフォーマンスアートとしてのファッション」の最新版と表現されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (133, 'GARNI', 'garni', NULL, 'Eiji Furuya', '1997', 'Japan', 'ジュエリー?アクセサリーブランド。創業当時から、手で作ることにこだわっている。コンセプトは「Diverse Conception(多様な発想)」。ブランド名は「GARNISH(料理の付け合せ、飾り)」という言葉から。「身にまとった人の洋服や個性までも引き立てる名脇役になってほしい」という願いが込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (134, 'GEMMA.H UOMO?', 'gemma_h_uomo?', NULL, '-', '2006', 'Italy', 'ニットブランド。全てイタリアで仕立てられている。スカルモチーフのインターシャニットは定番人気アイテム。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (135, 'Giacometti.', 'giacometti', NULL, 'Naruki Nagasawa', '2004', 'Japan', 'コンセプトは「Couture&Narrow」。古着のニュアンスを、現代のフォルムやテキスタイルに置き換えて新しいバランスへ落とし込む。着心地や細部に気を配った「新しい日常着」を提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (136, 'Giorgio Armani', 'giorgio_armani', NULL, 'Giorgio Armani', '1975', 'Italy', '質の高い素材と高度な技術によるシンプルでエレガントな作品を展開する、イタリアを代表するブランドのコレクションライン。シーズン毎にデザイナーのイメージがほぼ100パーセント表現された製品が発表され、完璧主義であるGiorgio Armaniの荘厳なスタンスを表現している。設立者であるGiorgio Armaniは、Gianni Versace、Gianfranco Ferréとともに「ミラノの3G」と呼ばれ、80年代後半のイタリアファッションに大きな影響を与えた。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (137, 'GIORGIO BRATO', 'giorgio_brato', NULL, 'Giorgio Braschi', '2001', 'Italy', '2003年、革職人の父親から家業を引き継いでブランドをスタート。シルクやリネンを思わせる柔らかな着心地の、着古したヴィンテージのようなスタイルを醸し出すコレクション。自然の植物から抽出したタンニンを使用するベジタブルタンニング（植物タンニンなめし）のテクニックで、独特なレザーの風合いを引き出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (138, 'giuliano Fujiwara', 'giuliano_fujiwara', NULL, 'Yoshiaki Fujiwara', '1986', 'Italy', 'ミラノと東京でコレクションを発表するブランド。イタリアのテーラリングをベースとした、シャープでミニマルなデザイン。イタリアのファッションに日本のアイデンティティーを融合させたクリエーションが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (139, 'Giuseppe Zanotti', 'giuseppe_zanotti', NULL, 'Giuseppe Zanotti', '1994', 'Italy', 'イタリアの伝統的な靴づくりの街、サンマウロ?パスコリで生まれ育ったデザイナーの設立したシューズブランド。買収した靴製造施設にて自身のデザインした靴の製造をスタート。ジュエリーやヒーツを製造する部門を新設、刺繍職人も雇い、より品質の高い靴作りを目指した。デザイン性が高く、洗練された個性的なシューズが揃う。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (140, 'Givenchy', 'givenchy', NULL, 'Hubert de Givenchy', '1952', 'France', 'ラグジュアリーブランド。創業者のHubert de Givenchyは「女性は身につけるものでエレガントになるのではなく、どのように身につけるかでエレガントになるのだは」と語っている。有名なミューズといえばAudrey Hepburnで、公私ともに長きにわたって交流が続いた。そんな可憐さと自立した女性像は、歴代デザイナーへも引き継がれた精神である。2017年、約12年間クリエイティブ?ディレクターを務めたRiccardo Tisciが退任。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (141, 'glamb', 'glamb', NULL, 'Kan Furuya', '2003', 'Japan', 'ストリートブランド。コンセプトは「grunge for luxury」。グランジスタイルをベースに、ワーク、フォークロア、トラッドなど、様々なスタイルを融合したエレガントなデザインが特徴。コラボレーションアイテムも話題となっている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (142, 'GOLDEN GOOSE DELUXE BRAND', 'golden_goose_deluxe_brand', NULL, 'Francesca Rinaldo and Alessandro Gallo', '2000', 'Italy', 'イタリア?ヴェネツィアのファッションブランド。イタリアのMTVでスタイリストして活躍していたFrancesca RinaldoとAlessandro Galloが設立。現代的で洗練されたデザインを、伝統的なイタリアのテーラリング技術によって、ヴェネツィアで仕立てられている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (143, 'Gosha Rubchinskiy', 'gosha_rubchinskiy', NULL, 'Gosha Rubchinskiy', '2008', 'Russia', '都会的なモチーフやキリル文字のグラフィックをちりばめた独創的なスポーツスタイル。2018年秋冬コレクションでブランド休止。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (144, 'GREAT FROG', 'great_frog', NULL, 'Paterson?Riley', '1972', 'UK', 'ロンドンのシルバーアクセサリーブランド。シルバーアクセサリーブランドとしては老舗で、多くのミュージシャンに愛用されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (145, 'green', 'green', NULL, 'Hideaki Yoshihara and Yukiko Ode', '1998', 'Japan', '「機能性と美」を追求し続け、人気を博したブランド。2009年春夏シーズンで活動を休止。デザイナーは2013年秋冬シーズンより新ブランドHYKEを立ち上げ、活動再開。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (146, 'Ground Y', 'ground_y', NULL, 'Yohji Yamamoto', '2014', 'Japan', 'Yohji Yamamotoが展開するユニセックスデザインのジェンダーレス、エイジレスブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (147, 'GUIDI', 'guidi', NULL, 'Guido Guidi and Giovanni Rosellini and Gino Ulivo', '1896', 'Italy', 'レザーブランド。レザーに対する情熱と伝統が存分に反映されたコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (148, 'GUSTAVOLINS', 'gustavolins', NULL, 'Gustavo Lins', '2003', 'France', 'フランスとのオートクチュール、プレタポルテブランド。現在は活動休止。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (149, 'HAIDER ACKERMANN', 'haider_ackermann', NULL, 'Haider Ackermann', '2002', 'Belgium', 'アントワープを拠点とするブランド。様々な国で過ごし、文化に触れたことから生まれたスタイル。エッジの効いたナローで美しいシルエット。レイヤリングや、流れるようなドレープを生み出すカッティング技術が特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (150, 'halluci', 'halluci', NULL, 'Hijiri Uchida', '2008', 'Japan', '「既成概念の破壊、再構築、削ぎ落とすといった作業を繰り返すことによって生まれる、モードとリアルクローズを融合させたスタイル」を提案。特に高品質ながら、デザイン性の高いスーツアイテムを得意とする。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (151, 'haraKIRI', 'harakiri', NULL, 'Takashi Yoshizaka', '2003', 'Japan', 'シルバーアクセサリーブランド。スカルや蛇をモチーフとする。数多くのブランドとコラボレーションしたアイテムも話題。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (152, 'Harris Brown?', 'harris_brown?', NULL, '-', '2011', 'Japan', '若手クリエイター集団によるブランド。モードとストリートをミックスさせ、現代デザインに対してのアイロニーを込めて表現。スタッズで装飾を施したシューズが人気。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (153, 'HELMUT LANG', 'helmut_lang', NULL, 'Helmut Lang', '1976', 'Austria', '創業者のHelmut Langは独学で服作りを学び、友人のために服作りを始めたところからブランドがスタート。「ミニマリズム」の先駆け的存在である。2005年、Helmut Langがクリエイティブディレクターを辞任。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (154, 'Hender Scheme', 'hender_scheme', NULL, 'Ryo Kashiwazaki', '2010', 'Japan', '日本のシューズブランド。プレミアムなレザーを使ったシューズや革小物なども展開している。人気スニーカーをオマージュし、ヌメ革で仕立てた「オマージュライン」が人気。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (155, 'HERM?S', 'hermes', NULL, 'Thierry Hermes', '1837', 'France', 'パリで高級馬具の工房としてスタートしたラグジュアリーブランド。馬具製作の技術をベースに鞄の製作?販売を開始するが、アメリカで乗用車の普及が始まったことから、馬具への需要縮小を予想し、事業を多角化。鞄や財布などの皮革製品から、腕時計、ウェア、スカーフ、フレグランス、ホームアイテムまで、幅広く手がけている。開発?生産から販売まで一貫して本社管理し、職人の技術によって高い商品価値とブランドイメージを確立した。厳選された高級素材や優れたデザイン性から、世界的に支持されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (156, 'HIRO', 'hiro', NULL, 'Hiroaki Sueyasu', '2004', 'UK', '日本人デザイナー?Hiroaki Sueyasuがロンドンで立ち上げたブランド。パンクやロックを感じさせる、独特の世界観を持ったデザインを展開。2014年ブランド終了。デザイナーは新レーベル「KIDILL」を設立。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (157, 'HIROMU TAKAHARA?', 'hiromu_takahara', NULL, 'Hiromu Takahara', '2001', 'Japan', '日本のブランド「Roen」の元デザイナー?Hiromu Takaharaが手掛ける、ハイエンドシューズブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (158, 'HOOD BY AIR', 'hood_by_air', NULL, 'Shayne Oliver and Leilah Weinraub', '2006', 'USA', 'ニューヨークを拠点とする、ラグジュアリーストリートウェアブランド。ミュージシャンをはじめとしたファッションアイコンたちが着用し話題となる。2017年活動休止。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (159, 'HOORSENBUHS', 'hoorsenbuhs', NULL, 'Robert G Keith', '2005', 'USA', 'カリフォルニアを拠点としたファインジュエリーブランド。シグネチャーである「トライ?リンク」のシンボルをベースとしたアイテムを中心に、ハンドクラフトのジュエリーを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (160, 'House of Holland', 'house_of_holland', NULL, 'Henry Holland', '2006', 'UK', 'ロンドンを拠点とし、エディター出身のデザイナーが創立したブランド。2006年、GARETH PUGHが同ブランドのランウェイでHollandのスローガンTシャツを着用していたことから話題となり、人気にに火が着いた。UKの多様な文化や好み、習慣に常に刺激を受け続け、デザインを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (161, 'HUMAN MADE', 'human_made', NULL, 'NIGO', '2010', 'Japan', '「A BATHING APE」の創業者NIGOが手がけるブランド。アメカジ?ヴィンテージをベースに、NIGOのフィルターでモダンに表現したコレクションが特徴。様々なメーカー、人物とコラボレーションしたアイテムも数多く展開している。中でもTシャツとスカジャンは代表的なアイテムとして知られている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (162, 'Chalayan', 'chalayan', NULL, 'Hussein Chalayan', '1995', 'UK', '地中海の島?キプロス出身のデザイナーによるブランド。Central Saint Martins卒業制作の「土中に埋められていた服」（鉄屑に覆われたシルクのドレスを数ヶ月間土の中に埋め、どのように腐敗していくかを研究したもの）が注目を浴び、後にデビュー。南北で分断されたキプロスの国境地帯で生まれ育った経緯は、作品に多大な影響を及ぼしている。創業時は「Hussein Chalayan」としてデビューしたが、2012年春夏コレクションよりブランド名を「Chalayan」と変更。興味は哲学ややテクノロジーの分野にも及び、ファッションという枠から大きく飛び出した実験的なコレクションを発表しつづけている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (163, 'HYDROGEN', 'hydrogen', NULL, 'Alberto Bresci', '2003', 'Italy', 'スポーツカジュアルブランド。かつてプロテニスプレーヤーを目指した創業者?Alberto Bresciが手がけるブランド。アイコンはスカルモチーフ。自動車メーカーやお菓子など、異業種のビッグブランドとのコラボレーションを展開することでも有名。ブランド名は水素（＝1歩先を行く燃料）という意味から。愛称は「H2J」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (164, 'HYKE', 'hyke', NULL, 'Hideaki Yoshihara and Yukiko Ode', '2013', 'Japan', '日本のブランド「green」のデザイナーが約3年間の休止期間を経てスタートさせたブランド。コンセプトは「HERITAGE AND REVOLUTION(服飾の歴史、遺産を自らの感性で独自に進化させる)」。シーズンテーマは設けず、既存のスタイルや古着から着想を得てデザインしている。ブランド名は、デザイナーの家族の名前の頭文字を合わせたものから。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (165, 'HYSTERIC GLAMOUR', 'hysteric_glamour', NULL, 'Nobuhiko Kitamura', '1984', 'Japan', 'アメリカンカジュアルをベースとし、1960?80年代のロックミュージックやアート、ポルノグラフィティ、マスプロダクツといったポップカルチャーの要素をプラスしたスタイルを展開。デビュー以来、トレンドに左右されることなく一貫したデザイン、コンセプトを持っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (166, 'IF SIX WAS NINE', 'if_six_was_nine', NULL, '-', '-', 'Japan', '日本の企業「MANIAC CORPORATION」が展開するメンズファッションブランド。ロックテイストのスタイルを得意とし、海外のミュージシャン?アーティストにも愛用されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (167, 'IRIDIUM', 'iridium', NULL, 'Platinum Williams', '2008', 'USA', 'シカゴ発のアンダーグラウンド?ライフスタイルブランド。アーティストをはじめとしたファッションアイコンにも愛用されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (168, 'ISABEL MARANT', 'isabel_marant', NULL, 'Isabel Marant', '1994', 'France', 'デザイナー?Isabel Marantがインドやアフリカ等を渡り歩いて得たインスピレーションから、オリエンタル、エスニックなデザインのリアルクローズを展開する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (169, 'ISSEY MIYAKE', 'issey_miyake', NULL, 'Issey Miyake', '1971', 'Japan', '日本のファッションブランド。「一枚の布」のコンセプトで革新的な衣服の概念を提案した。形状記憶のポリエステルジャージー素材を開発したことからスタートした「PLEATS PLEASE ISSEY MIYAKE」や、三角形を構造体とし、平面が立体となることで偶然に生まれる美しさと実用性を持ったバッグの「BAO BAO ISSEY MIYAKE」など、特徴的なブランドを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (170, 'IZREEL', 'izreel', NULL, 'Kazuhiro Takakura', '2003', 'Japan', '東京発のハイエンドスタイルを提案するブランド。ブランド名は「is Real」から。モノづくりにおける本質の追及を意味する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (171, 'J&M DAVIDSON', 'j_m_davidson', NULL, 'John Davidson and Monique Davidson', '1976', 'UK', 'バッグを中心としたブランド。レザーグッズから、ウェアも展開をしている。ベーシックなアイテムに最小限のモードなエッセンスを取り入れたデザインは「永遠のベーシック」とも称される。バッグのラインには「Lara」「Jane」「Mia」など、女優にちなんだ名前が付けられている。ブランド名は創業者夫婦のイニシャルであるJとMから。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (172, 'JAM HOME MADE', 'jam_home_made', NULL, 'Motonori Masui', '1998', 'Japan', 'アクセサリーブランド。コンセプトは「肌に最も近いプロダクト」。デザインの本質的な必要性（思いやり、笑顔）を提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (173, 'JAS M.B.', 'jas_mb', NULL, 'Jas Sehmbi', '2000', 'UK', 'バッグを中心として展開するブランド。機能的でシンプルなデザインのアイテムは、ロンドンにある工場で、職人によるハンドメイドで生産される。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (174, 'JEAN PAUL GAULTIER', 'jean_paul_gaultier', NULL, 'Jean Paul Gaultier', '1976', 'France', '創業者?Jean-Paul GAULTIERは独学でファッションを学び、Pierre Cardinに認められたことからキャリアがスタート。80年代はMadonnaの衣装を手がけるなど、アバンギャルドなボンデージファッションで注目される。2015年春夏コレクションを最後にプレタポルテから撤退し、香水とオートクチュール部門のみ展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (175, 'JEREMY SCOTT', 'jeremy_scott', NULL, 'Jeremy Scott', '1997', 'USA', '独創的でコミカル、エキセントリックなデザインのコレクションを展開する。大胆なプリントや色使いは数多くのミュージシャンやアーティストからも愛され、衣装提供も行っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (176, 'JIL SANDER', 'jil_sander', NULL, 'Jil Sander', '1968', 'Germany', '洗練されたミニマルなデザインが特徴のブランド。コンセプトは「Design Without Decoration(装飾なきデザイン)」。余計な装飾は加えず、素材やシルエットの美しさで、内面の美しさを引き出す。そのスタイルはしばしば「Queen of Less」とも呼ばれる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (177, 'JIMMY CHOO', 'jimmy_choo', NULL, 'Jimmy Choo and Tamara Mellon', '1996', 'UK', 'シューズを中心に展開する、ラグジュアリーアクセサリーブランド。官能的な感性と遊び心に満ちた、大胆なスピリット。ファッション性の高いデザイン、卓越したイタリアのクラフツマンシップで、世界中で愛用されるプロダクトを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (178, 'John Galliano', 'john_galliano', NULL, 'John Galliano', '1985', 'UK', '革新的でアヴァンギャルドなデザインに定評のあるブランド。独創的なあまり「売れない服」という烙印を押されたことや度重なる資金難など、厳しい状況を経験しながらも、クリエイティブは高い評価を受ける。創業者?John Gallianoは不祥事のため、2011年に解雇。ブランドの転換期を迎え、新たなコレクションの展開が期待される。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (179, 'JOHN LAWRENCE SULLIVAN', 'john_lawrence_sullivan', NULL, 'Arashi Yanagawa', '2003', 'Japan', 'テーラリングを追求したデザインが魅力のブランド。代表アイテムはロンドンで修行を積んだ正統派のブリティッシュテーラード仕立ての、美しいシルエットのテーラードジャケット。強さ、優雅さ、美しさを大切にしたアイテムを展開。創業者?デザイナーのArashi Yanagawaは元プロボクサーという異例の経歴を持つ。ブランド名は伝説のプロボクサーの名から。ボストンストロングボーイと呼ばれた彼の強さ、風格、威厳、全てをファッションで表現しようという想いが込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (180, 'John Richmond', 'john_richmond', NULL, 'John Richmond', '1982', 'UK', '音楽をはじめ、ストリートカルチャーにも根ざした、エネルギッシュでクリエイティビティと意外性にあふれたコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (182, 'jonnlynx', 'jonnlynx', NULL, 'Mariko Hayashi', '2008', 'Japan', 'サーファーでもあるデザイナー?Mariko Hayashiが手がけるブランド。コレクションテーマは設定せず、朝起きてから夜を過ごすまで、 生活に寄り添うようなベーシックなアイテムを中心に展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (183, 'JOYRICH', 'joyrich', NULL, 'Tom Hirota', '2007', 'USA', 'LAのセレクトショップ「JOYRICH」のオリジナルライン。コンセプトは「レトロ&フューチャー」。古き良き時代のファッションやスタイルからインスピレーションを受け、カラフルでポップなスタイリングを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (184, 'JULIUS', 'julius', NULL, 'Tatsuro Horikawa', '2001', 'Japan', '2001年にアートプロジェクトとして立ち上げる。服だけではなく、映像、グラフィック、音楽といった様々な表現方法を用いてブランドの世界観を表現している。黒と白を基調とし、レイヤードや独特のシルエット?素材の加工などで、世界的に多くのファンを獲得してきた。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (185, 'junhashimoto', 'junhashimoto', NULL, 'Jun Hashimoto', '2008', 'Japan', 'wjkを離脱し、40代を迎えるデザイナー自身を納得させる、大人のリアルクローズブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (186, 'JUNYA WATANABE COMME des GAR?ONS MAN', 'junya_watanabe_comme_des_garcons_man', NULL, 'Junya Watanabe', '1992', 'Japan', '2000年よりメンズライン展開をスタート。ツイードやデニム、チェック柄などを多く使用する事が特徴である。トラッドやストリートの要素など、メンズファッションにおけるリアルクローズを追求しながらも、独自のパターンメイキングでコレクションを展開。企業とのコラボレーションや既製アイテムのカスタマイズでも高い評価を得ている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (188, 'Justin Davis', 'justin_davis', NULL, 'Justin Davis', '2001', 'USA', 'LAを拠点とするシルバージュエリーブランド。NYのポップアート、ロンドンのパンクムーブメント、LAのゴージャスなカルチャーをミックス。アートとモードを融合した、ラグジュアリーで洗練されたクリエイションで、世界中で支持されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (189, 'JUUN.J', 'juun.j', NULL, 'Jung Wook Jun', '2007', 'Korea', 'モードを軸にストリートカルチャーをミックスしたスタイルを得意とする。ブランドコンセプトは「diversion of classic」クラシックアイテムを再解読?再創造し、今までにない新しいデザインを生み出す。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (190, 'JW Anderson', 'jw_anderson', NULL, 'Jonathan William Anderson', '2008', 'UK', 'ロンドンを拠点として展開するブランド。ジェンダーレスなムードが漂うデザインを中心としたコレクションを発表している。デザイナーは「男女間でシェアできる均一的な洋服をデザインすることを考えている」と語っている。2017年春夏シーズンよりブランド表記を「J.W.Anderson」から「JW Anderson」へと変更。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (191, 'KAPITAL', 'kapital', NULL, 'Kazuhiro Hirata', '1985', 'Japan', 'デニムを中心としたファッションブランド。デニムで世界的にも有名な岡山県倉敷市児島に本社を構えている。1本のジーンズをつくることから始まったが、現在ではデニムウエアを中心に、数多くのアイテムを生み出している。一部の製品を除いてはすべて自社工場でつくられており、製品の特徴である洗いや加工まですべて自社で行っている。工場では「Capital」、ブランド?店舗では「Kapital」とブランド表記を使い分けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (192, 'Karl Lagerfeld', 'karl_lagerfeld', NULL, 'Karl Lagerfeld', '1983', 'France', '創業者?デザイナーのKarl Lagerfeldが自身の名を冠したブランド。ウェアからアクセサリー、カジュアルからフォーマルなスタイルまで、トータルに取り揃えている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (193, 'Katie Eary', 'katie_eary', NULL, 'Katie Eary', '2008', 'UK', 'ロンドンを拠点として展開するブランド。カラフルで独創的なデザインを得意とする。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (194, 'KENZO', 'kenzo', NULL, 'Kenzo Takada', '1970', 'France', '日本人デザイナー?Kenzo Takadaがパリで創立したブランド。カラフルな花柄をはじめ、東洋と西洋を融合した独特の鮮やかな色使いが特徴。2011年にクリエイティブ?ディレクターに就任したOPENING CEREMONYの創立者?Humberto Leon and Carol Limが復活させたKENZOのロゴ入りアイテムは、爆発的な人気アイテムとなっている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (195, 'KIJIMA TAKAYUKI', 'kijima_takayuki', NULL, 'Takayuki Kijima and Michiko Kijima', '1995', 'Japan', '帽子専門ブランド。1995年にcoeur名義でブランドをスタート。2013年秋冬コレクションよりメンズラインのみ独立し、ブランド名を「KIJIMA TAKAYUKI」に変更。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (196, 'kiryuyrik?', 'kiryuyrik?', NULL, 'Masakatsu Takayanagi', '2002', 'Japan', 'パタンナー出身のデザイナーが展開するブランド。「機能美」をコンセプトとしており、素材に適した型紙や縫製等をおこない、表面的なかっこ良さだけではなく、 本来服として備わっていなくてはならない機能性を最も美しく昇華させる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (197, 'KMRii?', 'kmrii?', NULL, 'Lui Onozaki', '2000', 'Japan', 'インドネシア?バリ島を拠点とする、日本人デザイナーが手掛けるブランド。世界中を旅して得たアンティークや民族美術などのインスピレーションを基にコレクションを展開している。アイテムは厳選された素材からハンドメイドで生み出されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (198, 'KRISVANASSCHE', 'krisvanassche', NULL, 'Kris Van Assche', '2005', 'Belgium', '高いテーラリングの技術と、こだわり抜いた素材で、優雅で磨き上げられた数々の作品を生み出した。2007年からレディースコレクションをスタート。2015年春夏コレクションでブランド終了。（2015-16秋冬コレクションは発表したが、生産されていない。）\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (199, 'ksubi', 'ksubi', NULL, 'Dan Single and George Gorrow and Gareth Moody', '1999', 'Australia', 'オーストラリア発のファッションレーベル。デニムを中心としたユニセックスなウェアから、現在ではデニムにとどまらず幅広いウェアを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (200, 'KURO?', 'kuro?', NULL, 'Yatsuhashi Yusuke', '2010', 'Japan', 'デニムブランド。ブランドネームは日本語の?黒?を意味する。「黒」から受けたインスピレーションをデニムに注ぎ、 独創的なデザインの製品を生み出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (201, 'LABEL UNDER CONSTRUCTION', 'label_under_construction', NULL, 'Luca Laurini', '2003', 'Italy', '高品質なニットに定評のあるブランド。建築、アート、音楽、グラフィック、言葉に至るまで作品に落とし込み、ニットの可能性を追求している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (202, 'LANVIN', 'lanvin', NULL, 'Jeanne Lanvin', '1889', 'France', '婦人帽子店としてスタートした、フランスのブランド。ランバン?ブルーやアーモンド?グリーン、琥珀色など、絶妙な色彩を作り出してきた。特に透明感のある深いブルーは「ランバン?ブルー」と呼ばれブランドのシグネチャーである。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (203, 'LANVIN en Bleu', 'lanvin_en_bleu', NULL, '-', '2004', 'France', 'LANVINの日本ライセンスブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (204, 'LEATHERS AND TREASURES', 'leathers_and_treasures', NULL, 'Dennis?Pollicino', '1980', 'USA', 'シルバージュエリーブランド。普遍コンセプトは「GOD IS IN THE DETAILS(神は細部に宿る)」。レザーとシルバーのコンビネーションワーク、ユニークなギミックなど、新しい技術の開発を続け、シルバー界の先駆者としての地位を確立させた。2014年、創業者?Dennis?Pollicino逝去。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (205, 'LEMAIRE', 'lemaire', NULL, 'Christophe Lemaire', '1990', 'France', '2015年、ブランド名をChristophe LemaireからLemaireに変更。流行を追うより「一生永く着られる服」をコンセプトに掲げている。洋服のスタイルや上品さを大切にしたコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (206, 'Linda Farrow?', 'linda_farrow', NULL, 'Linda Farrow?', '1970', 'UK', 'アイウェアブランド。 アバンギャルドで特徴的なデザインによって人気を獲得。1983年にブランドを休止するが、2003年、創業者の息子?Simon Jablonが倉庫で70～80年代のヴィンテージサングラスを見つけ、ブランドを再スタート。有名ブランドとのコラボレーションアイテムを次々とリリースした。高品質な製品はトップレベルのアイウェア職人によって、全てハンドメイドで作り上げられている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (207, 'LITHIUM HOMME', 'lithium_homme', NULL, 'Takeshi Hiramatsu', '2005', 'Japan', '過剰な装飾をそぎ落とし、厳選された良質な素材を使用し、新しいカッティングやシルエットを追求したミニマルなデザインを展開。着る人のパーソナリティーを大切にすること、シンプルでエレガントなスタイルを提案している。バンドの衣装スタイリングや、ミュージシャンとのコラボレーションなども精力的に展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (208, 'LOEWE', 'loewe', NULL, 'Enrique LOEWE?Roessberg', '1846', 'Spain', '創立時は、上質な皮革製品を取り扱う工房としてスタート。ブランドとしての設立は1872年。上質な革と「L」の文字のモノグラムが特徴的。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (209, 'LONE ONES', 'lone_ones', NULL, 'Leonard Kamhout and Devon Wheeler', '1996', 'USA', 'シルバージュエリーブランド。クオリティの高さと独自の世界観が特徴。コレクションは、Mating Flight、Kiss&Flow、Basic Natureの3ライン。ブランド名は「LONE(孤独)」、「ONES(個人の集団)」から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (210, 'Loree Rodkin', 'loree_rodkin', NULL, 'Loree Rodkin', '1990', 'USA', 'ジュエリーブランド。ヨーロッパの旅先で出会ったゴシック様式をデザインソースとし、ドラマティックなジュエリーを展開している。大統領当選後の祝賀会でMichelle Obama元大統領夫人が身に着けたピースをデザインしたことでも知られ、その歴史的ともいえる作品は現在スミソニアン博物館に展示されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (211, 'LORINZA?', 'lorinza', NULL, 'Yusuke Inazuka and Akira Arie', '2003', 'Japan', 'バッグブランド。2005年にウェアラインも展開するが、ウェアラインは後に「CAMEL lorinza」として別ブランド化している。高い機能性と品質、洗練されたデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (212, 'Loro Piana', 'loro_piana', NULL, 'Pietro?Loro Piana', '1924', 'Italy', '最高級のテキスタイルとラグジュアリーグッズを製造する、トップテキスタイルブランド。ウェアとアクセサリーからなるコレクションはすべて卓越したクラフツマンシップで仕立てられるイタリア製。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (213, 'LOST & FOUND', 'lost_and_found', NULL, 'Ria Dunn and Alessandro Esteri', '2007', 'Italy', '緻密なクリエーションによるコレクションを展開するブランド。数多くの工程、テクニックにより創られるプロダクトは、純粋なアイデアをベースに希少な技術を持つ職人たちの手によってハンドメイドされている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (214, 'lot holon?', 'lot_holon?', NULL, '-', '2011', 'Japan', '日本のブランド「wjk」がプロデュースするブランド。デザイナーは非公表。シンプルなアイテムをベースに、アイロニカルなイメージをデザインとして反映。「テキスタイル」「カラー」「経年変化」など、様々なコントラストの対比。その時々のマインドに合わせたシルエットや素材感で時代感を表現する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (215, 'LOUIS VUITTON', 'louis_vuitton', NULL, 'Louis Vuitton', '1854', 'France', '世界最初の旅行鞄のアトリエを設立したことからスタート。バッグを中心に展開してきたが、1997年、Marc Jacobsをデザイナーとして迎えてプレタポルテへ参入。バッグブランドというイメージを刷新し、アパレルブランドとしての地位を押し上げた功績は高く評価されている。革新とスタイルを組み合わせた独自のデザインを、最高品質で提案。クリエイティブかつエレガントで実用的という、創業者?Louis Vuittonが生み出した「旅の真髄(こころ)」という遺産を継承し続けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (216, 'LOUNGE LIZARD', 'lounge_lizard', NULL, 'Manabu Yaegashi and Tatsuya Togo and Koji Udo', '1998', 'Japan', '着る人のパーソナリティを重視し、幅広くスタイリングできるアイテム展開は、幅広い世代に支持されている。テーラリングをベースとしたシャープなアイテムが揃う。テーラードジャケット、ワークウェア、ミリタリー、細身のボトムスなどのスタイルなどが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (217, 'lucien pellat-finet', 'lucien_pellat_finet', NULL, 'Lucien Pellat-Finet', '1986', 'France', 'ファッション業界で活躍していた創業者?Lucien Pellat-Finetがスタートした、カシミアを使用したコレクションで有名なブランド。1994年にカシミアニット10点で構成されたコレクション「Luxury street wear」を発表すると、King of Cashmereと呼ばれるほどの大きな反響となった。カシミアニット以外にもTシャツやパーカー、ブルゾンから雑貨まで幅広く展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (218, 'M', 'm', NULL, 'Ryoichi Mori', '2009', 'Japan', 'ストリートブランド。コンセプトは、日本人の感覚をフィットさせた「American style」。様々な世代、文化、地位を超えて提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (219, 'MAGICAL DESIGN', 'magical_design', NULL, 'Hideo Uchiyama', '1989', 'Japan', '東京を拠点としたシルバーアクセサリーブランド。1989年、「MAGICAL TATTOO」としてブランドスタート。スカルは「命には限りがあることの象徴」としてデザインに多く用いられる。また東洋?西洋の様々な文化や思想をデザインに反映しながらディテールの追求をし、プロダクトを生み出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (220, 'MAISON KITSUN?', 'maison_kitsune', NULL, 'Gildas Loaec and Masaya Kuroki', '2002', 'France', 'パリで音楽?ファッションなどを取り扱うレーベル「KITSUN?」を設立。2011年秋冬シーズンより、ファッションブランドと音楽レーベルの活動を分け、ブランド名も「MAISON KITSUN?」に変更。トリコロールやキツネモチーフなど、アイコニックなデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (221, 'MALO', 'malo', NULL, 'Alfredo Canessa and Giacomo Canessa', '1972', 'Italy', 'カシミアを中心とする、高級ニットブランド。内モンゴル高原のカシミア山羊から取られる上質なカシミアを使用し、上質な製品を生産している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (223, 'MARC JACOBS', 'marc_jacobs', NULL, 'Marc Jacobs', '1986', 'USA', 'アメリカンなエッジを効かせたデザイン。日々の生活に潜むラグジュアリーを提案している。2015年、レディースはブランドを「MARC JACOBS」へ統合し、幅広い価格帯のウエア、アクセサリーを販売する業態への移行をしている。2000年よりスタートしたメンズウェアは2017-18年秋冬シーズンを最後に終了。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (224, 'MARCELO BURLON COUNTY OF MILAN', 'marcelo_burlon_county_of_milan', NULL, 'Marcelo Burlon', '2012', 'Italy', 'ミラノを拠点として展開するブランド。イベントプロデューサー、クリエイティブディレクター、写真家、そしてDJとしてマルチな才能を発揮しているMarcelo Burlonが創業。2012年に発表したTシャツコレクションが話題となり、ラグジュアリーストリートを代表するブランドへと成長した。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (225, 'MARGARET HOWELL', 'margaret_howell', NULL, 'Margaret Howell', '1970', 'UK', 'シンプル＆ベーシックを基本に、洗練されたデザインの、着心地と機能性を追求したプロダクトを提供している。創業者?デザイナーのMargaret Howellは『英国の伝統やクオリティ、技術を、現在の世界で着る「服」に加えて作り上げることが喜び』と語っており、職人気質と、高い美意識が伺える。代表アイテムはシャツ。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (226, 'MARKAWARE?', 'markaware', NULL, 'Shunsuke Ishikawa', '2003', 'Japan', 'MADE IN JAPANのメンズウェアを展開しているブランド。美しいカッティングと余分な装飾を削ぎ落としたシンプルなデザインが人気を博している。デザインのベースは1960～70年代のサブカルチャー。コンセプトは、「real mans garment」。「MARKAWARE」は『大人のための洗練されたハイエンドガーメントを提案するライン』であり、同デザイナーが展開する「marka」は『より都会的なエッセンスを注入したカジュアルライン』である。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (227, 'MARNI', 'marni', NULL, 'Consuelo Castiglioni', '1994', 'Italy', '創業者?Consuelo Castiglioniが「自分で着たいものを自分の手で作りたい」という思いから、ファミリービジネスの一環として創立。個性的なシルエットや、構築的な模様に柔らかなカラーを乗せてまとめ上げるテクニックなど、ユニークなスタイルが特徴。2002年よりメンズコレクションを開始。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (228, 'mastermind JAPAN', 'mastermind_japan', NULL, 'Masaaki Homma', '1997', 'Japan', 'メンズウェアブランド。日本の伝統技術、高品質な素材を世界へ広めたいとの思いから、MADE IN JAPANにこだわっている。ブランドアイコンのスカルボーンには「LOVE & PEACE」の願いが込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (229, 'maxsix', 'maxsix', NULL, 'Mikio Suzuki', '-', 'Japan', 'アートとファッションを融合させたブランド。アーティスティックなプリントを施したTシャツなどを展開。服という枠に縛られず、作品を作り上げるような服作りを目指している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (230, 'MCM', 'mcm', NULL, '-', '1976', 'Germany', 'レザーアイテムを中心に展開するブランド。ドイツのミュンヘンにて設立され、2005年に拠点を韓国へ移す。ロゴの総柄レザーや、スタッズを施したアイテムが人気を博している。ブランド名は「Mode Creation Munich」の略。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (232, 'mercibeaucoup', '', NULL, 'mercibeaucoup', 'Eri Utsugi', '2006', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (233, 'MIHARAYASUHIRO', 'mihara_yasuhiro', NULL, 'Yasuhiro Mihara', '1996', 'Japan', 'シューズブランド「archi doom」としてスタート。1997年には「MIHARAYASUHIRO」として、コレクションブランドとしての展開がスタートした。深く踏込んだデザインワークを施したシューズはもちろんの事、遊び心のある服をテーマにクリエイションを続けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (234, 'MISTERGENTLEMAN', 'mistergentleman', NULL, 'Takeshi Osumi and Yuichi Yoshii', '2012', 'Japan', 'デザイナーが日常で好むベーシックスタイルを展開。新しいバランス感を持ったスタンダード「ポストモダンクロージング」と呼び、ベーシックを追求しながらディテール?シルエット?コーディネイトに少しの違和感を加える事で生まれるスタイルを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (235, 'MIU MIU', 'miu_miu', NULL, 'Miuccia Prada', '1993', 'Italy', 'PRADAよりも幅広い年齢層へ向けて、上質な素材使いと斬新でモダンなデザインを展開している。メンズコレクションは2008年に終了。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (236, 'MONCLER', 'moncler', NULL, 'Rene Ramillon and Andre Vincent', '1952', 'France', 'プレミアムダウンブランド。登山家のためにダウンウェアを開発していたが、1999年からファッション性の高い、洗練されたスタイルへとブランド改革をスタート。また、様々なブランドとのコラボレーションも展開。ブランド名は創業地?Monestier de Clermontの頭文字を組み合わせた造語。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (237, 'MOSCHINO', 'moschino', NULL, 'Francisco Moschino', '1983', 'Italy', 'ポップアートのような華やかな色使いとデザインが特徴。斬新なデザインも多く。イタリアブランドの中では独自のスタイルを貫いている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (238, 'MSGM', 'msgm', NULL, 'Massimo Giorgetti', '2009', 'Italy', 'デザイナー?Massimo Giorgettiは、コンサルティングとDJの仕事で世界中を旅しながらも、より大きな規模で自分のブランドを作りたいという思いからMSGMを設立。DJの経験から、インディーミュージックやコンテンポラリーアートからのインスピレーションをデザインに展開することも多い。パワフルな色彩のパターンを多用したコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (239, 'MUGLER', 'mugler', NULL, 'Thierry Mugler', '1973', 'France', '創業時のブランド名は「Thierry Mugler」。1990年代のコレクションはインパクトがあり、華やかでパワフル。当時のファッションをリードする存在であり、現在でもヴィンテージは人気が高い。2010年、クリエイティブ?ディレクターの変更とともに、ブランド名を「MUGLER」に改称。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (240, 'n(n) by number (n)ine', 'n_by_number_nine', NULL, '-', '1996', 'Japan', 'NUMBER (N)INEベーシックラインn(n)を復活させ、n(n) by number (n)ineとしてリスタート。新しいデザインのアイテムや過去のアイテムの復刻も行っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (241, 'N°21', 'numero_ventuno', NULL, 'Alessandro Dell\'Acqua', '2010', 'Italy', 'シャープで美しいテーラリング、センシュアルでフェミニンなカッティングが高く評価されている。スポーティでウェアラブルな魅力をプラスし、支持を得ている。2014年からメンズコレクションを発表。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (242, 'N4', 'n4', NULL, 'Koichi Watanabe', '2008', 'Japan', '京都発のメンズブランド。日本特有の文化に着目し、建造物や折り紙からインスピレーションを受けたクリエイションを展開。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (243, 'NASIR MAZHAR', 'nasir_mazhar', NULL, 'Nasir Mazhar', '2013', 'UK', 'ストリートファッションからインスパイアされたエッジの効いたデザインが特徴。ヘッドウェアのみを展開していたが、2013年からフルコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (244, 'NEEDLES', 'needles', NULL, 'Keizo Shimizu', '1998', 'Japan', '日本のセレクトショップ「NEPENTHES」の創立者であるKeizo Shimizuがデザインを手掛けるメンズブランド。メンズウェアについての豊富な知識に裏打ちされたディテールへのこだわり、そこに遊びや抜け感をプラスすることで独自の世界観を構築している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (245, 'NEIGHBORHOOD', 'neighborhood', NULL, 'Shinsuke Takizawa', '1994', 'Japan', '東京?原宿でスタートしたブランド。コンセプトは「モーターサイクル、ミリタリー、アウトドア、トラッド等の要素を独自の解釈で昇華したベーシックな服作り、またそのライフスタイルの提案」。ブランドや映画とのコラボレーション等、幅広く展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (246, 'Neil Barrett', 'neil_barrett', NULL, 'Neil Barrett', '1999', 'Italy', '伝統的なテーラリングとカッティングに、スポーティーな機能性をミックスしたデザイン。素材とディテールへのこだわり、研究にはただならぬものがあり、完成まで何十回と調整を加えて完成する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (247, 'Nicolas Andreas Taralis', 'nicolas_andreas_taralis', NULL, 'Nicolas Andreas Taralis', '2004', 'France', 'デザイナー?Nicolas Andreas TaralisはHedi Slimaneのアシスタントとして、Dior Hommeのアシスタントデザイナーとしてブランドの立ち上げから携わった人物。ブランド設立当初はその影響も伺えたが、数年たち、徐々に独自のスタイルを確立している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (248, 'Nigel Cabourn', 'nigel_cabourn', NULL, 'Nigel Cabourn', '1971', 'UK', '創業者?Nigel Cabournが学生時代に創業したブランド「CRIKET」からスタート。自身が収集したヴィンテージクロージングからコレクションを展開。トレンドに左右されることの無い、独自のクリエイションに反映されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (249, 'NO ID.', 'no_id', NULL, 'Yuji Sugeno', '1999', 'Japan', 'コンセプトは「COOL&SEXY」。オリジナリティーのある素材に拘り、完成されたシルエットで大人の色気を追求。既成概念に捉われることのないROCK感溢れるハイファッションな洋服は自分を持った大人たちのワンランク上のスタイル。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (250, 'nonnative', 'nonnative', NULL, 'Satoshi Saffen', '1999', 'Japan', 'ブランド名は「属さない、固有されない」という意味。「着ている服に捕らわれない生き方」をモットーとして、ディテールやロゴなどによるブランドの主張よりも、着心地やシルエット、風合いを優先させたアイテムを特徴としている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (251, 'NOZOMI ISHIGURO', 'nozomi_ishiguro', NULL, 'Nozomi Ishiguro', '1998', 'Japan', 'COMME des GAR?ONSでアシスタントデザイナーを務めていたNozomi Ishiguroが手掛けるブランド。複雑なパターンメイキングと素材使いで、独特の雰囲気を作り上げている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (252, 'OLD JOE', 'old_joe', NULL, 'Yusuke Takagi', '2007', 'Japan', '様々な年代や国籍のヴィンテージスタイルからのインスピレーション。年月が経つに連れ、より美しく成熟していくタイムレスなプロダクトを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (253, 'Pablo', 'pablo', NULL, 'Kanye West and Cali Thornhill DeWitt', '2016', 'USA', 'Kanye Westが2016年にリリースしたアルバム『The Life Of Pablo』をテーマに、マルチビジュアルアーティストであるCali Thornhill DeWittとコラボレーションして作られたブランド。基本的に一般発売はされておらず、限定的なポップアップストアやツアー等での販売に限られているため、入手が困難である。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (254, 'PATRICK STEPHAN?', 'patrick_stephan', NULL, 'Patrick Stephan', '1984', 'France', 'パリに活動の場を持つPatrick Stephanによる日本発のデザイナーズブランド。プロダクトは日本の職人により制作されている。繊細な手仕事のディテール、シルエットやボリュームを細部まで追求したクリエーションをしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (255, 'PATRIZIA PEPE', 'patrizia_pepe', NULL, 'Patrizia Bambi and Claudio Orrea', '1993', 'Italy', 'フィレンツェ発のリアルクローズ＆アクセシブルラグジュアリーブランド。Patriziaの理想の男性と女性を表現したデザインは、上質な素材を使用し、さり気なく洗練されたシルエットが特徴。2005年からメンズウェアをスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (256, 'PAUL & JOE', 'paul_and_joe', NULL, 'Sophie Mechaly', '1995', 'France', '創業者?Sophie Mechalyが自分の息子2人の名前を冠したメンズブランドを作ったことが始まり。現在はウィメンズウェアを中心にコスメ、アクセサリー等も展開している。コンセプトは「ACCESSIBLE LUXURY(手に届く贅沢さ)」。古き良き時代のレトロで温かみのあるディテールを現代風に仕上げているのが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (257, 'Paul Harnden', 'paul_harnden', NULL, 'Paul Harnden', '1987', 'UK', 'ハンドメイドのシューズブランドからスタートし、現在はメンズ?レディースウェアも展開。職人気質のPaul Harndenが手掛けるプロダクトは完全ハンドメイド。そのため生産が非常に限定的で、世界中のわずかなブティックにのみ供給されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (258, 'PHENOMENON?', 'phenomenon', NULL, 'Takeshi Osumi', '2004', 'Japan', '東京を拠点とするブランド。ブランドコンセプトは「音楽」。ダンスミュージックを軸に、さまざまな音楽にインスピレーションを受け、コレクションを展開している。2010年には東京コレクションデビュー。ストリートウェアとしてのコレクション参加は当時珍しく、日本国内でラグジュアリー?ストリートウェアと呼ばれるジャンルでの先駆け的な存在となった。2016年3月、創業者?デザイナーであるTakeshi Osumiが退任。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (259, 'PHILIPP PLEIN?', 'philipp_plein', NULL, 'Philipp Plein', '1998', 'Germany', 'フィロソフィーに「UNIQUE、PASSIONATE、EXCLUSIVE(ユニーク、情熱的、究極的)」を掲げ、トレンドを牽引するような、洗練された特別なスタイルを提案。ブランドアイコンはスカルモチーフで、ロックスタイルをスタイリッシュに展開したデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (260, 'PIERRE HARDY', 'pierre_hardy', NULL, 'Pierre Hardy', '1999', 'France', 'メゾンでのシューズデザインを経験したPierre Hardyが手掛けるシューズブランド。現在はバッグやアクセサリーも展開している。メンズコレクションでは、ラグジュアリーでベーシックなデザインから前衛的なデザインまで、幅広く展開する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (261, 'PLAY COMME des GARCONS', 'play_comme_des_garcons', NULL, 'Rei Kawakubo', '2003', 'Japan', 'NYのグラフィックデザイナー?Filip Pagowskのデザインによるアイコニックな目の付いたハートマークが特徴の「COMME des GAR?ONS」のブランド。一般的には「COMME des GAR?ONS唯一のキャラクターブランド」と認識されている。ベーシックでシンプルなアイテムにワンポイントを施したアイテムが数多く展開されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (262, 'PLEATS PLEASE ISSEY MIYAKE', 'pleats_please_issey_miyake', NULL, 'Issey Miyake', '1993', 'Japan', '日本のブランド「ISSEY MIYAKE」が展開するブランド。形状記憶のポリエステルジャージー素材を開発したことからスタートした。軽くてしわにならない、水洗いができる、コンパクトに収納ができる、着心地が良い、そして美しい、という全てを兼ね備えたプロダクトとしての衣服。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (263, 'Pledge?', 'pledge', NULL, 'Masaya Takada and Hidenori Miura', '2002', 'Japan', '幅広い世代に着てもらうため、シンプルでタウンユースなリアルクローズを作りたいという想いからブランド設立。ブランド名はFriedrich Dürrenmattの小説「Pledge」から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (264, 'Poème Bohémien', 'poeme_bohemien', NULL, 'Nicolo Ceschi Berrini', '2005', 'France', '2005年、前身となるブランド「Nicolo Ceschi Berrini」をスタート。芸術、歴史、文学を愛し、Nicolo Ceschi Berriniらしいデザインは「Free＆Chic(稀代のシック)」と呼ばれる。2010年、ブランド名を「Poème Bohémien」へ変更。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (266, 'PT01', 'pt01', NULL, 'Mario Stefano Maran', '2008', 'Italy', 'イタリアのトリノで「メンズクロージングにおいて最も重要なアイテムはパンツ」というコンセプトのもと、パンツ専業メーカーとして誕生。核となるシリーズの「PT01」は、それまでクラシック一辺倒だったドレスパンツの世界に、幅広いデザインソースから取り入れた多彩なバリエーションを揃えたライン。PTのブランドネームは「PANTALONI TORINO(トリノのパンツ)」に由来し、創業地のトリノへのトリビュートを表し、01にはNo.1を目指すという強い意志が込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (267, 'PUBLIC IMAGE', 'pablic_image', NULL, 'Ryujiro Tamaki', '2005', 'Japan', 'ストリートカルチャーからインスパイアされてクリエーションを開始。ブランド名は「環境やシチュエーションの中にいる自分を視覚的な画像として捉える事で、背景の中に存在する服」という概念から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (268, 'PUERTA DEL SOL?', 'puerta_del_sol', NULL, 'Tomoyasu Hirano', '1995', 'Japan', 'ジュエリーブランド。ブランドコンセプトは「ROCK&LUXURY」。「ROCK」は、音楽性やファッションだけでなく、やりたい事を貫く精神やスタイルを示し、「LUXURY」は、その精神やスタイルこそが本当の贅沢である、という考えから。ブランドや有名人とのコラボレーションも精力的に行っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (269, 'PYREX VISION', 'pyrex_vision', NULL, 'Virgil Abloh', '2012', 'USA', 'Kanye Westの手掛けるビデオプロジェクト「PYREX VISION」から派生したブランド。この成功が後にVirgil Ablohが2014年に発表したブランド「OFF-WHITE」の原型となる。1シーズンのみの展開となり、入手が困難なブランドでもある。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (270, 'RADIALL?', 'radiall', NULL, 'TAKATZO and TADISM', '2002', 'Japan', '影響を受けたカルチャーを独自の解釈でクリエーションに展開したアイテム。シンプルな中にもこだわりが落とし込まれている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (271, 'RAF SIMONS', 'raf_simons', NULL, 'Raf Simons', '1995', 'Belgium', '創業者?デザイナーのRaf Simonsはインダストリアルデザインを学び、インテリアデザイナーとして活躍後、独学でファッションを学んだ異色の経歴の持ち主。クラシックなテーラードスタイルと、それとは相反するようなユースカルチャーの反抗的なエネルギー?音楽?アンダーグラウンドファッションからインスピレーションを受け、芸術的で先進的なコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (272, 'rag&bone', 'rag_and_bone', NULL, 'Marcus Wainwright and David Neville', '2002', 'USA', 'ニューヨークを拠点とするブランド。創業者は「自分たちの周りの人々が毎日着たくなるような服を作ろう」という想いからブランドを設立。アメリカ製のデニムを軸としてメンズコレクションをスタートし、2005年からウィメンズラインを開始。トレンドに左右されない、タイムレスなスタイルを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (273, 'REMI RELIEF', 'remi_relief', NULL, 'Yutaka Goto', '2007', 'Japan', 'メンズファッションブランド。「HIGH QUALITY OF LIFE」をコンセプトに、量ではなく質を重視し、素材から加工まで全ての工程にこだわりながら、無駄を削ぎ落とした究極のアメリカンベーシックを追求している。ブランド名は「REMIX(ミキシングし直す＝工夫)」と「RELIEF(取り除く＝作業)」という意味から。「ひとつひとつの工程に工夫を付け加えながら、余分なものは取り除く結果「いいもの」が生まれる」というMeister Eckhartの思想をベースとしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (274, 'Rick Owens', 'rick_owens', NULL, 'Rick Owens', '1997', 'USA', 'ストリートスタイルとゴシック的な要素を組み合わせたようなデザインと、ヴィンテージ加工を施した独特な素材を使用した独特のスタイルが話題となった。多くの色を使用しないミニマルな色調は、ドレープの美しさを引き立てる。ドレープなどのディテールは敬愛するMadeleine VionnetやMadame GR?Sのスタイルに影響を受けている。身体のラインにフィットするレザーや、スニーカーが人気アイテム。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (275, 'RIPVANWINKLE', 'ripvanwinkle', NULL, 'Naoki Shiratani and Masao Ono', '1997', 'Japan', '自らのブランドを「変革」ではなく「進化」を求めるブランドだと説明している。素材を吟味し、カッティングにこだわり、優れたクラフトマンシップによって本物だけを創り続けることで、常にクオリティアップを図り続けてきた。ブランド設立20周年となる2017-18年秋冬シーズンよりブランド表記を小文字から大文字へ変更。それまで培ってきた技術を進化させ続け、現代の都市生活者が必要とするワードローブを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (276, 'roarguns', 'roarguns', NULL, 'Saburo Hamanaka', '2001', 'Japan', '通称:PEACE MAKERと呼ばれる銃身の長いピストルをクロスさせた「クロスガン」がブランドアイコン。2018年秋冬シーズンよりブランド名「roar」から、国際商標である「roarguns」に統一。日本のテクニックや良質な生地を世界へ発信している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (277, 'Robert Geller', 'robert_geller', NULL, 'Robert Geller', '2006', 'USA', 'ドイツ?ハンブルク出身のデザイナーRobert Gellerが創業したブランド。原点であるヨーロッパ的な感覚と、NYのストリートの感覚をバランスよくミックスし、デイリーに使えるハイファッションを提供している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (278, 'roberto cavalli', 'roberto_cavalli', NULL, 'Roberto Cavalli', '1970', 'Italy', '革新的なプリントの技術が高く評価されてきた。アニマルプリントや刺繍を施したアイテムがシグニチャーアイテム。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (279, 'Roen', 'roen', NULL, 'Hiromu Takahara', '2001', 'Japan', 'ブランド名は「狼煙(のろし)」を音読みにしたもの。ブランドコンセプトは「流行のものにとらわれる事なく自分達の感じる「今」にこだわる」。ブランドアイコンのスカルモチーフを中心に、ダークでアバンギャルドなスタイル。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (280, 'ROLEX', 'rolex', NULL, 'Hans Wilsdorf', '1905', 'UK', '現在はスイスを拠点とする、ロンドンで誕生した世界的に人気を誇る時計ブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (281, 'ROYAL ORDER', 'royal_order', NULL, 'Cheryl Rixion Davis', '1996', 'USA', 'ジュエリーブランド。設立以来、掲げてきたテーマは「ロックンロールとファッションの融合」。独創的でグラマラスなデザインが魅力。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (282, 'Salvatore Ferragamo', 'salvatore_ferragamo', NULL, 'Salvatore Ferragamo', '1927', 'Italy', 'シューズブランド。解剖学に基づいた快適さと斬新な美しさをもつ作品で高い評価を得る。創業者?Salvatore Ferragamoの死後もブランドは妻や子供に引き継がれ、世界でも有数のトータルファッションブランドとなっている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (283, 'Sasquatchfabrix.', 'sasquatchfabrix', NULL, 'Daisuke Yokoyama and Katsuki Araki', '2003', 'Japan', 'コンセプトは「HIGH PERFORMANCE VANDALISM. ALWAYS PRESENTING A SENSE OF FRESHNESS.」。前衛的で遊び心のある洋服作りをモットーにしている。グラフィックをメインに、国内外でのインスタレーションやアート展など、活動は多岐に渡る。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (284, 'SASSAFRAS', 'sassafras', NULL, 'Takashi Takagi', '2004', 'Japan', 'STEVE GOSSARD（1948年、カリフォルニア州フリーモント生まれ）という架空の人物を設定。その人物を背景としたストーリーから生み出される、新しい概念のガーデニングウェア。「ガーデニングに欠かせない道具。そして、日々の生活で欠かせない日常着。」\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (285, 'Scye', 'scye', NULL, 'Hisayo Hidaka and Hideaki Miyahara', '2000', 'Japan', '英国式のテーラリングをクリエーションのベースとし、クラッシックとモダン融合した新しいスタイルを提案している。ブランド名のScyeはテーラー用語で袖ぐりを表す用語から来ているが、ポロシャツの胸などには動物のサイをモチーフとして使用している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (286, 'SHARE SPIRIT', 'share_spirit', NULL, 'Hikaru Katano', '2000', 'Japan', '創業者?デザイナーのHikaru Katanoが旅を通してインスピレーションを受けたものからコレクションを展開。ヴィンテージ感のあるコレクションは、細かく作り込まれたディテールが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (287, 'SHAUN SAMSON', 'shaun_samson', NULL, 'Shaun Samson', '2011', 'UK', 'ロンドンを拠点とするメンズウェアブランド。シンプルなカッティングが、斬新なテキスタイルやユニークな異素材使いを引き立てる。独自の感性からなるモダンストリートウェアは、ファッション関係者からも高い評価を得る。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (288, 'SHELLAC', 'shellac', NULL, 'Hideshi Maruya', '2000', 'Japan', 'レザーを得意とするメンズウェアブランド。素材には様々な加工を施し、独自の世界観を表現する。ブランド名は「打ちのめす、ぶち壊す」という意味をもつスラングから。「ありふれた常識を壊す「男」の本質と美学を追求し、骨っぽさとその裏側にある色っぽさの共存」をコンセプトとする。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (289, 'Shinya yamaguchi', 'shinya_yamaguchi', NULL, 'Shinya Yamaguchi', '2009', 'Japan', '2009年、「Long Tall “Sally”」と名付けたメンズハイヒールスニーカーを発表したことで、各メディアに取り上げられる。これによって、東京の新世代クリエイターとして注目されるきっかけとなる。ブランドコンセプトは「STREET COUTURE」。2012秋冬シーズンより、ウェアや小物を含めたトータルコレクションの展開をスタート。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (290, 'Sise', 'sise', NULL, 'Seishin Matsui and Takatoshi Hirokawa', '2007', 'Japan', 'メンズファッションブランド。コンセプトは『innocent』 ×『insanity』。マニッシュとフェミニンの融合から生まれるモード。 身体のラインを美しくみせるカッティングを特徴としている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (291, 'sisii', 'sisii', NULL, 'Takashi Koike', '2000', 'Japan', '神戸を拠点として、レザーアイテムを得意とするブランド。コンセプトは「Leaving the new standard」。洗練されたデザインと選びぬかれた素材、普遍性と自由さを備えたコレクションで新たなスタンダードを表現している。得意とするレザーに関しては国内の自社工場で職人が鞣し、ラフな雰囲気ながらエレガントな質感に仕上がる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (292, 'SLOWGUN?', 'slowgun?', NULL, 'Manabu Kobayashi and Yukiko Kobayashi', '1998', 'Japan', 'ブランドコンセプトは「なつかしくて新しい服」。1960～70年代の映画や音楽からインスピレーションを受けた「次の最新」を時代の気分や過去のエッセンスから抽出し、デザインからウェア製造までのアプローチを行っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (293, 'soe', 'soe', NULL, 'Soichiro Ito', '2001', 'Japan', '東京を拠点とするブランド。ストリートとモードの間、洗練されたデザインを提供している。ブランド名には創意（創り出す意識）と、装意（装う意識）という意味が込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (294, 'SOPHNET.', 'sophnet?', NULL, 'Hirofumi Kiyonaga', '1998', 'Japan', '「ファッションに機能性を取り込むことが、都市生活者の快適なリアルクローズである」という理念を提唱し、高い機能性をカジュアルな日常着に展開したコレクションを発表。現在のメンズファッションには欠かせない、ストリート、アウトドア、トラディショナルなどの要素をトータルで併せ持つブランドへ進化している。2002年にブランド名を『SOPH.』から『SOPHNET.』へ変更。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (295, 'Stampd\'LA?', 'stampdla?', NULL, 'Chris Stampd', '2011', 'USA', 'LAのカルチャーからインスピレーションを受けコレクションを展開。従来のストリートファッションを超え、現代的でラグジュアリーなストリートファッションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (296, 'sulvam', 'sulvam', NULL, 'Teppei Fujita', '2013', 'Japan', 'Yohji Yamamoto出身のデザイナーが立ち上げたブランド。服作りの基本を外さない確固たるストラクチャーと、基本を熟知しているからこその柔軟な発想が同居するモードスタイルを発信している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (297, 'STARLINGEAR', 'starlingear', NULL, 'Ryk Maverick', '2000', 'USA', 'シルバーアクセサリーブランド。LAを拠点にアーティストとして活躍していた創業者?Ryk Maverickの独特の世界観から生み出されるアイテムはまさに「身につけるアート」である。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (298, 'STELLA McCARTNEY', 'stella_mccartney', NULL, 'Stella McCartney', '2001', 'UK', '2017年春夏コレクションからメンズウェアの展開をスタート。Stella McCartneyらしいサヴィル?ロウ仕込みのシャープなテーラリングとクリーンなデザインをベースにアレンジを効かせ、意外性を持たせている。エシカルファッションの精神は、メンズウェアにも反映されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (299, 'STEPHAN SCHNEIDER', 'stephan_schneider', NULL, 'Stephan Schneider', '1994', 'Belgium', 'アントワープを拠点とするブランド。1994年、アントワープ王美術アカデミーを主席で卒業。「ユーモアなきファッションはすなわち死」という哲学を持ち、クリエーションをしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (300, 'STOP LIGHT', 'stop_light', NULL, 'Takashi Takayama', '1999', 'Japan', '日本のシルバーアクセサリーブランド。ストップライトにモチーフとして使われる一つ目のスカルには、「的を絞って生きろ」というメッセージが込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (301, 'ST?SSY', 'stussy', NULL, 'Shawn Stussy', '1980', 'USA', 'Shawn Stussyが、彼の仲間のためにデザインした数枚のＴシャツから始まったアパレルブランド。当初はレゲエミュージシャンやスケーター、ヒップホップミュージシャンやDJが好んだサーフブランドであったが、時が経つと共に有名なストリートブランドへと成長した。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (302, 'superfine', 'superfine', NULL, 'Lucy Pinter and Flora Evans', '2003', 'UK', '着用時にエフォートレスに見えながらも、毎日着たくなるような着心地の良さを兼ね備えたコレクションと、ロックでロンドン?パンクなアティチュードを追求するデニムブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (304, 'TADY&KING?', 'tady_and_king', NULL, 'Taneaki Tajiri', '1987', 'Japan', 'Goro Takahashiの技術を正統継承したTaneaki TajiriがKINGS KNIGHTの創始者でもあるKINGと立ち上げたブランド。デザイナーの生き様や物作りにかける熱い情熱、スピリットを造形物として表現している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (305, 'TAKAHIROMIYASHITATheSoloist.', 'takahiromiyashita_thesoloist', NULL, 'Takahiro Miyashita', '2010', 'Japan', '元NUMBER (N)INEのデザイナーであるTakahiro Miyashitaが手がけるブランド。常に開放感や昼下がりをイメージし、素材の特徴を生かすことで、プライベートでリラックスした服をとことん作りこんでいる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (306, 'TALKING ABOUT THE ABSTRACTION', 'talking_about_the_abstraction', NULL, 'Naoki Ichihara', '2001', 'Japan', 'ブランドコンセプトは「新しいかたちのカジュアルウエア」。古いもの、近代のもの、すべてに同等の価値があるとして、カジュアルだが、それに様々な要素を加えることで、カテゴリーに囚われない新しいカジュアルウエアを作り上げている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (307, 'TATRAS', 'tatras', NULL, 'Masanaka Sakao', '2006', 'Italy', 'イタリアのデザインチーム、フリーランスで活躍するメンバー等によって制作をされている。軽くて暖かいというアウターとしての十分な機能を果たしながらも、美しいシルエットを実現し、カジュアルとエレガンスが共存する大人のスタイルを創り出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (308, 'TENDERLOIN', 'tenderloin', NULL, 'Kei Henmi and Toru Nishimura', '1997', 'USA', '海外在住の5人の日本人クリエイターにより、1997年にLAで歴史をスタートしたファッションブランド。「各地のストリートカルチャーを自ら体験し、その魂を服に込める」といったスタンスは設立当初から全く揺らがないコンセプト。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (309, 'THE BINGO BROTHERS', 'the_bingo_brothers', NULL, '-', '1979', 'Japan', 'インディアンジュエリーの老舗ブランド。一点一点をハンドメイドで手掛ける作品はどれも上質で、デザイン性に富んでいる。芸能人にも数多くの愛用者がいることで有名。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (310, 'THE RERACS', 'the_reracs', NULL, 'Naomi Kurahashi', '2010', 'Japan', '決して奇抜なデザインをすることなく、クオリティと実用性に裏付けされたものづくりを続け、「Made in Japan」の新しいトラディショナルウェアを提案し、それを残し続けていっている。素材へのこだわりが強く、集めてきた1万以上あるスワッチから、300、100、50、30と絞り込む作業を4回くらい繰り返して選んでいる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (311, 'The Viridi-anne', 'the_viridi_anne', NULL, 'Tomoaki Okaniwa', '2001', 'Japan', 'デザイナー自身が本当に着たいものを作りたいという思いから立ち上げたメンズファッションブランド。黒を基調とした洗練されたデザイン、経年変化を意識した素材が特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (312, 'theSakaki', 'thesakaki', NULL, 'Kotaro Sakaki', '2012', 'Japan', 'テーラーリングの基本を抑えながらサイズ感や素材や「和」を感じさせる繊細なディティールで遊び心を加えたアイテムや独自の美学を感じるスタイルを提案しているドメスティックブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (313, 'THOM BROWNE', 'thom_browne', NULL, 'Thom Browne', '2001', 'USA', '元俳優のThom Browneが設立をしたブランド。アメリカン?トラディショナルスタイルをモダンに、そして時にアヴァンギャルドに昇華させている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (315, 'THOMAS WYLDE', 'thomas_wylde', NULL, 'Paula Thomas', '2006', 'USA', '英国のルーツに敬意を払い、エッジの効いたエレガントなロックテイスト、洗練された独特のフェミニンシックなスタイルを発信。革新的なファブリックとスネークやスカルなどの象徴的なプリントを使用し、大胆なイメージを生み出す。タイムレスでいつまでも美しいと感じられる服作りで、短期間のうちに世界中で人気のブランドとなる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (316, 'Tiffany&Co.', 'tiffany_and_co', NULL, 'Charles Lewis Tiffany and John B. Young', '1837', 'USA', 'アメリカを代表するプレミア?ジュエラー。世界五大ジュエラーのひとつで、アメリカの公式なプラチナ基準ブランドとしても知られている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (317, 'TMT', 'tmt', NULL, '-', '-', 'Japan', '1970～80年代の古き良き時代のアメリカのサブカルチャーを独自の観点から取り入れたデザインが特徴。カラフルで遊び心のあるデザインや、型?サイズなどに、そのテイストを感じることができる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (318, 'Tom Ford', 'tom_ford', NULL, 'Tom Ford and Domenico De Sole', '2005', 'USA', 'ブランドコンセプトである「力強く、タフで、しかもセクシーであるべき」という言葉のまま、セクシーで魅力のある商品が多い。奇抜なデザインよりも素材や裁縫にこだわり、仕立てているのが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (319, 'TRAVIS WALKER', 'travis_walker', NULL, 'Travis Walker', '1997', 'USA', '手作業の職人仕事で作られるTRAVIS WALKERのアイテムは、スカルなどをモチーフとしていることが特徴。Eric Claptonの1998年発売のアルバム「Pilgrim」でEric ClaptonがTRAVIS WALKERのスカルリングを着用していたことで注目を集める。現在でも生まれ故郷であるMalibuにアトリエを構え、少数であるが作品を作り続けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (320, 'TRUSSARDI', 'trussardi', NULL, 'Dante Trussardi', '1911', 'Italy', 'イタリアを拠点に展開するレザーグッズを中心とした名門ブランド。創業当時からイギリス王室御用達の栄誉を受けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (321, 'Ugo Cacciatori', 'ugo_cacciatori', NULL, 'Ugo Cacciatori', '1998', 'Italy', 'イタリアの由緒ある家系に生まれたデザイナーと、イタリアの職人技が生み出すジュエリーコレクション。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (322, 'aku', 'aku', NULL, 'Eri Hirayama', '2010', 'Japan', 'ブランド名は「独特のしつこさや粘っこさがあって、なじみにくい個性」を意味している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (323, 'Umit Benan', 'umit_benan', NULL, 'Umit Benan', '2009', 'Italy', 'トルコ人デザイナーとしてのアイデンティティや多様な経験による独自のバランス感覚によって、新しさを感じるコレクションを展開。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (324, 'UNDECORATED', 'undecorated', NULL, 'Yoshio Kubo', '2008', 'Japan', '服作りの基盤となる素材のあり方から考え、 素材のためのデザインとして構築されたワードローブを展開する。日常で不可欠なアイテムを定番的に展開する「WHITE LABEL」と、シーズンごとに素材やディテールに着目し展開する「BLACK LABEL」から構成されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (325, 'uniform experiment?', 'uniform_experiment?', NULL, 'Hiroshi Fujiwara and Hirofumi Kiyonaga', '2008', 'Japan', '遊び心を忘れないお洒落な大人たちのリアルクローズを提案するブランド。既存のルールにとらわれない自由な発想でシーズンキーワードを設定し、さまざまなグラフィック、カラーリング、マテリアルを取り入れながら、新規性と継続性が共存するプロダクトを展開しています。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (326, 'upper hights', 'upper_hights', NULL, '-', '2014', 'Japan', '\"デニムを中心としたブランド。日々生活をする中で心を豊かにしてくれるのは、知識、教養、家族、食などのほか、「着る」こともそのひとつであると考え、着ることで、自らの佇まいまでも意識し直してみたくなる、そんな美的ポリシーを持つ人たちと、その瞬間を一緒に感じる事ができるブランド。', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (327, 'Vadel', 'vadel', NULL, 'Makoto Nishitani', '2013', 'Japan', '着用時にこだわった「究極のカジュアルウエア」を目指しているブランド。ブランド名は、アラビア語のバデル（満月）の発音を記号化した造語。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (328, 'VALENTINO', 'valentino', NULL, 'Valentino Garavani', '1960', 'Italy', '華麗でエレガンスなデザインを、伝統のクラフトマンシップで産み出すイタリアを代表するラグジュアリーブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (329, 'Velvet Lounge', 'velvet_lounge', NULL, 'Masaki Yukioka', '2004', 'Japan', '時代背景にあったテーマとの融合で、現代のジュエリーを提案する「ニュークラシック」をコンセプトとするメンズジュエリーブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (330, 'VERSACE', 'versace', NULL, 'Gianni Versace', '1978', 'Italy', '卓越したテーラリングと、グラマラスな世界観が特徴のラグジュアリーブランド。シグネチャモチーフはメデューサの頭。設立者であるGianni VersaceはGiorgio Armani、Gianfranco Ferréとともに「ミラノの3G」と呼ばれ、80年代後半のイタリアファッションに大きな影響を与えた。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (332, 'VIKTOR & ROLF', 'viktor_and_rolf', NULL, 'Viktor Horsting and Rolf Snoeren', '1993', 'France', 'クラシックスタイルをモディファイしたクリエイション、また、デザイナー自身がモデルとしてメンズコレクションのショーに登場するなどユニークなショースタイルが話題となったブランド。2016秋冬コレクションをもってプレタポルテからの撤退を発表。2004年にアイウェアシーンに進出しており、コンセプトは「Modern Vintage」。レトロモダンなメガネのブームの火付け役とも言える。デザイナー本人達がアイウェアのデザインに関わっている、数少ないブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (333, 'VINTI ANDREWS', 'vinti_andrews', NULL, 'Vinti Tan and Paul Andrews', '2006', 'UK', 'イギリスの伝統的なカルチャーや世界の音楽シーンの影響を受けたコレクションを展開しているブランド。NIKEに唯一リメイク品の販売を認められているブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (334, 'VIVIENNE TAM', 'vivienne_tam', NULL, 'Vivienne Tam', '1990', 'USA', 'トラディショナルとモダンスタイルの融合を特色とする、中国刺繍やプリントモチーフを用いたデザインが特徴のブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (335, 'Vivienne Westwood', 'vivienne_westwood', NULL, 'Dame Vivienne Westwood', '1971', 'UK', 'Malcolm McLarenのために洋服を作り、Let It Rockと名付けたショップをオープンしたことが始まり。イギリスの伝統的なクラシックとパンクが融合したスタイルが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (336, 'WHITE FLAGS', 'white_flags', NULL, 'Tatsuya Okonogi', '2010', 'Japan', 'モード、ストリートを問わないエレガントなデザインを特徴とした日本のデザイナーズフットウェアブランド。ブランド名の WHITE FLAGS は、平和の象徴 である ?白旗? から由来しており、世界から戦争や紛争が消えた平和な時代が訪れる事を願うという意味がある。そのため、全てのアイテムのモデル名に歴代のノーベル平和賞受賞者や平和主義者の名前を引用しているのが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (337, 'White Mountaineering', 'white_mountaineering', NULL, 'Yosuke Aizawa', '2006', 'Japan', '「服を着るフィールドはすべてアウトドア」をコンセプトに、実用性?技術?デザインの三拍子を取り揃えた服作りに力を入れている。どんな男性のクローゼットにも一着は存在させたいと思うようなこだわり抜いたコレクションが多くあり、日本だけでなく、世界からの評価も高い。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (338, 'WHIZ LIMITED', 'whiz_limited', NULL, 'Hiroaki Shitano', '2000', 'Japan', '「INDIVIDUAL CLOTHING（単体で個性のある洋服）」がコンセプトのストリートブランド。原宿で生まれたファッションカルチャーを、全世界に向けて発信する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (339, 'WING ROCK', 'wing_rock', NULL, 'Riki Maezaki', '1994', 'USA', '日本のシルバーアクセサリーブランド。ハンドクラフトにこだわった作品づくりが特徴。ブランド名はアメリカの南西部に先住するインディアン部族?ナバホ族が神聖な山として崇める実存の岩山「Wing Rock」の名から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (340, 'wjk', 'wjk', NULL, 'Jun Hashimoto', '2004', 'Japan', '「良い物は変わらない」という事実と、「残る物は本物」という2つの事実から、「不変」という物を表現することをブランドコンセプトとしているブランド。ベーシックなアイテムをタイトで洗練されたシルエットに落とし込んだミニマムなデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (341, 'WOLF\'S HEAD', 'wolfs_head', NULL, 'Takuji Mikita', '1991', 'Japan', '東京のヴィンテージショップのオリジナルブランドとしてスタート。芸術性の高いスタッズワークのアクセサリーが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (342, 'WOO YOUNG MI', 'woo_young_mi', NULL, 'Woo Young Mi', '1988', 'Korea', '韓国人デザイナーWoo Young Miと、その娘Katie Chungが手がけるメンズウェアブランド。新素材を積極的に取り入れ、モード、スポーツを融合させたデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (343, 'Worlds End', 'worlds_end', NULL, 'Dame Vivienne Westwood', '1976', 'UK', 'Worlds Endとは1971年にロンドンでオープンした、Vivienne Westwoodのオリジナルブティックのこと。この場所でファッションを通じて政治的メッセージを発信していったヴィヴィアンの反骨心、危険を顧みないスローガンを取り入れたデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (344, 'WTAPS', 'wtaps', NULL, 'Tetsu Nishiyama', '1996', 'Japan', '「Placing things where they should be（あるべきものをあるべき場所へ）」がコンセプトのストリートブランド。「そのモノの本質があるべき形であり、そのモノが役割を果たせる場所を与え、配することがデザインのす全て」だと考え、飽きのこないベーシックなアイテムを展開する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (345, 'Y-3', 'y_3', NULL, 'Yohji Yamamoto', '2002', '-', 'AdidasとYohji Yamamotoのコラボレーションブランド。「スポーツウェアをエレガントでシックなものにし、それまで存在しなかったものを創りたかった」というYohji Yamamotoの想いが凝縮されたブランド。機能性とファッション性を兼ね備えた「スボーツウェアとモードの融合」という試みの先駆け的存在となった。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (346, 'YAECA', 'yaeca', NULL, 'Tetsuhiro Hattori and Kyoko Ide', '2002', 'Japan', 'ブランド名の由来は「八重日（やえか）」で、日々重ねて着てもらえる服作りがしたいという意味が込められている。生活に根ざしたデイリーユースなワードローブを提案しており、リラックスした飾らないベーシックなアイテムをシンプルに作っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (347, 'YEAH RIGHT!!', 'yeah_right', NULL, 'Keita Kawamura and Michiko Imura', '2005', 'Japan', '古着?ヴィンテージの生地をリメイクしたり1点もののアイテムを制作するなど、クラフト感のあるアイテムが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (348, 'Yeezy', 'yeezy', NULL, 'Kanye West', '2013', 'USA', 'ラッパー/プロデューサーのKanye Westが手がけるストリートブランド。ブランド名はデザイナーであるカニエの愛称を意味し、ストリートで少しアンダーグラウンドなルーツを持つアイテムをラグジュアリーに昇華しようとする「ストリートラグジュアリー」なデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (349, 'YOSHiKO CREATiON PARiS', 'yoshiko_creation_paris', NULL, 'Yoshiko Kajitani', '1999', 'France', 'Yoshiko Kajitaniが手掛けるアクセサリーブランド。「ポップクチュール」をブランドコンセプトに、プレタポルテとオートクチュールの中間を意識したクリエーションで、独自の世界観を築き上げている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (350, 'yoshiokubo?', 'yoshiokubo?', NULL, 'Yoshio Kubo', '2004', 'Japan', '「今まで見た事のないパターンやディティールを追求したい」というToshio Kuboの素直な気持ちと哲学をデザインに落とし込んだブランド。決して独りよがりのデザインではなく、着る人を第一に考えた服作りを心がけている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (351, 'Y\'s for men', 'ys_for_men', NULL, 'Yohji Yamamoto', '-', 'Japan', '「Y\'sを着ている女性の隣にいる男性が似合う服」というコンセプトのもとに始まる。コンサバティブなメンズの概念とは異なる服を発表する。コレクションラインに比べ、Yohji Yamamotoの趣味、嗜好をより深く反映させた「自身が着たくなる服」がリアリティを産み共感を得るも、2009-10年秋冬コレクションをもって休止をしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (352, 'ZOCALO?', 'zocalo', NULL, 'Kazuaki Koura', '1998', 'Japan', '「東洋のクロムハーツ」と呼ばれ、オリエンタルデザインにおいて他の追随を許さないNo.1ドメスティックブランド。非常に凝った造形が特徴で、価格帯も幅広く、老若男女を問わず人気を博している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (353, '032c', '032c', NULL, 'Joerg Koch', '2015', 'Germany', 'ベルリンで年に2回発行されるコンテンポラリー?カルチャー?マガジン「032c」が展開をするアパレルブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (354, 'ADAPTATION', 'adaptation', NULL, 'Ali Fatourechi', '2015', 'USA', 'Genetic Denim の設立者としても知られ、同様にデニムデザイナーとしても高い評価を得ている Ali Fatourechi が立ち上げたブランド。デザインディレクターには、R13&NLSTのデザイナーでもあるDavis Churchを迎え「LAらしさ」をテーマにコレクションを制作している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (355, 'ALYX', 'alyx', NULL, 'Matthew Williams', '2015', 'USA', '創業者のMatthew WilliamsはLady GagaやKanye Westらのクリエイティブディレクターを務めた後、写真家Nick Knightの撮影チームの主要メンバーとして経験を積み、2015年にブランドを創立する。カリフォルニアや世界各国のサブカルチャーを含め、自身が経験したエンターテイメント業界の視点をインスピレーション源としてデザインに落とし込んでいる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (356, 'ATELIER BETON', 'atelier_beton', NULL, '-', '2016', 'Japan', 'ブランドコンセプトは「健全なる引きこもりのためのウェア」。洋服は生活を快適にする「暮らしの道具」と考え、家の中でのライフワークに寄り添うプロダクトを新しい感覚でクリエイトしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (357, 'BlackEyePatch', 'blackeyepatch', NULL, '-', '2014', 'Japan', 'デザイナーなどの情報は非公開。「東京」をアイデンティティーとし、自分たちの表現をすべく様々なプロジェクトを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (358, 'COMOLI', 'comoli', NULL, 'Keijiro Komori', '2011', 'Japan', '「全ての洋服の原型は欧米から生まれ、ある目的の為に作られた物である」という考えのもと、今の日本の気候に合う、日本人の体型に合った、上質でシンプルな日常着を展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (359, 'doublet', 'doublet', NULL, 'Masayuki Ino and Takashi Murakami', '2012', 'Japan', 'MIHARA YASUHIRO出身のデザイナーが立ち上げたブランド。ベーシック?スタンダードなアイテムを基本に唐突なアイデアを混ぜ込んだ「違和感のある日常着」をコンセプトに掲げ、 ウェアからアクセサリーまでのトータルアイテムを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (360, 'DROLE DE MONSIEUR', 'drole_de_monsieur', NULL, 'Dany Dos Santos and Maxime Schwab', '2014', 'France', 'ストリートシーンの間で、密かに盛り上がりを見せているブランド。々な概念にとらわれる事なく、独自のフィルターと自由な発想で作り出すコレクションは、モダン、ミニマル、ユニセックスをテーマに展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (361, 'Dulcamara', 'dulcamara', NULL, 'Shoko Yoda', '2003', 'Japan', '性別にとらわれない服創りをコンセプトにしている。独特のゆるいサイジングや色使いが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (362, 'ETHOSENS', 'ethosens', NULL, 'Yui Hashimoto', '2007', 'Japan', '未来のスタンダードになり得る革新的な表現を目指し、わずかでも世の中に新しい価値観をもたらすことができような、本質的なクリエーションを追求するドメスティックブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (363, 'Etudes', 'etudes', NULL, 'Aurelien Arbet and Jeremie Egry and José Lamali', '2012', 'France', 'ファッションブランドであるHixseptと出版社JSBJを合体させて活動を開始。強みであるデザインは、一見トラッドな印象ながら、色彩感覚や生地の選び方などにヨーロッパのセンスを感じさせ、素材の良さを活かす美しいシルエットを持つ。日本人体型にも合わせやすいラインが多い。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (364, 'HERON PRESTON', 'heron_preston', NULL, 'Heron Preston', '2017', 'USA', 'Kanye Westのクリエイティブ?コンサルタントとしてLife of PabloやYeezyを手がけたHeron Prestonが、ポストインターネット世代のユースカルチャーを代表するアイコン的存在を目指し、立ち上げたブランド。イタリアメイドにこだわりを持ち、ラグジュアリーストリートの顔として、全世界から注目を浴びている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (365, 'HOPE', 'hope', NULL, 'Ann Ringstrand and Stefan S?derberg', '2001', 'Sweden', '目立ちすぎない（low-key）、基となる素材を活かした（raw）、本物（authentic）を目指している。伝統的な男性労働服からのインスピレーションを基礎とし、カラーは白と黒の間を彷徨うグラデーション、機能性を重視したライン、左右対称のシメトリー、マテリアルはインディゴ?デニムやワックスコットンなど時を経て味を増すものの使用を心がけている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (366, 'Iroquois', 'Iroquois', NULL, 'Makoto Yoshida', '2003', 'Japan', 'ブランドコンセプトは「イレギュラーな男の色気を提案」。ドレススタイル?ユーズドクロージング ?ミリタリーに含まれるそれぞれの要素を取り入れ、今のシーンに融合させて新しいスタイルを創り出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (367, 'juha', 'juha', NULL, 'Ryo Takenaga', '2015', 'Japan', 'TROVE出身のデザイナーが立ち上げたブランド。品を感じさせる繊細さと、デイリーな仕様とのバランスが高い次元で表現されているのが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (368, 'liberum arbitrium', 'liberum_arbitrium', NULL, 'Shinsuke Mitsuoka', '2012', 'Japan', 'ブランド名の由来はラテン語で「自由意志」を意味し、何者にも縛られない姿勢をイメージしている。オリジナルファブリックへの強いこだわりを持ち、エレガントで流線的なカッティングが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (369, 'mando', 'mando', NULL, 'Mando Takasu', '1997', 'Japan', 'ブランドコンセプトは「男性服、女性服の概念や流行にとらわれず、時代の空気感を大切に表現する」。カジュアルな表現の中に吟味された最高の材料と高度なテクニックで、 時にはクチュールの要素も取り入れた仕立てをしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (370, 'my beautiful landlet', 'my_beautiful_landlet', NULL, 'Koji Akasaki and Noriaki Kataoka', '2012', 'Japan', 'シーズンごとのコンセプトは設けず、ブランドとしての サイズ感?色?素材を重視したストリートMIXのモードスタイルを 表現、提案している。my beautiful landletには 「自分たちのいた素敵な場所をお貸しします」＝「愛着のあるものを提案」という想いが込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (371, 'MYne', 'myne', NULL, 'Yasuhiro Mihara', '2016', 'Japan', 'ストリートにアンテナを張る若い世代のアイデアを取り入れ、MIHARA YASUHIROのアトリエチームが制作。 モード?ストリート?スポーツのテイストを軸に、エッジの効いたデザインを落とし込んだアイテムを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (372, 'Name.', 'name', NULL, 'Ryo Kaise', '2011', 'Japan', '「複製技術時代の芸術作品」をテーマに、日常の中に潜む本質、変化、進化をデザイナー自らパターンに落とし込み、スタンダードになりがちなアイテムを、時代にそって解体、再構築を繰り返し、アイデンティティーを感じさせる洋服を提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (373, 'no.', 'no', NULL, 'Takeshi Ichinomiya', '2017', 'Japan', 'パターンナー?グラフィックアーティスト?プロダクトマネージャー?スタイリストなどアパレル各業種で造詣の深いメンバーを中心に構成をされたブランド。時代の流行は意識しつつも、オリジナリティ溢れるデザインやスタイルを演出し、パーソナルの個性を最大限に引き出すデザインをメインにトレンドを発信している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (374, 'Palm Angels', 'palm_angels', NULL, 'Francesco Ragazzi', '2014', 'Italy', 'フォトグラファーであり、MONCLERのアートディレクターでもあるFrancesco Ragazziが手掛けるスケーターブランド。インスピレーション源は、ロサンゼルスのヴェニスビーチやマンハッタンビーチの独特な雰囲気とそこに住む人々の習慣。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (375, 'RAINMAKER', 'rainmaker', NULL, 'Koichi Watanabe', '2013', 'Japan', 'N4の創業者が立ち上げたブランド。本場である英国のようなクラシックスタイルをベースに、シルエットやテクノロジーによって日本らしい機能性が与えられ、合理的にモダナイズされたデザインが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (376, 'SHAREEF', 'shareef', NULL, 'Hitoshi Shimomura', '2007', 'Japan', 'コンセプトは「毎日身につける服だから、着心地はもちろんのこと、服を着る喜びや楽しさという魅力も大切にしたい」。生地づくりから色や柄にこだわった繊細なデザインが特徴で、時にロックで、またある時はフェミニンさを醸し出す作品が多い。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (377, 'TEATORA', 'teatora', NULL, 'Daisuke Kamide', '2013', 'Japan', 'TROVEの創業者が立ち上げたブランド。ブランドコンセプトは、ワークチェアで戦うクリエーターのためのワークウェアメーカー。座って働くことが多いオフィスパーソンのためのウェアを展開する。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (378, 'TOGA VIRILIS', 'toga_virilis', NULL, 'Yasuko Furuta', '2011', 'Japan', 'COMME des GARCONS出身のデザイナーが立ち上げたブランド。TOGAはギリシア神話の「聖なる衣」を意味する。男性にとって必要なワードローブである最低限のアイテムを、50年代のクラシックスタイルをベースに提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (379, 'TROVE', 'trove', NULL, 'Daisuke Kamide', '2004', 'Japan', 'TROVEは英語で「貴重な収集品」を意味している。「時を経ても貴重なアンティークのような服を作る」、「古着の様に洋服でありながら収集物でありたい」という想いがこめられている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (380, 'adidas', 'adidas', NULL, '\"Adolf \"\"Adi\"\" Dassler\"', '1948', 'Germany', 'ドイツのバイエルン州に本社を置く、世界的なスポーツブランド。「スリーストライプス」と呼ばれる3本線が特徴。ブランドとのコラボレーションにも精力的に取り組んでいる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (381, 'alain mikli', 'alain_mikli', NULL, 'Alain Mikli', '1978', 'France', 'フランスのアイウェアブランド。様々なブランドや映画とコラボレーションしている。コンセプトは「見るための、そして見られるためのメガネ」、「機能性と審美性」。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (382, 'ALDEN', 'alden', NULL, 'Charles H.Alden', '1884', 'USA', '米国の靴文化を象徴する、名門レザーシューズブランド。最上級の素材を使用した伝統的な靴作りを貫きながら、現在も素材や木型の開発を行い、進化し続けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (383, 'ARC\'TERYX', 'arcteryx', NULL, '-', '1989', 'Canada', 'クライミング、スキー、アルパイン業界の技術革新をリードする高性能なアイテムを揃えるアウトドアブランド。ARC\'TERYXという社名は、最古の鳥類として知られる始祖鳥の学名にちなんでいる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (384, 'ASICS', 'asics', NULL, 'Kihachiro Onitsuka', '1977', 'Japan', '日本のスポーツブランド。ブランド名の由来は古代ローマの作家ユウェナリスが唱えた「健全なる精神は健全なる身体にこそ宿るべし (Mens Sana in Corpore Sano)」という言葉の、Mens（才知、精神）をAnima（生命）に置き換え、「Anima Sana in Corpore Sano」の各文字の頭文字A?S?I?C?Sを並べたもの。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (385, 'Barbour', 'barbour', NULL, 'John Barbour', '1894', 'UK', '創業以来、変わらぬ性能と耐久性で英国のアウトドアマンに愛用され続けている。英国王室御用達の栄誉を授かるブランドとしても知られる。現在ではアウトドアのみならず、ファッションスタイルとしても人気を誇っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (386, 'BAREFOOT DREAMS', 'barefoot_dreams', NULL, 'Annette Leslie Cook', '1994', 'USA', '柔らかくラグジュアリーで高品質なウェアをはじめ、エレガントで心が落ち着くようなコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (387, 'BLACK FLEECE BY Brooks Brothers?', 'black_freece_by_brooks_brothers', NULL, '-', '2007', 'USA', 'Brooks Brothersの最高級ライン。THOM BROWNEをデザイナーに迎えてスタート。定番のアメリカン?トラディショナルスタイルを現代的にアレンジしている。2015年秋冬シーズンに休止。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (388, 'BLACKMEANS', 'blackmeans', NULL, '-', '2008', 'Japan', 'ブランドコンセプトは、ルーツである「Japanese Hardcore Punk」の視点から、既成概念にとらわれることのないファッションやスタイルを創造?提案していくこと。手作業による加工を施したレザーアイテムなどを中心に展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (389, 'BOGLIOLI MILANO', 'boglioli_milano', NULL, 'Piero?Boglioli', '1890', 'Italy', '「クラシック＆モダン」をコンセプトに、伝統的なサルトリアーレの手法を継承し、常に革新的な技術と現代的な要素を加えて進化し続けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (390, 'Borsalino', 'borsalino', NULL, 'Giuseppe Borsalino', '1857', 'Italy', 'イタリア?アレッサンドリアで創業した世界最高峰の帽子ブランド。エレガントな帽子は、伝統的な機械を使用して生み出される。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (391, 'Burberry Black Label', 'burberry_black_label', NULL, '-', '1998', 'Japan', 'BURBERRYとライセンス契約を結んでいた三陽商会によって企画された、日本独自のライン。2015年、ライセンス契約終了に伴い、ブランドも終了。後継ブランドとしてBLACK LABEL CRESTBRIDGEを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (392, 'BUTTERO', 'buttero', NULL, 'Mauro Sani', '1964', 'Italy', '1974年ブランドスタート。創業者?Mauro Saniは自身の名を冠したブランドを1964年に創業。さらなる商品のアイデアを求めて各地を旅し、「Butteri（イタリア版のカウボーイ）」からインスパイアされたウエスタンブーツや乗馬ブーツを製作し、ブランド名もButteroに変更した。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (393, 'CANADA GOOSE', 'canada_goose', NULL, '-', '1957', 'Canada', 'Metro Sportswear Ltd.がトロントに設立した、ファッションダウンブランド。極地の厳しい寒さから身を守る、高い機能性と洗練されたデザイン。創業以来Made in Canadaにこだわり、常に革新を続けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (394, 'CHIPPEWA', 'chippewa', NULL, '-', '1901', 'USA', 'ウィスコンシン州?チペワフォールズにて創業。当時、生産されていたすべての製品はウィスコンシン州北部にある伐採場に供給され、そこで働くランバーマンの足を護るべく、どんな過酷な環境でも耐えられる仕様で作られている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (395, 'Christian Louboutin', 'christian_louboutin', NULL, 'Christian Louboutin', '1992', 'France', 'シューズブランド。全ての靴底が赤くデザインされているのが特色。靴底に赤いマニキュアを塗るというChristian Louboutinの着想に基づくもので、“レッドソール”として知られている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (396, 'Church\'s', 'churchs', NULL, 'Thomas Church', '1873', 'UK', '靴作りの町として有名なイギリス?ノーサンプトンで創業。グッドイヤーウェルト製法と呼ばれる、職人の技術が必要な技法で、250にもおよぶ工程を経て生産される。1965年には英国女王賞が授与され、国際的なブランドとしての地位を築いた。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (397, 'COACH', 'coach', NULL, 'Miles Cahn and Lillian Cahn', '1941', 'USA', 'ニューヨークで創業した高級皮革製バッグを中心とするライフスタイルブランド。馬車がロゴの上に描かれているのは、馬車製造で知られるハンガリーの町「Kocs（コチ）」が由来。大事なものを運ぶ際に使って欲しい、という創始者の製品への想いが込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (398, 'CONVERSE', 'converse', NULL, 'Marquis M Converse', '1908', 'USA', 'アメリカ?マサチューセッツ州にて創業。ALL STAR、JACK PURCELL、ONE STARなどが代表的なアイテム。ファッションブランドや著名人とのコラボレーションも多数展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (399, 'Crockett&Jones', 'crockett_and_jones', NULL, 'James Crockett and Charles Jones', '1879', 'UK', '英国靴の聖地イギリス?ノーザンプトンで創業したシューメーカー。熟練した職人による、伝統的な手作業の製法が受け継がれている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (400, 'Danner', 'danner', NULL, 'Charles Danner', '1932', 'USA', 'アウトドアブーツの定番ブランド。世界で初めてGORE-TEXを採用したブーツを製造したブランドとしても知られている。様々な現場で実力を発揮する、最高品質のブーツを生み出している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (401, 'DIESEL', 'diesel', NULL, 'Renzo Rosso and Adriano Goldschmied', '1978', 'Italy', 'デニムをはじめとしたカジュアルウェアを展開するブランド。常に個性的で斬新なファッションと、革新的なコレクションを追求しています。ブランド名は、創業当時に台頭してきたディーゼル燃料のように世の中を活気づけたい、という想いから。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (402, 'DITA', 'dita', NULL, 'John Juniper and Jeff Solorio', '1995', 'USA', 'ロサンゼルスで創業したアイウェアブランド。50年代から80年代のヴィンテージフレームに現代の素材とシルエットを組み合わせ、オリジナリティ溢れるデザインを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (403, 'Dr.Martens', 'dr_martens', NULL, 'Klaus M?rtens', '1947', 'UK', 'シューズブランド。ドイツの医師、Klaus M?rtensがドクターマーチンソールを開発し、イギリスのR. Griggs companyから最初のブーツが発表された。始めはワークブーツとして労働者階級の使用が多かったが、次第にミュージシャンの支持を集め、ストリートカルチャーの一要素となった。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (404, 'EDWARD GREEN', 'edward_green', NULL, 'Edward Green', '1890', 'UK', 'フィロソフィは「妥協なきエクセレンス」。最高級品質のカーフスキンを使い、独自の標準規格により維持された職人による伝統的な手作業による技術で、靴を製作している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (405, 'EFFECTOR', 'effector', NULL, '-', '2005', 'Japan', '日本のアイウェアショップOPTICAL TAILOR CRADLEのオリジナルブランド。コンセプトは「Rock On The Eyewear.」男らしく骨太なフレームワークが特徴。日本の職人による仕上げの、しっかりとしたディテールを大切にしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (406, 'Ermenegildo Zegna', 'ermenegildo_zegna', NULL, 'Ermenegildo Zegna', '1910', 'Italy', 'イタリアを代表するメンズラグジュアリーブランド。テキスタイルメーカーとしてスタートしたため、素材から生地、パターン、縫製まで一貫して生産できる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (407, 'Faliero Sarti', 'faliero_sarti', NULL, 'Faliero Sarti', '1949', 'Italy', 'イタリアの老舗テキスタイルメーカーが展開するオリジナルブランド。デザイナーの想像力と、高級感溢れる素材のストールで知られる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (408, 'Felisi', 'felisi', NULL, 'Alessandro Felisi', '1973', 'Italy', 'イタリア北部の町?フェラーラを拠点とするバッグ＆レザーブランド。ナイロン×レザーの異素材コンビネーションのビジネスバッグが代表的なアイテム。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (409, 'FREITAG', 'Freitag', NULL, 'Markus Freitag and Daniel Freitag', '1993', 'Switzerland', 'スイス?チューリッヒを拠点とするブランド。全てのアイテムがリサイクル素材を使用した1点ものであり、代表作であるメッセンジャーバッグはトラックの幌を再利用して作られている。幌の調達から雨水を利用した洗浄、仕上げまで一貫して自社工場で行われている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (410, 'GOYARD', 'goyard', NULL, 'Fran?ois Goyard', '1853', 'France', '薪を連想させる「ゴヤールディン」と呼ばれるヘリンボーン(杉綾模様)柄がトレードマーク。コットンと麻で織られた独自のキャンバス地を天然塗料で仕上げ、レザーのようなしなやかな風合いを持たせた「ゴヤールディン?キャンバス」を使用したアイテムが代表的。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (411, 'G-SHOCK', 'g_shock', NULL, '-', '1981', 'Japan', 'CASIOの展開する腕時計ブランド。落としても壊れない、耐衝撃構造のタフネスウォッチ。様々な機能を備えた複数のモデルが存在し、ブランドとのコラボレーションモデルも多数展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (412, 'H.T.C', 'htc', NULL, 'Zip Stevenson', '2000', 'USA', 'アメリカのベルトブランドHOLLYWOOD TRADING COMPANYの略。スタッズベルトを中心に、数少ないMADE IN USAのベルトを生産している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (413, 'HERNO', 'herno', NULL, 'Giuseppe Marenzi', '1949', 'Italy', '優れた機能性と美しいシルエットで、さまざまな素材を駆使した上質なアウターブランドとして知られる。保温性?デザイン性の優れた超軽量ダウンが有名。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (414, 'IL BISONTE', 'il_bisonte', NULL, 'Wanny di Flippo', '1970', 'Italy', 'イタリア?フィレンツェ発のバッグ?革製品のブランド。職人の手作業による仕上げや、ヌメ革に定評がある。ブランドのマークは、ビゾンテ(バッファロー)の持つ、力強く誇り高いイメージに魅せられたことから。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (415, 'incarnation', 'incarnation', NULL, 'Keita Ogawa', '2009', 'Italy', 'イタリアを拠点としたレザーアイテムブランド。優れた革の加工技術で、自己の世界観を投影した物づくりをしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (416, 'INDIVIDUAL SENTIMENTS', 'individual_sentiments', NULL, 'Yoko Ito', '2009', 'Japan', '日本の概念とイタリアのテーラリングから成るブランド。大胆なシルエットのレザーグッズ、クラフトマンシップが含まれている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (417, 'ISAAC SELLAM?', 'isaac_sellam?', NULL, 'Isaac Sellam', '2002', 'France', 'パリを拠点とするレザーブランド。高い技術を持つ鞣し職人とともに作られる上質で柔らかなレザーアイテムを、パリでハンドメイドしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (418, 'ISAMU KATAYAMA BACKLASH', 'isamu_katayama_backlash', NULL, 'Isamu Katayama', '1999', 'Japan', '日本のレザープロダクトブランド。オールシーズン常にレザーを追求し、革の持つ可能性を突き詰める。日本の熟練の職人の手で一つ一つ丁寧に作られている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (419, 'JACOB COHEN', 'jacob_cohen', NULL, 'Tato Bardelle', '1985', 'Italy', 'イタリアを代表するラグジュアリーデニムブランドのひとつ。最大の魅力は、ジーンズでありながらスラックスのような、テーラーメイドの丁寧で繊細な仕立て。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (420, 'JOHN LOBB', 'john_lobb', NULL, 'John Lobb', '1866', 'UK', 'ロンドンで創業したビスポーク靴専門店。最高品質のレザーと美しいシルエットを生み出す木型で、世界中から評価されている。現在はブランドの伝統を継承した既製靴のラインも展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (421, 'KTZ', 'ktz', NULL, 'Sasko Bezovski and Marjan Pejoski', '2003', 'UK', 'ロンドン、パリにあるセレクトショップ?Kokon to Zaiのハウスブランドとしてスタート。ショップ名の由来は日本語の古今東西から。ブランドテーマは「Children’s Dreams」で、ファッションの楽しさを与え続けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (422, 'LAVENHAM', 'lavenham', NULL, 'Mrs.Elliot', '1969', 'UK', '創業者?Mrs.Elliotが発案したナイロン?キルティングのホース?ブランケット（馬用の毛布）が英国で瞬く間に人気となり、乗馬愛好家の要望でジョッパーのためのジャケットを作成。愛馬とお揃いのナイロン?キルティング?ジャケットが増え、その後もファッションアウターとしての人気と地位を確立している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (423, 'Lewis Leathers', 'lewis_leathers', NULL, 'David Isaacs', '1892', 'UK', '100年以上の歴史を持つ、イギリスの老舗レザーブランド。モーターサイクル、ロックンロールカルチャーにおいて重要な存在である。人気モデルの「CYCLONE」「LIGHTNING」をはじめ、ブランドとのコラボレーションアイテムも展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (424, 'MACKINTOSH', 'mackintosh', NULL, 'Charles Macintosh', '1823', 'UK', '英国の伝統的なアウターウェア?ブランド。創業者?Charles Macintoshが2枚の生地の間に天然ゴムを挟んで圧着した防水布「マッキントッシュクロス」を開発。この革新的な生地で作られたコートは現代でも伝統を守り、進化を続けている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (425, 'MICHAEL KORS', 'michael_kors', NULL, 'Michael Kors', '1981', 'USA', 'ニューヨークを拠点とするブランド。ミニマルでモダンな、実用性の高いアイテムが揃う。洗練されたデザインのレザーアイテムの人気が高い。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (426, 'mont-bell', 'mont_bell', NULL, 'Isamu Tatsuno', '1975', 'Japan', '登山用品を中心としたアウトドアブランド。コンセプトは「function is beauty」と「Light＆Fast」。シンプルなデザインながら、軽量化や機能性素材を使用したアイテムを多く展開しており、商品開発力が評価されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (427, 'MOSCOT?', 'moscot', NULL, 'Hyman Moscot', '1899', 'USA', 'ニューヨークのアイウェアブランド。高感度なクリエイターやミュージシャンに愛されている。100年以上に渡ってモスコット家がで経営してきた老舗眼鏡専門店であり、現在は世界中のショップでも販売されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (428, 'NEPENTHES', 'nepenthes?', NULL, 'Keizo Shimizu', '1988', 'Japan', '日本とニューヨークに店舗を構えるセレクトショップNEPENTHESのオリジナルアイテム。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (429, 'New Balance', 'new_balance', NULL, 'William J. Riley', '1906', 'USA', '創業者がアーチサポートインソールの製造の技術を基に矯正靴の製造を開始したことに由来する。複数の人気モデルが存在し、ブランドとのコラボレーションも数多く展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (430, 'NIKE', 'nike', NULL, 'Phil Knite and Bill Bowerman', '1964', 'USA', 'アメリカ?オレゴン州に本社を置く、スポーツ関連アイテムを取り扱う世界的企業。最新テクノロジーとクールなデザインで、世界のトップ企業となった。数々のアスリートやデザイナー、ブランドとのコラボレーションも積極的に行っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (431, 'OLIVER GOLDSMITH', 'oliver_goldsmith', NULL, 'Philip Oliver Goldsmith', '1926', 'UK', 'イギリスの老舗アイウェアブランド。1950年代、画期的なデザインのサングラスを発表し、アイウェアをファッションアイテムとして定着させた。90年代に一時休業するが、2005年に復活。過去のデザインアーカイブを基に、現代の感覚をまとったアップデートを加えて展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (432, 'OLIVER PEOPLES', 'oliver_peoples', NULL, 'Larry Leight and Dennis Leight and Kenny Schwartz', '1987', 'USA', 'カリフォルニアを拠点とするアイウェアブランド。素材の吟味から繊細な彫刻、仕上げまでの行程を手作業で行っている。様々なブランドやクリエイターとのコラボレーションも多数展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (433, 'Onitsuka Tiger', 'onitsuka_tiger', NULL, 'Kihachiro Onitsuka', '1949', 'Japan', 'スポーツシューズブランド。創業者?Kihachiro Onitsukaが前身となる鬼塚商会を創業したことからスタート。1977年に経営統合による改名でASICSとなるが、2002年、レトロファッションの流行に着目し、スポーツファッションブランドとして復活。以来、デザイナーとのコラボレーションを展開するなど、人気を博している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (434, 'Orobianco', 'orobianco', NULL, 'Giacomo Valentini', '1996', 'Italy', 'イタリア?ミラノ近郊で創立したファクトリーブランド。コンセプトは「La moda italiana bella ma intelligente」（デザイン性と機能性を兼ね備えたイタリアンファッション）。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (435, 'Paraboot', 'paraboot', NULL, 'Remy Richard-Pontvert', '1908', 'France', 'ハイエンドシューズメーカー。創業者?Remy Richard-Pontvertが滞在先のアメリカで入手したラバーで覆われたブーツをヒントに開発された。堅牢で摩耗に強く、コンフォタブルな履き心地であることから、ワークシューズとして支持される存在となった。また後に冒険家たちが愛用したことで、アウトドアシューズとしての地位も獲得した。ブランド名は、使用していた天然ラテックスがブラジルのパラ港から輸出されていたことから。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (436, 'Patagonia', 'patagonia', NULL, 'Yvon Chouinard', '1965', 'USA', 'アウトドアブランド。徹底した品質主義の、シンプルで実用的な製品が支持されている。製品の修理やリサイクルをはじめ、環境保護活動に力を入れていることでも知られる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (437, 'Paul Smith', 'paul_smith', NULL, 'Paul Smith', '1970', 'UK', 'ブリティッシュ?テーラリングをベースに、花柄やカラフルなストライプ柄を取り入れた遊び心のあるデザインやスタイリングを提案している。コレクションライン以外にもカジュアルラインや服飾雑貨、香水等のアイテムも展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (438, 'PENDLETON', 'pendleton', NULL, 'Thomas Kay', '1909', 'USA', 'ウールブランケット?ウェアを展開する老舗ブランド。ネイティブ?アメリカンの伝統を学び、先住民向けのブランケット等の生産を手掛ける。シグネチャーアイテムはネイティブ?アメリカン柄のアイテムやトラディショナルなウールシャツ等。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (439, 'Persol?', 'persol', NULL, 'Giuseppe Ratti', '1938', 'Italy', 'イタリア発の老舗サングラスブランド。優れた技術力と機能性、そしてデザイン性から、著名人に愛用され、映画でも度々使用される。ブランド名は「Peril Sol（太陽のため）」というイタリア語が由来で、「太陽光を防ぐ」という想いが込められている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (440, 'PIGALLE', 'pigalle', NULL, 'Stephane Ashpool', '2010', 'France', 'パリのセレクトショップ「PIGALLE」から展開したオリジナルブランド。MADE IN FRANCEにこだわった物づくりを行っている。ブランド名のボックスロゴアイテムが人気。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (441, 'PORTER', 'porter', NULL, 'Kichizo Yoshida', '1962', 'Japan', '1935年に創業者?Kichizo Yoshidaが吉田鞄製作所を設立、1962年に「PORTER」を発表した。創業時から現代まで、MADE IN JAPANをモットーとしている。ブランド名は、ホテルなどでカバンを運搬するポーターという職業が常にカバンに触れ、カバンの良さを知る者であるということから。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (442, 'PORTER CLASSIC', 'porter_classic', NULL, 'Katsuyuki Yoshida and Leo Yoshida', '2007', 'Japan', '東京を拠点に父子で創業した、バッグやアパレルを展開しているブランド。コンセプトは「世界基準のスタンダード」。日本製にこだわり、孫の代まで愛される商品を追求している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (443, 'PUMA', 'puma', NULL, 'Rudolf Dassler', '1924', 'Germany', 'ドイツを拠点とする世界的スポーツブランド。様々なスポーツ?チームのスポンサー契約や選手等とのパートナーシップ契約、ファッションブランドとのコラボレーションも積極的に行っている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (444, 'Rags McGREGOR?', 'rags_mcgregor', NULL, '-', '2011', 'Japan', '1921年 にニューヨークで誕生したブランド「McGREGOR」より、2011-12年秋冬シーズンにデビューしたレーベル。「Rags(古着)」の雰囲気や、アンダーグラウンドなロックスピリットを表現したスタイルを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (445, 'Ralph Lauren', 'ralph_lauren', NULL, 'Ralph Lauren', '1968', 'USA', 'イギリスの伝統的な形式にアメリカのテイストを加えた、「アメリカの上流階級」を感じさせるスタイルが特徴のブランド。ロゴマークは紳士が馬に乗って行う団体競技POLOを象徴し、豊かなライフスタイルを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (446, 'Ray-Ban', 'ray_ban', NULL, '-', '1937', 'USA', 'アメリカ空軍パイロット用のサングラスを開発していたアメリカのレンズメーカーBausch & Lombが創立したアイウェアブランド。一般人にもサングラスが普及すると、機能性はもちろん、そのデザイン性から人気となった。ブランド名は「光線を遮断する」という意味。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (447, 'RED WING', 'red_wing', NULL, 'Charles H. Beckman', '1905', 'USA', 'アメリカのミネソタ州にある町?Red Wingで創業した、ワークブーツを中心に取り扱うブランド。ロゴマークは赤い羽根のモチーフ。伝統と技を受け継ぎ、現在もアメリカで生産されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (448, 'Reebok', 'reebok', NULL, 'Joseph William Foster', '1958', 'UK', '陸上選手でもあった創業者?Joseph William Fosterが陸上競技用のシューズを制作したことからスタートしたブランド。常に最先端技術を取り入れ、革新的なシューズを作り続けている。ブランド名は、俊敏さをイメージさせる動物?ガゼルのアフリカ現地名から。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (449, 'Rocky Mountain Featherbed', 'rocky_mountain_featherbed', NULL, '-', '1960s', 'USA', 'カウボーイ向けの防寒ウェアブランドとしてスタート。ネイティブアメリカンのレザーケープを参考にした、継ぎ目のないレザーヨークがアイコン。1980年代後半に消滅したが、2005年、伝統を受け継ぎつつ現代のエッセンスを取り入れ、ブランド復活。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (450, 'RRL', 'rrl', NULL, 'Ralph Lauren', '1993', 'USA', 'ヴィンテージコレクターとしても知られるRalph Laurenが展開するブランドのひとつ。カントリーとヴィンテージテイストのミックススタイルで、独特の風合いを出した上質の素材と仕立てが特徴。ブランド名はRalph Laurenと妻?Ricky Laurenのイニシャルから。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (451, 'SANTONI', 'santoni', NULL, 'Andrea Santoni', '1975', 'Italy', 'レザーシューズを中心に展開するブランド。エレガントなカジュアルレザースニーカーから人気に火が付いた。イタリアのシューズブランドの中では歴史の浅いブランドながら、クオリティーやディテールへの情熱、こだわりのハンドメイドで世界的ブランドへと躍進した。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (452, 'SARTORE', 'sartore', NULL, 'Paul Sartore and Marcelle Sartore', '1959', 'France', '上質なレザーを用いた靴作りをしているブランド。世界一美しいジョッキーブーツを生み出すブランドとして有名。南フランスの小さな工房からスタートし、高級ブランドへと成長。現在はイタリアを生産拠点としている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (453, 'THE NORTH FACE', 'the_north_face', NULL, 'Douglas Tompkins and Susie Tompkins', '1968', 'USA', 'アウトドアブランド。ブランド名は、山岳で登山が難しい北側のことを指す「NORTH FACE」から。ブランドとのコラボレーションも数多く展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (454, 'TOMMY HILFIGER', 'tommy_hilfiger', NULL, 'Thomas Jacob“Tommy”Hilfiger', '1984', 'USA', 'コンセプトに「クラシック アメリカン クール」を掲げるアメリカのブランド。アメリカンプレッピーにひねりを効かせたスタイルが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (455, 'Tricker\'s', 'trickers', NULL, 'Joseph Tricker', '1829', 'UK', '老舗英国シューズブランド。現存するノーサンプトン最古のグッドイヤーウェルテッド製法の工場としても有名。多くのファッションブランドとのコラボレーションも展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (456, 'VANQUISH', 'vanquish', NULL, 'Ryo Ishikawa', '2005', 'Japan', '洗練された大人のスタイルを提案するブランド。いわゆる「お兄系」と呼ばれるメンズファッションの流行を牽引した。異なるジャンルのファッションブランドとのコラボレーションも多数展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (457, 'VANS', 'vans', NULL, 'Paul Van Doren and Gordon C. Lee and James Van Doren and Serge D\'Elia and Asiah Brewster', '1966', 'USA', '1970年前半に南カリフォルニアのスケーター達の間で、シンプルなデザインとグリップのあるソールが注目されたことから人気となり、No.1スケートシューズブランドとしての地位を確立した。現在に至るまで、当時と変わらぬ製法で作られている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (458, 'WESCO', 'wesco', NULL, 'John Henry Shoemaker', '1918', 'USA', 'アメリカのワークブーツブランド。大量生産に走ることなく、創業当時から変わらないクオリティー最優先の姿勢が多くのハードワーカー達に愛されている。タフな外見とは裏腹に、良質な革素材による履き心地の良さや柔らかさがある。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (459, 'WHITE\'S BOOTS', 'whites_boots', NULL, 'Otto White', '1853', 'USA', 'アメリカを代表するワークブーツブランド。ハンドクラフトで生み出される防水性?耐久性に優れたブーツは、ワークブーツの王様と呼ばれる。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (460, 'WOOLRICH', 'woolrich', NULL, 'John Rich', '1830', 'USA', '\"アメリカ最古のアウトドアアパレルブランド。北米のみで販売されているオリジナルのアウトドアコレクション「WOOLRICH Outdoor」と、世界的に流通しているハイエンドアウターブランド「WOOLRICH John Rich & Bros', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (461, '泰八郎謹製', 'taihachiro_kinsei', NULL, '-', '-', 'Japan', '福井県鯖江市で創業した金子眼鏡「職人シリーズ」のラインのひとつ。セルロイド生地の型出しから最後の磨きまで、全ての工程を職人の手の感覚のみで作り上げる、世界でただ1本だけの眼鏡フレームを制作している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (462, '白山眼鏡店', 'hakusan_gankyoten', NULL, '-', '1975', 'Japan', '東京?人形町に創業した白山眼鏡店(しらやまめがねてん)をルーツとする眼鏡店のオリジナルブランド。「デザインしすぎないこと」をコンセプトに、かける人に自然と馴染むフレームづくりで、ジャパンメイドにこだわったオリジナルフレームを製作している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (463, '金子眼鏡', 'kaneko_gankyo', NULL, '-', '1958', 'Japan', '福井県鯖江市で創業した金子眼鏡のオリジナルブランド。眼鏡職人がプラスチックフレームの切削から仕上げまで、分業ではなく一貫生産を行っている。ファッションブランドとのコラボレーションも積極的に展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (464, 'ARTS&SCIENCE', 'arts_and_science', NULL, 'Sonya Park', '2003', 'Japan', '日本のセレクトショップARTS&SCIENCEのオリジナルアイテム。「いい洋服をつくるための基礎が 『ジェンダレス、ヴィンテージ、ワーク、エスニック』に宿る。」という考えのもと、丁寧なものづくりを大切にしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (465, 'monkey time BEAUTY&YOUTH UNITED ARROWS', 'monkey_time?', NULL, 'Yoshiteru Kataoka', '1994', 'Japan', 'UNITED ARROWSが展開するメンズウェアブランド。時代を超えて受け継がれるトラデイショナルなアイテムに敬意を払ったものづくりを中心に、ストリートファッションの自由な発想やクリエイティブなモードの要素を取り入れたミックススタイルを提案している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (466, 'Ron Herman', 'ron_herman', NULL, 'Ron Herman', '1976', 'USA', 'カリフォルニア発のスペシャリティストア?Ron Hermanのオリジナルブランド。Ron Herman California、R.H. Vintage、RON HERMAN DENIMなど、複数のラインを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (467, 'RUDE GALLERY?', 'rude_gallery?', NULL, 'Yutaka Katayanagi', '2001', 'Japan', 'コンセプトは「音の匂い」がする服作り。ミュージシャンとのコラボレーションも数多く手がけており、鋭いフォルム、繊細なディテールを追求している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (468, 'D&G', 'd_and_g', NULL, 'Domenico Dolce and Stefano Gabbana', '1985', 'Italy', 'イタリアのブランドDOLCE&GABBANAのディフュージョンライン。都会的な印象で、より若々しく色鮮やかな色彩のカジュアルなデザインを展開。2012年にDOLCE&GABBANAに統合。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (469, 'DRKSHDW?', 'drkshdw?', NULL, 'Rick Owens', '2008', 'France', 'Rick Owensのディフュージョンラインであり、「厳選されたショップ」のみに提案するブランド。デニムを中心にスウェットやコットンのアイテムを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (470, 'EMPORIO ARMANI', 'emporio_armani', NULL, 'Giorgio Armani', '1975', 'Italy', 'Giorgio Armaniのセカンドライン。数あるアルマーニブランドの中でも若いマインドを持つ、メトロポリタンな人々へ向けたラインである。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (471, 'JohnUNDERCOVER', 'john_undercover', NULL, 'Jun Takahasi', '2013', 'Japan', 'UNDERCOVERエッセンスを取り入れながら、幅広いターゲットに提案するライン。デザインはJun Takahasi監修のもと、デザインチームが手がけている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (472, 'Just Cavalli', 'just_cavalli', NULL, 'Roberto Cavalli', '2000', 'Italy', 'Roberto Cavalliのメゾンの伝統を継承しながら、斬新な素材やパターン使いで、個性が光るコレクションを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (473, 'MARC BY MARC JACOBS', 'marc_by_marc_jacobs', NULL, 'Marc Jacobs', '2001', 'USA', 'MARC JACOBSのデザインのエッセンスを受け継ぎながら、手に取りやすい価格で展開しているライン。2015年、ブランドをMARC JACOBSに統一。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (474, 'McQ', 'mcq', NULL, 'Alexander McQueen', '2006', 'UK', 'Alexander McQueenのセカンドライン。若い世代にも手の届きやすいアイテムを展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (475, 'Prada Linea Rossa', 'prada_linea_rossa', NULL, 'Miuccia Prada', '1998', 'Italy', 'PRADA SPORTとしてスタートしたライン。2009年よりブランド名をPrada Linea Rossaへ変更して再スタート。レジャーのためのデイリーアイテムを展開している。赤いライン状のロゴマークが特徴。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (476, 'T by ALEXANDER WANG ', 't_by_alexander_wang', NULL, 'Alexander Wang', '2009', 'USA', 'Alexander Wangのベーシックライン。Tシャツなどのカットソー類を中心としたアイテム展開をしている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (477, 'THOM GREY.', 'thom_grey', NULL, 'Thom Browne', '2012', 'USA', 'THOM BROWNEのディフュージョンライン。世界観はそのままに、手の届きやすい価格帯で展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (478, 'Versus Versace', 'versus_versace', NULL, 'Gianni Versace', '1989', 'Italy', 'VERSACEのヤングライン。ブランドの特徴的なモチーフやシルエットなどのDNAを受け継ぎながら、手の届きやすい価格帯で展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (479, 'FOG', 'fog', NULL, 'Jerry Lorenzo', '2015', 'USA', 'Fear Of Godのセカンドライン。ブランドのエッセンスはそのままに、手の届きやすい価格帯で展開している。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (480, 'PIERRE BALMAIN', 'pierre balmain?', NULL, '-', '2011', 'France', 'BALMAINのディフュージョンライン。シンプルかつモダンなデザインを特徴としている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (481, 'BALENCIAGA', 'balenciaga', NULL, '', '', 'France', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (482, 'BILL WALL LEATHER', 'bill_wall_leather', NULL, '', '', 'USA', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (483, 'CHROME HEARTS', 'chrome_hearts', NULL, 'リチャード?スターク(Richard Stark)', '', 'USA', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (484, 'COMME des GAR?ONS HOMME PLUS', 'comme_des_garcons_hommeplus', NULL, '', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (485, 'DIOR HOMME', 'dior_homme', NULL, 'エディ?スリマン(HEDI SLIMANE)', '', 'France', 'ラグジュアリーブランド\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (486, 'DRIES VAN NOTEN', 'dries_van_noten', NULL, '', '1985', 'Belgium', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (487, 'Gaboratory', 'gaboratory', NULL, 'Gabor Nagy', '1988', 'USA', 'シルバーアクセサリーブランド\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (488, 'goro\'s', 'goros', NULL, 'Goro Takahashi', '1966', 'Japan', '日本におけるインディアンジュエリーの先駆けとなったブランド。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (489, 'GUCCI', 'gucci', NULL, 'グッチオ?グッチ(Guccio Gucci)', '', 'Italy', 'ラグジュアリーブランド\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (490, 'kolor', 'kolor', NULL, 'Junichi Abe', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (491, 'LAD MUSICIAN', 'lad_musician', NULL, '', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (492, 'Maison Martin Margiela', 'maison_martin_margiela', NULL, '', '', 'France', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (493, 'N.HOOLYWOOD', 'n_hoolywood', NULL, 'Daisuke Obana', '2000', 'Japan', 'ミスターハリウッドは会社名及び店舗名\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (494, 'NUMBER (N)INE', 'number_nine', NULL, '', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (495, 'OFF-WHITE c/o VIRGIL ABLOH ', 'off_white', NULL, 'Virgil Abloh', '', 'Italy', '「ラグジュアリーなストリートウェア」\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (496, 'PRADA', 'prada', NULL, '', '', 'Italy', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (497, 'Sacai', 'sacai', NULL, 'Chitose Abe', '1999', 'japan', '「日常の上に成り立つデザイン」\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (498, 'Saint Laourent Paris', 'saint_laourent_paris', NULL, 'Yves Henri Donat Mathieu-Saint-Laurent', '', 'France', 'ラグジュアリーブランド\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (499, 'STANLEY GUESS', 'stanley_guess', NULL, 'Stanley Guess', '2000', 'USA', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (500, 'Supreme', 'supreme', NULL, '', '', 'USA', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (501, 'UNDERCOVER', 'undercover', NULL, 'Jun Takahasi', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (502, 'UNUSED', 'unused', NULL, '非公表', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (503, 'VETEMENTS', 'vetements', NULL, 'Demna Gvasalia', '', 'France', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (504, 'VISVIM', 'visvim', NULL, '', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (505, 'WACKO MARIA', 'wacko_maria', NULL, '', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (506, 'Yohji Yamamoto Pour Homme', 'yohji_yamamoto_pour_homme', NULL, '', '', '', '\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (614, '424', '424', NULL, 'Guillermo Andrade', '2010', 'USA', 'LAのセレクトショップ「FourTwoFour on Fairfax」が展開するオリジナルブランド。最初はジュエリーのみの展開だったが評判となり、2016年からフルコレクションを発表している。社会的なメッセージ性のあるコレクションを展開し、多くのアーティストからも支持されている。\r', NULL, NULL, NULL);
INSERT INTO `master_brand` VALUES (618, 'FBrand', 'fbrand', 'C:\\xampp\\tmp\\php15FB.tmp', 'firewolf', '2018', 'Beijing', 'dsfdsfsadfsdaf\r\nasdsdfdsa\r\nfsasdafsdafsdf\r\ndffsadf\r\nsadf\r\nfsadf', '2018-10-04', '2018-10-04', NULL);
INSERT INTO `master_brand` VALUES (619, 'e', NULL, 'C:\\xampp\\tmp\\php6313.tmp', 'we', '1221', 'we', 'we', '2018-10-04', '2018-10-04', NULL);
INSERT INTO `master_brand` VALUES (620, 'e', NULL, 'C:\\xampp\\tmp\\php60A9.tmp', 'we', '1221', 'we', 'we', '2018-10-04', '2018-10-04', NULL);
INSERT INTO `master_brand` VALUES (621, 'e', NULL, 'C:\\xampp\\tmp\\php995E.tmp', 'we', '1221', 'we', 'we', '2018-10-04', '2018-10-04', NULL);
INSERT INTO `master_brand` VALUES (622, 'e', NULL, 'C:\\xampp\\tmp\\php2F6.tmp', 'we', '1221', 'we', 'we', '2018-10-04', '2018-10-04', NULL);
INSERT INTO `master_brand` VALUES (623, 'e', NULL, 'C:\\xampp\\tmp\\php49A0.tmp', 'we', '1221', 'we', 'we', '2018-10-04', '2018-10-04', NULL);
INSERT INTO `master_brand` VALUES (624, 'e', NULL, 'C:\\xampp\\tmp\\phpFFFC.tmp', 'we', '1221', 'we', 'we', '2018-10-04', '2018-10-04', NULL);
INSERT INTO `master_brand` VALUES (625, 'firewolf design', NULL, NULL, 'design', '2019', 'design', 'design', '2018-10-04', '2018-10-04', NULL);

-- ----------------------------
-- Table structure for master_brand_designer
-- ----------------------------
DROP TABLE IF EXISTS `master_brand_designer`;
CREATE TABLE `master_brand_designer`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NULL DEFAULT NULL,
  `designer_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_category
-- ----------------------------
DROP TABLE IF EXISTS `master_category`;
CREATE TABLE `master_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(11) NULL DEFAULT NULL,
  `category_size_id` int(11) NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `category_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 191 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_category
-- ----------------------------
INSERT INTO `master_category` VALUES (1, 0, NULL, 'メンズ', 'MENS', '2018-07-06 04:09:13', '2018-07-06 04:09:13', NULL);
INSERT INTO `master_category` VALUES (2, 0, NULL, 'レディース', 'LADIES', '2018-07-06 04:12:59', '2018-07-06 04:12:59', NULL);
INSERT INTO `master_category` VALUES (3, 1, 1, 'H.外', 'H.OUTER', '2018-07-06 04:13:29', '2018-07-06 04:13:29', NULL);
INSERT INTO `master_category` VALUES (4, 1, 1, 'L.外', 'L.OUTER', '2018-07-06 04:15:29', '2018-07-06 04:15:29', NULL);
INSERT INTO `master_category` VALUES (5, 1, 1, 'シャツ', 'SHIRT', '2018-07-06 04:15:53', '2018-07-06 04:15:53', NULL);
INSERT INTO `master_category` VALUES (6, 1, 1, 'ニット/カージガン', 'KNIT-CARDIGAN', '2018-07-06 04:16:12', '2018-07-06 04:16:12', NULL);
INSERT INTO `master_category` VALUES (7, 1, 1, 'カット＆セーン', 'CUT&SEWN', '2018-07-06 04:16:24', '2018-07-06 04:16:24', NULL);
INSERT INTO `master_category` VALUES (8, 1, 1, 'パーカー/スウェット', 'PARKA-SWEAT', '2018-07-06 04:16:52', '2018-07-06 04:16:52', NULL);
INSERT INTO `master_category` VALUES (9, 1, 5, 'セットアップ', 'SETUP', '2018-07-06 04:17:11', '2018-07-06 04:17:11', NULL);
INSERT INTO `master_category` VALUES (10, 1, 1, 'パンツ/スカート', 'PANTS-SKIRT', '2018-07-06 04:17:35', '2018-07-06 04:17:35', NULL);
INSERT INTO `master_category` VALUES (11, 1, 5, 'バッグ', 'BAG', '2018-07-06 04:17:51', '2018-07-06 04:17:51', NULL);
INSERT INTO `master_category` VALUES (12, 1, 5, 'アクセサリー', 'ACCESSORY', '2018-07-06 04:18:03', '2018-07-06 04:18:03', NULL);
INSERT INTO `master_category` VALUES (13, 1, 5, '品', 'GOODS', '2018-07-06 04:18:17', '2018-07-06 04:18:17', NULL);
INSERT INTO `master_category` VALUES (14, 1, 1, 'スニーカー', 'SNEAKER', '2018-07-06 04:18:31', '2018-07-06 04:18:31', NULL);
INSERT INTO `master_category` VALUES (15, 1, 2, 'サンダル', 'SANDAL', '2018-07-06 04:19:13', '2018-07-06 04:19:13', NULL);
INSERT INTO `master_category` VALUES (16, 1, 2, 'ブーツ', 'BOOTS', '2018-07-06 04:19:25', '2018-07-06 04:19:25', NULL);
INSERT INTO `master_category` VALUES (17, 1, 2, 'その他の靴', 'OTHER SHOES', '2018-07-06 04:19:37', '2018-07-06 04:19:37', NULL);
INSERT INTO `master_category` VALUES (18, 1, 5, '宝石', 'JEWELRY', '2018-07-06 04:19:47', '2018-07-06 04:19:47', NULL);
INSERT INTO `master_category` VALUES (19, 1, 4, '毛皮', 'FUR', '2018-07-06 04:21:08', '2018-07-06 04:21:08', NULL);
INSERT INTO `master_category` VALUES (20, 3, NULL, 'H.ﾀﾞｳﾝｼﾞｬｹｯﾄ', 'H. Down jacket', '2018-07-06 04:25:09', '2018-07-06 04:25:09', NULL);
INSERT INTO `master_category` VALUES (21, 3, NULL, 'H.ｺｰﾄ', 'H. Coat', '2018-07-06 04:26:52', '2018-07-06 04:26:52', NULL);
INSERT INTO `master_category` VALUES (22, 3, NULL, 'H.ﾚｻﾞｰｼﾞｬｹｯﾄ', 'H. Leather jacket', '2018-07-06 04:27:03', '2018-07-06 04:27:03', NULL);
INSERT INTO `master_category` VALUES (23, 3, NULL, 'H.ﾌﾞﾙｿﾞﾝ', 'H. Blouson', '2018-07-06 04:27:09', '2018-07-06 04:27:09', NULL);
INSERT INTO `master_category` VALUES (24, 3, NULL, 'H.ﾀﾞｳﾝﾍﾞｽﾄ', 'H. Down vest', '2018-07-06 04:27:25', '2018-07-06 04:27:25', NULL);
INSERT INTO `master_category` VALUES (25, 3, NULL, 'H.ｼﾞｬｹｯﾄ', 'H. Jacket', '2018-07-06 04:27:37', '2018-07-06 04:27:37', NULL);
INSERT INTO `master_category` VALUES (26, 4, NULL, 'L.ﾃﾞﾆﾑｼﾞｬｹｯﾄ', 'L. Denim jacket', '2018-07-06 04:28:18', '2018-07-06 04:28:18', NULL);
INSERT INTO `master_category` VALUES (27, 4, NULL, 'L.ｺｰﾄ', 'L. Coat', '2018-07-06 04:28:33', '2018-07-06 04:28:33', NULL);
INSERT INTO `master_category` VALUES (28, 4, NULL, 'L.ﾚｻﾞｰｼﾞｬｹｯﾄ', 'L. Leather jacket', '2018-07-06 04:28:39', '2018-07-06 04:28:39', NULL);
INSERT INTO `master_category` VALUES (29, 4, NULL, 'L.ﾌﾞﾙｿﾞﾝ', 'L. Blouson', '2018-07-06 04:28:45', '2018-07-06 04:28:45', NULL);
INSERT INTO `master_category` VALUES (30, 4, NULL, 'L.ｼﾞｬｹｯﾄ', 'L. Jacket', '2018-07-06 04:29:08', '2018-07-06 04:29:08', NULL);
INSERT INTO `master_category` VALUES (31, 5, NULL, 'ﾅｶﾞｿﾃﾞｼｬﾂ', 'Long Sleeve Shirt', '2018-07-06 04:30:24', '2018-07-06 04:30:24', NULL);
INSERT INTO `master_category` VALUES (32, 5, NULL, 'ﾊﾝｿﾃﾞｼｬﾂ', 'Short Sleeve Shirt', '2018-07-06 04:30:33', '2018-07-06 04:30:33', NULL);
INSERT INTO `master_category` VALUES (33, 5, NULL, 'ﾉｰｽﾘｰﾌﾞｼｬﾂ', 'Sleeveless Shirt', '2018-07-06 04:30:39', '2018-07-06 04:30:39', NULL);
INSERT INTO `master_category` VALUES (34, 6, NULL, 'ｶｰﾃﾞｨｶﾞﾝ', 'Cardigan', '2018-07-06 04:31:02', '2018-07-06 04:31:02', NULL);
INSERT INTO `master_category` VALUES (35, 6, NULL, 'ﾆｯﾄ', 'Knit', '2018-07-06 04:31:16', '2018-07-06 04:31:16', NULL);
INSERT INTO `master_category` VALUES (36, 7, NULL, 'ﾊﾝｿﾃﾞﾎﾟﾛｼｬﾂ', 'Short Sleeve Polo Shirt', '2018-07-06 04:32:26', '2018-07-06 04:32:26', NULL);
INSERT INTO `master_category` VALUES (37, 7, NULL, 'ﾅｶﾞｿﾃﾞｶｯﾄｿｰ', 'Long Sleeve Cut', '2018-07-06 04:32:48', '2018-07-06 04:32:48', NULL);
INSERT INTO `master_category` VALUES (38, 7, NULL, 'Tｼｬﾂ', 'T-shirt', '2018-07-06 04:32:54', '2018-07-06 04:32:54', NULL);
INSERT INTO `master_category` VALUES (39, 7, NULL, 'ﾀﾝｸﾄｯﾌﾟ/ﾉｰｽﾘｰﾌﾞｶｯﾄｿｰ', 'Tanktop-Sleevelesscut', '2018-07-06 04:33:07', '2018-07-06 04:33:07', NULL);
INSERT INTO `master_category` VALUES (40, 7, NULL, 'ｷｬﾐｿｰﾙ', 'Camisole', '2018-07-06 04:33:14', '2018-07-06 04:33:14', NULL);
INSERT INTO `master_category` VALUES (41, 7, NULL, 'ﾜﾝﾋﾟｰｽ/ﾁｭﾆｯｸ/ﾌﾞﾗｳｽ', 'One Piece: Tunic / Blouse', '2018-07-06 04:33:23', '2018-07-06 04:33:23', NULL);
INSERT INTO `master_category` VALUES (42, 7, NULL, 'ﾍﾞｽﾄ/ｼﾞﾚ', 'Best / Gillet', '2018-07-06 04:33:39', '2018-07-06 04:33:39', NULL);
INSERT INTO `master_category` VALUES (43, 7, NULL, 'ｿﾉﾀﾄｯﾌﾟｽ', 'Other tops', '2018-07-06 04:33:48', '2018-07-06 04:33:48', NULL);
INSERT INTO `master_category` VALUES (44, 8, NULL, 'ﾊﾟｰｶｰ', 'Parker', '2018-07-06 04:34:04', '2018-07-06 04:34:04', NULL);
INSERT INTO `master_category` VALUES (45, 8, NULL, 'ｽｳｪｯﾄ', 'Sweat', '2018-07-06 04:35:00', '2018-07-06 04:35:00', NULL);
INSERT INTO `master_category` VALUES (46, 9, NULL, 'ｽｰﾂ', 'Suit', '2018-07-06 04:35:10', '2018-07-06 04:35:10', NULL);
INSERT INTO `master_category` VALUES (47, 9, NULL, 'ｿﾉﾀｾｯﾄｱｯﾌﾟ', 'Other setup', '2018-07-06 04:35:17', '2018-07-06 04:35:17', NULL);
INSERT INTO `master_category` VALUES (48, 10, NULL, 'ﾛﾝｸﾞﾊﾟﾝﾂ', 'Long pants', '2018-07-06 04:35:27', '2018-07-06 04:35:27', NULL);
INSERT INTO `master_category` VALUES (49, 10, NULL, 'ﾊｰﾌﾊﾟﾝﾂ/ｼｮｰﾄﾊﾟﾝﾂ/ｼｮｰﾂ', 'Half pants / shorts / shorts', '2018-07-06 04:35:34', '2018-07-06 04:35:34', NULL);
INSERT INTO `master_category` VALUES (50, 10, NULL, 'ﾃﾞﾆﾑﾊﾟﾝﾂ', 'Denim trousers', '2018-07-06 04:35:41', '2018-07-06 04:35:41', NULL);
INSERT INTO `master_category` VALUES (51, 10, NULL, 'ｽｶｰﾄ', 'Skirt', '2018-07-06 04:35:48', '2018-07-06 04:35:48', NULL);
INSERT INTO `master_category` VALUES (52, 10, NULL, 'ｿﾉﾀﾎﾞﾄﾑｽ', 'Other bottoms', '2018-07-06 04:35:56', '2018-07-06 04:35:56', NULL);
INSERT INTO `master_category` VALUES (53, 11, NULL, 'ﾄｰﾄﾊﾞｯｸﾞ', 'Tote bag', '2018-07-06 04:37:20', '2018-07-06 04:37:20', NULL);
INSERT INTO `master_category` VALUES (54, 11, NULL, 'ﾊﾝﾄﾞﾊﾞｯｸﾞ', 'Handbag', '2018-07-06 04:37:28', '2018-07-06 04:37:28', NULL);
INSERT INTO `master_category` VALUES (55, 11, NULL, 'ｼｮﾙﾀﾞｰﾊﾞｯｸﾞ', 'Shoulder bag', '2018-07-06 04:37:34', '2018-07-06 04:37:34', NULL);
INSERT INTO `master_category` VALUES (56, 11, NULL, 'ﾎﾞｽﾄﾝﾊﾞｯｸﾞ', 'Boston bag', '2018-07-06 04:37:44', '2018-07-06 04:37:44', NULL);
INSERT INTO `master_category` VALUES (57, 11, NULL, 'ｳｴｽﾄﾊﾞｯｸﾞ/ﾎﾞﾃﾞｨｰﾊﾞｯｸﾞ', 'Waist Bag / Body Bag', '2018-07-06 04:37:51', '2018-07-06 04:37:51', NULL);
INSERT INTO `master_category` VALUES (58, 11, NULL, 'ﾌﾞﾘｰﾌﾊﾞｯｸﾞ', 'Brief bag', '2018-07-06 04:37:57', '2018-07-06 04:37:57', NULL);
INSERT INTO `master_category` VALUES (59, 11, NULL, 'ﾎﾟｰﾁ', 'Pouch', '2018-07-06 04:38:04', '2018-07-06 04:38:04', NULL);
INSERT INTO `master_category` VALUES (60, 11, NULL, 'ﾘｭｯｸ/ﾊﾞｯｸﾊﾟｯｸ', 'Backpack / Backpack', '2018-07-06 04:38:11', '2018-07-06 04:38:11', NULL);
INSERT INTO `master_category` VALUES (61, 11, NULL, 'ｸﾗｯﾁﾊﾞｯｸﾞ', 'Clutch bag', '2018-07-06 04:38:28', '2018-07-06 04:38:28', NULL);
INSERT INTO `master_category` VALUES (62, 11, NULL, 'ｿﾉﾀﾊﾞｯｸﾞ', 'Other bags', '2018-07-06 04:38:35', '2018-07-06 04:38:35', NULL);
INSERT INTO `master_category` VALUES (63, 12, NULL, 'ﾘﾝｸﾞ', 'Ring', '2018-07-06 04:38:54', '2018-07-06 04:38:54', NULL);
INSERT INTO `master_category` VALUES (64, 12, NULL, 'ﾈｯｸﾚｽ', 'Necklace', '2018-07-06 04:39:03', '2018-07-06 04:39:03', NULL);
INSERT INTO `master_category` VALUES (65, 12, NULL, 'ﾈｯｸﾚｽﾄｯﾌﾟ', 'Necklace top', '2018-07-06 04:39:09', '2018-07-06 04:39:09', NULL);
INSERT INTO `master_category` VALUES (66, 12, NULL, 'ﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ', 'Bracelet / Bangle', '2018-07-06 04:39:15', '2018-07-06 04:39:15', NULL);
INSERT INTO `master_category` VALUES (67, 12, NULL, 'ｳｫﾚｯﾄﾁｪｰﾝ', 'Wallet Chain', '2018-07-06 04:39:23', '2018-07-06 04:39:23', NULL);
INSERT INTO `master_category` VALUES (68, 12, NULL, 'ﾋﾟｱｽ/ｲﾔﾘﾝｸﾞ', 'Earrings', '2018-07-06 04:39:28', '2018-07-06 04:39:28', NULL);
INSERT INTO `master_category` VALUES (69, 13, NULL, 'ﾎﾞｳｼ', 'Hat', '2018-07-06 04:40:06', '2018-07-06 04:40:06', NULL);
INSERT INTO `master_category` VALUES (70, 13, NULL, 'ﾍﾞﾙﾄ', 'Belt', '2018-07-06 04:40:21', '2018-07-06 04:40:21', NULL);
INSERT INTO `master_category` VALUES (71, 13, NULL, 'ｻｲﾌ', 'Wallet', '2018-07-06 04:40:26', '2018-07-06 04:40:26', NULL);
INSERT INTO `master_category` VALUES (72, 13, NULL, 'ｺｲﾝｹｰｽ', 'Coin purse', '2018-07-06 04:40:32', '2018-07-06 04:40:32', NULL);
INSERT INTO `master_category` VALUES (73, 13, NULL, 'ｻﾝｸﾞﾗｽ/ﾒｶﾞﾈ', 'Sunglasses / glasses', '2018-07-06 04:40:40', '2018-07-06 04:40:40', NULL);
INSERT INTO `master_category` VALUES (74, 13, NULL, 'ｽﾄｰﾙ', 'Stall', '2018-07-06 04:40:47', '2018-07-06 04:40:47', NULL);
INSERT INTO `master_category` VALUES (75, 13, NULL, 'ﾏﾌﾗｰ', 'Scarf', '2018-07-06 04:40:53', '2018-07-06 04:40:53', NULL);
INSERT INTO `master_category` VALUES (76, 13, NULL, 'ﾈｸﾀｲ', 'Tie', '2018-07-06 04:41:01', '2018-07-06 04:41:01', NULL);
INSERT INTO `master_category` VALUES (77, 13, NULL, 'ｳﾃﾞﾄﾞｴｲ', 'Watches', '2018-07-06 04:41:08', '2018-07-06 04:41:08', NULL);
INSERT INTO `master_category` VALUES (78, 13, NULL, 'ｶｰﾄﾞｹｰｽ', 'Card case', '2018-07-06 04:41:15', '2018-07-06 04:41:15', NULL);
INSERT INTO `master_category` VALUES (79, 13, NULL, 'ﾃﾌﾞｸﾛ/ｸﾞﾛｰﾌﾞ', 'Gloves / Gloves', '2018-07-06 04:41:22', '2018-07-06 04:41:22', NULL);
INSERT INTO `master_category` VALUES (80, 13, NULL, 'ｽｶｰﾌ', 'Scarf', '2018-07-06 04:41:28', '2018-07-06 04:41:28', NULL);
INSERT INTO `master_category` VALUES (81, 13, NULL, 'ｿﾉﾀｺﾓﾉ', 'Other accessories', '2018-07-06 04:41:35', '2018-07-06 04:41:35', NULL);
INSERT INTO `master_category` VALUES (82, 14, NULL, 'ｽﾆｰｶｰ', 'Sneakers', '2018-07-06 04:42:15', '2018-07-06 04:42:15', NULL);
INSERT INTO `master_category` VALUES (83, 15, NULL, 'ｻﾝﾀﾞﾙ', 'Sandals', '2018-07-06 04:42:31', '2018-07-06 04:42:31', NULL);
INSERT INTO `master_category` VALUES (84, 15, NULL, 'ﾊﾟﾝﾌﾟｽ/ﾐｭｰﾙ', 'Pumps / Mule', '2018-07-06 04:42:40', '2018-07-06 04:42:40', NULL);
INSERT INTO `master_category` VALUES (85, 16, NULL, 'ﾌﾞｰﾂ', 'Boots', '2018-07-06 04:42:53', '2018-07-06 04:42:53', NULL);
INSERT INTO `master_category` VALUES (86, 17, NULL, 'ｼｭｰｽﾞ(ｿﾉﾀ)', 'Shoes (Others)', '2018-07-06 04:43:09', '2018-07-06 04:43:09', NULL);
INSERT INTO `master_category` VALUES (87, 18, NULL, 'ﾎｳｼｮｸﾘﾝｸﾞ', 'Jewelry ring', '2018-07-06 04:43:22', '2018-07-06 04:43:22', NULL);
INSERT INTO `master_category` VALUES (88, 18, NULL, 'ﾎｳｼｮｸﾈｯｸﾚｽ', 'Jewelry necklace', '2018-07-06 04:43:30', '2018-07-06 04:43:30', NULL);
INSERT INTO `master_category` VALUES (89, 18, NULL, 'ﾎｳｼｮｸﾈｯｸﾚｽﾄｯﾌﾟ', 'Jewelry necklace top', '2018-07-06 04:43:38', '2018-07-06 04:43:38', NULL);
INSERT INTO `master_category` VALUES (90, 18, NULL, 'ﾎｳｼｮｸﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ', 'Jewelry Bracelet / Bangle', '2018-07-06 04:43:45', '2018-07-06 04:43:45', NULL);
INSERT INTO `master_category` VALUES (91, 18, NULL, 'ﾎｳｼｮｸﾋﾟｱｽ', 'Jewelry earrings', '2018-07-06 04:43:51', '2018-07-06 04:43:51', NULL);
INSERT INTO `master_category` VALUES (92, 18, NULL, 'ﾎｳｼｮｸｲﾔﾘﾝｸﾞ', 'Jewelry Earrings', '2018-07-06 04:43:58', '2018-07-06 04:43:58', NULL);
INSERT INTO `master_category` VALUES (93, 18, NULL, 'ﾎｳｼｮｸﾙｰｽ', 'Jewelry Ruth', '2018-07-06 04:44:04', '2018-07-06 04:44:04', NULL);
INSERT INTO `master_category` VALUES (94, 18, NULL, 'ﾎｳｼｮｸｿﾉﾀ', 'Jewelry Other', '2018-07-06 04:44:11', '2018-07-06 04:44:11', NULL);
INSERT INTO `master_category` VALUES (95, 19, NULL, 'ｹｶﾞﾜｱﾊﾟﾚﾙ', 'Fur apparel', '2018-07-06 04:44:27', '2018-07-06 04:44:27', NULL);
INSERT INTO `master_category` VALUES (96, 19, NULL, 'ｹｶﾞﾜｺﾓﾉ', 'Furry accessories', '2018-07-06 04:44:39', '2018-07-06 04:44:39', NULL);
INSERT INTO `master_category` VALUES (97, 2, 1, 'H.外', 'H.OUTER', '2018-07-06 04:13:29', '2018-07-06 04:13:29', NULL);
INSERT INTO `master_category` VALUES (98, 2, 1, 'L.外', 'L.OUTER', '2018-07-06 04:15:29', '2018-07-06 04:15:29', NULL);
INSERT INTO `master_category` VALUES (99, 2, 1, 'シャツ', 'SHIRT', '2018-07-06 04:15:53', '2018-07-06 04:15:53', NULL);
INSERT INTO `master_category` VALUES (100, 2, 1, 'ニット/カージガン', 'KNIT/CARDIGAN', '2018-07-06 04:16:12', '2018-07-06 04:16:12', NULL);
INSERT INTO `master_category` VALUES (101, 2, 1, 'カット＆セーン', 'CUT&SEWN', '2018-07-06 04:16:24', '2018-07-06 04:16:24', NULL);
INSERT INTO `master_category` VALUES (102, 2, 1, 'パーカー/スウェット', 'PARKA/SWEAT', '2018-07-06 04:16:52', '2018-07-06 04:16:52', NULL);
INSERT INTO `master_category` VALUES (103, 2, 5, 'セットアップ', 'SETUP', '2018-07-06 04:17:11', '2018-07-06 04:17:11', NULL);
INSERT INTO `master_category` VALUES (104, 2, 1, 'パンツ/スカート', 'PANTS/SKIRT', '2018-07-06 04:17:35', '2018-07-06 04:17:35', NULL);
INSERT INTO `master_category` VALUES (105, 2, 5, 'バッグ', 'BAG', '2018-07-06 04:17:51', '2018-07-06 04:17:51', NULL);
INSERT INTO `master_category` VALUES (106, 2, 5, 'アクセサリー', 'ACCESSORY', '2018-07-06 04:18:03', '2018-07-06 04:18:03', NULL);
INSERT INTO `master_category` VALUES (107, 2, 5, '品', 'GOODS', '2018-07-06 04:18:17', '2018-07-06 04:18:17', NULL);
INSERT INTO `master_category` VALUES (108, 2, 1, 'スニーカー', 'SNEAKER', '2018-07-06 04:18:31', '2018-07-06 04:18:31', NULL);
INSERT INTO `master_category` VALUES (109, 2, 2, 'サンダル', 'SANDAL', '2018-07-06 04:19:13', '2018-07-06 04:19:13', NULL);
INSERT INTO `master_category` VALUES (110, 2, 2, 'ブーツ', 'BOOTS', '2018-07-06 04:19:25', '2018-07-06 04:19:25', NULL);
INSERT INTO `master_category` VALUES (111, 2, 2, 'その他の靴', 'OTHER SHOES', '2018-07-06 04:19:37', '2018-07-06 04:19:37', NULL);
INSERT INTO `master_category` VALUES (112, 2, 5, '宝石', 'JEWELRY', '2018-07-06 04:19:47', '2018-07-06 04:19:47', NULL);
INSERT INTO `master_category` VALUES (113, 2, 4, '毛皮', 'FUR', '2018-07-06 04:21:08', '2018-07-06 04:21:08', NULL);
INSERT INTO `master_category` VALUES (114, 97, NULL, 'H.ﾀﾞｳﾝｼﾞｬｹｯﾄ', 'H. Down jacket', '2018-07-06 04:25:09', '2018-07-06 04:25:09', NULL);
INSERT INTO `master_category` VALUES (115, 97, NULL, 'H.ｺｰﾄ', 'H. Coat', '2018-07-06 04:26:52', '2018-07-06 04:26:52', NULL);
INSERT INTO `master_category` VALUES (116, 97, NULL, 'H.ﾚｻﾞｰｼﾞｬｹｯﾄ', 'H. Leather jacket', '2018-07-06 04:27:03', '2018-07-06 04:27:03', NULL);
INSERT INTO `master_category` VALUES (117, 97, NULL, 'H.ﾌﾞﾙｿﾞﾝ', 'H. Blouson', '2018-07-06 04:27:09', '2018-07-06 04:27:09', NULL);
INSERT INTO `master_category` VALUES (118, 97, NULL, 'H.ﾀﾞｳﾝﾍﾞｽﾄ', 'H. Down vest', '2018-07-06 04:27:25', '2018-07-06 04:27:25', NULL);
INSERT INTO `master_category` VALUES (119, 97, NULL, 'H.ｼﾞｬｹｯﾄ', 'H. Jacket', '2018-07-06 04:27:37', '2018-07-06 04:27:37', NULL);
INSERT INTO `master_category` VALUES (120, 98, NULL, 'L.ﾃﾞﾆﾑｼﾞｬｹｯﾄ', 'L. Denim jacket', '2018-07-06 04:28:18', '2018-07-06 04:28:18', NULL);
INSERT INTO `master_category` VALUES (121, 98, NULL, 'L.ｺｰﾄ', 'L. Coat', '2018-07-06 04:28:33', '2018-07-06 04:28:33', NULL);
INSERT INTO `master_category` VALUES (122, 98, NULL, 'L.ﾚｻﾞｰｼﾞｬｹｯﾄ', 'L. Leather jacket', '2018-07-06 04:28:39', '2018-07-06 04:28:39', NULL);
INSERT INTO `master_category` VALUES (123, 98, NULL, 'L.ﾌﾞﾙｿﾞﾝ', 'L. Blouson', '2018-07-06 04:28:45', '2018-07-06 04:28:45', NULL);
INSERT INTO `master_category` VALUES (124, 98, NULL, 'L.ｼﾞｬｹｯﾄ', 'L. Jacket', '2018-07-06 04:29:08', '2018-07-06 04:29:08', NULL);
INSERT INTO `master_category` VALUES (125, 99, NULL, 'ﾅｶﾞｿﾃﾞｼｬﾂ', 'Long Sleeve Shirt', '2018-07-06 04:30:24', '2018-07-06 04:30:24', NULL);
INSERT INTO `master_category` VALUES (126, 99, NULL, 'ﾊﾝｿﾃﾞｼｬﾂ', 'Short Sleeve Shirt', '2018-07-06 04:30:33', '2018-07-06 04:30:33', NULL);
INSERT INTO `master_category` VALUES (127, 99, NULL, 'ﾉｰｽﾘｰﾌﾞｼｬﾂ', 'Sleeveless Shirt', '2018-07-06 04:30:39', '2018-07-06 04:30:39', NULL);
INSERT INTO `master_category` VALUES (128, 100, NULL, 'ｶｰﾃﾞｨｶﾞﾝ', 'Cardigan', '2018-07-06 04:31:02', '2018-07-06 04:31:02', NULL);
INSERT INTO `master_category` VALUES (129, 100, NULL, 'ﾆｯﾄ', 'Knit', '2018-07-06 04:31:16', '2018-07-06 04:31:16', NULL);
INSERT INTO `master_category` VALUES (130, 101, NULL, 'ﾊﾝｿﾃﾞﾎﾟﾛｼｬﾂ', 'Short Sleeve Polo Shirt', '2018-07-06 04:32:26', '2018-07-06 04:32:26', NULL);
INSERT INTO `master_category` VALUES (131, 101, NULL, 'ﾅｶﾞｿﾃﾞｶｯﾄｿｰ', 'Long Sleeve Cut', '2018-07-06 04:32:48', '2018-07-06 04:32:48', NULL);
INSERT INTO `master_category` VALUES (132, 101, NULL, 'Tｼｬﾂ', 'T-shirt', '2018-07-06 04:32:54', '2018-07-06 04:32:54', NULL);
INSERT INTO `master_category` VALUES (133, 101, NULL, 'ﾀﾝｸﾄｯﾌﾟ/ﾉｰｽﾘｰﾌﾞｶｯﾄｿｰ', 'Tank top / Sleeveless cut', '2018-07-06 04:33:07', '2018-07-06 04:33:07', NULL);
INSERT INTO `master_category` VALUES (134, 101, NULL, 'ｷｬﾐｿｰﾙ', 'Camisole', '2018-07-06 04:33:14', '2018-07-06 04:33:14', NULL);
INSERT INTO `master_category` VALUES (135, 101, NULL, 'ﾜﾝﾋﾟｰｽ/ﾁｭﾆｯｸ/ﾌﾞﾗｳｽ', 'One Piece: Tunic / Blouse', '2018-07-06 04:33:23', '2018-07-06 04:33:23', NULL);
INSERT INTO `master_category` VALUES (136, 101, NULL, 'ﾍﾞｽﾄ/ｼﾞﾚ', 'Best / Gillet', '2018-07-06 04:33:39', '2018-07-06 04:33:39', NULL);
INSERT INTO `master_category` VALUES (137, 101, NULL, 'ｿﾉﾀﾄｯﾌﾟｽ', 'Other tops', '2018-07-06 04:33:48', '2018-07-06 04:33:48', NULL);
INSERT INTO `master_category` VALUES (138, 102, NULL, 'ﾊﾟｰｶｰ', 'Parker', '2018-07-06 04:34:04', '2018-07-06 04:34:04', NULL);
INSERT INTO `master_category` VALUES (139, 102, NULL, 'ｽｳｪｯﾄ', 'Sweat', '2018-07-06 04:35:00', '2018-07-06 04:35:00', NULL);
INSERT INTO `master_category` VALUES (140, 103, NULL, 'ｽｰﾂ', 'Suit', '2018-07-06 04:35:10', '2018-07-06 04:35:10', NULL);
INSERT INTO `master_category` VALUES (141, 103, NULL, 'ｿﾉﾀｾｯﾄｱｯﾌﾟ', 'Other setup', '2018-07-06 04:35:17', '2018-07-06 04:35:17', NULL);
INSERT INTO `master_category` VALUES (142, 104, NULL, 'ﾛﾝｸﾞﾊﾟﾝﾂ', 'Long pants', '2018-07-06 04:35:27', '2018-07-06 04:35:27', NULL);
INSERT INTO `master_category` VALUES (143, 104, NULL, 'ﾊｰﾌﾊﾟﾝﾂ/ｼｮｰﾄﾊﾟﾝﾂ/ｼｮｰﾂ', 'Half pants / shorts / shorts', '2018-07-06 04:35:34', '2018-07-06 04:35:34', NULL);
INSERT INTO `master_category` VALUES (144, 104, NULL, 'ﾃﾞﾆﾑﾊﾟﾝﾂ', 'Denim trousers', '2018-07-06 04:35:41', '2018-07-06 04:35:41', NULL);
INSERT INTO `master_category` VALUES (145, 104, NULL, 'ｽｶｰﾄ', 'Skirt', '2018-07-06 04:35:48', '2018-07-06 04:35:48', NULL);
INSERT INTO `master_category` VALUES (146, 104, NULL, 'ｿﾉﾀﾎﾞﾄﾑｽ', 'Other bottoms', '2018-07-06 04:35:56', '2018-07-06 04:35:56', NULL);
INSERT INTO `master_category` VALUES (147, 105, NULL, 'ﾄｰﾄﾊﾞｯｸﾞ', 'Tote bag', '2018-07-06 04:37:20', '2018-07-06 04:37:20', NULL);
INSERT INTO `master_category` VALUES (148, 105, NULL, 'ﾊﾝﾄﾞﾊﾞｯｸﾞ', 'Handbag', '2018-07-06 04:37:28', '2018-07-06 04:37:28', NULL);
INSERT INTO `master_category` VALUES (149, 105, NULL, 'ｼｮﾙﾀﾞｰﾊﾞｯｸﾞ', 'Shoulder bag', '2018-07-06 04:37:34', '2018-07-06 04:37:34', NULL);
INSERT INTO `master_category` VALUES (150, 105, NULL, 'ﾎﾞｽﾄﾝﾊﾞｯｸﾞ', 'Boston bag', '2018-07-06 04:37:44', '2018-07-06 04:37:44', NULL);
INSERT INTO `master_category` VALUES (151, 105, NULL, 'ｳｴｽﾄﾊﾞｯｸﾞ/ﾎﾞﾃﾞｨｰﾊﾞｯｸﾞ', 'Waist Bag / Body Bag', '2018-07-06 04:37:51', '2018-07-06 04:37:51', NULL);
INSERT INTO `master_category` VALUES (152, 105, NULL, 'ﾌﾞﾘｰﾌﾊﾞｯｸﾞ', 'Brief bag', '2018-07-06 04:37:57', '2018-07-06 04:37:57', NULL);
INSERT INTO `master_category` VALUES (153, 105, NULL, 'ﾎﾟｰﾁ', 'Pouch', '2018-07-06 04:38:04', '2018-07-06 04:38:04', NULL);
INSERT INTO `master_category` VALUES (154, 105, NULL, 'ﾘｭｯｸ/ﾊﾞｯｸﾊﾟｯｸ', 'Backpack / Backpack', '2018-07-06 04:38:11', '2018-07-06 04:38:11', NULL);
INSERT INTO `master_category` VALUES (155, 105, NULL, 'ｸﾗｯﾁﾊﾞｯｸﾞ', 'Clutch bag', '2018-07-06 04:38:28', '2018-07-06 04:38:28', NULL);
INSERT INTO `master_category` VALUES (156, 105, NULL, 'ｿﾉﾀﾊﾞｯｸﾞ', 'Other bags', '2018-07-06 04:38:35', '2018-07-06 04:38:35', NULL);
INSERT INTO `master_category` VALUES (157, 106, NULL, 'ﾘﾝｸﾞ', 'Ring', '2018-07-06 04:38:54', '2018-07-06 04:38:54', NULL);
INSERT INTO `master_category` VALUES (158, 106, NULL, 'ﾈｯｸﾚｽ', 'Necklace', '2018-07-06 04:39:03', '2018-07-06 04:39:03', NULL);
INSERT INTO `master_category` VALUES (159, 106, NULL, 'ﾈｯｸﾚｽﾄｯﾌﾟ', 'Necklace top', '2018-07-06 04:39:09', '2018-07-06 04:39:09', NULL);
INSERT INTO `master_category` VALUES (160, 106, NULL, 'ﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ', 'Bracelet / Bangle', '2018-07-06 04:39:15', '2018-07-06 04:39:15', NULL);
INSERT INTO `master_category` VALUES (161, 106, NULL, 'ｳｫﾚｯﾄﾁｪｰﾝ', 'Wallet Chain', '2018-07-06 04:39:23', '2018-07-06 04:39:23', NULL);
INSERT INTO `master_category` VALUES (162, 106, NULL, 'ﾋﾟｱｽ/ｲﾔﾘﾝｸﾞ', 'Earrings', '2018-07-06 04:39:28', '2018-07-06 04:39:28', NULL);
INSERT INTO `master_category` VALUES (163, 107, NULL, 'ﾎﾞｳｼ', 'Hat', '2018-07-06 04:40:06', '2018-07-06 04:40:06', NULL);
INSERT INTO `master_category` VALUES (164, 107, NULL, 'ﾍﾞﾙﾄ', 'Belt', '2018-07-06 04:40:21', '2018-07-06 04:40:21', NULL);
INSERT INTO `master_category` VALUES (165, 107, NULL, 'ｻｲﾌ', 'Wallet', '2018-07-06 04:40:26', '2018-07-06 04:40:26', NULL);
INSERT INTO `master_category` VALUES (166, 107, NULL, 'ｺｲﾝｹｰｽ', 'Coin purse', '2018-07-06 04:40:32', '2018-07-06 04:40:32', NULL);
INSERT INTO `master_category` VALUES (167, 107, NULL, 'ｻﾝｸﾞﾗｽ/ﾒｶﾞﾈ', 'Sunglasses / glasses', '2018-07-06 04:40:40', '2018-07-06 04:40:40', NULL);
INSERT INTO `master_category` VALUES (168, 107, NULL, 'ｽﾄｰﾙ', 'Stall', '2018-07-06 04:40:47', '2018-07-06 04:40:47', NULL);
INSERT INTO `master_category` VALUES (169, 107, NULL, 'ﾏﾌﾗｰ', 'Scarf', '2018-07-06 04:40:53', '2018-07-06 04:40:53', NULL);
INSERT INTO `master_category` VALUES (170, 107, NULL, 'ﾈｸﾀｲ', 'Tie', '2018-07-06 04:41:01', '2018-07-06 04:41:01', NULL);
INSERT INTO `master_category` VALUES (171, 107, NULL, 'ｳﾃﾞﾄﾞｴｲ', 'Watches', '2018-07-06 04:41:08', '2018-07-06 04:41:08', NULL);
INSERT INTO `master_category` VALUES (172, 107, NULL, 'ｶｰﾄﾞｹｰｽ', 'Card case', '2018-07-06 04:41:15', '2018-07-06 04:41:15', NULL);
INSERT INTO `master_category` VALUES (173, 107, NULL, 'ﾃﾌﾞｸﾛ/ｸﾞﾛｰﾌﾞ', 'Gloves / Gloves', '2018-07-06 04:41:22', '2018-07-06 04:41:22', NULL);
INSERT INTO `master_category` VALUES (174, 107, NULL, 'ｽｶｰﾌ', 'Scarf', '2018-07-06 04:41:28', '2018-07-06 04:41:28', NULL);
INSERT INTO `master_category` VALUES (175, 107, NULL, 'ｿﾉﾀｺﾓﾉ', 'Other accessories', '2018-07-06 04:41:35', '2018-07-06 04:41:35', NULL);
INSERT INTO `master_category` VALUES (176, 108, NULL, 'ｽﾆｰｶｰ', 'Sneakers', '2018-07-06 04:42:15', '2018-07-06 04:42:15', NULL);
INSERT INTO `master_category` VALUES (177, 109, NULL, 'ｻﾝﾀﾞﾙ', 'Sandals', '2018-07-06 04:42:31', '2018-07-06 04:42:31', NULL);
INSERT INTO `master_category` VALUES (178, 109, NULL, 'ﾊﾟﾝﾌﾟｽ/ﾐｭｰﾙ', 'Pumps / Mule', '2018-07-06 04:42:40', '2018-07-06 04:42:40', NULL);
INSERT INTO `master_category` VALUES (179, 110, NULL, 'ﾌﾞｰﾂ', 'Boots', '2018-07-06 04:42:53', '2018-07-06 04:42:53', NULL);
INSERT INTO `master_category` VALUES (180, 111, NULL, 'ｼｭｰｽﾞ(ｿﾉﾀ)', 'Shoes (Others)', '2018-07-06 04:43:09', '2018-07-06 04:43:09', NULL);
INSERT INTO `master_category` VALUES (181, 112, NULL, 'ﾎｳｼｮｸﾘﾝｸﾞ', 'Jewelry ring', '2018-07-06 04:43:22', '2018-07-06 04:43:22', NULL);
INSERT INTO `master_category` VALUES (182, 112, NULL, 'ﾎｳｼｮｸﾈｯｸﾚｽ', 'Jewelry necklace', '2018-07-06 04:43:30', '2018-07-06 04:43:30', NULL);
INSERT INTO `master_category` VALUES (183, 112, NULL, 'ﾎｳｼｮｸﾈｯｸﾚｽﾄｯﾌﾟ', 'Jewelry necklace top', '2018-07-06 04:43:38', '2018-07-06 04:43:38', NULL);
INSERT INTO `master_category` VALUES (184, 112, NULL, 'ﾎｳｼｮｸﾌﾞﾚｽﾚｯﾄ/ﾊﾞﾝｸﾞﾙ', 'Jewelry Bracelet / Bangle', '2018-07-06 04:43:45', '2018-07-06 04:43:45', NULL);
INSERT INTO `master_category` VALUES (185, 112, NULL, 'ﾎｳｼｮｸﾋﾟｱｽ', 'Jewelry earrings', '2018-07-06 04:43:51', '2018-07-06 04:43:51', NULL);
INSERT INTO `master_category` VALUES (186, 112, NULL, 'ﾎｳｼｮｸｲﾔﾘﾝｸﾞ', 'Jewelry Earrings', '2018-07-06 04:43:58', '2018-07-06 04:43:58', NULL);
INSERT INTO `master_category` VALUES (187, 112, NULL, 'ﾎｳｼｮｸﾙｰｽ', 'Jewelry Ruth', '2018-07-06 04:44:04', '2018-07-06 04:44:04', NULL);
INSERT INTO `master_category` VALUES (188, 112, NULL, 'ﾎｳｼｮｸｿﾉﾀ', 'Jewelry Other', '2018-07-06 04:44:11', '2018-07-06 04:44:11', NULL);
INSERT INTO `master_category` VALUES (189, 113, NULL, 'ｹｶﾞﾜｱﾊﾟﾚﾙ', 'Fur apparel', '2018-07-06 04:44:27', '2018-07-06 04:44:27', NULL);
INSERT INTO `master_category` VALUES (190, 113, NULL, 'ｹｶﾞﾜｺﾓﾉ', 'Furry accessories', '2018-07-06 04:44:39', '2018-07-06 04:44:39', NULL);

-- ----------------------------
-- Table structure for master_city
-- ----------------------------
DROP TABLE IF EXISTS `master_city`;
CREATE TABLE `master_city`  (
  `city_id` int(11) NOT NULL,
  `city_state` int(11) NULL DEFAULT NULL,
  `city_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `city_lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `city_long` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `city_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_city
-- ----------------------------
INSERT INTO `master_city` VALUES (1, 1, 'Tokyo', '1', '1', '1', NULL);
INSERT INTO `master_city` VALUES (2, 2, 'New York', '1', '1', '1', NULL);
INSERT INTO `master_city` VALUES (3, 2, 'Los Angles', '1', '1', '1', NULL);

-- ----------------------------
-- Table structure for master_color
-- ----------------------------
DROP TABLE IF EXISTS `master_color`;
CREATE TABLE `master_color`  (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `color_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `color_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`color_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_color
-- ----------------------------
INSERT INTO `master_color` VALUES (1, 'Red', 'Red', '#ff0000', '2018-07-04 12:06:42', '2018-07-04 12:06:42', NULL);
INSERT INTO `master_color` VALUES (2, 'Yellow', 'Yellow', '#fff500', '2018-07-04 12:06:57', '2018-07-04 12:06:57', NULL);
INSERT INTO `master_color` VALUES (3, 'Blue', 'Blue', '#0029ff', '2018-07-04 12:07:06', '2018-07-04 12:07:06', NULL);
INSERT INTO `master_color` VALUES (4, 'Green', 'Green', '#00ff47', '2018-07-04 12:07:20', '2018-07-04 12:07:20', NULL);
INSERT INTO `master_color` VALUES (5, 'Black', 'Black', '#000000', '2018-07-04 12:07:35', '2018-07-04 12:07:35', NULL);
INSERT INTO `master_color` VALUES (6, 'White', 'White', '#ffffff', '2018-07-04 12:07:42', '2018-07-04 12:07:42', NULL);
INSERT INTO `master_color` VALUES (7, 'Orange', 'Orange', '#ffa800', '2018-07-04 12:07:57', '2018-07-04 12:07:57', NULL);
INSERT INTO `master_color` VALUES (8, 'Spec', 'Orange', '#ff6b00', '2018-07-12 12:27:44', '2018-07-12 12:29:15', NULL);

-- ----------------------------
-- Table structure for master_designer
-- ----------------------------
DROP TABLE IF EXISTS `master_designer`;
CREATE TABLE `master_designer`  (
  `designer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `designer` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `period` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `birthplace` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `figure` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  `updated_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`designer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 616 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_designer
-- ----------------------------
INSERT INTO `master_designer` VALUES (5, 'USA', '2005-', 'USA', 'designer_5bb5b57ea931cjpg', '2018-10-04', '2018-10-04');
INSERT INTO `master_designer` VALUES (6, 'Korea', '2012-', 'Korea', 'designer_5bb5c0e530a78jpg', NULL, '2018-10-04');
INSERT INTO `master_designer` VALUES (7, 'Japan', '1993-2013', 'Japan', 'designer_5bb5c0f44d972jpg', NULL, '2018-10-04');
INSERT INTO `master_designer` VALUES (8, 'Morocco', '1994-', 'Morocco', 'designer_5bb5c107ce377jpg', NULL, '2018-10-04');
INSERT INTO `master_designer` VALUES (9, 'Guillaume Pajolec', '1994-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (10, 'Jean Touitou', '1987-', 'Tunisia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (11, 'Jonny Johansson', '1996-', 'Sweden', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (12, 'Adam Kimmel', '2004-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (13, 'Satoshi Ishijima', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (14, 'Hiroshi Fujiwara', '1994-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (15, 'Jun Takahasi', '1994-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (16, 'Agn??s Troubl??', '1973-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (17, 'Jun Hashimoto', '2006-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (18, 'Tomohiro Ozawa', '2006-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (19, 'Alex Mattsson', '-', 'Sweden', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (20, 'Alex Streeter', '1971-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (21, 'Alexander McQueen', '1992-2010', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (22, 'Sarah Burton', '2010-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (23, 'Alexander Wang', '2004-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (24, 'Alexander Lee Chang', '2004-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (25, 'VERBAL', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (26, 'YOON', '2008-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (27, 'Alexandre Mattiussi', '2011-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (28, 'Mike Amiri', '2013-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (29, 'Ann Demeulemeester', '1885-2013', 'Belgium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (30, 'S??bastien Meunier', '2013-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (31, 'Kunihiko Morinaga', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (32, 'Brice Partouche', '2002-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (33, 'Soichiro Suzuki', '1989-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (34, 'Hiromitsu Kan-oh', '-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (35, 'Astrid Andersen', '2011-', 'Denmark', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (36, 'Kei Henmi', '-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (37, 'Ato Matsumoto', '1993-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (38, 'Kazuyuki Kumagai', '1999-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (39, 'Takeshi Shimoyama', '2011-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (40, 'Naoya Ota', '2001-2016', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (41, 'Takeo Suzuki', '2016-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (42, 'Pierre Balmain', '1945-1982', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (43, 'Erik Mortensen', '1982-1991', 'Denmark', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (44, 'Oscar de la Renta', '1993-2001', 'Dominican Republic', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (45, 'Laurent Mercier', '2002-2004', 'Switzerland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (46, 'Christophe Decarnin', '2006-2011', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (47, 'Olivier Rousteing', '2011-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (48, 'Shun Nakagawa', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (49, 'Ayano Ichige', '2002-2010', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (50, 'Ayano Ichige', '2017-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (51, 'Scott Sternberg', '2004-2015', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (52, 'Niklaus Hodel', '2017-', 'Switzerland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (53, 'Matthias Weber', '2017-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (54, 'Florian Feder', '2017-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (55, 'Shinpei Yamagishi', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (56, 'Yosuke Kimura', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (57, 'Keisuke Kosaka', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (58, 'Masafumi Watanabe', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (59, 'Alessandro Berluti', '1895-1928', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (60, 'Torello Berluti', '1928-1959', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (61, 'Talbinio Berluti', '1959-2011', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (62, 'Olga Berluti', '1962-2011', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (63, 'Alessandro Sartori', '2011-2016', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (64, 'Haider Ackermann', '2016-2018', 'Columbia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (65, 'Kris Van Assche', '2018-', 'Belgium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (66, 'Bernhard Willhelm', '1999-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (67, 'Rei Kawakubo', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (68, 'Desiree Heiss', '1996-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (69, 'Ines Kaag', '1996-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (70, 'Boris Bidjan Saberi', '2008-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (71, 'Michele Taddei', '1966-196x', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (72, 'Renzo Zengiaro', '1966-196x', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (73, 'Vittorio Moltedo', '196x-2001', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (74, 'Laura Moltedo', '196x-2001', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (75, 'Tomas Maier', '2001-2018', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (76, 'Brunello Cucinelli', '1978-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (77, 'Tetsuya Hashimoto', '2011-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (78, 'Thomas Burberry', '1856-1xxx', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (79, 'Roberto Menichetti', '1999-2002', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (80, 'Christopher Bailey', '2002-2018', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (81, 'Riccardo Tisci', '2018-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (82, 'Roberto Menichetti', '1998-2001', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (83, 'Christopher Bailey', '2001-2018', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (84, 'Riccardo Tisci', '2018-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (85, 'Jon Buscemi', '2013-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (86, 'SK8THING', '2011-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (87, 'Toby Feltwell', '2011-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (88, 'Yutaka Hishiyama', '2011-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (89, 'Akira Onozuka', '1988-2011', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (90, 'Carol Christian Poell', '1996-', 'Austria', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (91, 'Maurizio Altieri', '1994-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (92, 'Madame Carven', '1945-1993', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (93, 'Guillaume Henry', '2010-2014', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (94, 'Alexis Martial (Women\'s)', '2015-2016', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (95, 'Barnab?? Hardy (Men\'s)', '2014-2016', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (96, 'Adrien Caillaudaud (Women\'s)', '2015-2016', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (97, 'Serge Ruiffieux', '2017-', 'Switzerland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (98, 'Joe Casely-Hayford', '1985-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (99, 'Toshiyuki Terui', '1998-2007', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (100, 'Gabrielle Bonheur Chanel', '1910-1971', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (101, 'Karl Lagerfeld', '1983-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (102, 'Masanori Morikawa', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (103, 'Christian Lacroix', '1987-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (104, 'Sacha Walckhoff (Men\'s)', '2011-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (105, 'Christopher Kane', '2007-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (106, 'Christopher Louis Nemeth', '1986-2010', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (107, 'Christopher Raeburn', '2008-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (108, 'Rihito', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (109, 'Takayuki Chino', '2014-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (110, 'Cinzia Araia', '2010-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (111, 'Cippy Crazy Horse', '-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (112, 'Ena Matsumoto', '2015-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (113, 'Satoshi Ogawa', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (114, 'Cody Sanderson', '1999-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (115, 'Flavio Girolami', '2004-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (116, 'Prathan Poopat', '2004-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (117, 'Gabrielecorto Moltedo', '2004-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (118, 'Yukinori Maeda', '1997-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (119, 'Ennio Capasa', '1986-2017', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (120, 'Koji Udo (Men\'s)', '2017-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (121, 'Yasutoshi Ezumi (Women\'s)', '2017-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (122, 'Ben Cottrell', '2012-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (123, 'Matthew Dainty', '2012-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (124, 'Armand Serra', '1992-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (125, 'Damir Doma', '2006-', 'Croatia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (126, 'Daniel Palillo', '2008-', 'Finland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (127, 'Akira Inoue', '-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (128, 'Motohiro Takahashi', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (129, 'Satoshi Yamashita ', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (130, 'Takushi Asami', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (131, 'Kazuyuki Akitani', '2008-2009', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (132, 'Takafumi Umemoto', '2009-2016', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (133, 'Jeffrey Sebelia', '2002-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (134, 'Michel Berandi', '2002-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (135, 'Hisashi Fukatami', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (136, 'Kohei Nishimura', '2006-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (137, 'Dirk Bikkembergs', '1986-2013', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (138, 'Paola Toscano (Women\'s)', '2012-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (139, 'Lee Wood', '2016-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (140, 'Tatsuya Kimura', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (141, 'Sanae Yoshida', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (142, 'Domenico Dolce', '1985-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (143, 'Stefano Gabbana', '1985-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (144, 'Toshikazu Iwaya', '2002-2008', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (145, 'Marjan Pejoski', '2009-2011', 'Macedonia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (146, 'Shinichiro Hosokawa', '2011-2013', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (147, 'Toshikazu Iwaya', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (148, 'Takeshi Kitazawa', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (149, 'Emiko Sato', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (150, 'Yuji Kobayashi', '2006-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (151, 'Dean Caten', '1994-', 'Canada', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (152, 'Dan Caten', '1994-', 'Canada', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (153, 'Taisuke Ota', '2006-2011', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (154, 'Takuya Tobise', '2006-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (155, 'Seiji Akutsu', '2006-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (156, 'Oriel Bensimon', '2003-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (157, 'Dan Cohen', '2003-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (158, 'Giorgio Armani', '1975-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (159, 'Daiki Suzuki', '1999-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (160, 'Ermanno Scervino', '1999-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (161, 'Gimmo Etro', '1968-2000', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (162, 'Kean Etro (Men\'s)', '1990-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (163, 'Veronica Etro (Women\'s)', '2000-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (164, 'Yoichi Jury Kawamura', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (165, 'Hirofumi Kiyonaga', '1999-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (166, 'Hiromichi Ochiai', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (167, 'Koji Udo', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (168, 'Ilan Delouis', '2004-2015', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (169, 'Christophe Decarnin', '2015-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (170, 'Jerry Lorenzo', '2012-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (171, 'Adele Fendi ', '1925-1946', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (172, 'Edoardo Fendi', '1925-1946', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (173, 'Paola Fendi', '1946-1965', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (174, 'Karl Lagerfeld', '1965-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (175, 'Silvia Venturini Fendi (Men\'s)', '1994-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (176, 'Kazuyuki Akitani', '2011-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (177, 'Kazuya Ito', '1996-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (178, 'Alfred Albrizio ??', '1994-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (179, 'Toshinosuke Takegahara', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (180, 'Hiroyuki Nakamura', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (181, 'Frank Leder', '1999-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (182, 'Eri Utsugi', '2001-2005', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (183, 'Haruki Sasaki', '2005-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (184, 'Nina Garduno', '2001-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (185, 'Tunde Ogunnoiki', '2009-', 'Nigeria', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (186, 'Mug', '1999-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (187, 'Miki Okawara', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (188, 'Fumihito Ganryu', '2008-2017', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (189, 'Gareth Pugh', '2006-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (190, 'Eiji Furuya', '1997-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (191, 'Naruki Nagasawa', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (192, 'Tsuyoci Etoiles', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (193, 'Giorgio Armani', '1975-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (194, 'Giorgio Braschi', '2001-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (195, 'Yoshiaki Fujiwara', '1986-2001', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (196, 'Masataka Matsumura', '2005-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (197, 'Giuseppe Zanotti', '1994-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (198, 'Hubert de Givenchy', '1952-1995', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (199, 'John Galliano', '1996-1996', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (200, 'Alexander McQueen', '1997-2001', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (201, 'Julien Macdonald', '2001-2005', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (202, 'Ozwald Boateng (Men\'s)', '2003-2008', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (203, 'Riccardo Tisci', '2005-2017', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (204, 'Clare Waight Keller', '2018-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (205, 'Kan Furuya', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (206, 'Francesca Rinaldo', '2000-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (207, 'Alessandro Gallo', '2000-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (208, 'Gosha Rubchinskiy', '2008-', 'Russia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (209, 'Paterson?Riley', '1972-2003', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (210, 'Reino Lehtonen-Riley', '2003-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (211, 'Hideaki Yoshihara', '1998-2009', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (212, 'Yukiko Ode', '1998-2009', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (213, 'Yohji Yamamoto', '2014-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (214, 'Guido Guidi', '1896-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (215, 'Giovanni Rosellini', '1896-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (216, 'Gino Ulivo', '1896-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (217, 'Gustavo Lins', '2003-', 'Brazil', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (218, 'Haider Ackermann', '2002-', 'Columbia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (219, 'Hijiri Uchida', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (220, 'Takashi Yoshizaka', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (221, 'Helmut Lang', '1976-2005', 'Austria', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (222, 'Naoki Takizawa', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (223, 'Ryo Kashiwazaki', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (224, 'Thierry Hermes', '1837-18xx', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (225, 'Charles-?mile Herm??s', '18xx-19xx', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (226, '?mile-Maurice Herm??s', '19xx-1951', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (227, 'Robert Dumas Herm??s', '1951-1978', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (228, 'Jean-Louis Robert Fr??d??ric Dumas', '1978-198x', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (229, 'Veronique Nichanian (Men\'s)', '1988-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (230, 'Eric Berg??re (Women\'s)', '1981-1989', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (231, 'Claude Brouet (Women\'s)', '1989-1997', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (232, 'Martin Margiela (Women\'s)', '1998-2004', 'Belgium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (233, 'Jean-Paul Gaultier (Women\'s)', '2004-2010', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (234, 'Christophe Lemaire (Women\'s)', '2010-2015', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (235, 'Nad??geVanhee-Cybulski (Women\'s)', '2015-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (236, 'Hiroaki Sueyasu', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (237, 'Hiromu Takahara', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (238, 'Shayne Oliver', '2006-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (239, 'Leilah Weinraub', '2006-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (240, 'Robert G Keith', '2005-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (241, 'Henry Holland', '2006-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (242, 'NIGO', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (243, 'Hussein Chalayan', '1995-', 'Cyprus', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (244, 'Alberto Bresci', '2003-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (245, 'Hideaki Yoshihara', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (246, 'Yukiko Ode', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (247, 'Nobuhiko Kitamura', '1984-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (248, 'Platinum Williams', '2008-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (249, 'Isabel Marant', '1994-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (250, 'Issey Miyake (Men\'s)', '1970-1993', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (251, 'Issey Miyake (Women\'s)', '1970-2000', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (252, 'Naoki Takizawa (Men\'s)', '1993-2007', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (253, 'Naoki Takizawa (Women\'s)', '2000-2007', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (254, 'Dai Fujiwara', '2007-2011', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (255, 'Yoshiyuki Miyamae (Women\'s)', '2012-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (256, 'Yusuke Tahakashi (Men\'s)', '2014-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (257, 'Kazuhiro Takakura', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (258, 'John Davidson', '1976-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (259, 'Monique Davidson', '1976-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (260, 'Motonori Masui', '1998-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (261, 'Jas Sehmbi', '2000-', 'Kenya', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (262, 'Jean Paul Gaultier', '1976-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (263, 'Jeremy Scott', '1997-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (264, 'Heidemarie Jiline Sander', '1968-2000', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (265, 'Milan Vukmirovic', '2000-2003', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (266, 'Heidemarie Jiline Sander', '2003-2004', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (267, 'Raf Simons', '2005-2012', 'Belgium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (268, 'Heidemarie Jiline Sander', '2013-2014', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (269, 'Rodolfo Paglialunga', '2014-2017', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (270, 'Lucie Meier', '2017-', 'Switzerland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (271, 'Luke Meier', '2017-', 'Canada', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (272, 'Jimmy Choo', '1996-2001', 'Malaysia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (273, 'Tamara Mellon', '1996-2011', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (274, 'Simon Holloway', '2011-2013', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (275, 'Sandra Choi', '2011-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (276, 'John Galliano', '1985-2011', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (277, 'Bill Gaytten', '2011-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (278, 'Arashi Yanagawa', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (279, 'John Richmond', '1982-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (280, 'Jun Takahasi', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (281, 'Mariko Hayashi', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (282, 'Tom Hirota', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (283, 'Tatsuro Horikawa', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (284, 'Jun Hashimoto', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (285, 'Junya Watanabe', '1992-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (286, 'Roberto Cavalli', '2000-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (287, 'Justin Davis', '2001-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (288, 'Jung Wook Jun', '2007-', 'Korea', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (289, 'Jonathan William Anderson', '2008-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (290, 'Kazuhiro Hirata', '1985-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (291, 'Karl Lagerfeld', '1983-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (292, 'Katie Eary', '2008-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (293, 'Kenzo Takada', '1970-1999', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (294, 'Gilles Rosier (Women\'s)', '2000-2004', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (295, 'Roy Krejberg (Men\'s)', '2000-2002', 'Denmark', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (296, 'Antonio Marras (Women\'s)', '2004-2011', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (297, 'Humberto Leon', '2011-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (298, 'Carol Lim', '2011-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (299, 'Takayuki Kijima', '1995-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (300, 'Michiko Kijima', '1995-2013', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (301, 'Masakatsu Takayanagi', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (302, 'Lui Onozaki', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (303, 'Kris Van Assche', '2005-2015', 'Belgium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (304, 'Dan Single', '2000-', 'Australia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (305, 'George Gorrow', '2000-', 'Australia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (306, 'Gareth Moody', '2000-', 'Australia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (307, 'Yatsuhashi Yusuke', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (308, 'Luca Laurini', '2003-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (309, 'Jeanne Lanvin', '1889-1926', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (310, 'Maurice Lanvin', '1926-1946', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (311, 'Marie Blanche', '1946-19xx', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (312, 'Eric Bergere', '1990-1991', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (313, 'Alber Elbaz', '2001-2015', 'Morroco', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (314, 'Lucas Ossendrijver (Men\'s)', '2005-2015', 'Netherlands', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (315, 'Bouchra Jarrar', '2016-2017', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (316, 'Olivier Lapidus', '2018-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (317, 'Dennis?Pollicino', '1980-2014', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (318, 'Christophe Lemaire', '1990-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (319, 'Linda Farrow?', '1970-1983', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (320, 'Simon Jablon', '2003-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (321, 'Takeshi Hiramatsu', '2005', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (322, 'Enrique LOEWE?Roessberg', '1846-1xxx', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (323, 'Narciso Rodriguez', '1998-2001', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (324, 'Jose Enrique Ona Selfa', '2002-2007', 'Bergium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (325, 'Stuart Vevers', '2008-2013', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (326, 'Jonathan Anderson', '2013-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (327, 'Leonard Kamhout', '1996-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (328, 'Devon Wheeler', '1996-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (329, 'Loree Rodkin', '1990-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (330, 'Yusuke Inazuka', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (331, 'Akira Arie', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (332, 'Ria Dunn', '2007-', 'Canada', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (333, 'Marc Jacobs', '1997-2013', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (334, 'Nicolas Ghesquiere (Women\'s)', '2013- ', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (335, 'Kim Jones (Men\'s)', '2011-2018', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (336, 'Virgil Abloh (Men\'s)', '2018-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (337, 'Manabu Yaegashi', '1998-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (338, 'Tatsuya Togo', '1998-2007', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (339, 'Koji Udo', '1998-2004', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (340, 'Lucien Pellat-Finet', '1986-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (341, 'Ryoichi Mori', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (342, 'Hideo Uchiyama', '1989-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (343, 'Gildas Loaec', '2002-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (344, 'Masaya Kuroki', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (345, 'Alfredo Canessa', '1972-xxxx', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (346, 'Giacomo Canessa', '1972-xxxx', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (347, 'Pierangelo d\'Agostin (Men\'s)', '2006-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (348, 'Tommaso Aquilano (Women\'s)', '2006-2008', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (349, 'Roberto Rimondi (Women\'s)', '2006-2008', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (350, 'Alessandro dell\'Acqua (Women\'s)', '2008-2009', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (351, 'Giacomo Canessa', '2015-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (352, 'Marc Jacobs', '1986-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (353, 'Marcelo Burlon', '2012-', 'Argentina', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (354, 'Margaret Howell', '1970-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (355, 'Shunsuke Ishikawa', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (356, 'Consuelo Castiglioni', '1994-2016', 'Switzerland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (357, 'Francesco Risso', '2017-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (358, 'Masaaki Homma', '1997-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (359, 'Mikio Suzuki', '-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (360, 'Sarah Burton', '2010-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (361, 'Eri Utsugi', '2006-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (362, 'Yasuhiro Mihara', '1996-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (363, 'Takeshi Osumi', '2012-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (364, 'Yuichi Yoshii', '2012-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (365, 'Miuccia Prada', '1993-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (366, 'Francisco Moschino', '1983-1994', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (367, 'Jeremy Scott', '2013-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (368, 'Massimo Giorgetti', '2009-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (369, 'Thierry Mugler', '1973-19xx', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (370, 'Rosemary Rodriguez', '2007-2010', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (371, 'Nicola Formichetti', '2010-2013', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (372, 'David Koma', '2013-', 'Georgia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (373, 'Alessandro Dell\'Acqua', '2010-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (374, 'Koichi Watanabe', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (375, 'Nasir Mazhar', '2013-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (376, 'Keizo Shimizu', '1998-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (377, 'Shinsuke Takizawa', '1994-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (378, 'Neil Barrett', '1999-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (379, 'Nicolas Andreas Taralis', '2004-', 'Canada', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (380, 'Nigel Cabourn', '1971-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (381, 'Yuji Sugeno', '1999-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (382, 'Satoshi Saffen', '1999-2001', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (383, 'Takayuki Fujii', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (384, 'Nozomi Ishiguro', '1998-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (385, 'Yusuke Takagi', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (386, 'Kanye West', '2016-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (387, 'Cali Thornhill DeWitt', '2016-', 'Canada', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (388, 'Patrick Stephan', '1984-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (389, 'Patrizia Bambi', '1993-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (390, 'Claudio Orrea', '1993-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (391, 'Sophie Mechaly', '1995-2017', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (392, 'Charles Anastase', '2017-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (393, 'Paul Harnden', '1987-', 'Canada', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (394, 'Takeshi Osumi', '2004-2016', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (395, 'Philipp Plein', '1998-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (396, 'Pierre Hardy', '1999-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (397, 'Rei Kawakubo', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (398, 'Masaya Takada', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (399, 'Hidenori Miura', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (400, 'Nicolo Ceschi Berrini', '2005-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (401, 'Ryujiro Tamaki', '2005-2016', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (402, 'Tomoyasu Hirano', '1995-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (403, 'Virgil Abloh', '2012-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (404, 'TAKATZO', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (405, 'TADISM', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (406, 'Raf Simons', '1995-', 'Belgium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (407, 'David Neville', '2002-2016', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (408, 'Marcus Wainwright', '2002-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (409, 'Yutaka Goto', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (410, 'Rick Owens', '1997-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (411, 'Naoki Shiratani', '1997-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (412, 'Masao Ono', '1997-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (413, 'Saburo Hamanaka', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (414, 'Robert Geller', '2006-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (415, 'Roberto Cavalli', '1970-2015', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (416, 'Peter Dundas', '2015-2017', 'Norway', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (417, 'Paul Surridge', '2017-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (418, 'Hiromu Takahara', '2001-2017', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (419, 'Cheryl Rixion Davis', '1996-', 'Australia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (420, 'Giovanna Gentile Ferragamo (Women\'s)', '1958-2000', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (421, 'Giovanna Gentile Ferragamo (Men\'s)', '1970-2004', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (422, 'Marc Audibet (Women\'s)', '2000-2002', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (423, 'Graeme Black (Women\'s)', '2002-2007', 'Scotland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (424, 'Massimiliano Giornetti (Men\'s)', '2004-2016', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (425, 'Christina Ortiz (Women\'s)', '2007-2010', 'Spain', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (426, 'Massimiliano Giornetti (Women\'s)', '2010-2016', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (427, 'Guillaume Meilland (Men\'s)', '2016-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (428, 'Fulvio Rigoni (Women\'s)', '2016-2017', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (429, 'Paul Andrew (Women\'s)', '2017-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (430, 'Daisuke Yokoyama', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (431, 'Takashi Takagi', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (432, 'Hisayo Hidaka', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (433, 'Hikaru Katano', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (434, 'Shaun Samson', '2011-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (435, 'Hideshi Maruya', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (436, 'Shinya Yamaguchi', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (437, 'Seishin Matsui', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (438, 'Takashi Koike', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (439, 'Manabu Kobayashi', '1998-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (440, 'Soichiro Ito', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (441, 'Hirofumi Kiyonaga', '1998-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (442, 'Chris Stampd', '2011-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (443, 'Teppei Fujita', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (444, 'Ryk Maverick', '2000-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (445, 'Stella McCartney', '2001-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (446, 'Stephan Schneider', '1994-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (447, 'Takashi Takayama', '1999-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (448, 'Lucy Pinter', '2003-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (449, 'Flora Evans', '2003-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (450, 'Takahiro Miyashita', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (451, 'Naoki Ichihara', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (452, 'Kei Henmi', '1997-2009', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (453, 'Toru Nishimura', '1997-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (454, 'Naomi Kurahashi', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (455, 'Tomoaki Okaniwa', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (456, 'Kotaro Sakaki', '2012-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (457, 'Thom Browne', '2001-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (458, 'Paula Thomas', '2006-2015', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (459, 'Jenny Park', '2015-', 'Korea', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (460, 'Tom Ford', '2005-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (461, 'Travis Walker', '1997-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (462, 'Milan Vukmirovic', '2008-2011', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (463, 'Umit Benan', '2011-2013', 'Turkey', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (464, 'Gaia Trussardi', '2013-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (465, 'Ugo Cacciatori', '1998-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (466, 'Eri Hirayama', '2010-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (467, 'Umit Benan', '2009-', 'Turkey', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (468, 'Yoshio Kubo', '2008-2016', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (469, 'Takayuki Kono', '2016-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (470, 'Hiroshi Fujiwara', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (471, 'Hirofumi Kiyonaga', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (472, 'Makoto Nishitani', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (473, 'Valentino Garavani', '1960-2007', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (474, 'Alessandra Facchinetti', '2008-2008', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (475, 'Maria Grazia Chiuri', '2008-2016', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (476, 'Pier Paolo Piccioli', '2008-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (477, 'Masaki Yukioka', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (478, 'Gianni Versace', '1978-1997', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (479, 'Donatella Versace', '1998-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (480, 'Anthony Vaccarello', '2015-2016', 'Belgium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (481, 'Viktor Horsting', '1993-', 'Israel', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (482, 'Rolf Snoeren', '1993-', 'Netherlands', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (483, 'Vinti Tan', '2006-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (484, 'Paul Andrews', '2006-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (485, 'Vivienne Tam', '1990-', 'China', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (486, 'Dame Vivienne Westwood', '1971-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (487, 'Tatsuya Okonogi', '2011-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (488, 'Yosuke Aizawa', '2006-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (489, 'Hiroaki Shitano', '2000-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (490, 'Riki Maezaki', '1994-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (491, 'Jun Hashimoto', '2004-2008', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (492, 'Makoto Nishitani', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (493, 'Tomohiro Ozawa', '2008-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (494, 'Takuji Mikita', '1991-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (495, 'Woo Young Mi', '1988-', 'Korea', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (496, 'Dame Vivienne Westwood', '1976-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (497, 'Tetsu Nishiyama', '1996-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (498, 'Yohji Yamamoto', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (499, 'Tetsuhiro Hattori', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (500, 'Kyoko Ide', '2002-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (501, 'Keita Kawamura', '2005-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (502, 'Michiko Imura', '2005-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (503, 'Kanye West', '2013-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (504, 'Yoshiko Kajitani', '1999-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (505, 'Yoshio Kubo', '2004-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (506, 'Yohji Yamamoto', '1979-2009', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (507, 'Kazuaki Koura', '1998-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (508, 'Maria Koch', '2015-', 'Germany', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (509, 'Davis Church', '2015-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (510, 'Matthew Williams', '2015-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (511, 'Keijiro Komori', '2011-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (512, 'Masayuki Ino', '2012-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (513, 'Dany Dos Santos', '2014-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (514, 'Maxime Schwab', '2014-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (515, 'Shoko Yoda', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (516, 'Yui Hashimoto', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (517, 'Aurelien Arbet', '2012-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (518, 'Jeremie Egry', '2012-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (519, 'Jos?? Lamali', '2012-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (520, 'Heron Preston', '2017-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (521, 'Ann Ringstrand', '2001-', 'Sweden', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (522, 'Stefan S?derberg', '2001-', 'Sweden', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (523, 'Makoto Yoshida', '2003-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (524, 'Ryo Takenaga', '2015-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (525, 'Shinsuke Mitsuoka', '2012-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (526, 'Mando Takasu', '1997-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (527, 'Koji Akasaki', '2012-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (528, 'Noriaki Kataoka', '2012-2013', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (529, 'Ryo Kaise', '2011-2018', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (530, 'Noriyuki Shimizu', '2011-2018', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (531, 'Takuji Yamada', '2018-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (532, 'Francesco Ragazzi', '2014-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (533, 'Koichi Watanabe', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (534, 'Hitoshi Shimomura', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (535, 'Daisuke Kamide', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (536, 'Yasuko Furuta', '2011-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (537, 'Daisuke Kamide', '2004-2013', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (538, 'Alain Mikli', '1978-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (539, 'Annette Leslie Cook', '1994-2012', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (540, 'Mauro Sani', '1964-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (541, 'Christian Louboutin', '1992-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (542, 'Bonnie Cashin', '1941-XXXX', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (543, 'Reed Krakoff', '1996-2013', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (544, 'Stuart Vevers', '2013-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (545, 'Renzo Rosso', '1978-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (546, 'Adriano Goldschmied', '1978-XXXX', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (547, 'Nicola Formichetti', '2013-2017', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (548, 'John Juniper', '1995-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (549, 'Jeff Solorio', '1995-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (550, 'Ermenegildo Zegna', '1910-198X', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (551, 'Ermenegildo Zegna(Grandson)', '198X-2012', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (552, 'Stefano Pilati', '2012-2016', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (553, 'Alessandro Sartor', '2016-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (554, 'Monica Sarti', '1992-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (555, 'Domenico Bertolani', '1996-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (556, 'Markus Freitag', '1993-', 'Switzerland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (557, 'Daniel Freitag', '1993-', 'Switzerland', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (558, 'Zip Stevenson', '2000-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (559, 'Wanny di Flippo', '1970-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (560, 'Keita Ogawa', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (561, 'Yoko Ito', '2009-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (562, 'Isaac Sellam', '2002-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (563, 'Isamu Katayama', '1999-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (564, 'Tato Bardelle', '1985-2003', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (565, 'Nicola Bardelle', '2003-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (566, 'Sasko Bezovski', '2003-', 'Macedonia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (567, 'Marjan Pejoski', '2003-', 'Macedonia', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (568, 'Michael Kors', '1981-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (569, 'Hyman Moscot', '1899-1925', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (570, 'Sol Moscot', '1925-1951', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (571, 'Joel Moscot', '1951-1986', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (572, 'Dr.Harvey Moscot', '1986-1992', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (573, 'Kenny Moscot', '1992-2013', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (574, 'Zack Moscot', '2013-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (575, 'Keizo Shimizu', '1988-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (576, 'Philip Oliver Goldsmith', '1926-1947', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (577, 'Charles Oliver Goldsmith', '1947-1965', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (578, 'Andrew Oliver Goldsmith', '1965-XXXX', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (579, 'Claire Goldsmith', '2006-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (580, 'Larry Leight', '1987-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (581, 'Giacomo Valentini', '1996-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (582, 'Paul Smith', '1970-2015', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (583, 'Simon Homes', '2015-2017', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (584, 'Paul Smith', '2017-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (585, 'Stephane Ashpool', '2010-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (586, 'Katsuyuki Yoshida', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (587, 'Leo Yoshida', '2007-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (588, 'Ralph Lauren', '1968-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (589, 'Ralph Lauren', '1993-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (590, 'Paul Sartore', '1959-19XX', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (591, 'Marcelle Sartore', '1959-19XX', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (592, 'Catherine Sartore', '1978-', 'France', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (593, 'Thomas Jacob??Tommy??Hilfiger', '1984-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (594, 'Ryo Ishikawa', '2005-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (595, 'Sonya Park', '2003-', 'Korea', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (596, 'Yoshiteru Kataoka', '1994-XXXX', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (597, 'Yutaka Katayanagi', '2001-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (598, 'Domenico Dolce', '1985-2012', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (599, 'Stefano Gabbana', '1985-2012', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (600, 'Rick Owens', '2008-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (601, 'Giorgio Armani', '1975-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (602, 'Jun Takahasi', '2013-', 'Japan', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (603, 'Roberto Cavalli', '2000-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (604, 'Marc Jacobs', '2001-2015', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (605, 'Alexander McQueen', '2006-2010', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (606, 'Sarah Burton', '2010-', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (607, 'Alexander Wang', '2009-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (608, 'Thom Browne', '2012-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (609, 'Donatella Versace', '1989-', 'Italy', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (610, 'Christopher Kane', '2009-2013', 'UK', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (611, 'Anthony Vaccarello', '2015-2016', 'Belgium', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (612, 'Jerry Lorenzo', '2015-', 'USA', NULL, NULL, NULL);
INSERT INTO `master_designer` VALUES (613, 'firewolf', '2011-2019', 'China', 'designer_5bb4ced39342cjpg', '2018-10-03', '2018-10-03');
INSERT INTO `master_designer` VALUES (614, 'ifer', '2011-', 'sdf', 'designer_5bb5b444d66f8jpg', '2018-10-04', '2018-10-04');
INSERT INTO `master_designer` VALUES (615, 'firewof', '2019-', 'todu', 'designer_5bb5c07988e31jpg', '2018-10-04', '2018-10-04');

-- ----------------------------
-- Table structure for master_emailtemplate
-- ----------------------------
DROP TABLE IF EXISTS `master_emailtemplate`;
CREATE TABLE `master_emailtemplate`  (
  `id` int(11) NOT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_event
-- ----------------------------
DROP TABLE IF EXISTS `master_event`;
CREATE TABLE `master_event`  (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `event_title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `event_condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `event_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `event_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_event
-- ----------------------------
INSERT INTO `master_event` VALUES (1, 'Event1', 'Event1', 'Event1', '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', 'Event1', '2018-07-04 12:41:09', '2018-07-06 05:59:45', NULL);
INSERT INTO `master_event` VALUES (2, 'Event2', 'Event2', 'Event2', '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', 'Event2', '2018-07-04 12:41:20', '2018-07-06 05:59:42', NULL);
INSERT INTO `master_event` VALUES (3, 'Event3', 'Event3', 'Event3', '01/01/2016 12:00 AM - 01/25/2016 12:00 AM', 'Event3', '2018-07-04 12:41:30', '2018-07-06 05:59:39', NULL);
INSERT INTO `master_event` VALUES (4, 'Event4', 'Event4', 'Event4', '07/06/2018 12:00 AM - 07/07/2018 12:00 AM', 'Event4', '2018-07-06 05:54:54', '2018-07-06 05:59:54', NULL);
INSERT INTO `master_event` VALUES (5, 'Event5', 'Event5', 'Event5', '05/19/2018 6:00 AM - 09/07/2018 6:00 AM', 'Event5', '2018-07-06 05:56:34', '2018-07-06 06:00:04', NULL);
INSERT INTO `master_event` VALUES (6, 'Event_01', 'Event_02', 'Score:2000', NULL, 'Test Event', '2018-10-12 23:39:15', '2018-10-12 23:39:15', NULL);

-- ----------------------------
-- Table structure for master_genre
-- ----------------------------
DROP TABLE IF EXISTS `master_genre`;
CREATE TABLE `master_genre`  (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `mall_id` int(11) NULL DEFAULT NULL,
  `genre_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `genre_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `genre_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`genre_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_genre
-- ----------------------------
INSERT INTO `master_genre` VALUES (2, 20, 'Caps', 'Caps', '1', '2018-07-04 12:25:48', '2018-07-06 05:58:53', NULL);
INSERT INTO `master_genre` VALUES (3, 21, 'Summer Shirts', 'Summer Shirts', '1', '2018-07-04 12:26:06', '2018-07-06 05:58:57', NULL);
INSERT INTO `master_genre` VALUES (4, 24, 'Genere_01', 'genre_01', '0', '2018-07-12 05:07:26', '2018-07-12 05:09:16', NULL);
INSERT INTO `master_genre` VALUES (5, 26, 'Genere_02', 'Genere_02', '1', '2018-07-12 12:26:14', '2018-07-12 12:26:33', NULL);

-- ----------------------------
-- Table structure for master_history
-- ----------------------------
DROP TABLE IF EXISTS `master_history`;
CREATE TABLE `master_history`  (
  `bh_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `b_id` int(10) UNSIGNED NOT NULL,
  `year` int(5) NULL DEFAULT NULL,
  `figure` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `updated_at` date NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  PRIMARY KEY (`bh_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for master_mall
-- ----------------------------
DROP TABLE IF EXISTS `master_mall`;
CREATE TABLE `master_mall`  (
  `mall_id` int(11) NOT NULL AUTO_INCREMENT,
  `mall_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mall_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mall_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `is_default` tinyint(1) NULL DEFAULT 0,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`mall_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_mall
-- ----------------------------
INSERT INTO `master_mall` VALUES (30, 'Mall_01', 'Mall_01', NULL, 0, '2018-10-12 23:28:10', '2018-10-12 23:28:10', NULL);

-- ----------------------------
-- Table structure for master_notifycustomer
-- ----------------------------
DROP TABLE IF EXISTS `master_notifycustomer`;
CREATE TABLE `master_notifycustomer`  (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `notify_customer` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notify_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notify_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notify_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT NULL,
  `notify_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`notify_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_notifycustomer
-- ----------------------------
INSERT INTO `master_notifycustomer` VALUES (3, '16', 'Test Notify', 'This is test', NULL, 1, 'Test Notify', '2018-10-12 23:41:00', '2018-10-12 23:41:00', NULL);

-- ----------------------------
-- Table structure for master_notifymerchant
-- ----------------------------
DROP TABLE IF EXISTS `master_notifymerchant`;
CREATE TABLE `master_notifymerchant`  (
  `notify_id` int(11) NOT NULL AUTO_INCREMENT,
  `notify_merchant` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `notify_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notify_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `notify_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `admin_id` int(255) NULL DEFAULT NULL,
  `notify_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`notify_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_notifymerchant
-- ----------------------------
INSERT INTO `master_notifymerchant` VALUES (4, '1/**/2', 'Test Notify', 'This is the test', NULL, 1, 'Test Notify', '2018-10-12 23:40:35', '2018-10-12 23:40:35', NULL);

-- ----------------------------
-- Table structure for master_plan
-- ----------------------------
DROP TABLE IF EXISTS `master_plan`;
CREATE TABLE `master_plan`  (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `plan_opencost` double(10, 2) NULL DEFAULT NULL,
  `plan_fixcost` double(10, 2) NULL DEFAULT NULL,
  `plan_domestic_fee` double(10, 2) NULL DEFAULT NULL,
  `plan_international_fee` double(10, 2) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_plan
-- ----------------------------
INSERT INTO `master_plan` VALUES (8, 'Plan_01', 10000.00, 1000.00, 100.00, 100.00, '2018-10-12 23:41:31', '2018-10-12 23:41:31', NULL);

-- ----------------------------
-- Table structure for master_productstate
-- ----------------------------
DROP TABLE IF EXISTS `master_productstate`;
CREATE TABLE `master_productstate`  (
  `productstate_id` int(11) NOT NULL AUTO_INCREMENT,
  `productstate_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `productstate_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`productstate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_productstate
-- ----------------------------
INSERT INTO `master_productstate` VALUES (1, 'N', '新品', NULL);
INSERT INTO `master_productstate` VALUES (2, 'N-', '新品&難あり', NULL);
INSERT INTO `master_productstate` VALUES (3, 'S', '新品同様', NULL);
INSERT INTO `master_productstate` VALUES (4, 'A', '状態良好', NULL);
INSERT INTO `master_productstate` VALUES (5, 'B', '使用感が少ない', NULL);
INSERT INTO `master_productstate` VALUES (6, 'C', '使用感がある', NULL);

-- ----------------------------
-- Table structure for master_size
-- ----------------------------
DROP TABLE IF EXISTS `master_size`;
CREATE TABLE `master_size`  (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size_category_id` int(11) NULL DEFAULT NULL,
  `size_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `size_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`size_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_size
-- ----------------------------
INSERT INTO `master_size` VALUES (12, 7, '240', '240', '2018-10-12 23:34:09', '2018-10-12 23:34:09', NULL);
INSERT INTO `master_size` VALUES (13, 7, '245', '245', '2018-10-12 23:34:22', '2018-10-12 23:34:22', NULL);
INSERT INTO `master_size` VALUES (14, 7, '250', '250', '2018-10-12 23:34:34', '2018-10-12 23:34:34', NULL);
INSERT INTO `master_size` VALUES (15, 7, '255', '255', '2018-10-12 23:34:43', '2018-10-12 23:34:43', NULL);
INSERT INTO `master_size` VALUES (16, 8, 'L', 'L', '2018-10-12 23:35:00', '2018-10-12 23:35:00', NULL);
INSERT INTO `master_size` VALUES (17, 8, 'XL', 'XL', '2018-10-12 23:35:10', '2018-10-12 23:35:10', NULL);
INSERT INTO `master_size` VALUES (18, 8, 'XXL', 'XXL', '2018-10-12 23:35:52', '2018-10-12 23:35:52', NULL);
INSERT INTO `master_size` VALUES (19, 8, 'XXXL', 'XXXL', '2018-10-12 23:36:09', '2018-10-12 23:36:09', NULL);

-- ----------------------------
-- Table structure for master_sizecategory
-- ----------------------------
DROP TABLE IF EXISTS `master_sizecategory`;
CREATE TABLE `master_sizecategory`  (
  `sizecategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `sizecategory_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sizecategory_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`sizecategory_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_sizecategory
-- ----------------------------
INSERT INTO `master_sizecategory` VALUES (7, 'Shoes', 'Shoes', '2018-10-12 23:31:23', '2018-10-12 23:31:23', NULL);
INSERT INTO `master_sizecategory` VALUES (8, 'Shirt', 'Shirt', '2018-10-12 23:31:38', '2018-10-12 23:31:38', NULL);

-- ----------------------------
-- Table structure for master_state
-- ----------------------------
DROP TABLE IF EXISTS `master_state`;
CREATE TABLE `master_state`  (
  `state_id` int(11) NOT NULL,
  `state_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `state_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `state_cursymbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `state_curcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`state_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of master_state
-- ----------------------------
INSERT INTO `master_state` VALUES (1, 'JP', 'Japan', '¥', 'JPY', NULL);
INSERT INTO `master_state` VALUES (2, 'USA', 'United States of America', '$', 'USD', NULL);

-- ----------------------------
-- Table structure for merchant_brand_match
-- ----------------------------
DROP TABLE IF EXISTS `merchant_brand_match`;
CREATE TABLE `merchant_brand_match`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `brand_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of merchant_brand_match
-- ----------------------------
INSERT INTO `merchant_brand_match` VALUES (1, 1, 4, NULL, NULL, NULL);
INSERT INTO `merchant_brand_match` VALUES (46, 2, 1, NULL, NULL, NULL);
INSERT INTO `merchant_brand_match` VALUES (47, 2, 4, NULL, NULL, NULL);
INSERT INTO `merchant_brand_match` VALUES (48, 2, 12, NULL, NULL, NULL);
INSERT INTO `merchant_brand_match` VALUES (49, 2, 15, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for merchant_product_status
-- ----------------------------
DROP TABLE IF EXISTS `merchant_product_status`;
CREATE TABLE `merchant_product_status`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` int(11) NULL DEFAULT NULL,
  `product_count` int(11) NULL DEFAULT NULL,
  `product_status` int(11) NOT NULL,
  `product_merchant_id` int(11) NOT NULL,
  `product_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for merchant_sale_management
-- ----------------------------
DROP TABLE IF EXISTS `merchant_sale_management`;
CREATE TABLE `merchant_sale_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `sale_date` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `sale_price` decimal(20, 2) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for merchant_shipping
-- ----------------------------
DROP TABLE IF EXISTS `merchant_shipping`;
CREATE TABLE `merchant_shipping`  (
  `shipping_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `shipping_state` int(2) NULL DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_start_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_min_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_max_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_limit_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_limit_duration` int(5) NULL DEFAULT NULL,
  `shipping_status` int(2) NULL DEFAULT NULL,
  `shipping_default` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`shipping_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for merchant_shipping_price
-- ----------------------------
DROP TABLE IF EXISTS `merchant_shipping_price`;
CREATE TABLE `merchant_shipping_price`  (
  `shipping_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_id` int(11) NULL DEFAULT NULL,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `shipping_price` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`shipping_price_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of merchant_shipping_price
-- ----------------------------
INSERT INTO `merchant_shipping_price` VALUES (13, 42, 2, '100', '100 cost', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (17, 42, 2, '100', '100 cost', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (18, 42, 2, '300', '300 cose', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (19, 42, 2, '500', 'cost', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (20, 43, 2, '1', '1', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (21, 43, 2, '3', '3', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (22, 43, 2, '4', '4', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (23, 43, 2, '5', '5', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (24, 43, 2, '6', '6', NULL, NULL, NULL);
INSERT INTO `merchant_shipping_price` VALUES (25, 44, 4, '1000', '描写？？', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_04_02_193005_create_translations_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (4, '2018_09_15_192940_create_currencies_table', 2);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES (1, NULL, 'Laravel Personal Access Client', '4JTVTRql4cCB6XJ2pjPx9cqZGX9pD0lm1wdQq6l1', 'http://localhost', 1, 0, 0, '2018-09-26 18:26:08', '2018-09-26 18:26:08');
INSERT INTO `oauth_clients` VALUES (2, NULL, 'Laravel Password Grant Client', '01BlOCoi9RT5nT4NvUySFOtHp5TkfEPQwOGNHoa0', 'http://localhost', 0, 1, 0, '2018-09-26 18:26:08', '2018-09-26 18:26:08');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES (1, 1, '2018-09-26 18:26:08', '2018-09-26 18:26:08');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`(191)) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for receipt_address
-- ----------------------------
DROP TABLE IF EXISTS `receipt_address`;
CREATE TABLE `receipt_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_postalcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_state` int(255) NULL DEFAULT NULL,
  `address_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_address_ex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_address_jp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address_totalscore` double(255, 0) NULL DEFAULT NULL,
  `address_default` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for receipt_card
-- ----------------------------
DROP TABLE IF EXISTS `receipt_card`;
CREATE TABLE `receipt_card`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card_owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `card_validdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for receipt_customer
-- ----------------------------
DROP TABLE IF EXISTS `receipt_customer`;
CREATE TABLE `receipt_customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` int(11) NULL DEFAULT NULL,
  `customer_name_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_name_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_name_kana_first` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_name_kana_second` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_postalcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_state` int(255) NULL DEFAULT NULL,
  `customer_city` int(255) NULL DEFAULT NULL,
  `customer_address_ex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_county` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_address_jp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_totalscore` double(255, 0) NULL DEFAULT NULL,
  `customer_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_gender` int(255) NULL DEFAULT NULL,
  `customer_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `customer_oauth` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `verified` int(255) NULL DEFAULT 0,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for receipt_detail
-- ----------------------------
DROP TABLE IF EXISTS `receipt_detail`;
CREATE TABLE `receipt_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receipt_id` int(11) NULL DEFAULT NULL,
  `history_id` int(11) NULL DEFAULT NULL,
  `stock_id` int(11) NULL DEFAULT NULL,
  `product_data` int(11) NULL DEFAULT NULL,
  `stock_data` int(11) NULL DEFAULT NULL,
  `product_amt` int(11) NULL DEFAULT NULL,
  `tax_flag` int(11) NULL DEFAULT NULL,
  `tax_rate` double NULL DEFAULT 8,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for receipt_product
-- ----------------------------
DROP TABLE IF EXISTS `receipt_product`;
CREATE TABLE `receipt_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `product_salemethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_salerange` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_brand_id` int(11) NULL DEFAULT NULL,
  `product_category_id` int(11) NULL DEFAULT NULL,
  `product_event` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_name_kana` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_name_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_taxflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_old_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_size_category_id` int(11) NULL DEFAULT NULL,
  `product_weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_season` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_material` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_merchant_id` int(11) NULL DEFAULT NULL,
  `product_parent_id` int(11) NULL DEFAULT NULL,
  `stock_type` int(2) NULL DEFAULT NULL,
  `max_order_count` int(10) NULL DEFAULT NULL,
  `postage_type` int(2) NULL DEFAULT NULL,
  `postage` int(10) NULL DEFAULT NULL,
  `delivery_id` int(11) NULL DEFAULT NULL,
  `shipping_id` int(11) NULL DEFAULT NULL,
  `product_size_id` int(11) NULL DEFAULT NULL,
  `product_ca` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_color_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for receipt_shipping
-- ----------------------------
DROP TABLE IF EXISTS `receipt_shipping`;
CREATE TABLE `receipt_shipping`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `shipping_state` int(2) NULL DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_start_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_min_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_max_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_limit_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_limit_duration` datetime(0) NULL DEFAULT NULL,
  `shipping_status` int(2) NULL DEFAULT NULL,
  `shipping_default` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_price` double(10, 2) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for receipt_stock
-- ----------------------------
DROP TABLE IF EXISTS `receipt_stock`;
CREATE TABLE `receipt_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  `product_count` int(11) NULL DEFAULT NULL,
  `product_merchant_id` int(11) NOT NULL,
  `product_sku_color_id` int(11) NOT NULL,
  `product_sku_size_id` int(11) NULL DEFAULT NULL,
  `product_stock_create` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_stock_update` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `product_price_sale` double(10, 0) NULL DEFAULT NULL,
  `product_price_ref` double(10, 0) NULL DEFAULT NULL,
  `product_price_law` double(10, 0) NULL DEFAULT NULL,
  `product_count_endless` int(2) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for receipts
-- ----------------------------
DROP TABLE IF EXISTS `receipts`;
CREATE TABLE `receipts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NULL DEFAULT NULL,
  `customer_id` int(11) NULL DEFAULT NULL,
  `profile_data` int(11) NULL DEFAULT NULL,
  `address_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `shipping_data` int(11) NULL DEFAULT NULL,
  `credit_data` int(11) NULL DEFAULT NULL,
  `date_juchu` datetime(0) NULL DEFAULT NULL,
  `date_pay` datetime(0) NULL DEFAULT NULL,
  `date_delivery` datetime(0) NULL DEFAULT NULL,
  `status` enum('0','1','2','3','4') CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for search_history
-- ----------------------------
DROP TABLE IF EXISTS `search_history`;
CREATE TABLE `search_history`  (
  `search_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`search_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
